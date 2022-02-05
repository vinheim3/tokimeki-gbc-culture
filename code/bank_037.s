; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

	ret nc                                           ; $4000: $d0

	add b                                            ; $4001: $80
	sub d                                            ; $4002: $92
	sub a                                            ; $4003: $97
	ld c, e                                          ; $4004: $4b
	ld a, [hl-]                                      ; $4005: $3a
	ld [$4a97], sp                                   ; $4006: $08 $97 $4a
	cp [hl]                                          ; $4009: $be
	inc b                                            ; $400a: $04
	inc a                                            ; $400b: $3c
	ld a, [hl-]                                      ; $400c: $3a
	inc a                                            ; $400d: $3c
	ld a, [hl-]                                      ; $400e: $3a
	inc a                                            ; $400f: $3c
	ld a, [hl-]                                      ; $4010: $3a
	inc a                                            ; $4011: $3c
	ld a, [hl-]                                      ; $4012: $3a
	inc a                                            ; $4013: $3c
	ld a, [hl-]                                      ; $4014: $3a
	cp [hl]                                          ; $4015: $be
	sub a                                            ; $4016: $97
	nop                                              ; $4017: $00
	or c                                             ; $4018: $b1
	ld b, c                                          ; $4019: $41
	ld [$3a05], sp                                   ; $401a: $08 $05 $3a

jr_037_401d:
	ld [$a1b5], sp                                   ; $401d: $08 $b5 $a1
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	dec de                                           ; $4023: $1b
	inc b                                            ; $4024: $04
	call nz, $041b                                   ; $4025: $c4 $1b $04
	jp z, $0416                                      ; $4028: $ca $16 $04

	call nz, $0416                                   ; $402b: $c4 $16 $04
	jp z, $0416                                      ; $402e: $ca $16 $04

	jp $0416                                         ; $4031: $c3 $16 $04


	jp z, $041b                                      ; $4034: $ca $1b $04

	jp $041b                                         ; $4037: $c3 $1b $04


	ld a, l                                          ; $403a: $7d

jr_037_403b:
	ld [de], a                                       ; $403b: $12
	jp z, $041e                                      ; $403c: $ca $1e $04

	jp $041e                                         ; $403f: $c3 $1e $04


	sub a                                            ; $4042: $97
	dec sp                                           ; $4043: $3b
	sub d                                            ; $4044: $92
	ld a, l                                          ; $4045: $7d
	nop                                              ; $4046: $00
	dec a                                            ; $4047: $3d
	ld [$3a97], sp                                   ; $4048: $08 $97 $3a
	cp [hl]                                          ; $404b: $be
	inc b                                            ; $404c: $04
	ccf                                              ; $404d: $3f
	dec a                                            ; $404e: $3d
	ccf                                              ; $404f: $3f
	dec a                                            ; $4050: $3d
	ccf                                              ; $4051: $3f
	dec a                                            ; $4052: $3d
	ccf                                              ; $4053: $3f
	dec a                                            ; $4054: $3d
	ccf                                              ; $4055: $3f
	dec a                                            ; $4056: $3d
	cp [hl]                                          ; $4057: $be
	or c                                             ; $4058: $b1
	ld hl, $0000                                     ; $4059: $21 $00 $00
	sub a                                            ; $405c: $97
	nop                                              ; $405d: $00
	dec a                                            ; $405e: $3d
	db $10                                           ; $405f: $10
	pop bc                                           ; $4060: $c1
	dec a                                            ; $4061: $3d
	ld [$91b1], sp                                   ; $4062: $08 $b1 $91
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	jr nz, jr_037_406f                               ; $4067: $20 $06

	or c                                             ; $4069: $b1
	ld b, c                                          ; $406a: $41
	ld c, $05                                        ; $406b: $0e $05
	jr nz, jr_037_407d                               ; $406d: $20 $0e

jr_037_406f:
	or c                                             ; $406f: $b1
	add c                                            ; $4070: $81
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	jr nz, jr_037_407b                               ; $4073: $20 $06

	jp $0120                                         ; $4075: $c3 $20 $01


	ret z                                            ; $4078: $c8

	ld a, [hl]                                       ; $4079: $7e
	ld [bc], a                                       ; $407a: $02

jr_037_407b:
	jr jr_037_401d                                   ; $407b: $18 $a0

jr_037_407d:
	rra                                              ; $407d: $1f
	ld c, b                                          ; $407e: $48
	ld a, [hl]                                       ; $407f: $7e
	nop                                              ; $4080: $00
	jp nz, $061f                                     ; $4081: $c2 $1f $06

	pop bc                                           ; $4084: $c1
	rra                                              ; $4085: $1f
	ld b, $00                                        ; $4086: $06 $00
	inc c                                            ; $4088: $0c
	rst $38                                          ; $4089: $ff
	or h                                             ; $408a: $b4
	add b                                            ; $408b: $80
	pop de                                           ; $408c: $d1
	inc bc                                           ; $408d: $03
	ld a, [hl]                                       ; $408e: $7e
	ld [bc], a                                       ; $408f: $02
	jr jr_037_403b                                   ; $4090: $18 $a9

	ld [hl+], a                                      ; $4092: $22
	inc h                                            ; $4093: $24
	call nz, $0422                                   ; $4094: $c4 $22 $04
	call z, $0322                                    ; $4097: $cc $22 $03
	jp nz, $0122                                     ; $409a: $c2 $22 $01

	call $0322                                       ; $409d: $cd $22 $03

jr_037_40a0:
	jp nz, $0122                                     ; $40a0: $c2 $22 $01

	call $0422                                       ; $40a3: $cd $22 $04
	call nz, $0422                                   ; $40a6: $c4 $22 $04
	call z, $041f                                    ; $40a9: $cc $1f $04
	push bc                                          ; $40ac: $c5
	rra                                              ; $40ad: $1f
	inc b                                            ; $40ae: $04
	call $041b                                       ; $40af: $cd $1b $04
	call nz, $041b                                   ; $40b2: $c4 $1b $04
	call z, $041b                                    ; $40b5: $cc $1b $04
	call nz, $041b                                   ; $40b8: $c4 $1b $04
	call z, $041f                                    ; $40bb: $cc $1f $04
	call nz, $041f                                   ; $40be: $c4 $1f $04
	call z, $0422                                    ; $40c1: $cc $22 $04
	call nz, $0422                                   ; $40c4: $c4 $22 $04
	sla l                                            ; $40c7: $cb $25
	ld a, [de]                                       ; $40c9: $1a
	jp $0625                                         ; $40ca: $c3 $25 $06


	rr [hl]                                          ; $40cd: $cb $1e
	dec b                                            ; $40cf: $05
	call nz, $031e                                   ; $40d0: $c4 $1e $03
	sla d                                            ; $40d3: $cb $22
	dec b                                            ; $40d5: $05
	push bc                                          ; $40d6: $c5
	ld [hl+], a                                      ; $40d7: $22
	inc bc                                           ; $40d8: $03
	sla l                                            ; $40d9: $cb $25
	ld [$25c2], sp                                   ; $40db: $08 $c2 $25
	db $10                                           ; $40de: $10
	sub d                                            ; $40df: $92
	sla [hl]                                         ; $40e0: $cb $26
	ld b, $b1                                        ; $40e2: $06 $b1
	ld b, c                                          ; $40e4: $41
	ld c, $05                                        ; $40e5: $0e $05
	ld h, $0e                                        ; $40e7: $26 $0e
	or c                                             ; $40e9: $b1
	or c                                             ; $40ea: $b1
	nop                                              ; $40eb: $00

jr_037_40ec:
	nop                                              ; $40ec: $00
	ld h, $06                                        ; $40ed: $26 $06
	jp $0126                                         ; $40ef: $c3 $26 $01


	call z, $027e                                    ; $40f2: $cc $7e $02
	jr jr_037_40a0                                   ; $40f5: $18 $a9

	daa                                              ; $40f7: $27
	ld c, b                                          ; $40f8: $48
	ld a, [hl]                                       ; $40f9: $7e
	nop                                              ; $40fa: $00
	jp nz, $0627                                     ; $40fb: $c2 $27 $06

	pop bc                                           ; $40fe: $c1
	daa                                              ; $40ff: $27
	ld b, $00                                        ; $4100: $06 $00
	inc c                                            ; $4102: $0c
	rst $38                                          ; $4103: $ff
	or h                                             ; $4104: $b4
	add b                                            ; $4105: $80
	ld hl, $1306                                     ; $4106: $21 $06 $13
	rla                                              ; $4109: $17
	add $13                                          ; $410a: $c6 $13
	ld bc, $7ec2                                     ; $410c: $01 $c2 $7e
	ld [bc], a                                       ; $410f: $02
	nop                                              ; $4110: $00
	and b                                            ; $4111: $a0
	rrca                                             ; $4112: $0f
	jr nc, jr_037_4193                               ; $4113: $30 $7e

	nop                                              ; $4115: $00
	call nz, $0c0f                                   ; $4116: $c4 $0f $0c
	add $0f                                          ; $4119: $c6 $0f
	inc c                                            ; $411b: $0c
	jp nz, $1716                                     ; $411c: $c2 $16 $17

	add $16                                          ; $411f: $c6 $16
	ld bc, $7ec2                                     ; $4121: $01 $c2 $7e
	ld [bc], a                                       ; $4124: $02
	nop                                              ; $4125: $00
	and b                                            ; $4126: $a0
	ld [de], a                                       ; $4127: $12
	jr jr_037_40ec                                   ; $4128: $18 $c2

	ld [de], a                                       ; $412a: $12
	ld b, $c4                                        ; $412b: $06 $c4
	ld [de], a                                       ; $412d: $12
	ld b, $c6                                        ; $412e: $06 $c6
	ld [de], a                                       ; $4130: $12
	ld b, $c6                                        ; $4131: $06 $c6
	ld [de], a                                       ; $4133: $12
	ld b, $c2                                        ; $4134: $06 $c2
	db $10                                           ; $4136: $10
	ld b, $c5                                        ; $4137: $06 $c5
	db $10                                           ; $4139: $10
	ld c, $c2                                        ; $413a: $0e $c2
	db $10                                           ; $413c: $10
	ld b, $00                                        ; $413d: $06 $00
	ld bc, $480f                                     ; $413f: $01 $0f $48

jr_037_4142:
	call nz, $060f                                   ; $4142: $c4 $0f $06
	add $0f                                          ; $4145: $c6 $0f
	ld b, $00                                        ; $4147: $06 $00
	inc c                                            ; $4149: $0c
	rst $38                                          ; $414a: $ff
	ret nc                                           ; $414b: $d0

	add b                                            ; $414c: $80
	jr @+$0a                                         ; $414d: $18 $08

	nop                                              ; $414f: $00
	ld [$080d], sp                                   ; $4150: $08 $0d $08
	cp [hl]                                          ; $4153: $be
	inc b                                            ; $4154: $04
	dec c                                            ; $4155: $0d
	ld c, $0e                                        ; $4156: $0e $0e
	ld c, $0e                                        ; $4158: $0e $0e
	ld c, $0e                                        ; $415a: $0e $0e
	ld c, $0e                                        ; $415c: $0e $0e
	ld c, $0e                                        ; $415e: $0e $0e
	ld c, $0d                                        ; $4160: $0e $0d
	ld c, $0e                                        ; $4162: $0e $0e
	ld c, $0e                                        ; $4164: $0e $0e
	ld c, $be                                        ; $4166: $0e $be
	jr @+$0a                                         ; $4168: $18 $08

	nop                                              ; $416a: $00
	ld [$080d], sp                                   ; $416b: $08 $0d $08
	cp [hl]                                          ; $416e: $be
	inc b                                            ; $416f: $04
	dec c                                            ; $4170: $0d

jr_037_4171:
	ld c, $0e                                        ; $4171: $0e $0e
	ld c, $0e                                        ; $4173: $0e $0e
	ld c, $be                                        ; $4175: $0e $be
	dec c                                            ; $4177: $0d
	inc b                                            ; $4178: $04
	nop                                              ; $4179: $00
	inc d                                            ; $417a: $14
	inc c                                            ; $417b: $0c
	ld b, $00                                        ; $417c: $06 $00
	ld c, $0c                                        ; $417e: $0e $0c
	rlca                                             ; $4180: $07
	inc d                                            ; $4181: $14
	jr jr_037_4142                                   ; $4182: $18 $be

	inc b                                            ; $4184: $04
	ld c, $0e                                        ; $4185: $0e $0e
	ld c, $0e                                        ; $4187: $0e $0e
	ld c, $0e                                        ; $4189: $0e $0e
	dec c                                            ; $418b: $0d
	ld c, $0e                                        ; $418c: $0e $0e
	ld c, $0e                                        ; $418e: $0e $0e
	ld c, $be                                        ; $4190: $0e $be
	rst $38                                          ; $4192: $ff

jr_037_4193:
	ret nc                                           ; $4193: $d0

	ld c, c                                          ; $4194: $49
	cp $d1                                           ; $4195: $fe $d1
	ret                                              ; $4197: $c9


	sub e                                            ; $4198: $93
	db $fd                                           ; $4199: $fd
	cp e                                             ; $419a: $bb
	ld b, c                                          ; $419b: $41
	sub a                                            ; $419c: $97
	adc d                                            ; $419d: $8a
	cp [hl]                                          ; $419e: $be
	inc c                                            ; $419f: $0c
	rrca                                             ; $41a0: $0f
	ld de, $0f12                                     ; $41a1: $11 $12 $0f
	inc d                                            ; $41a4: $14
	ld d, $18                                        ; $41a5: $16 $18
	dec de                                           ; $41a7: $1b
	cp [hl]                                          ; $41a8: $be
	db $fd                                           ; $41a9: $fd
	cp e                                             ; $41aa: $bb
	ld b, c                                          ; $41ab: $41
	sub a                                            ; $41ac: $97
	adc d                                            ; $41ad: $8a
	rrca                                             ; $41ae: $0f
	jr jr_037_41c5                                   ; $41af: $18 $14

	jr jr_037_4171                                   ; $41b1: $18 $be

	inc c                                            ; $41b3: $0c
	dec c                                            ; $41b4: $0d
	rrca                                             ; $41b5: $0f
	ld de, $be0d                                     ; $41b6: $11 $0d $be
	cp $ff                                           ; $41b9: $fe $ff
	sub a                                            ; $41bb: $97
	ld l, d                                          ; $41bc: $6a
	ld [hl], c                                       ; $41bd: $71
	dec c                                            ; $41be: $0d
	ld [hl+], a                                      ; $41bf: $22
	pop de                                           ; $41c0: $d1
	call nz, $0097                                   ; $41c1: $c4 $97 $00
	dec c                                            ; $41c4: $0d

jr_037_41c5:
	ld [bc], a                                       ; $41c5: $02
	sub a                                            ; $41c6: $97
	adc d                                            ; $41c7: $8a
	cp [hl]                                          ; $41c8: $be
	inc c                                            ; $41c9: $0c
	add hl, de                                       ; $41ca: $19
	inc d                                            ; $41cb: $14
	ld d, $18                                        ; $41cc: $16 $18
	inc d                                            ; $41ce: $14
	cp [hl]                                          ; $41cf: $be
	ld a, [bc]                                       ; $41d0: $0a
	ld [hl+], a                                      ; $41d1: $22
	push bc                                          ; $41d2: $c5
	sub a                                            ; $41d3: $97
	nop                                              ; $41d4: $00
	ld a, [bc]                                       ; $41d5: $0a
	ld [bc], a                                       ; $41d6: $02
	sub a                                            ; $41d7: $97
	adc d                                            ; $41d8: $8a
	cp [hl]                                          ; $41d9: $be
	inc c                                            ; $41da: $0c
	ld d, $15                                        ; $41db: $16 $15
	inc de                                           ; $41dd: $13
	dec d                                            ; $41de: $15
	ld de, $7ebe                                     ; $41df: $11 $be $7e
	dec e                                            ; $41e2: $1d
	inc c                                            ; $41e3: $0c
	and b                                            ; $41e4: $a0
	ld [de], a                                       ; $41e5: $12
	jr @-$67                                         ; $41e6: $18 $97

	ld c, [hl]                                       ; $41e8: $4e
	ld e, $18                                        ; $41e9: $1e $18
	sub a                                            ; $41eb: $97
	adc d                                            ; $41ec: $8a
	ld de, $9718                                     ; $41ed: $11 $18 $97
	ld c, [hl]                                       ; $41f0: $4e

jr_037_41f1:
	dec e                                            ; $41f1: $1d
	jr jr_037_41f1                                   ; $41f2: $18 $fd

	ret nc                                           ; $41f4: $d0

	ld c, c                                          ; $41f5: $49
	cp $d1                                           ; $41f6: $fe $d1
	sub d                                            ; $41f8: $92
	ld [hl], c                                       ; $41f9: $71
	db $fd                                           ; $41fa: $fd
	ld [hl-], a                                      ; $41fb: $32
	ld b, d                                          ; $41fc: $42
	sub a                                            ; $41fd: $97
	ld l, a                                          ; $41fe: $6f
	ld a, [hl+]                                      ; $41ff: $2a
	jr jr_037_422b                                   ; $4200: $18 $29

	ld [de], a                                       ; $4202: $12
	sub a                                            ; $4203: $97
	nop                                              ; $4204: $00
	jp z, $0327                                      ; $4205: $ca $27 $03

	nop                                              ; $4208: $00
	inc bc                                           ; $4209: $03
	ld a, [hl]                                       ; $420a: $7e
	dec e                                            ; $420b: $1d
	inc h                                            ; $420c: $24
	xor d                                            ; $420d: $aa
	sub a                                            ; $420e: $97

jr_037_420f:
	adc l                                            ; $420f: $8d
	daa                                              ; $4210: $27
	jr nc, jr_037_4291                               ; $4211: $30 $7e

	nop                                              ; $4213: $00
	and b                                            ; $4214: $a0
	db $fd                                           ; $4215: $fd
	ld [hl-], a                                      ; $4216: $32
	ld b, d                                          ; $4217: $42
	sub a                                            ; $4218: $97
	ld l, a                                          ; $4219: $6f
	add hl, hl                                       ; $421a: $29
	jr jr_037_4244                                   ; $421b: $18 $27

	ld [de], a                                       ; $421d: $12
	sub a                                            ; $421e: $97
	nop                                              ; $421f: $00
	jp z, $0325                                      ; $4220: $ca $25 $03

	nop                                              ; $4223: $00
	inc bc                                           ; $4224: $03
	sub a                                            ; $4225: $97
	adc l                                            ; $4226: $8d
	ld a, [hl]                                       ; $4227: $7e
	dec e                                            ; $4228: $1d
	inc h                                            ; $4229: $24
	xor d                                            ; $422a: $aa

jr_037_422b:
	dec h                                            ; $422b: $25
	jr nc, jr_037_42ac                               ; $422c: $30 $7e

	nop                                              ; $422e: $00
	and b                                            ; $422f: $a0
	cp $ff                                           ; $4230: $fe $ff
	sub a                                            ; $4232: $97
	ld c, a                                          ; $4233: $4f
	inc l                                            ; $4234: $2c
	inc d                                            ; $4235: $14
	sub a                                            ; $4236: $97
	nop                                              ; $4237: $00
	pop de                                           ; $4238: $d1
	ret                                              ; $4239: $c9


	ld a, [hl]                                       ; $423a: $7e
	dec e                                            ; $423b: $1d
	nop                                              ; $423c: $00
	xor e                                            ; $423d: $ab
	inc l                                            ; $423e: $2c
	inc l                                            ; $423f: $2c
	add $7e                                          ; $4240: $c6 $7e
	dec e                                            ; $4242: $1d
	nop                                              ; $4243: $00

jr_037_4244:
	xor d                                            ; $4244: $aa
	inc l                                            ; $4245: $2c
	ld d, $00                                        ; $4246: $16 $00
	ld [bc], a                                       ; $4248: $02
	ret z                                            ; $4249: $c8

	inc l                                            ; $424a: $2c
	ld [$31c8], sp                                   ; $424b: $08 $c8 $31
	inc bc                                           ; $424e: $03
	jr nc, jr_037_4254                               ; $424f: $30 $03

	ld a, [hl]                                       ; $4251: $7e
	dec e                                            ; $4252: $1d
	inc d                                            ; $4253: $14

jr_037_4254:
	xor e                                            ; $4254: $ab
	sub a                                            ; $4255: $97
	ld a, a                                          ; $4256: $7f
	ld sp, $9714                                     ; $4257: $31 $14 $97
	nop                                              ; $425a: $00
	ret                                              ; $425b: $c9


	ld sp, $9716                                     ; $425c: $31 $16 $97
	ld l, a                                          ; $425f: $6f
	jr nc, jr_037_4276                               ; $4260: $30 $14

	sub a                                            ; $4262: $97
	nop                                              ; $4263: $00
	ret                                              ; $4264: $c9


	jr nc, @+$16                                     ; $4265: $30 $14

	ret z                                            ; $4267: $c8

	add hl, hl                                       ; $4268: $29
	ld [$6e97], sp                                   ; $4269: $08 $97 $6e
	ld l, $18                                        ; $426c: $2e $18
	sub a                                            ; $426e: $97
	nop                                              ; $426f: $00
	ret                                              ; $4270: $c9


	ld l, $18                                        ; $4271: $2e $18
	sub a                                            ; $4273: $97
	ld l, a                                          ; $4274: $6f
	inc l                                            ; $4275: $2c

jr_037_4276:
	jr jr_037_420f                                   ; $4276: $18 $97

	ld l, d                                          ; $4278: $6a

jr_037_4279:
	dec h                                            ; $4279: $25
	jr jr_037_4279                                   ; $427a: $18 $fd

	ret nc                                           ; $427c: $d0

	ld c, c                                          ; $427d: $49
	cp $d1                                           ; $427e: $fe $d1
	jp nz, $1c7f                                     ; $4280: $c2 $7f $1c

	ld [hl], c                                       ; $4283: $71
	db $fd                                           ; $4284: $fd
	or a                                             ; $4285: $b7
	ld b, d                                          ; $4286: $42
	ld a, a                                          ; $4287: $7f
	ld e, $22                                        ; $4288: $1e $22
	jr jr_037_42b1                                   ; $428a: $18 $25

	jr @-$2b                                         ; $428c: $18 $d3

	cp [hl]                                          ; $428e: $be
	ld b, $30                                        ; $428f: $06 $30

jr_037_4291:
	ld sp, $3133                                     ; $4291: $31 $33 $31
	jr nc, jr_037_42c7                               ; $4294: $30 $31

	ld l, $30                                        ; $4296: $2e $30
	cp [hl]                                          ; $4298: $be
	ld a, a                                          ; $4299: $7f
	inc e                                            ; $429a: $1c
	pop de                                           ; $429b: $d1
	db $fd                                           ; $429c: $fd
	or a                                             ; $429d: $b7
	ld b, d                                          ; $429e: $42
	ld [hl+], a                                      ; $429f: $22
	inc c                                            ; $42a0: $0c
	daa                                              ; $42a1: $27
	inc c                                            ; $42a2: $0c
	inc h                                            ; $42a3: $24
	inc c                                            ; $42a4: $0c
	call nz, $0c2c                                   ; $42a5: $c4 $2c $0c
	db $d3                                           ; $42a8: $d3
	jp nz, $06be                                     ; $42a9: $c2 $be $06

jr_037_42ac:
	add hl, hl                                       ; $42ac: $29
	inc l                                            ; $42ad: $2c
	dec hl                                           ; $42ae: $2b
	inc l                                            ; $42af: $2c
	add hl, hl                                       ; $42b0: $29

jr_037_42b1:
	inc l                                            ; $42b1: $2c
	dec hl                                           ; $42b2: $2b
	inc l                                            ; $42b3: $2c
	cp [hl]                                          ; $42b4: $be
	cp $ff                                           ; $42b5: $fe $ff
	dec e                                            ; $42b7: $1d
	ld [hl+], a                                      ; $42b8: $22
	nop                                              ; $42b9: $00
	ld [bc], a                                       ; $42ba: $02
	dec e                                            ; $42bb: $1d
	inc c                                            ; $42bc: $0c
	dec de                                           ; $42bd: $1b
	jr jr_037_42dd                                   ; $42be: $18 $1d

	jr jr_037_42db                                   ; $42c0: $18 $19

	ld [hl+], a                                      ; $42c2: $22
	nop                                              ; $42c3: $00
	ld [bc], a                                       ; $42c4: $02
	add hl, de                                       ; $42c5: $19
	inc c                                            ; $42c6: $0c

jr_037_42c7:
	jr jr_037_42e1                                   ; $42c7: $18 $18

	add hl, de                                       ; $42c9: $19
	jr jr_037_42e2                                   ; $42ca: $18 $16

	ld [hl+], a                                      ; $42cc: $22
	nop                                              ; $42cd: $00
	ld [bc], a                                       ; $42ce: $02
	jr jr_037_42dd                                   ; $42cf: $18 $0c

	add hl, de                                       ; $42d1: $19
	jr jr_037_4353                                   ; $42d2: $18 $7f

	ld e, $20                                        ; $42d4: $1e $20
	jr @-$01                                         ; $42d6: $18 $fd

	or [hl]                                          ; $42d8: $b6
	ld l, b                                          ; $42d9: $68
	sub c                                            ; $42da: $91

jr_037_42db:
	inc bc                                           ; $42db: $03
	rst $38                                          ; $42dc: $ff

jr_037_42dd:
	ld bc, $017e                                     ; $42dd: $01 $7e $01
	nop                                              ; $42e0: $00

jr_037_42e1:
	and b                                            ; $42e1: $a0

jr_037_42e2:
	inc h                                            ; $42e2: $24
	ld [$0824], sp                                   ; $42e3: $08 $24 $08
	inc h                                            ; $42e6: $24
	ld [$ff96], sp                                   ; $42e7: $08 $96 $ff
	rlca                                             ; $42ea: $07
	jr nz, jr_037_4304                               ; $42eb: $20 $17

	nop                                              ; $42ed: $00
	ld bc, $1721                                     ; $42ee: $01 $21 $17
	nop                                              ; $42f1: $00
	ld bc, $007e                                     ; $42f2: $01 $7e $00
	jr nz, jr_037_4306                               ; $42f5: $20 $0f

	nop                                              ; $42f7: $00
	ld bc, $ff96                                     ; $42f8: $01 $96 $ff
	ld bc, $017e                                     ; $42fb: $01 $7e $01
	nop                                              ; $42fe: $00
	xor c                                            ; $42ff: $a9
	ld [hl+], a                                      ; $4300: $22
	ld b, $00                                        ; $4301: $06 $00
	ld [bc], a                                       ; $4303: $02

jr_037_4304:
	sub [hl]                                         ; $4304: $96
	rst $38                                          ; $4305: $ff

jr_037_4306:
	rlca                                             ; $4306: $07
	ld [hl+], a                                      ; $4307: $22
	rla                                              ; $4308: $17
	nop                                              ; $4309: $00
	ld bc, $1722                                     ; $430a: $01 $22 $17
	nop                                              ; $430d: $00
	ld bc, $2422                                     ; $430e: $01 $22 $24
	push bc                                          ; $4311: $c5
	ld [hl+], a                                      ; $4312: $22
	inc c                                            ; $4313: $0c
	cp $b5                                           ; $4314: $fe $b5
	or c                                             ; $4316: $b1
	ld bc, $07ff                                     ; $4317: $01 $ff $07
	ld a, [hl]                                       ; $431a: $7e
	nop                                              ; $431b: $00
	rrca                                             ; $431c: $0f
	inc d                                            ; $431d: $14
	jp nz, $040f                                     ; $431e: $c2 $0f $04

	ret z                                            ; $4321: $c8

	dec de                                           ; $4322: $1b
	ld d, $c2                                        ; $4323: $16 $c2
	dec de                                           ; $4325: $1b
	ld [bc], a                                       ; $4326: $02
	or c                                             ; $4327: $b1

jr_037_4328:
	add c                                            ; $4328: $81
	rst $38                                          ; $4329: $ff
	inc bc                                           ; $432a: $03
	dec e                                            ; $432b: $1d
	ld [$0096], sp                                   ; $432c: $08 $96 $00
	nop                                              ; $432f: $00
	sub a                                            ; $4330: $97
	ccf                                              ; $4331: $3f
	dec e                                            ; $4332: $1d
	inc h                                            ; $4333: $24
	jp $031d                                         ; $4334: $c3 $1d $03


	rst JumpTable                                          ; $4337: $c7
	sub a                                            ; $4338: $97
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	ld bc, $2220                                     ; $433b: $01 $20 $22
	nop                                              ; $433e: $00
	ld [bc], a                                       ; $433f: $02
	rra                                              ; $4340: $1f
	inc b                                            ; $4341: $04
	nop                                              ; $4342: $00
	ld [bc], a                                       ; $4343: $02
	dec e                                            ; $4344: $1d
	inc b                                            ; $4345: $04
	nop                                              ; $4346: $00
	ld [bc], a                                       ; $4347: $02
	rra                                              ; $4348: $1f
	ld d, $00                                        ; $4349: $16 $00
	ld [bc], a                                       ; $434b: $02
	dec de                                           ; $434c: $1b
	rla                                              ; $434d: $17
	nop                                              ; $434e: $00
	ld bc, $b1b1                                     ; $434f: $01 $b1 $b1
	rst $38                                          ; $4352: $ff

jr_037_4353:
	rlca                                             ; $4353: $07
	rrca                                             ; $4354: $0f
	inc d                                            ; $4355: $14
	pop bc                                           ; $4356: $c1
	rrca                                             ; $4357: $0f
	inc b                                            ; $4358: $04
	jp z, $181b                                      ; $4359: $ca $1b $18

	dec e                                            ; $435c: $1d
	ld a, [bc]                                       ; $435d: $0a
	jp nz, $0e1d                                     ; $435e: $c2 $1d $0e

	jp z, $181d                                      ; $4361: $ca $1d $18

	dec de                                           ; $4364: $1b
	jr jr_037_4380                                   ; $4365: $18 $19

	jr jr_037_4381                                   ; $4367: $18 $18

	ld a, [bc]                                       ; $4369: $0a
	or c                                             ; $436a: $b1
	ld de, $0000                                     ; $436b: $11 $00 $00
	jr @+$10                                         ; $436e: $18 $0e

	or c                                             ; $4370: $b1
	and c                                            ; $4371: $a1
	rst $38                                          ; $4372: $ff
	ld b, $1b                                        ; $4373: $06 $1b
	jr jr_037_4328                                   ; $4375: $18 $b1

	ld [hl], c                                       ; $4377: $71
	rst $38                                          ; $4378: $ff
	ld bc, $072c                                     ; $4379: $01 $2c $07
	nop                                              ; $437c: $00
	ld bc, $072c                                     ; $437d: $01 $2c $07

jr_037_4380:
	nop                                              ; $4380: $00

jr_037_4381:
	ld bc, $072c                                     ; $4381: $01 $2c $07
	nop                                              ; $4384: $00
	ld bc, $61b1                                     ; $4385: $01 $b1 $61
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	daa                                              ; $438a: $27
	rla                                              ; $438b: $17
	nop                                              ; $438c: $00
	ld bc, $97c8                                     ; $438d: $01 $c8 $97
	nop                                              ; $4390: $00
	sub [hl]                                         ; $4391: $96
	rst $38                                          ; $4392: $ff
	ld [bc], a                                       ; $4393: $02
	ld a, [hl+]                                      ; $4394: $2a
	ld b, $96                                        ; $4395: $06 $96
	nop                                              ; $4397: $00
	nop                                              ; $4398: $00
	ld a, [hl]                                       ; $4399: $7e
	ld bc, $a900                                     ; $439a: $01 $00 $a9
	sub a                                            ; $439d: $97
	ccf                                              ; $439e: $3f
	ld a, [hl+]                                      ; $439f: $2a
	daa                                              ; $43a0: $27
	sub a                                            ; $43a1: $97
	nop                                              ; $43a2: $00
	jp $032a                                         ; $43a3: $c3 $2a $03


	or c                                             ; $43a6: $b1
	or c                                             ; $43a7: $b1
	rst $38                                          ; $43a8: $ff
	ld [bc], a                                       ; $43a9: $02
	dec e                                            ; $43aa: $1d
	ld b, $7e                                        ; $43ab: $06 $7e
	ld bc, $a900                                     ; $43ad: $01 $00 $a9
	sub [hl]                                         ; $43b0: $96
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	sub a                                            ; $43b3: $97
	ld c, [hl]                                       ; $43b4: $4e
	dec e                                            ; $43b5: $1d
	ld a, [hl+]                                      ; $43b6: $2a
	sub a                                            ; $43b7: $97

jr_037_43b8:
	nop                                              ; $43b8: $00
	sub [hl]                                         ; $43b9: $96
	rst $38                                          ; $43ba: $ff
	ld [bc], a                                       ; $43bb: $02
	rra                                              ; $43bc: $1f
	inc b                                            ; $43bd: $04
	sub [hl]                                         ; $43be: $96
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	sub a                                            ; $43c1: $97
	ld e, a                                          ; $43c2: $5f
	rra                                              ; $43c3: $1f
	inc d                                            ; $43c4: $14
	jp z, $0097                                      ; $43c5: $ca $97 $00

	sub [hl]                                         ; $43c8: $96
	rst $38                                          ; $43c9: $ff
	ld [bc], a                                       ; $43ca: $02
	dec hl                                           ; $43cb: $2b
	inc b                                            ; $43cc: $04
	sub [hl]                                         ; $43cd: $96
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	sub a                                            ; $43d0: $97
	ld c, [hl]                                       ; $43d1: $4e
	dec hl                                           ; $43d2: $2b
	inc d                                            ; $43d3: $14
	sub a                                            ; $43d4: $97
	nop                                              ; $43d5: $00
	or c                                             ; $43d6: $b1
	ld [hl], c                                       ; $43d7: $71
	rst $38                                          ; $43d8: $ff
	inc bc                                           ; $43d9: $03
	ld a, [hl]                                       ; $43da: $7e
	nop                                              ; $43db: $00
	inc l                                            ; $43dc: $2c
	rlca                                             ; $43dd: $07
	nop                                              ; $43de: $00
	add hl, bc                                       ; $43df: $09
	inc l                                            ; $43e0: $2c
	rlca                                             ; $43e1: $07
	nop                                              ; $43e2: $00
	ld bc, $81b1                                     ; $43e3: $01 $b1 $81
	rst $38                                          ; $43e6: $ff
	ld b, $27                                        ; $43e7: $06 $27
	jr @-$4d                                         ; $43e9: $18 $b1

	and c                                            ; $43eb: $a1
	rst $38                                          ; $43ec: $ff
	ld [bc], a                                       ; $43ed: $02
	add hl, hl                                       ; $43ee: $29

jr_037_43ef:
	ld b, $7e                                        ; $43ef: $06 $7e
	ld bc, $a900                                     ; $43f1: $01 $00 $a9
	sub [hl]                                         ; $43f4: $96

jr_037_43f5:
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	sub a                                            ; $43f7: $97
	cpl                                              ; $43f8: $2f
	add hl, hl                                       ; $43f9: $29
	ld a, [hl+]                                      ; $43fa: $2a
	jp z, $0097                                      ; $43fb: $ca $97 $00

	sub [hl]                                         ; $43fe: $96
	rst $38                                          ; $43ff: $ff
	rlca                                             ; $4400: $07
	dec de                                           ; $4401: $1b
	rrca                                             ; $4402: $0f
	nop                                              ; $4403: $00
	ld bc, $0f19                                     ; $4404: $01 $19 $0f
	nop                                              ; $4407: $00
	ld bc, $0f18                                     ; $4408: $01 $18 $0f
	nop                                              ; $440b: $00
	ld bc, $0096                                     ; $440c: $01 $96 $00
	nop                                              ; $440f: $00
	jr jr_037_4432                                   ; $4410: $18 $20

	jp $0618                                         ; $4412: $c3 $18 $06


	call z, $0a00                                    ; $4415: $cc $00 $0a
	sub d                                            ; $4418: $92
	set 2, c                                         ; $4419: $cb $d1
	ld a, [hl]                                       ; $441b: $7e
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	ld a, b                                          ; $441e: $78
	dec de                                           ; $441f: $1b
	jr jr_037_43b8                                   ; $4420: $18 $96

	ld [$2201], sp                                   ; $4422: $08 $01 $22
	ld [$0422], sp                                   ; $4425: $08 $22 $04
	ld [hl+], a                                      ; $4428: $22
	inc b                                            ; $4429: $04
	ld [hl+], a                                      ; $442a: $22
	ld [$27c7], sp                                   ; $442b: $08 $c7 $27
	ld [$0827], sp                                   ; $442e: $08 $27 $08
	daa                                              ; $4431: $27

jr_037_4432:
	ld [$a1b1], sp                                   ; $4432: $08 $b1 $a1
	nop                                              ; $4435: $00
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	jr jr_037_4457                                   ; $4438: $18 $1d

	jr jr_037_443c                                   ; $443a: $18 $00

jr_037_443c:
	jr jr_037_43ef                                   ; $443c: $18 $b1

	or c                                             ; $443e: $b1
	rst $38                                          ; $443f: $ff
	ld b, $26                                        ; $4440: $06 $26
	jr jr_037_43f5                                   ; $4442: $18 $b1

	ld [hl], c                                       ; $4444: $71
	rst $38                                          ; $4445: $ff
	ld bc, $0827                                     ; $4446: $01 $27 $08
	daa                                              ; $4449: $27
	inc b                                            ; $444a: $04
	daa                                              ; $444b: $27
	inc b                                            ; $444c: $04
	daa                                              ; $444d: $27
	ld [$2ec6], sp                                   ; $444e: $08 $c6 $2e
	ld [$27c7], sp                                   ; $4451: $08 $c7 $27
	ld [$2ec6], sp                                   ; $4454: $08 $c6 $2e

jr_037_4457:
	ld [$51b1], sp                                   ; $4457: $08 $b1 $51
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	ld a, [hl]                                       ; $445c: $7e
	ld bc, $a900                                     ; $445d: $01 $00 $a9
	inc sp                                           ; $4460: $33
	ld a, [hl+]                                      ; $4461: $2a
	jp $0633                                         ; $4462: $c3 $33 $06


	ld a, [hl]                                       ; $4465: $7e
	nop                                              ; $4466: $00
	cp $ff                                           ; $4467: $fe $ff
	or [hl]                                          ; $4469: $b6
	ld l, b                                          ; $446a: $68
	pop de                                           ; $446b: $d1
	inc bc                                           ; $446c: $03
	rst $38                                          ; $446d: $ff
	ld bc, $007e                                     ; $446e: $01 $7e $00
	inc l                                            ; $4471: $2c
	ld [$082c], sp                                   ; $4472: $08 $2c $08
	inc l                                            ; $4475: $2c
	ld [$b1b1], sp                                   ; $4476: $08 $b1 $b1
	rst $38                                          ; $4479: $ff
	rlca                                             ; $447a: $07
	daa                                              ; $447b: $27
	rla                                              ; $447c: $17
	nop                                              ; $447d: $00
	ld bc, $2aca                                     ; $447e: $01 $ca $2a
	rla                                              ; $4481: $17
	nop                                              ; $4482: $00
	ld bc, $26cc                                     ; $4483: $01 $cc $26
	rrca                                             ; $4486: $0f
	nop                                              ; $4487: $00
	ld bc, $91b1                                     ; $4488: $01 $b1 $91
	rst $38                                          ; $448b: $ff
	ld bc, $0629                                     ; $448c: $01 $29 $06
	nop                                              ; $448f: $00
	ld [bc], a                                       ; $4490: $02
	or c                                             ; $4491: $b1
	or c                                             ; $4492: $b1
	rst $38                                          ; $4493: $ff
	ld b, $2b                                        ; $4494: $06 $2b
	rla                                              ; $4496: $17
	nop                                              ; $4497: $00
	ld bc, $172b                                     ; $4498: $01 $2b $17
	nop                                              ; $449b: $00
	ld bc, $017e                                     ; $449c: $01 $7e $01
	rrca                                             ; $449f: $0f
	and b                                            ; $44a0: $a0
	dec hl                                           ; $44a1: $2b
	inc h                                            ; $44a2: $24
	sub c                                            ; $44a3: $91
	sub [hl]                                         ; $44a4: $96
	rst $38                                          ; $44a5: $ff
	ld [bc], a                                       ; $44a6: $02
	ld a, [hl]                                       ; $44a7: $7e
	nop                                              ; $44a8: $00
	daa                                              ; $44a9: $27
	inc b                                            ; $44aa: $04
	nop                                              ; $44ab: $00
	ld [bc], a                                       ; $44ac: $02
	dec h                                            ; $44ad: $25
	inc b                                            ; $44ae: $04
	nop                                              ; $44af: $00
	ld [bc], a                                       ; $44b0: $02
	cp $b5                                           ; $44b1: $fe $b5
	pop hl                                           ; $44b3: $e1

jr_037_44b4:
	ld bc, $05ff                                     ; $44b4: $01 $ff $05
	ld a, [hl]                                       ; $44b7: $7e
	nop                                              ; $44b8: $00
	inc h                                            ; $44b9: $24
	inc d                                            ; $44ba: $14
	jp nz, $0424                                     ; $44bb: $c2 $24 $04

	adc $24                                          ; $44be: $ce $24
	ld d, $c2                                        ; $44c0: $16 $c2
	inc h                                            ; $44c2: $24
	ld [bc], a                                       ; $44c3: $02
	ld a, [hl]                                       ; $44c4: $7e
	ld bc, $a018                                     ; $44c5: $01 $18 $a0
	or c                                             ; $44c8: $b1
	pop de                                           ; $44c9: $d1
	rst $38                                          ; $44ca: $ff
	rlca                                             ; $44cb: $07
	dec h                                            ; $44cc: $25
	inc h                                            ; $44cd: $24
	or c                                             ; $44ce: $b1
	ld h, c                                          ; $44cf: $61
	nop                                              ; $44d0: $00
	nop                                              ; $44d1: $00
	dec h                                            ; $44d2: $25
	inc c                                            ; $44d3: $0c
	or c                                             ; $44d4: $b1
	pop hl                                           ; $44d5: $e1
	rst $38                                          ; $44d6: $ff
	dec b                                            ; $44d7: $05
	ld a, [hl]                                       ; $44d8: $7e
	nop                                              ; $44d9: $00
	inc h                                            ; $44da: $24
	ld de, $0100                                     ; $44db: $11 $00 $01
	dec h                                            ; $44de: $25
	stop                                             ; $44df: $10 $00
	ld bc, $27cb                                     ; $44e1: $01 $cb $27
	inc c                                            ; $44e4: $0c
	nop                                              ; $44e5: $00
	ld bc, $017e                                     ; $44e6: $01 $7e $01
	nop                                              ; $44e9: $00
	xor c                                            ; $44ea: $a9
	sub [hl]                                         ; $44eb: $96
	rst $38                                          ; $44ec: $ff
	ld b, $27                                        ; $44ed: $06 $27
	jr jr_037_456f                                   ; $44ef: $18 $7e

	nop                                              ; $44f1: $00
	sub [hl]                                         ; $44f2: $96
	rst $38                                          ; $44f3: $ff
	inc b                                            ; $44f4: $04
	ld [hl+], a                                      ; $44f5: $22
	inc c                                            ; $44f6: $0c
	sub [hl]                                         ; $44f7: $96
	rst $38                                          ; $44f8: $ff
	ld [bc], a                                       ; $44f9: $02
	daa                                              ; $44fa: $27
	inc b                                            ; $44fb: $04
	nop                                              ; $44fc: $00
	ld [bc], a                                       ; $44fd: $02
	dec h                                            ; $44fe: $25
	inc b                                            ; $44ff: $04
	nop                                              ; $4500: $00
	ld [bc], a                                       ; $4501: $02
	or c                                             ; $4502: $b1
	pop hl                                           ; $4503: $e1
	rst $38                                          ; $4504: $ff
	dec b                                            ; $4505: $05
	inc h                                            ; $4506: $24
	inc d                                            ; $4507: $14
	jp nz, $0424                                     ; $4508: $c2 $24 $04

	adc $24                                          ; $450b: $ce $24
	rla                                              ; $450d: $17
	nop                                              ; $450e: $00
	ld bc, $017e                                     ; $450f: $01 $7e $01
	jr jr_037_44b4                                   ; $4512: $18 $a0

	sub [hl]                                         ; $4514: $96
	jr nc, jr_037_451e                               ; $4515: $30 $07

	dec h                                            ; $4517: $25
	inc h                                            ; $4518: $24
	push bc                                          ; $4519: $c5
	dec h                                            ; $451a: $25
	inc c                                            ; $451b: $0c
	or c                                             ; $451c: $b1
	pop hl                                           ; $451d: $e1

jr_037_451e:
	rst $38                                          ; $451e: $ff
	inc b                                            ; $451f: $04
	inc h                                            ; $4520: $24
	rrca                                             ; $4521: $0f
	nop                                              ; $4522: $00
	ld bc, $22cd                                     ; $4523: $01 $cd $22
	rrca                                             ; $4526: $0f
	nop                                              ; $4527: $00
	ld bc, $0f20                                     ; $4528: $01 $20 $0f
	nop                                              ; $452b: $00
	ld bc, $ff96                                     ; $452c: $01 $96 $ff
	rlca                                             ; $452f: $07
	jr nz, @+$1e                                     ; $4530: $20 $1c

	push bc                                          ; $4532: $c5
	jr nz, @+$0a                                     ; $4533: $20 $08

	or c                                             ; $4535: $b1
	pop bc                                           ; $4536: $c1
	rst $38                                          ; $4537: $ff
	ld bc, $0527                                     ; $4538: $01 $27 $05
	nop                                              ; $453b: $00
	ld bc, $0525                                     ; $453c: $01 $25 $05
	nop                                              ; $453f: $00
	ld bc, $d1b1                                     ; $4540: $01 $b1 $d1
	rst $38                                          ; $4543: $ff
	ld bc, $0724                                     ; $4544: $01 $24 $07
	nop                                              ; $4547: $00
	ld bc, $0724                                     ; $4548: $01 $24 $07
	nop                                              ; $454b: $00
	ld bc, $0724                                     ; $454c: $01 $24 $07
	nop                                              ; $454f: $00
	ld bc, $e1b1                                     ; $4550: $01 $b1 $e1
	rst $38                                          ; $4553: $ff
	ld b, $20                                        ; $4554: $06 $20
	jr @-$4d                                         ; $4556: $18 $b1

	pop hl                                           ; $4558: $e1
	rst $38                                          ; $4559: $ff
	ld bc, $0525                                     ; $455a: $01 $25 $05
	sub [hl]                                         ; $455d: $96
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	sub a                                            ; $4560: $97
	ld c, l                                          ; $4561: $4d
	ld a, [hl]                                       ; $4562: $7e
	ld bc, $a000                                     ; $4563: $01 $00 $a0
	dec h                                            ; $4566: $25
	dec hl                                           ; $4567: $2b
	sub a                                            ; $4568: $97
	nop                                              ; $4569: $00
	or c                                             ; $456a: $b1
	pop de                                           ; $456b: $d1
	rst $38                                          ; $456c: $ff
	rlca                                             ; $456d: $07
	ld a, [hl]                                       ; $456e: $7e

jr_037_456f:
	nop                                              ; $456f: $00
	inc h                                            ; $4570: $24
	ld de, $0100                                     ; $4571: $11 $00 $01
	dec h                                            ; $4574: $25
	stop                                             ; $4575: $10 $00
	ld bc, $27cc                                     ; $4577: $01 $cc $27
	inc c                                            ; $457a: $0c
	nop                                              ; $457b: $00
	ld bc, $017e                                     ; $457c: $01 $7e $01
	nop                                              ; $457f: $00
	xor c                                            ; $4580: $a9
	sub [hl]                                         ; $4581: $96
	rst $38                                          ; $4582: $ff
	rlca                                             ; $4583: $07
	daa                                              ; $4584: $27
	jr jr_037_4605                                   ; $4585: $18 $7e

	nop                                              ; $4587: $00
	ld [hl+], a                                      ; $4588: $22
	inc c                                            ; $4589: $0c
	sub [hl]                                         ; $458a: $96
	rst $38                                          ; $458b: $ff
	ld [bc], a                                       ; $458c: $02
	daa                                              ; $458d: $27
	dec b                                            ; $458e: $05
	nop                                              ; $458f: $00
	ld bc, $0525                                     ; $4590: $01 $25 $05
	nop                                              ; $4593: $00
	ld bc, $e1b1                                     ; $4594: $01 $b1 $e1
	rst $38                                          ; $4597: $ff
	inc b                                            ; $4598: $04
	inc h                                            ; $4599: $24
	rlca                                             ; $459a: $07
	nop                                              ; $459b: $00
	add hl, bc                                       ; $459c: $09
	pop de                                           ; $459d: $d1
	call $0724                                       ; $459e: $cd $24 $07
	nop                                              ; $45a1: $00
	ld bc, $ff96                                     ; $45a2: $01 $96 $ff
	rlca                                             ; $45a5: $07
	jr nz, jr_037_45c0                               ; $45a6: $20 $18

	ld a, [hl]                                       ; $45a8: $7e
	ld bc, $a900                                     ; $45a9: $01 $00 $a9
	or c                                             ; $45ac: $b1
	pop de                                           ; $45ad: $d1
	rst $38                                          ; $45ae: $ff
	rlca                                             ; $45af: $07
	dec h                                            ; $45b0: $25
	jr nc, jr_037_4631                               ; $45b1: $30 $7e

	ld bc, $aa00                                     ; $45b3: $01 $00 $aa
	or c                                             ; $45b6: $b1
	pop bc                                           ; $45b7: $c1
	rst $38                                          ; $45b8: $ff
	rlca                                             ; $45b9: $07

jr_037_45ba:
	inc h                                            ; $45ba: $24
	rrca                                             ; $45bb: $0f
	nop                                              ; $45bc: $00
	ld bc, $0f22                                     ; $45bd: $01 $22 $0f

jr_037_45c0:
	nop                                              ; $45c0: $00
	ld bc, $0f20                                     ; $45c1: $01 $20 $0f

jr_037_45c4:
	nop                                              ; $45c4: $00
	ld bc, $2020                                     ; $45c5: $01 $20 $20
	jp $0620                                         ; $45c8: $c3 $20 $06


	nop                                              ; $45cb: $00
	ld a, [bc]                                       ; $45cc: $0a
	rst GetHLinHL                                          ; $45cd: $cf
	sub d                                            ; $45ce: $92
	rst JumpTable                                          ; $45cf: $c7
	ld a, [hl]                                       ; $45d0: $7e
	nop                                              ; $45d1: $00
	nop                                              ; $45d2: $00
	ld a, b                                          ; $45d3: $78
	sub [hl]                                         ; $45d4: $96
	rst $38                                          ; $45d5: $ff
	rlca                                             ; $45d6: $07
	scf                                              ; $45d7: $37
	db $10                                           ; $45d8: $10
	or c                                             ; $45d9: $b1
	add c                                            ; $45da: $81
	rst $38                                          ; $45db: $ff
	ld [bc], a                                       ; $45dc: $02
	cp [hl]                                          ; $45dd: $be
	inc b                                            ; $45de: $04
	jr c, jr_037_4618                                ; $45df: $38 $37

	jr c, jr_037_461a                                ; $45e1: $38 $37

	jr c, jr_037_461c                                ; $45e3: $38 $37

	jr c, jr_037_461e                                ; $45e5: $38 $37

	jr c, jr_037_4620                                ; $45e7: $38 $37

	jr c, jr_037_4622                                ; $45e9: $38 $37

	jr c, jr_037_4624                                ; $45eb: $38 $37

	cp [hl]                                          ; $45ed: $be
	or l                                             ; $45ee: $b5
	sub c                                            ; $45ef: $91
	ld bc, $07ff                                     ; $45f0: $01 $ff $07
	add hl, hl                                       ; $45f3: $29
	jr @-$32                                         ; $45f4: $18 $cc

	sub d                                            ; $45f6: $92
	add hl, de                                       ; $45f7: $19
	jr jr_037_45c4                                   ; $45f8: $18 $ca

	sub c                                            ; $45fa: $91
	ld l, $18                                        ; $45fb: $2e $18
	or l                                             ; $45fd: $b5
	or c                                             ; $45fe: $b1
	inc bc                                           ; $45ff: $03
	rst $38                                          ; $4600: $ff
	ld b, $22                                        ; $4601: $06 $22
	jr jr_037_45ba                                   ; $4603: $18 $b5

jr_037_4605:
	add c                                            ; $4605: $81
	ld [bc], a                                       ; $4606: $02
	rst $38                                          ; $4607: $ff
	rlca                                             ; $4608: $07
	ld a, [hl]                                       ; $4609: $7e
	ld bc, $a918                                     ; $460a: $01 $18 $a9
	inc l                                            ; $460d: $2c
	inc h                                            ; $460e: $24
	or c                                             ; $460f: $b1
	ld [hl], c                                       ; $4610: $71
	rst $38                                          ; $4611: $ff
	ld [bc], a                                       ; $4612: $02
	dec hl                                           ; $4613: $2b
	inc b                                            ; $4614: $04
	nop                                              ; $4615: $00
	ld [bc], a                                       ; $4616: $02
	add hl, hl                                       ; $4617: $29

jr_037_4618:
	inc b                                            ; $4618: $04
	nop                                              ; $4619: $00

jr_037_461a:
	ld [bc], a                                       ; $461a: $02
	or c                                             ; $461b: $b1

jr_037_461c:
	add c                                            ; $461c: $81
	rst $38                                          ; $461d: $ff

jr_037_461e:
	rlca                                             ; $461e: $07
	dec hl                                           ; $461f: $2b

jr_037_4620:
	inc h                                            ; $4620: $24
	sub [hl]                                         ; $4621: $96

jr_037_4622:
	dec b                                            ; $4622: $05
	ld [bc], a                                       ; $4623: $02

jr_037_4624:
	ld a, [hl]                                       ; $4624: $7e
	nop                                              ; $4625: $00
	daa                                              ; $4626: $27
	dec b                                            ; $4627: $05
	nop                                              ; $4628: $00
	ld bc, $0525                                     ; $4629: $01 $25 $05
	nop                                              ; $462c: $00
	ld bc, $fffe                                     ; $462d: $01 $fe $ff
	or h                                             ; $4630: $b4

jr_037_4631:
	ld l, b                                          ; $4631: $68
	ld hl, $7e01                                     ; $4632: $21 $01 $7e
	nop                                              ; $4635: $00
	jr nz, @+$06                                     ; $4636: $20 $04

	add $20                                          ; $4638: $c6 $20
	inc b                                            ; $463a: $04
	jp nz, $0420                                     ; $463b: $c2 $20 $04

	add $20                                          ; $463e: $c6 $20
	inc b                                            ; $4640: $04
	jp nz, $0420                                     ; $4641: $c2 $20 $04

	add $20                                          ; $4644: $c6 $20
	inc b                                            ; $4646: $04
	jp nz, $1424                                     ; $4647: $c2 $24 $14

	add $24                                          ; $464a: $c6 $24
	inc b                                            ; $464c: $04
	jp nz, $1425                                     ; $464d: $c2 $25 $14

	add $25                                          ; $4650: $c6 $25
	inc b                                            ; $4652: $04
	jp nz, $1426                                     ; $4653: $c2 $26 $14

	add $26                                          ; $4656: $c6 $26
	inc b                                            ; $4658: $04
	jp nz, $1427                                     ; $4659: $c2 $27 $14

	add $27                                          ; $465c: $c6 $27
	inc b                                            ; $465e: $04
	jp nz, $141b                                     ; $465f: $c2 $1b $14

	add $1b                                          ; $4662: $c6 $1b
	inc b                                            ; $4664: $04
	jp nz, $2a1b                                     ; $4665: $c2 $1b $2a

	add $1b                                          ; $4668: $c6 $1b
	ld b, $c2                                        ; $466a: $06 $c2
	cp $c2                                           ; $466c: $fe $c2
	add c                                            ; $466e: $81
	ld a, [hl]                                       ; $466f: $7e
	nop                                              ; $4670: $00
	inc d                                            ; $4671: $14
	inc d                                            ; $4672: $14
	add $14                                          ; $4673: $c6 $14
	inc b                                            ; $4675: $04
	jp nz, $1414                                     ; $4676: $c2 $14 $14

	add $14                                          ; $4679: $c6 $14
	inc b                                            ; $467b: $04
	jp nz, $1419                                     ; $467c: $c2 $19 $14

	add $19                                          ; $467f: $c6 $19
	inc b                                            ; $4681: $04
	jp nz, $1419                                     ; $4682: $c2 $19 $14

	add $19                                          ; $4685: $c6 $19
	inc b                                            ; $4687: $04
	jp nz, $121d                                     ; $4688: $c2 $1d $12

	add $1d                                          ; $468b: $c6 $1d
	ld b, $c2                                        ; $468d: $06 $c2
	dec e                                            ; $468f: $1d
	ld [de], a                                       ; $4690: $12
	add $1d                                          ; $4691: $c6 $1d
	ld b, $c2                                        ; $4693: $06 $c2
	dec de                                           ; $4695: $1b
	ld [de], a                                       ; $4696: $12
	add $1b                                          ; $4697: $c6 $1b
	ld b, $c2                                        ; $4699: $06 $c2
	dec de                                           ; $469b: $1b
	ld [de], a                                       ; $469c: $12
	add $1b                                          ; $469d: $c6 $1b
	ld b, $c2                                        ; $469f: $06 $c2
	inc d                                            ; $46a1: $14
	inc d                                            ; $46a2: $14
	add $14                                          ; $46a3: $c6 $14
	inc b                                            ; $46a5: $04
	jp nz, $1418                                     ; $46a6: $c2 $18 $14

	add $18                                          ; $46a9: $c6 $18
	inc b                                            ; $46ab: $04
	jp nz, $1019                                     ; $46ac: $c2 $19 $10

	add $19                                          ; $46af: $c6 $19
	ld [$19c2], sp                                   ; $46b1: $08 $c2 $19
	inc d                                            ; $46b4: $14
	add $19                                          ; $46b5: $c6 $19
	inc b                                            ; $46b7: $04
	jp nz, $121d                                     ; $46b8: $c2 $1d $12

	add $1d                                          ; $46bb: $c6 $1d
	ld b, $c2                                        ; $46bd: $06 $c2
	dec de                                           ; $46bf: $1b
	ld [de], a                                       ; $46c0: $12
	add $1b                                          ; $46c1: $c6 $1b
	ld b, $c2                                        ; $46c3: $06 $c2
	inc d                                            ; $46c5: $14
	ld a, [bc]                                       ; $46c6: $0a
	add $14                                          ; $46c7: $c6 $14
	ld [bc], a                                       ; $46c9: $02
	jp nz, $0c00                                     ; $46ca: $c2 $00 $0c

	dec de                                           ; $46cd: $1b
	inc d                                            ; $46ce: $14
	add $1b                                          ; $46cf: $c6 $1b
	inc b                                            ; $46d1: $04
	jp nz, $0614                                     ; $46d2: $c2 $14 $06

	nop                                              ; $46d5: $00
	ld [bc], a                                       ; $46d6: $02
	inc d                                            ; $46d7: $14
	ld b, $00                                        ; $46d8: $06 $00
	ld [bc], a                                       ; $46da: $02
	inc d                                            ; $46db: $14
	ld b, $00                                        ; $46dc: $06 $00
	ld [bc], a                                       ; $46de: $02
	inc de                                           ; $46df: $13
	inc d                                            ; $46e0: $14
	add $13                                          ; $46e1: $c6 $13
	inc b                                            ; $46e3: $04
	jp nz, $1012                                     ; $46e4: $c2 $12 $10

	add $12                                          ; $46e7: $c6 $12
	ld [$12c2], sp                                   ; $46e9: $08 $c2 $12
	ld d, $c6                                        ; $46ec: $16 $c6
	ld [de], a                                       ; $46ee: $12
	ld [bc], a                                       ; $46ef: $02
	jp nz, $1619                                     ; $46f0: $c2 $19 $16

	add $19                                          ; $46f3: $c6 $19
	ld [bc], a                                       ; $46f5: $02
	jp nz, $141d                                     ; $46f6: $c2 $1d $14

	add $1d                                          ; $46f9: $c6 $1d
	inc b                                            ; $46fb: $04
	jp nz, $141b                                     ; $46fc: $c2 $1b $14

	add $1b                                          ; $46ff: $c6 $1b
	inc b                                            ; $4701: $04
	jp nz, $141f                                     ; $4702: $c2 $1f $14

	add $1f                                          ; $4705: $c6 $1f
	inc b                                            ; $4707: $04
	jp nz, $0620                                     ; $4708: $c2 $20 $06

	add $20                                          ; $470b: $c6 $20
	ld [bc], a                                       ; $470d: $02
	jp nz, $0800                                     ; $470e: $c2 $00 $08

	jr nz, jr_037_4719                               ; $4711: $20 $06

	nop                                              ; $4713: $00
	ld [bc], a                                       ; $4714: $02
	jr jr_037_472b                                   ; $4715: $18 $14

	add $18                                          ; $4717: $c6 $18

jr_037_4719:
	inc b                                            ; $4719: $04
	jp nz, $1419                                     ; $471a: $c2 $19 $14

	add $19                                          ; $471d: $c6 $19
	inc b                                            ; $471f: $04
	jp nz, $1419                                     ; $4720: $c2 $19 $14

	add $19                                          ; $4723: $c6 $19
	inc b                                            ; $4725: $04
	jp nz, $1419                                     ; $4726: $c2 $19 $14

	add $19                                          ; $4729: $c6 $19

jr_037_472b:
	inc b                                            ; $472b: $04
	jp nz, $141b                                     ; $472c: $c2 $1b $14

	add $1b                                          ; $472f: $c6 $1b
	inc b                                            ; $4731: $04
	jp nz, $2014                                     ; $4732: $c2 $14 $20

	add $14                                          ; $4735: $c6 $14
	inc b                                            ; $4737: $04
	add d                                            ; $4738: $82
	jp nz, $050f                                     ; $4739: $c2 $0f $05

	nop                                              ; $473c: $00
	ld bc, $050d                                     ; $473d: $01 $0d $05
	nop                                              ; $4740: $00
	ld bc, $82c2                                     ; $4741: $01 $c2 $82
	ld a, [hl]                                       ; $4744: $7e
	nop                                              ; $4745: $00
	inc c                                            ; $4746: $0c
	ld [de], a                                       ; $4747: $12
	add $0c                                          ; $4748: $c6 $0c
	ld b, $c2                                        ; $474a: $06 $c2
	inc c                                            ; $474c: $0c
	ld d, $c6                                        ; $474d: $16 $c6
	inc c                                            ; $474f: $0c
	ld [bc], a                                       ; $4750: $02
	jp nz, $140d                                     ; $4751: $c2 $0d $14

	add $0d                                          ; $4754: $c6 $0d
	inc b                                            ; $4756: $04
	jp nz, $160d                                     ; $4757: $c2 $0d $16

	add $0d                                          ; $475a: $c6 $0d
	ld [bc], a                                       ; $475c: $02
	jp nz, Jump_037_500f                             ; $475d: $c2 $0f $50

	add $0f                                          ; $4760: $c6 $0f
	inc c                                            ; $4762: $0c
	jp nz, $0400                                     ; $4763: $c2 $00 $04

	add c                                            ; $4766: $81
	nop                                              ; $4767: $00
	jr jr_037_4780                                   ; $4768: $18 $16

	inc d                                            ; $476a: $14
	add $16                                          ; $476b: $c6 $16
	inc b                                            ; $476d: $04
	jp nz, $1800                                     ; $476e: $c2 $00 $18

	ld d, $14                                        ; $4771: $16 $14
	add $16                                          ; $4773: $c6 $16
	inc b                                            ; $4775: $04
	jp nz, $2a1b                                     ; $4776: $c2 $1b $2a

	add $1b                                          ; $4779: $c6 $1b
	inc b                                            ; $477b: $04
	jp nz, $0200                                     ; $477c: $c2 $00 $02

	dec de                                           ; $477f: $1b

jr_037_4780:
	ld a, [hl+]                                      ; $4780: $2a
	add $1b                                          ; $4781: $c6 $1b
	inc b                                            ; $4783: $04
	jp nz, $0200                                     ; $4784: $c2 $00 $02

	cp $ff                                           ; $4787: $fe $ff
	ret nc                                           ; $4789: $d0

	ld l, b                                          ; $478a: $68
	dec c                                            ; $478b: $0d
	ld [$080d], sp                                   ; $478c: $08 $0d $08
	dec c                                            ; $478f: $0d
	ld [$1814], sp                                   ; $4790: $08 $14 $18
	dec c                                            ; $4793: $0d
	db $10                                           ; $4794: $10
	cp [hl]                                          ; $4795: $be
	ld [$140d], sp                                   ; $4796: $08 $0d $14
	dec c                                            ; $4799: $0d
	dec c                                            ; $479a: $0d
	cp [hl]                                          ; $479b: $be
	cp [hl]                                          ; $479c: $be
	jr jr_037_47b3                                   ; $479d: $18 $14

	inc d                                            ; $479f: $14
	inc d                                            ; $47a0: $14
	nop                                              ; $47a1: $00
	cp [hl]                                          ; $47a2: $be
	cp $fb                                           ; $47a3: $fe $fb
	cp [hl]                                          ; $47a5: $be
	ld [$000d], sp                                   ; $47a6: $08 $0d $00
	dec c                                            ; $47a9: $0d
	inc de                                           ; $47aa: $13
	nop                                              ; $47ab: $00
	dec c                                            ; $47ac: $0d
	inc de                                           ; $47ad: $13
	nop                                              ; $47ae: $00
	dec c                                            ; $47af: $0d
	inc de                                           ; $47b0: $13
	dec c                                            ; $47b1: $0d
	dec c                                            ; $47b2: $0d

jr_037_47b3:
	cp [hl]                                          ; $47b3: $be
	ei                                               ; $47b4: $fb
	ld [bc], a                                       ; $47b5: $02
	cp [hl]                                          ; $47b6: $be
	ld [$0014], sp                                   ; $47b7: $08 $14 $00
	dec c                                            ; $47ba: $0d
	inc de                                           ; $47bb: $13
	nop                                              ; $47bc: $00
	dec c                                            ; $47bd: $0d
	inc d                                            ; $47be: $14
	nop                                              ; $47bf: $00
	dec c                                            ; $47c0: $0d
	inc de                                           ; $47c1: $13
	dec c                                            ; $47c2: $0d
	dec c                                            ; $47c3: $0d
	inc d                                            ; $47c4: $14
	nop                                              ; $47c5: $00
	dec c                                            ; $47c6: $0d
	inc de                                           ; $47c7: $13
	nop                                              ; $47c8: $00
	dec c                                            ; $47c9: $0d
	inc de                                           ; $47ca: $13
	nop                                              ; $47cb: $00
	dec c                                            ; $47cc: $0d
	inc de                                           ; $47cd: $13
	dec c                                            ; $47ce: $0d
	dec c                                            ; $47cf: $0d
	cp [hl]                                          ; $47d0: $be
	cp [hl]                                          ; $47d1: $be
	ld [$0d14], sp                                   ; $47d2: $08 $14 $0d
	dec c                                            ; $47d5: $0d
	inc d                                            ; $47d6: $14
	nop                                              ; $47d7: $00
	inc de                                           ; $47d8: $13
	ld a, [bc]                                       ; $47d9: $0a
	cp [hl]                                          ; $47da: $be
	dec c                                            ; $47db: $0d
	inc b                                            ; $47dc: $04
	dec c                                            ; $47dd: $0d
	inc b                                            ; $47de: $04
	cp [hl]                                          ; $47df: $be
	ld [$130d], sp                                   ; $47e0: $08 $0d $13
	dec c                                            ; $47e3: $0d
	dec c                                            ; $47e4: $0d
	inc d                                            ; $47e5: $14
	nop                                              ; $47e6: $00
	dec c                                            ; $47e7: $0d
	inc de                                           ; $47e8: $13
	nop                                              ; $47e9: $00
	dec c                                            ; $47ea: $0d
	inc de                                           ; $47eb: $13
	cp [hl]                                          ; $47ec: $be
	dec c                                            ; $47ed: $0d
	inc b                                            ; $47ee: $04
	dec c                                            ; $47ef: $0d
	inc b                                            ; $47f0: $04
	cp [hl]                                          ; $47f1: $be
	ld [$0d0d], sp                                   ; $47f2: $08 $0d $0d
	dec c                                            ; $47f5: $0d
	inc de                                           ; $47f6: $13
	cp [hl]                                          ; $47f7: $be
	cp [hl]                                          ; $47f8: $be
	ld [$0014], sp                                   ; $47f9: $08 $14 $00
	dec c                                            ; $47fc: $0d
	inc de                                           ; $47fd: $13
	nop                                              ; $47fe: $00
	dec c                                            ; $47ff: $0d
	inc de                                           ; $4800: $13
	cp [hl]                                          ; $4801: $be
	dec c                                            ; $4802: $0d
	inc b                                            ; $4803: $04
	dec c                                            ; $4804: $0d
	inc b                                            ; $4805: $04
	cp [hl]                                          ; $4806: $be
	ld [$0d0d], sp                                   ; $4807: $08 $0d $0d
	dec c                                            ; $480a: $0d
	dec c                                            ; $480b: $0d
	cp [hl]                                          ; $480c: $be
	inc de                                           ; $480d: $13
	ld [$040d], sp                                   ; $480e: $08 $0d $04
	dec c                                            ; $4811: $0d
	inc b                                            ; $4812: $04
	cp [hl]                                          ; $4813: $be
	ld [$130d], sp                                   ; $4814: $08 $0d $13
	nop                                              ; $4817: $00
	dec c                                            ; $4818: $0d
	inc de                                           ; $4819: $13
	dec c                                            ; $481a: $0d
	dec c                                            ; $481b: $0d
	cp [hl]                                          ; $481c: $be
	inc d                                            ; $481d: $14
	jr jr_037_4829                                   ; $481e: $18 $09

	jr jr_037_4822                                   ; $4820: $18 $00

jr_037_4822:
	ld h, b                                          ; $4822: $60
	dec c                                            ; $4823: $0d
	inc b                                            ; $4824: $04
	ei                                               ; $4825: $fb
	ld c, $03                                        ; $4826: $0e $03
	ei                                               ; $4828: $fb

jr_037_4829:
	ld d, $0e                                        ; $4829: $16 $0e
	ld [bc], a                                       ; $482b: $02
	nop                                              ; $482c: $00
	db $10                                           ; $482d: $10
	dec c                                            ; $482e: $0d
	ld [$1814], sp                                   ; $482f: $08 $14 $18
	inc de                                           ; $4832: $13
	ld [$0800], sp                                   ; $4833: $08 $00 $08
	dec c                                            ; $4836: $0d
	ld [$1814], sp                                   ; $4837: $08 $14 $18

jr_037_483a:
	inc d                                            ; $483a: $14
	db $10                                           ; $483b: $10
	dec c                                            ; $483c: $0d
	ld [$040d], sp                                   ; $483d: $08 $0d $04
	cp [hl]                                          ; $4840: $be
	inc bc                                           ; $4841: $03
	ld c, $0e                                        ; $4842: $0e $0e
	ld c, $0e                                        ; $4844: $0e $0e
	ld c, $0e                                        ; $4846: $0e $0e
	cp [hl]                                          ; $4848: $be
	ld c, $02                                        ; $4849: $0e $02
	inc d                                            ; $484b: $14
	db $10                                           ; $484c: $10
	dec c                                            ; $484d: $0d
	ld [$03be], sp                                   ; $484e: $08 $be $03
	ld c, $0e                                        ; $4851: $0e $0e
	ld c, $0e                                        ; $4853: $0e $0e
	ld c, $0e                                        ; $4855: $0e $0e
	ld c, $0e                                        ; $4857: $0e $0e
	cp [hl]                                          ; $4859: $be
	cp $ff                                           ; $485a: $fe $ff
	or h                                             ; $485c: $b4
	and l                                            ; $485d: $a5
	ld [hl], c                                       ; $485e: $71
	inc bc                                           ; $485f: $03
	ld e, $0c                                        ; $4860: $1e $0c
	jp nz, $0c1e                                     ; $4862: $c2 $1e $0c

	rst JumpTable                                          ; $4865: $c7
	ld hl, $c212                                     ; $4866: $21 $12 $c2
	ld hl, $fb06                                     ; $4869: $21 $06 $fb
	rst JumpTable                                          ; $486c: $c7
	ld hl, $c208                                     ; $486d: $21 $08 $c2
	ld hl, $fb04                                     ; $4870: $21 $04 $fb
	ld [bc], a                                       ; $4873: $02
	rst JumpTable                                          ; $4874: $c7
	jr nz, jr_037_4883                               ; $4875: $20 $0c

	add $1f                                          ; $4877: $c6 $1f
	ld [de], a                                       ; $4879: $12
	jp nz, $061f                                     ; $487a: $c2 $1f $06

	add $1f                                          ; $487d: $c6 $1f
	ld [de], a                                       ; $487f: $12
	jp nz, $061f                                     ; $4880: $c2 $1f $06

jr_037_4883:
	add $26                                          ; $4883: $c6 $26
	ld [de], a                                       ; $4885: $12
	jp nz, $0626                                     ; $4886: $c2 $26 $06

	add $25                                          ; $4889: $c6 $25
	inc c                                            ; $488b: $0c
	add $7e                                          ; $488c: $c6 $7e
	dec e                                            ; $488e: $1d
	jr nc, jr_037_483a                               ; $488f: $30 $a9

	sub [hl]                                         ; $4891: $96
	ld [hl-], a                                      ; $4892: $32
	rlca                                             ; $4893: $07
	jr z, jr_037_48f6                                ; $4894: $28 $60

	rst $38                                          ; $4896: $ff
	or h                                             ; $4897: $b4
	and l                                            ; $4898: $a5
	sub c                                            ; $4899: $91
	ld bc, $0c21                                     ; $489a: $01 $21 $0c
	jp $0c21                                         ; $489d: $c3 $21 $0c


	ret                                              ; $48a0: $c9


	ld h, $12                                        ; $48a1: $26 $12
	jp $0626                                         ; $48a3: $c3 $26 $06


	ei                                               ; $48a6: $fb
	ret                                              ; $48a7: $c9


	ld h, $08                                        ; $48a8: $26 $08
	jp nz, $0426                                     ; $48aa: $c2 $26 $04

	ei                                               ; $48ad: $fb
	ld [bc], a                                       ; $48ae: $02
	ret                                              ; $48af: $c9


	dec h                                            ; $48b0: $25
	inc c                                            ; $48b1: $0c
	ret                                              ; $48b2: $c9


	jr z, jr_037_48c7                                ; $48b3: $28 $12

	call nz, $0628                                   ; $48b5: $c4 $28 $06
	ret                                              ; $48b8: $c9


	jr z, jr_037_48cd                                ; $48b9: $28 $12

	call nz, $0628                                   ; $48bb: $c4 $28 $06
	ret z                                            ; $48be: $c8

	dec hl                                           ; $48bf: $2b
	ld [de], a                                       ; $48c0: $12
	call nz, $062b                                   ; $48c1: $c4 $2b $06
	ret z                                            ; $48c4: $c8

	ld a, [hl+]                                      ; $48c5: $2a
	inc c                                            ; $48c6: $0c

jr_037_48c7:
	rst JumpTable                                          ; $48c7: $c7
	ld a, [hl]                                       ; $48c8: $7e
	dec e                                            ; $48c9: $1d
	jr nc, @-$54                                     ; $48ca: $30 $aa

	sub [hl]                                         ; $48cc: $96

jr_037_48cd:
	ld [hl-], a                                      ; $48cd: $32
	rlca                                             ; $48ce: $07
	dec l                                            ; $48cf: $2d
	ld h, b                                          ; $48d0: $60
	rst $38                                          ; $48d1: $ff
	or h                                             ; $48d2: $b4
	and l                                            ; $48d3: $a5
	ld hl, $0e1c                                     ; $48d4: $21 $1c $0e
	inc c                                            ; $48d7: $0c
	add $0e                                          ; $48d8: $c6 $0e
	inc c                                            ; $48da: $0c
	jp nz, $120e                                     ; $48db: $c2 $0e $12

	add $0e                                          ; $48de: $c6 $0e
	ld b, $fb                                        ; $48e0: $06 $fb
	jp nz, $080e                                     ; $48e2: $c2 $0e $08

	add $0e                                          ; $48e5: $c6 $0e
	inc b                                            ; $48e7: $04
	ei                                               ; $48e8: $fb
	ld [bc], a                                       ; $48e9: $02
	jp nz, $0c0d                                     ; $48ea: $c2 $0d $0c

	jp nz, $120c                                     ; $48ed: $c2 $0c $12

	add $0c                                          ; $48f0: $c6 $0c
	ld b, $c2                                        ; $48f2: $06 $c2
	inc c                                            ; $48f4: $0c
	ld [de], a                                       ; $48f5: $12

jr_037_48f6:
	add $0c                                          ; $48f6: $c6 $0c
	ld b, $c2                                        ; $48f8: $06 $c2
	rlca                                             ; $48fa: $07
	ld [de], a                                       ; $48fb: $12
	add $07                                          ; $48fc: $c6 $07
	ld b, $c2                                        ; $48fe: $06 $c2
	rlca                                             ; $4900: $07
	inc c                                            ; $4901: $0c
	jp nz, $3009                                     ; $4902: $c2 $09 $30

	call nz, $2409                                   ; $4905: $c4 $09 $24
	add $09                                          ; $4908: $c6 $09
	inc c                                            ; $490a: $0c
	rst $38                                          ; $490b: $ff
	ret nc                                           ; $490c: $d0

	and l                                            ; $490d: $a5
	inc d                                            ; $490e: $14
	jr jr_037_4931                                   ; $490f: $18 $20

	jr jr_037_4933                                   ; $4911: $18 $20

	inc c                                            ; $4913: $0c
	jr nz, jr_037_4922                               ; $4914: $20 $0c

	jr nz, jr_037_4924                               ; $4916: $20 $0c

	cp [hl]                                          ; $4918: $be
	inc c                                            ; $4919: $0c
	jr nz, @+$21                                     ; $491a: $20 $1f

	jr nz, jr_037_493d                               ; $491c: $20 $1f

	cp [hl]                                          ; $491e: $be
	cp [hl]                                          ; $491f: $be
	ld b, $23                                        ; $4920: $06 $23

jr_037_4922:
	inc hl                                           ; $4922: $23
	ld [hl+], a                                      ; $4923: $22

jr_037_4924:
	ld hl, $2020                                     ; $4924: $21 $20 $20
	cp [hl]                                          ; $4927: $be
	rrca                                             ; $4928: $0f
	ld h, b                                          ; $4929: $60
	rst $38                                          ; $492a: $ff
	ret nc                                           ; $492b: $d0

	or h                                             ; $492c: $b4
	cp $92                                           ; $492d: $fe $92
	push bc                                          ; $492f: $c5
	pop de                                           ; $4930: $d1

jr_037_4931:
	db $fd                                           ; $4931: $fd
	or c                                             ; $4932: $b1

jr_037_4933:
	ld c, c                                          ; $4933: $49
	pop de                                           ; $4934: $d1
	call $0638                                       ; $4935: $cd $38 $06
	srl d                                            ; $4938: $cb $3a
	ld b, $b1                                        ; $493a: $06 $b1
	pop hl                                           ; $493c: $e1

jr_037_493d:
	sub h                                            ; $493d: $94
	rlca                                             ; $493e: $07
	ld a, [hl]                                       ; $493f: $7e
	dec e                                            ; $4940: $1d
	ld [hl-], a                                      ; $4941: $32
	xor c                                            ; $4942: $a9
	inc a                                            ; $4943: $3c
	sub h                                            ; $4944: $94
	sub [hl]                                         ; $4945: $96
	inc c                                            ; $4946: $0c
	rlca                                             ; $4947: $07
	ld a, [hl-]                                      ; $4948: $3a
	inc c                                            ; $4949: $0c
	dec a                                            ; $494a: $3d
	ld b, $3a                                        ; $494b: $06 $3a
	inc c                                            ; $494d: $0c
	ret                                              ; $494e: $c9


	ld [hl], $0c                                     ; $494f: $36 $0c
	dec [hl]                                         ; $4951: $35
	inc c                                            ; $4952: $0c
	add $33                                          ; $4953: $c6 $33
	inc c                                            ; $4955: $0c
	call nz, $0c2e                                   ; $4956: $c4 $2e $0c
	add $33                                          ; $4959: $c6 $33
	inc c                                            ; $495b: $0c
	swap l                                           ; $495c: $cb $35
	inc c                                            ; $495e: $0c
	ld [hl], $0c                                     ; $495f: $36 $0c
	or c                                             ; $4961: $b1
	pop bc                                           ; $4962: $c1
	ld h, h                                          ; $4963: $64

jr_037_4964:
	rlca                                             ; $4964: $07
	ld a, [hl-]                                      ; $4965: $3a
	ld h, h                                          ; $4966: $64
	or c                                             ; $4967: $b1
	pop af                                           ; $4968: $f1
	inc c                                            ; $4969: $0c
	rlca                                             ; $496a: $07
	ld a, [hl-]                                      ; $496b: $3a
	inc c                                            ; $496c: $0c
	inc a                                            ; $496d: $3c
	inc c                                            ; $496e: $0c
	dec a                                            ; $496f: $3d
	inc c                                            ; $4970: $0c
	push bc                                          ; $4971: $c5
	ld b, c                                          ; $4972: $41
	inc c                                            ; $4973: $0c
	rst GetHLinHL                                          ; $4974: $cf
	dec a                                            ; $4975: $3d
	ld b, $3c                                        ; $4976: $06 $3c
	ld b, $3a                                        ; $4978: $06 $3a
	inc c                                            ; $497a: $0c
	sub [hl]                                         ; $497b: $96
	ld d, b                                          ; $497c: $50
	rlca                                             ; $497d: $07
	inc a                                            ; $497e: $3c
	ld d, b                                          ; $497f: $50
	sub [hl]                                         ; $4980: $96
	ld b, $05                                        ; $4981: $06 $05
	inc a                                            ; $4983: $3c
	ld b, $3d                                        ; $4984: $06 $3d
	ld b, $96                                        ; $4986: $06 $96
	ld d, b                                          ; $4988: $50
	rlca                                             ; $4989: $07
	inc a                                            ; $498a: $3c
	ld d, b                                          ; $498b: $50
	or c                                             ; $498c: $b1
	sub c                                            ; $498d: $91
	inc c                                            ; $498e: $0c
	dec b                                            ; $498f: $05
	ld a, [hl-]                                      ; $4990: $3a
	inc c                                            ; $4991: $0c
	ld [hl], $0c                                     ; $4992: $36 $0c
	push bc                                          ; $4994: $c5
	inc sp                                           ; $4995: $33
	inc c                                            ; $4996: $0c
	or c                                             ; $4997: $b1
	add c                                            ; $4998: $81
	ld d, b                                          ; $4999: $50
	rlca                                             ; $499a: $07
	dec [hl]                                         ; $499b: $35
	ld d, b                                          ; $499c: $50
	or c                                             ; $499d: $b1
	pop bc                                           ; $499e: $c1
	inc c                                            ; $499f: $0c
	dec b                                            ; $49a0: $05
	ld [hl], $0c                                     ; $49a1: $36 $0c
	jp z, $0c3a                                      ; $49a3: $ca $3a $0c

	call z, $0c36                                    ; $49a6: $cc $36 $0c
	or c                                             ; $49a9: $b1
	or c                                             ; $49aa: $b1
	cp [hl]                                          ; $49ab: $be
	rlca                                             ; $49ac: $07
	dec [hl]                                         ; $49ad: $35
	cp [hl]                                          ; $49ae: $be
	cp $ff                                           ; $49af: $fe $ff
	or c                                             ; $49b1: $b1
	ld [hl], c                                       ; $49b2: $71
	jr jr_037_49ba                                   ; $49b3: $18 $05

	ccf                                              ; $49b5: $3f
	jr jr_037_49f7                                   ; $49b6: $18 $3f

	jr @-$68                                         ; $49b8: $18 $96

jr_037_49ba:
	inc h                                            ; $49ba: $24
	dec b                                            ; $49bb: $05
	ccf                                              ; $49bc: $3f
	inc h                                            ; $49bd: $24
	sub [hl]                                         ; $49be: $96
	inc c                                            ; $49bf: $0c
	dec b                                            ; $49c0: $05
	ccf                                              ; $49c1: $3f
	inc c                                            ; $49c2: $0c
	sub [hl]                                         ; $49c3: $96
	inc c                                            ; $49c4: $0c
	dec b                                            ; $49c5: $05
	ccf                                              ; $49c6: $3f
	inc c                                            ; $49c7: $0c
	sub [hl]                                         ; $49c8: $96
	jr jr_037_49d0                                   ; $49c9: $18 $05

	ccf                                              ; $49cb: $3f
	jr jr_037_4964                                   ; $49cc: $18 $96

	inc c                                            ; $49ce: $0c
	dec b                                            ; $49cf: $05

jr_037_49d0:
	ccf                                              ; $49d0: $3f
	inc c                                            ; $49d1: $0c
	sub [hl]                                         ; $49d2: $96
	jr jr_037_49da                                   ; $49d3: $18 $05

	ccf                                              ; $49d5: $3f
	jr jr_037_4a17                                   ; $49d6: $18 $3f

	jr @-$01                                         ; $49d8: $18 $fd

jr_037_49da:
	ret nc                                           ; $49da: $d0

	or h                                             ; $49db: $b4
	cp $c4                                           ; $49dc: $fe $c4
	db $d3                                           ; $49de: $d3
	ld a, l                                          ; $49df: $7d
	ld bc, $187f                                     ; $49e0: $01 $7f $18
	nop                                              ; $49e3: $00
	call c, $0638                                    ; $49e4: $dc $38 $06
	ld a, [hl-]                                      ; $49e7: $3a
	ld b, $c4                                        ; $49e8: $06 $c4
	ld a, [hl]                                       ; $49ea: $7e
	dec e                                            ; $49eb: $1d
	nop                                              ; $49ec: $00
	xor c                                            ; $49ed: $a9
	inc a                                            ; $49ee: $3c
	sub h                                            ; $49ef: $94
	ld a, [hl-]                                      ; $49f0: $3a
	inc c                                            ; $49f1: $0c
	dec a                                            ; $49f2: $3d
	ld b, $be                                        ; $49f3: $06 $be
	inc c                                            ; $49f5: $0c
	ld a, [hl-]                                      ; $49f6: $3a

jr_037_49f7:
	ld [hl], $35                                     ; $49f7: $36 $35

jr_037_49f9:
	inc sp                                           ; $49f9: $33
	ld l, $33                                        ; $49fa: $2e $33
	dec [hl]                                         ; $49fc: $35
	ld [hl], $be                                     ; $49fd: $36 $be
	ld a, [hl-]                                      ; $49ff: $3a
	ld h, h                                          ; $4a00: $64
	cp [hl]                                          ; $4a01: $be
	inc c                                            ; $4a02: $0c
	ld a, [hl-]                                      ; $4a03: $3a
	inc a                                            ; $4a04: $3c
	dec a                                            ; $4a05: $3d
	ld b, c                                          ; $4a06: $41
	cp [hl]                                          ; $4a07: $be
	dec a                                            ; $4a08: $3d
	ld b, $3c                                        ; $4a09: $06 $3c
	ld b, $3a                                        ; $4a0b: $06 $3a
	inc c                                            ; $4a0d: $0c
	inc a                                            ; $4a0e: $3c
	ld d, b                                          ; $4a0f: $50
	inc a                                            ; $4a10: $3c
	ld b, $3d                                        ; $4a11: $06 $3d
	ld b, $3c                                        ; $4a13: $06 $3c
	ld d, b                                          ; $4a15: $50
	ld a, [hl-]                                      ; $4a16: $3a

jr_037_4a17:
	inc c                                            ; $4a17: $0c
	ld [hl], $0c                                     ; $4a18: $36 $0c
	inc sp                                           ; $4a1a: $33
	inc c                                            ; $4a1b: $0c
	dec [hl]                                         ; $4a1c: $35
	ld d, b                                          ; $4a1d: $50
	ld [hl], $0c                                     ; $4a1e: $36 $0c
	ld a, [hl-]                                      ; $4a20: $3a
	inc c                                            ; $4a21: $0c
	ld [hl], $0c                                     ; $4a22: $36 $0c
	dec [hl]                                         ; $4a24: $35
	and d                                            ; $4a25: $a2
	cp $ff                                           ; $4a26: $fe $ff
	ret nc                                           ; $4a28: $d0

	or h                                             ; $4a29: $b4
	cp $fd                                           ; $4a2a: $fe $fd
	jr nc, @+$4c                                     ; $4a2c: $30 $4a

	cp $ff                                           ; $4a2e: $fe $ff
	dec h                                            ; $4a30: $25
	jr jr_037_4a58                                   ; $4a31: $18 $25

	jr @+$26                                         ; $4a33: $18 $24

	inc c                                            ; $4a35: $0c
	nop                                              ; $4a36: $00
	inc c                                            ; $4a37: $0c
	inc h                                            ; $4a38: $24
	jr jr_037_49f9                                   ; $4a39: $18 $be

	inc c                                            ; $4a3b: $0c
	dec h                                            ; $4a3c: $25
	nop                                              ; $4a3d: $00
	dec h                                            ; $4a3e: $25
	inc h                                            ; $4a3f: $24

jr_037_4a40:
	nop                                              ; $4a40: $00
	inc h                                            ; $4a41: $24
	cp [hl]                                          ; $4a42: $be
	dec h                                            ; $4a43: $25
	jr jr_037_4a6a                                   ; $4a44: $18 $24

	inc c                                            ; $4a46: $0c
	dec h                                            ; $4a47: $25
	jr jr_037_4a4a                                   ; $4a48: $18 $00

jr_037_4a4a:
	inc c                                            ; $4a4a: $0c
	inc h                                            ; $4a4b: $24
	jr jr_037_4a73                                   ; $4a4c: $18 $25

	jr jr_037_4a75                                   ; $4a4e: $18 $25

	jr jr_037_4a52                                   ; $4a50: $18 $00

jr_037_4a52:
	inc c                                            ; $4a52: $0c
	inc h                                            ; $4a53: $24
	jr jr_037_4a56                                   ; $4a54: $18 $00

jr_037_4a56:
	inc c                                            ; $4a56: $0c

jr_037_4a57:
	dec h                                            ; $4a57: $25

jr_037_4a58:
	jr jr_037_4a57                                   ; $4a58: $18 $fd

	or [hl]                                          ; $4a5a: $b6
	rst $38                                          ; $4a5b: $ff
	or e                                             ; $4a5c: $b3
	ld [bc], a                                       ; $4a5d: $02
	ld [hl-], a                                      ; $4a5e: $32
	ld bc, $3000                                     ; $4a5f: $01 $00 $30
	cp [hl]                                          ; $4a62: $be
	inc c                                            ; $4a63: $0c
	inc h                                            ; $4a64: $24
	dec h                                            ; $4a65: $25
	daa                                              ; $4a66: $27
	jr z, @+$2c                                      ; $4a67: $28 $2a

	dec hl                                           ; $4a69: $2b

jr_037_4a6a:
	cp [hl]                                          ; $4a6a: $be
	or l                                             ; $4a6b: $b5
	sub c                                            ; $4a6c: $91
	nop                                              ; $4a6d: $00
	jr z, jr_037_4a72                                ; $4a6e: $28 $02

	inc e                                            ; $4a70: $1c
	ld a, b                                          ; $4a71: $78

jr_037_4a72:
	or l                                             ; $4a72: $b5

jr_037_4a73:
	or d                                             ; $4a73: $b2
	ld [bc], a                                       ; $4a74: $02

jr_037_4a75:
	ld [hl-], a                                      ; $4a75: $32
	ld bc, $0cbe                                     ; $4a76: $01 $be $0c
	daa                                              ; $4a79: $27
	jr z, @+$2c                                      ; $4a7a: $28 $2a

	inc l                                            ; $4a7c: $2c
	dec l                                            ; $4a7d: $2d
	ld l, $be                                        ; $4a7e: $2e $be
	or l                                             ; $4a80: $b5
	add c                                            ; $4a81: $81
	nop                                              ; $4a82: $00
	jr z, jr_037_4a87                                ; $4a83: $28 $02

	jr nz, @+$7a                                     ; $4a85: $20 $78

jr_037_4a87:
	or l                                             ; $4a87: $b5
	sub c                                            ; $4a88: $91
	ld bc, $0164                                     ; $4a89: $01 $64 $01
	daa                                              ; $4a8c: $27
	jr @-$40                                         ; $4a8d: $18 $be

	jr nc, jr_037_4ab8                               ; $4a8f: $30 $27

	inc l                                            ; $4a91: $2c
	ld l, $30                                        ; $4a92: $2e $30
	inc sp                                           ; $4a94: $33
	ld [hl], $be                                     ; $4a95: $36 $be
	or c                                             ; $4a97: $b1
	ld [hl], c                                       ; $4a98: $71
	ld h, h                                          ; $4a99: $64
	inc b                                            ; $4a9a: $04
	ld a, [hl]                                       ; $4a9b: $7e
	dec l                                            ; $4a9c: $2d
	jr z, jr_037_4a40                                ; $4a9d: $28 $a1

	add hl, sp                                       ; $4a9f: $39
	adc h                                            ; $4aa0: $8c

jr_037_4aa1:
	rst $38                                          ; $4aa1: $ff
	or [hl]                                          ; $4aa2: $b6
	rst $38                                          ; $4aa3: $ff
	or c                                             ; $4aa4: $b1
	ld bc, $0532                                     ; $4aa5: $01 $32 $05
	ld a, [hl]                                       ; $4aa8: $7e
	dec l                                            ; $4aa9: $2d
	jr z, @-$5d                                      ; $4aaa: $28 $a1

	nop                                              ; $4aac: $00
	jr nc, jr_037_4ac8                               ; $4aad: $30 $19

	ld c, b                                          ; $4aaf: $48
	jp z, Jump_037_7820                              ; $4ab0: $ca $20 $78

	inc e                                            ; $4ab3: $1c
	ld c, b                                          ; $4ab4: $48
	ret                                              ; $4ab5: $c9


	inc hl                                           ; $4ab6: $23
	ld a, b                                          ; $4ab7: $78

jr_037_4ab8:
	or c                                             ; $4ab8: $b1
	and c                                            ; $4ab9: $a1
	ld h, h                                          ; $4aba: $64
	ld bc, $182c                                     ; $4abb: $01 $2c $18

jr_037_4abe:
	cp [hl]                                          ; $4abe: $be
	jr nc, @+$30                                     ; $4abf: $30 $2e

	jr nc, jr_037_4af6                               ; $4ac1: $30 $33

	ld [hl], $39                                     ; $4ac3: $36 $39
	inc a                                            ; $4ac5: $3c
	cp [hl]                                          ; $4ac6: $be
	or c                                             ; $4ac7: $b1

jr_037_4ac8:
	ld [hl], c                                       ; $4ac8: $71
	ld h, h                                          ; $4ac9: $64
	inc b                                            ; $4aca: $04
	ccf                                              ; $4acb: $3f
	adc h                                            ; $4acc: $8c
	rst $38                                          ; $4acd: $ff
	or [hl]                                          ; $4ace: $b6
	rst $38                                          ; $4acf: $ff
	ld hl, $0427                                     ; $4ad0: $21 $27 $04
	ld bc, $3000                                     ; $4ad3: $01 $00 $30
	db $fd                                           ; $4ad6: $fd
	db $fd                                           ; $4ad7: $fd
	ld c, d                                          ; $4ad8: $4a
	ld h, e                                          ; $4ad9: $63
	db $fd                                           ; $4ada: $fd
	db $fd                                           ; $4adb: $fd
	ld c, d                                          ; $4adc: $4a
	ld [hl], b                                       ; $4add: $70
	jp nz, $1808                                     ; $4ade: $c2 $08 $18

	cp [hl]                                          ; $4ae1: $be
	inc c                                            ; $4ae2: $0c
	ld [$0808], sp                                   ; $4ae3: $08 $08 $08
	nop                                              ; $4ae6: $00
	cp [hl]                                          ; $4ae7: $be
	sub [hl]                                         ; $4ae8: $96
	ld e, $01                                        ; $4ae9: $1e $01
	cp [hl]                                          ; $4aeb: $be
	jr nc, jr_037_4af6                               ; $4aec: $30 $08

	ld [$0c08], sp                                   ; $4aee: $08 $08 $0c
	rrca                                             ; $4af1: $0f
	cp [hl]                                          ; $4af2: $be
	sub [hl]                                         ; $4af3: $96
	nop                                              ; $4af4: $00
	nop                                              ; $4af5: $00

jr_037_4af6:
	ld a, [hl]                                       ; $4af6: $7e
	inc l                                            ; $4af7: $2c
	jr z, jr_037_4aa1                                ; $4af8: $28 $a7

	ld [de], a                                       ; $4afa: $12
	ld [hl], h                                       ; $4afb: $74
	rst $38                                          ; $4afc: $ff
	dec c                                            ; $4afd: $0d
	jr jr_037_4abe                                   ; $4afe: $18 $be

	inc c                                            ; $4b00: $0c
	dec c                                            ; $4b01: $0d
	dec c                                            ; $4b02: $0d
	dec c                                            ; $4b03: $0d
	dec c                                            ; $4b04: $0d
	dec c                                            ; $4b05: $0d
	dec c                                            ; $4b06: $0d
	cp [hl]                                          ; $4b07: $be
	cp [hl]                                          ; $4b08: $be
	inc c                                            ; $4b09: $0c
	dec c                                            ; $4b0a: $0d
	dec c                                            ; $4b0b: $0d
	dec c                                            ; $4b0c: $0d
	dec c                                            ; $4b0d: $0d
	dec c                                            ; $4b0e: $0d
	dec c                                            ; $4b0f: $0d
	dec c                                            ; $4b10: $0d
	dec c                                            ; $4b11: $0d
	cp [hl]                                          ; $4b12: $be
	db $fd                                           ; $4b13: $fd
	ret nc                                           ; $4b14: $d0

	rst $38                                          ; $4b15: $ff
	ld sp, $320c                                     ; $4b16: $31 $0c $32
	inc c                                            ; $4b19: $0c
	inc [hl]                                         ; $4b1a: $34
	jr @-$03                                         ; $4b1b: $18 $fb

	scf                                              ; $4b1d: $37
	jr jr_037_4b5b                                   ; $4b1e: $18 $3b

	inc c                                            ; $4b20: $0c
	inc a                                            ; $4b21: $3c
	inc c                                            ; $4b22: $0c
	ccf                                              ; $4b23: $3f
	jr jr_037_4b5d                                   ; $4b24: $18 $37

	jr nc, jr_037_4b5f                               ; $4b26: $30 $37

	jr jr_037_4b69                                   ; $4b28: $18 $3f

	jr @+$36                                         ; $4b2a: $18 $34

	jr @-$03                                         ; $4b2c: $18 $fb

	ld [bc], a                                       ; $4b2e: $02
	scf                                              ; $4b2f: $37
	jr jr_037_4b71                                   ; $4b30: $18 $3f

	jr nc, jr_037_4b73                               ; $4b32: $30 $3f

	jr nc, @+$41                                     ; $4b34: $30 $3f

	jr nc, jr_037_4b6c                               ; $4b36: $30 $34

	jr jr_037_4b6c                                   ; $4b38: $18 $32

	inc c                                            ; $4b3a: $0c
	dec sp                                           ; $4b3b: $3b
	inc c                                            ; $4b3c: $0c
	inc [hl]                                         ; $4b3d: $34
	jr jr_037_4b72                                   ; $4b3e: $18 $32

	inc c                                            ; $4b40: $0c
	ld sp, $340c                                     ; $4b41: $31 $0c $34
	jr jr_037_4b85                                   ; $4b44: $18 $3f

	db $10                                           ; $4b46: $10
	dec sp                                           ; $4b47: $3b
	db $10                                           ; $4b48: $10
	inc [hl]                                         ; $4b49: $34
	db $10                                           ; $4b4a: $10
	dec [hl]                                         ; $4b4b: $35
	ld [hl], h                                       ; $4b4c: $74
	rst $38                                          ; $4b4d: $ff
	or [hl]                                          ; $4b4e: $b6
	add d                                            ; $4b4f: $82
	ldh a, [c]                                       ; $4b50: $f2
	nop                                              ; $4b51: $00
	ld a, [bc]                                       ; $4b52: $0a
	ld bc, $1000                                     ; $4b53: $01 $00 $10
	cp [hl]                                          ; $4b56: $be
	ld [$2b27], sp                                   ; $4b57: $08 $27 $2b
	daa                                              ; $4b5a: $27

jr_037_4b5b:
	dec hl                                           ; $4b5b: $2b
	cp [hl]                                          ; $4b5c: $be

jr_037_4b5d:
	db $d3                                           ; $4b5d: $d3
	nop                                              ; $4b5e: $00

jr_037_4b5f:
	jr @+$2b                                         ; $4b5f: $18 $29

	ld [$082e], sp                                   ; $4b61: $08 $2e $08
	ld h, $08                                        ; $4b64: $26 $08
	jp z, $27d1                                      ; $4b66: $ca $d1 $27

jr_037_4b69:
	db $10                                           ; $4b69: $10
	ld h, $08                                        ; $4b6a: $26 $08

jr_037_4b6c:
	ret                                              ; $4b6c: $c9


	daa                                              ; $4b6d: $27
	jr nc, @+$01                                     ; $4b6e: $30 $ff

	or [hl]                                          ; $4b70: $b6

jr_037_4b71:
	add d                                            ; $4b71: $82

jr_037_4b72:
	pop af                                           ; $4b72: $f1

jr_037_4b73:
	ld bc, $010a                                     ; $4b73: $01 $0a $01
	cp [hl]                                          ; $4b76: $be
	ld [$1813], sp                                   ; $4b77: $08 $13 $18
	dec de                                           ; $4b7a: $1b
	rra                                              ; $4b7b: $1f
	inc h                                            ; $4b7c: $24
	daa                                              ; $4b7d: $27
	cp [hl]                                          ; $4b7e: $be
	cp [hl]                                          ; $4b7f: $be
	ld [$1a16], sp                                   ; $4b80: $08 $16 $1a
	dec e                                            ; $4b83: $1d
	ld [hl+], a                                      ; $4b84: $22

jr_037_4b85:
	ld h, $29                                        ; $4b85: $26 $29
	cp [hl]                                          ; $4b87: $be
	jp z, $102b                                      ; $4b88: $ca $2b $10

	add hl, hl                                       ; $4b8b: $29
	ld [$2bc9], sp                                   ; $4b8c: $08 $c9 $2b
	jr nc, @+$01                                     ; $4b8f: $30 $ff

	or h                                             ; $4b91: $b4
	add d                                            ; $4b92: $82
	ld hl, $be25                                     ; $4b93: $21 $25 $be
	ld [Func_1b14], sp                                   ; $4b96: $08 $14 $1b
	rra                                              ; $4b99: $1f
	dec de                                           ; $4b9a: $1b
	rra                                              ; $4b9b: $1f
	dec de                                           ; $4b9c: $1b
	cp [hl]                                          ; $4b9d: $be
	cp [hl]                                          ; $4b9e: $be
	ld [$2216], sp                                   ; $4b9f: $08 $16 $22
	dec e                                            ; $4ba2: $1d
	ld [hl+], a                                      ; $4ba3: $22
	ld de, $be16                                     ; $4ba4: $11 $16 $be
	ld a, h                                          ; $4ba7: $7c
	add c                                            ; $4ba8: $81
	inc h                                            ; $4ba9: $24
	inc c                                            ; $4baa: $0c
	nop                                              ; $4bab: $00
	inc b                                            ; $4bac: $04
	ld [hl+], a                                      ; $4bad: $22
	ld [$2924], sp                                   ; $4bae: $08 $24 $29
	rst $38                                          ; $4bb1: $ff
	ret nc                                           ; $4bb2: $d0

	add d                                            ; $4bb3: $82
	ld [hl], $10                                     ; $4bb4: $36 $10
	cp [hl]                                          ; $4bb6: $be
	ld [$3d3d], sp                                   ; $4bb7: $08 $3d $3d
	dec a                                            ; $4bba: $3d
	dec a                                            ; $4bbb: $3d
	ld a, [de]                                       ; $4bbc: $1a
	dec de                                           ; $4bbd: $1b
	inc e                                            ; $4bbe: $1c
	scf                                              ; $4bbf: $37
	ld a, $3e                                        ; $4bc0: $3e $3e
	dec [hl]                                         ; $4bc2: $35
	ld [hl-], a                                      ; $4bc3: $32
	ld sp, $bebe                                     ; $4bc4: $31 $be $be
	inc b                                            ; $4bc7: $04
	ld sp, $3131                                     ; $4bc8: $31 $31 $31
	ld [hl-], a                                      ; $4bcb: $32
	ld [hl-], a                                      ; $4bcc: $32
	ld [hl-], a                                      ; $4bcd: $32
	inc sp                                           ; $4bce: $33
	inc sp                                           ; $4bcf: $33
	inc sp                                           ; $4bd0: $33
	ld sp, $ffbe                                     ; $4bd1: $31 $be $ff
	ret nc                                           ; $4bd4: $d0

	ld d, b                                          ; $4bd5: $50
	cp $c8                                           ; $4bd6: $fe $c8
	sub d                                            ; $4bd8: $92
	db $fd                                           ; $4bd9: $fd
	ld a, a                                          ; $4bda: $7f
	ld c, [hl]                                       ; $4bdb: $4e
	ld [hl], l                                       ; $4bdc: $75
	db $fd                                           ; $4bdd: $fd
	ld a, a                                          ; $4bde: $7f
	ld c, [hl]                                       ; $4bdf: $4e
	ld [hl], b                                       ; $4be0: $70
	db $fd                                           ; $4be1: $fd
	ld a, a                                          ; $4be2: $7f
	ld c, [hl]                                       ; $4be3: $4e
	ld h, d                                          ; $4be4: $62
	db $fd                                           ; $4be5: $fd
	ld a, a                                          ; $4be6: $7f
	ld c, [hl]                                       ; $4be7: $4e
	ld h, e                                          ; $4be8: $63
	ld a, l                                          ; $4be9: $7d
	inc c                                            ; $4bea: $0c
	call nz, Call_037_7ffd                           ; $4beb: $c4 $fd $7f
	ld c, [hl]                                       ; $4bee: $4e
	rst JumpTable                                          ; $4bef: $c7
	ld h, d                                          ; $4bf0: $62
	ld a, l                                          ; $4bf1: $7d
	nop                                              ; $4bf2: $00
	db $fd                                           ; $4bf3: $fd
	ld a, a                                          ; $4bf4: $7f
	ld c, [hl]                                       ; $4bf5: $4e
	ld [hl], b                                       ; $4bf6: $70
	db $fd                                           ; $4bf7: $fd
	ld a, a                                          ; $4bf8: $7f
	ld c, [hl]                                       ; $4bf9: $4e
	ld [hl], l                                       ; $4bfa: $75
	add $fd                                          ; $4bfb: $c6 $fd
	ld a, a                                          ; $4bfd: $7f
	ld c, [hl]                                       ; $4bfe: $4e
	ld [hl], c                                       ; $4bff: $71
	rst JumpTable                                          ; $4c00: $c7
	db $fd                                           ; $4c01: $fd
	ld a, a                                          ; $4c02: $7f
	ld c, [hl]                                       ; $4c03: $4e
	ld [hl], l                                       ; $4c04: $75
	db $fd                                           ; $4c05: $fd
	ld a, a                                          ; $4c06: $7f
	ld c, [hl]                                       ; $4c07: $4e
	ld [hl], c                                       ; $4c08: $71
	db $fd                                           ; $4c09: $fd
	ld a, a                                          ; $4c0a: $7f
	ld c, [hl]                                       ; $4c0b: $4e
	ld [hl], b                                       ; $4c0c: $70
	db $fd                                           ; $4c0d: $fd
	ld a, a                                          ; $4c0e: $7f
	ld c, [hl]                                       ; $4c0f: $4e
	ld h, d                                          ; $4c10: $62
	db $fd                                           ; $4c11: $fd
	ld a, a                                          ; $4c12: $7f
	ld c, [hl]                                       ; $4c13: $4e
	ld [hl], b                                       ; $4c14: $70
	db $fd                                           ; $4c15: $fd
	ld a, a                                          ; $4c16: $7f
	ld c, [hl]                                       ; $4c17: $4e
	ld [hl], c                                       ; $4c18: $71
	db $fd                                           ; $4c19: $fd
	ld a, a                                          ; $4c1a: $7f
	ld c, [hl]                                       ; $4c1b: $4e
	ld [hl], l                                       ; $4c1c: $75
	db $fd                                           ; $4c1d: $fd
	ld a, a                                          ; $4c1e: $7f
	ld c, [hl]                                       ; $4c1f: $4e
	ld [hl], e                                       ; $4c20: $73
	db $fd                                           ; $4c21: $fd
	ld a, a                                          ; $4c22: $7f
	ld c, [hl]                                       ; $4c23: $4e
	ld a, b                                          ; $4c24: $78
	db $fd                                           ; $4c25: $fd
	ld a, a                                          ; $4c26: $7f
	ld c, [hl]                                       ; $4c27: $4e
	ld [hl], e                                       ; $4c28: $73
	db $fd                                           ; $4c29: $fd
	ld a, a                                          ; $4c2a: $7f
	ld c, [hl]                                       ; $4c2b: $4e
	ld [hl], c                                       ; $4c2c: $71
	db $fd                                           ; $4c2d: $fd
	ld a, a                                          ; $4c2e: $7f
	ld c, [hl]                                       ; $4c2f: $4e
	ld [hl], b                                       ; $4c30: $70
	ld a, l                                          ; $4c31: $7d
	ld bc, $fdc6                                     ; $4c32: $01 $c6 $fd
	ld a, a                                          ; $4c35: $7f
	ld c, [hl]                                       ; $4c36: $4e
	rst JumpTable                                          ; $4c37: $c7
	ld [hl], c                                       ; $4c38: $71
	ld a, l                                          ; $4c39: $7d
	nop                                              ; $4c3a: $00
	db $fd                                           ; $4c3b: $fd
	ld a, a                                          ; $4c3c: $7f
	ld c, [hl]                                       ; $4c3d: $4e
	ld [hl], e                                       ; $4c3e: $73
	db $fd                                           ; $4c3f: $fd
	ld a, a                                          ; $4c40: $7f
	ld c, [hl]                                       ; $4c41: $4e
	ld a, b                                          ; $4c42: $78
	db $fd                                           ; $4c43: $fd
	ld a, a                                          ; $4c44: $7f
	ld c, [hl]                                       ; $4c45: $4e
	ld [hl], l                                       ; $4c46: $75
	add $fd                                          ; $4c47: $c6 $fd
	ld a, a                                          ; $4c49: $7f
	ld c, [hl]                                       ; $4c4a: $4e
	ld [hl], a                                       ; $4c4b: $77
	db $fd                                           ; $4c4c: $fd
	ld a, a                                          ; $4c4d: $7f
	ld c, [hl]                                       ; $4c4e: $4e
	ld [hl], l                                       ; $4c4f: $75
	db $fd                                           ; $4c50: $fd
	ld a, a                                          ; $4c51: $7f
	ld c, [hl]                                       ; $4c52: $4e
	ld [hl], e                                       ; $4c53: $73
	db $fd                                           ; $4c54: $fd
	ld a, a                                          ; $4c55: $7f
	ld c, [hl]                                       ; $4c56: $4e
	ld [hl], c                                       ; $4c57: $71
	db $fd                                           ; $4c58: $fd
	ld a, a                                          ; $4c59: $7f
	ld c, [hl]                                       ; $4c5a: $4e
	ld [hl], e                                       ; $4c5b: $73
	db $fd                                           ; $4c5c: $fd
	ld a, a                                          ; $4c5d: $7f
	ld c, [hl]                                       ; $4c5e: $4e
	ld [hl], l                                       ; $4c5f: $75
	add $fd                                          ; $4c60: $c6 $fd
	ld a, a                                          ; $4c62: $7f
	ld c, [hl]                                       ; $4c63: $4e
	ld a, d                                          ; $4c64: $7a
	add $fd                                          ; $4c65: $c6 $fd
	ld a, a                                          ; $4c67: $7f
	ld c, [hl]                                       ; $4c68: $4e
	sub d                                            ; $4c69: $92
	ret z                                            ; $4c6a: $c8

	ld [hl], a                                       ; $4c6b: $77
	db $fd                                           ; $4c6c: $fd
	ld a, a                                          ; $4c6d: $7f
	ld c, [hl]                                       ; $4c6e: $4e
	sub [hl]                                         ; $4c6f: $96
	inc b                                            ; $4c70: $04
	dec b                                            ; $4c71: $05
	ld [hl], b                                       ; $4c72: $70
	rla                                              ; $4c73: $17
	inc b                                            ; $4c74: $04
	or c                                             ; $4c75: $b1
	ld hl, $0000                                     ; $4c76: $21 $00 $00
	rla                                              ; $4c79: $17
	inc b                                            ; $4c7a: $04
	or c                                             ; $4c7b: $b1
	ld sp, $0304                                     ; $4c7c: $31 $04 $03
	rla                                              ; $4c7f: $17
	inc b                                            ; $4c80: $04
	rst JumpTable                                          ; $4c81: $c7
	ld [hl], a                                       ; $4c82: $77
	db $fd                                           ; $4c83: $fd
	ld a, a                                          ; $4c84: $7f
	ld c, [hl]                                       ; $4c85: $4e
	ld [hl], l                                       ; $4c86: $75
	db $fd                                           ; $4c87: $fd
	ld a, a                                          ; $4c88: $7f
	ld c, [hl]                                       ; $4c89: $4e
	ld [hl], e                                       ; $4c8a: $73
	db $fd                                           ; $4c8b: $fd
	ld a, a                                          ; $4c8c: $7f
	ld c, [hl]                                       ; $4c8d: $4e
	ld [hl], c                                       ; $4c8e: $71
	db $fd                                           ; $4c8f: $fd
	ld a, a                                          ; $4c90: $7f
	ld c, [hl]                                       ; $4c91: $4e
	ld [hl], b                                       ; $4c92: $70
	db $fd                                           ; $4c93: $fd
	ld a, a                                          ; $4c94: $7f
	ld c, [hl]                                       ; $4c95: $4e
	ld h, d                                          ; $4c96: $62
	db $fd                                           ; $4c97: $fd
	ld a, a                                          ; $4c98: $7f
	ld c, [hl]                                       ; $4c99: $4e
	ld [hl], b                                       ; $4c9a: $70
	db $fd                                           ; $4c9b: $fd
	ld a, a                                          ; $4c9c: $7f
	ld c, [hl]                                       ; $4c9d: $4e
	ld [hl], l                                       ; $4c9e: $75
	db $fd                                           ; $4c9f: $fd
	ld a, a                                          ; $4ca0: $7f
	ld c, [hl]                                       ; $4ca1: $4e
	ld [hl], b                                       ; $4ca2: $70
	db $fd                                           ; $4ca3: $fd
	ld a, a                                          ; $4ca4: $7f
	ld c, [hl]                                       ; $4ca5: $4e
	ld [hl], l                                       ; $4ca6: $75
	ld a, l                                          ; $4ca7: $7d
	nop                                              ; $4ca8: $00
	push bc                                          ; $4ca9: $c5
	db $fd                                           ; $4caa: $fd
	ld a, a                                          ; $4cab: $7f
	ld c, [hl]                                       ; $4cac: $4e
	ld a, b                                          ; $4cad: $78
	ld a, l                                          ; $4cae: $7d
	rla                                              ; $4caf: $17
	add $fd                                          ; $4cb0: $c6 $fd
	ld a, a                                          ; $4cb2: $7f
	ld c, [hl]                                       ; $4cb3: $4e
	ld [hl], l                                       ; $4cb4: $75
	ld a, l                                          ; $4cb5: $7d
	nop                                              ; $4cb6: $00
	add $fd                                          ; $4cb7: $c6 $fd
	ld a, a                                          ; $4cb9: $7f
	ld c, [hl]                                       ; $4cba: $4e
	ld a, b                                          ; $4cbb: $78
	add $fd                                          ; $4cbc: $c6 $fd
	ld a, a                                          ; $4cbe: $7f
	ld c, [hl]                                       ; $4cbf: $4e
	sub [hl]                                         ; $4cc0: $96
	inc b                                            ; $4cc1: $04
	dec b                                            ; $4cc2: $05
	ld [hl], b                                       ; $4cc3: $70
	rla                                              ; $4cc4: $17
	inc b                                            ; $4cc5: $04
	or c                                             ; $4cc6: $b1
	ld hl, $0000                                     ; $4cc7: $21 $00 $00
	rla                                              ; $4cca: $17
	inc b                                            ; $4ccb: $04
	or c                                             ; $4ccc: $b1
	ld sp, $0304                                     ; $4ccd: $31 $04 $03
	rla                                              ; $4cd0: $17
	inc b                                            ; $4cd1: $04
	add $7a                                          ; $4cd2: $c6 $7a
	db $fd                                           ; $4cd4: $fd
	ld a, a                                          ; $4cd5: $7f
	ld c, [hl]                                       ; $4cd6: $4e
	ld a, b                                          ; $4cd7: $78
	add $fd                                          ; $4cd8: $c6 $fd
	ld a, a                                          ; $4cda: $7f
	ld c, [hl]                                       ; $4cdb: $4e
	ld [hl], a                                       ; $4cdc: $77
	add $fd                                          ; $4cdd: $c6 $fd
	ld a, a                                          ; $4cdf: $7f
	ld c, [hl]                                       ; $4ce0: $4e
	ld [hl], e                                       ; $4ce1: $73
	add $fd                                          ; $4ce2: $c6 $fd
	ld a, a                                          ; $4ce4: $7f
	ld c, [hl]                                       ; $4ce5: $4e
	ld [hl], b                                       ; $4ce6: $70
	rst JumpTable                                          ; $4ce7: $c7
	db $fd                                           ; $4ce8: $fd
	ld a, a                                          ; $4ce9: $7f
	ld c, [hl]                                       ; $4cea: $4e
	ld [hl], e                                       ; $4ceb: $73
	rst JumpTable                                          ; $4cec: $c7
	db $fd                                           ; $4ced: $fd
	ld a, a                                          ; $4cee: $7f
	ld c, [hl]                                       ; $4cef: $4e
	ld [hl], a                                       ; $4cf0: $77
	rst JumpTable                                          ; $4cf1: $c7
	db $fd                                           ; $4cf2: $fd
	ld a, a                                          ; $4cf3: $7f
	ld c, [hl]                                       ; $4cf4: $4e
	ld a, d                                          ; $4cf5: $7a
	db $fd                                           ; $4cf6: $fd
	ld a, a                                          ; $4cf7: $7f
	ld c, [hl]                                       ; $4cf8: $4e
	rst JumpTable                                          ; $4cf9: $c7
	ld [hl], b                                       ; $4cfa: $70
	ld d, $04                                        ; $4cfb: $16 $04
	or c                                             ; $4cfd: $b1
	ld hl, $0000                                     ; $4cfe: $21 $00 $00
	ld d, $04                                        ; $4d01: $16 $04
	or c                                             ; $4d03: $b1
	ld hl, $0404                                     ; $4d04: $21 $04 $04
	ld d, $04                                        ; $4d07: $16 $04
	ld a, d                                          ; $4d09: $7a
	add $fd                                          ; $4d0a: $c6 $fd
	ld a, a                                          ; $4d0c: $7f
	ld c, [hl]                                       ; $4d0d: $4e
	ld [hl], l                                       ; $4d0e: $75
	add $fd                                          ; $4d0f: $c6 $fd
	ld a, a                                          ; $4d11: $7f
	ld c, [hl]                                       ; $4d12: $4e
	ld a, d                                          ; $4d13: $7a
	add $fd                                          ; $4d14: $c6 $fd
	ld a, a                                          ; $4d16: $7f
	ld c, [hl]                                       ; $4d17: $4e
	ld [hl], l                                       ; $4d18: $75
	add $fd                                          ; $4d19: $c6 $fd
	ld a, a                                          ; $4d1b: $7f
	ld c, [hl]                                       ; $4d1c: $4e
	ld [hl], e                                       ; $4d1d: $73
	add $fd                                          ; $4d1e: $c6 $fd
	ld a, a                                          ; $4d20: $7f
	ld c, [hl]                                       ; $4d21: $4e
	ld [hl], c                                       ; $4d22: $71
	add $fd                                          ; $4d23: $c6 $fd
	ld a, a                                          ; $4d25: $7f
	ld c, [hl]                                       ; $4d26: $4e
	ld h, d                                          ; $4d27: $62
	add $fd                                          ; $4d28: $c6 $fd
	ld a, a                                          ; $4d2a: $7f
	ld c, [hl]                                       ; $4d2b: $4e
	ret z                                            ; $4d2c: $c8

	sub d                                            ; $4d2d: $92
	ld [hl], b                                       ; $4d2e: $70
	db $fd                                           ; $4d2f: $fd
	ld a, a                                          ; $4d30: $7f
	ld c, [hl]                                       ; $4d31: $4e
	ld [hl], l                                       ; $4d32: $75
	db $fd                                           ; $4d33: $fd
	ld a, a                                          ; $4d34: $7f
	ld c, [hl]                                       ; $4d35: $4e
	ld [hl], b                                       ; $4d36: $70
	db $fd                                           ; $4d37: $fd
	ld a, a                                          ; $4d38: $7f
	ld c, [hl]                                       ; $4d39: $4e
	ld h, d                                          ; $4d3a: $62
	db $fd                                           ; $4d3b: $fd
	ld a, a                                          ; $4d3c: $7f
	ld c, [hl]                                       ; $4d3d: $4e
	ld h, a                                          ; $4d3e: $67
	db $fd                                           ; $4d3f: $fd
	ld a, a                                          ; $4d40: $7f
	ld c, [hl]                                       ; $4d41: $4e
	ld h, l                                          ; $4d42: $65
	db $fd                                           ; $4d43: $fd
	ld a, a                                          ; $4d44: $7f
	ld c, [hl]                                       ; $4d45: $4e
	ld h, h                                          ; $4d46: $64
	db $fd                                           ; $4d47: $fd
	ld a, a                                          ; $4d48: $7f
	ld c, [hl]                                       ; $4d49: $4e
	ld [hl], b                                       ; $4d4a: $70
	db $fd                                           ; $4d4b: $fd
	ld a, a                                          ; $4d4c: $7f
	ld c, [hl]                                       ; $4d4d: $4e
	ld [hl], c                                       ; $4d4e: $71
	db $fd                                           ; $4d4f: $fd
	ld a, a                                          ; $4d50: $7f
	ld c, [hl]                                       ; $4d51: $4e
	ld [hl], l                                       ; $4d52: $75
	db $fd                                           ; $4d53: $fd
	ld a, a                                          ; $4d54: $7f
	ld c, [hl]                                       ; $4d55: $4e
	ld [hl], c                                       ; $4d56: $71
	db $fd                                           ; $4d57: $fd
	ld a, a                                          ; $4d58: $7f
	ld c, [hl]                                       ; $4d59: $4e
	ld [hl], b                                       ; $4d5a: $70
	db $fd                                           ; $4d5b: $fd
	ld a, a                                          ; $4d5c: $7f
	ld c, [hl]                                       ; $4d5d: $4e
	ld h, d                                          ; $4d5e: $62
	db $fd                                           ; $4d5f: $fd
	ld a, a                                          ; $4d60: $7f
	ld c, [hl]                                       ; $4d61: $4e
	ld [hl], b                                       ; $4d62: $70
	db $fd                                           ; $4d63: $fd
	ld a, a                                          ; $4d64: $7f
	ld c, [hl]                                       ; $4d65: $4e
	ld [hl], c                                       ; $4d66: $71
	db $fd                                           ; $4d67: $fd
	ld a, a                                          ; $4d68: $7f
	ld c, [hl]                                       ; $4d69: $4e
	ld [hl], l                                       ; $4d6a: $75
	db $fd                                           ; $4d6b: $fd
	ld a, a                                          ; $4d6c: $7f
	ld c, [hl]                                       ; $4d6d: $4e
	ld [hl], e                                       ; $4d6e: $73
	db $fd                                           ; $4d6f: $fd
	ld a, a                                          ; $4d70: $7f
	ld c, [hl]                                       ; $4d71: $4e
	ld a, b                                          ; $4d72: $78
	db $fd                                           ; $4d73: $fd
	ld a, a                                          ; $4d74: $7f
	ld c, [hl]                                       ; $4d75: $4e
	ld [hl], e                                       ; $4d76: $73
	db $fd                                           ; $4d77: $fd
	ld a, a                                          ; $4d78: $7f
	ld c, [hl]                                       ; $4d79: $4e
	ld [hl], c                                       ; $4d7a: $71
	db $fd                                           ; $4d7b: $fd
	ld a, a                                          ; $4d7c: $7f
	ld c, [hl]                                       ; $4d7d: $4e
	ld [hl], b                                       ; $4d7e: $70
	db $fd                                           ; $4d7f: $fd
	ld a, a                                          ; $4d80: $7f
	ld c, [hl]                                       ; $4d81: $4e
	ld [hl], c                                       ; $4d82: $71
	db $fd                                           ; $4d83: $fd
	ld a, a                                          ; $4d84: $7f
	ld c, [hl]                                       ; $4d85: $4e
	ld [hl], e                                       ; $4d86: $73
	db $fd                                           ; $4d87: $fd
	ld a, a                                          ; $4d88: $7f
	ld c, [hl]                                       ; $4d89: $4e
	ld a, b                                          ; $4d8a: $78
	db $fd                                           ; $4d8b: $fd
	ld a, a                                          ; $4d8c: $7f
	ld c, [hl]                                       ; $4d8d: $4e
	ld [hl], l                                       ; $4d8e: $75
	db $fd                                           ; $4d8f: $fd
	ld a, a                                          ; $4d90: $7f
	ld c, [hl]                                       ; $4d91: $4e
	ld a, b                                          ; $4d92: $78
	db $fd                                           ; $4d93: $fd
	ld a, a                                          ; $4d94: $7f
	ld c, [hl]                                       ; $4d95: $4e
	ld [hl], l                                       ; $4d96: $75
	db $fd                                           ; $4d97: $fd
	ld a, a                                          ; $4d98: $7f
	ld c, [hl]                                       ; $4d99: $4e
	ld [hl], e                                       ; $4d9a: $73
	db $fd                                           ; $4d9b: $fd
	ld a, a                                          ; $4d9c: $7f
	ld c, [hl]                                       ; $4d9d: $4e
	ld [hl], c                                       ; $4d9e: $71
	db $fd                                           ; $4d9f: $fd
	ld a, a                                          ; $4da0: $7f
	ld c, [hl]                                       ; $4da1: $4e
	ld [hl], e                                       ; $4da2: $73
	db $fd                                           ; $4da3: $fd
	ld a, a                                          ; $4da4: $7f
	ld c, [hl]                                       ; $4da5: $4e
	ld [hl], l                                       ; $4da6: $75
	db $fd                                           ; $4da7: $fd
	ld a, a                                          ; $4da8: $7f
	ld c, [hl]                                       ; $4da9: $4e
	ld a, d                                          ; $4daa: $7a
	db $fd                                           ; $4dab: $fd
	ld a, a                                          ; $4dac: $7f
	ld c, [hl]                                       ; $4dad: $4e
	sub d                                            ; $4dae: $92
	rst JumpTable                                          ; $4daf: $c7
	ld [hl], a                                       ; $4db0: $77
	db $fd                                           ; $4db1: $fd
	ld a, a                                          ; $4db2: $7f
	ld c, [hl]                                       ; $4db3: $4e
	sub [hl]                                         ; $4db4: $96
	inc b                                            ; $4db5: $04
	dec b                                            ; $4db6: $05
	ld [hl], b                                       ; $4db7: $70
	rla                                              ; $4db8: $17
	inc b                                            ; $4db9: $04
	or c                                             ; $4dba: $b1
	ld hl, $0000                                     ; $4dbb: $21 $00 $00
	rla                                              ; $4dbe: $17
	inc b                                            ; $4dbf: $04
	or c                                             ; $4dc0: $b1
	ld sp, $0304                                     ; $4dc1: $31 $04 $03
	rla                                              ; $4dc4: $17
	inc b                                            ; $4dc5: $04
	ld [hl], a                                       ; $4dc6: $77
	rst JumpTable                                          ; $4dc7: $c7
	db $fd                                           ; $4dc8: $fd
	ld a, a                                          ; $4dc9: $7f
	ld c, [hl]                                       ; $4dca: $4e
	ld [hl], l                                       ; $4dcb: $75
	db $fd                                           ; $4dcc: $fd
	ld a, a                                          ; $4dcd: $7f
	ld c, [hl]                                       ; $4dce: $4e
	ld [hl], e                                       ; $4dcf: $73
	db $fd                                           ; $4dd0: $fd
	ld a, a                                          ; $4dd1: $7f
	ld c, [hl]                                       ; $4dd2: $4e
	ld [hl], a                                       ; $4dd3: $77
	db $fd                                           ; $4dd4: $fd
	ld a, a                                          ; $4dd5: $7f
	ld c, [hl]                                       ; $4dd6: $4e
	ld h, d                                          ; $4dd7: $62
	db $fd                                           ; $4dd8: $fd
	ld a, a                                          ; $4dd9: $7f
	ld c, [hl]                                       ; $4dda: $4e
	ld h, l                                          ; $4ddb: $65
	db $fd                                           ; $4ddc: $fd
	ld a, a                                          ; $4ddd: $7f
	ld c, [hl]                                       ; $4dde: $4e
	ld h, h                                          ; $4ddf: $64
	db $fd                                           ; $4de0: $fd
	ld a, a                                          ; $4de1: $7f
	ld c, [hl]                                       ; $4de2: $4e
	ld [hl], b                                       ; $4de3: $70
	db $fd                                           ; $4de4: $fd
	ld a, a                                          ; $4de5: $7f
	ld c, [hl]                                       ; $4de6: $4e
	ld [hl], l                                       ; $4de7: $75
	call nz, Call_037_7ffd                           ; $4de8: $c4 $fd $7f
	ld c, [hl]                                       ; $4deb: $4e
	ld [hl], c                                       ; $4dec: $71
	db $fd                                           ; $4ded: $fd
	ld a, a                                          ; $4dee: $7f
	ld c, [hl]                                       ; $4def: $4e
	ld [hl], b                                       ; $4df0: $70
	db $fd                                           ; $4df1: $fd
	ld a, a                                          ; $4df2: $7f
	ld c, [hl]                                       ; $4df3: $4e
	ld [hl], a                                       ; $4df4: $77
	db $fd                                           ; $4df5: $fd
	ld a, a                                          ; $4df6: $7f
	ld c, [hl]                                       ; $4df7: $4e
	ld a, b                                          ; $4df8: $78
	db $fd                                           ; $4df9: $fd
	ld a, a                                          ; $4dfa: $7f
	ld c, [hl]                                       ; $4dfb: $4e
	or c                                             ; $4dfc: $b1
	ld [hl], c                                       ; $4dfd: $71
	inc b                                            ; $4dfe: $04
	dec b                                            ; $4dff: $05
	ld [hl], b                                       ; $4e00: $70
	rla                                              ; $4e01: $17
	inc b                                            ; $4e02: $04
	or c                                             ; $4e03: $b1
	ld hl, $0000                                     ; $4e04: $21 $00 $00
	rla                                              ; $4e07: $17
	inc b                                            ; $4e08: $04
	or c                                             ; $4e09: $b1
	ld sp, $0304                                     ; $4e0a: $31 $04 $03
	rla                                              ; $4e0d: $17
	inc b                                            ; $4e0e: $04
	ld a, d                                          ; $4e0f: $7a
	rst JumpTable                                          ; $4e10: $c7
	db $fd                                           ; $4e11: $fd
	ld a, a                                          ; $4e12: $7f
	ld c, [hl]                                       ; $4e13: $4e
	ld [hl], a                                       ; $4e14: $77
	db $fd                                           ; $4e15: $fd
	ld a, a                                          ; $4e16: $7f
	ld c, [hl]                                       ; $4e17: $4e
	ld [hl], e                                       ; $4e18: $73
	db $fd                                           ; $4e19: $fd
	ld a, a                                          ; $4e1a: $7f
	ld c, [hl]                                       ; $4e1b: $4e
	ld [hl], a                                       ; $4e1c: $77
	db $fd                                           ; $4e1d: $fd
	ld a, a                                          ; $4e1e: $7f
	ld c, [hl]                                       ; $4e1f: $4e
	ld [hl], l                                       ; $4e20: $75
	db $fd                                           ; $4e21: $fd
	ld a, a                                          ; $4e22: $7f
	ld c, [hl]                                       ; $4e23: $4e
	ld a, d                                          ; $4e24: $7a
	db $fd                                           ; $4e25: $fd
	ld a, a                                          ; $4e26: $7f
	ld c, [hl]                                       ; $4e27: $4e
	ld [hl], a                                       ; $4e28: $77
	db $fd                                           ; $4e29: $fd
	ld a, a                                          ; $4e2a: $7f
	ld c, [hl]                                       ; $4e2b: $4e
	ld [hl], l                                       ; $4e2c: $75
	db $fd                                           ; $4e2d: $fd
	ld a, a                                          ; $4e2e: $7f
	ld c, [hl]                                       ; $4e2f: $4e
	ld a, b                                          ; $4e30: $78
	db $fd                                           ; $4e31: $fd
	ld a, a                                          ; $4e32: $7f
	ld c, [hl]                                       ; $4e33: $4e
	or c                                             ; $4e34: $b1
	ld [hl], c                                       ; $4e35: $71
	inc b                                            ; $4e36: $04
	dec b                                            ; $4e37: $05
	ld [hl], b                                       ; $4e38: $70
	rla                                              ; $4e39: $17
	inc b                                            ; $4e3a: $04

jr_037_4e3b:
	or c                                             ; $4e3b: $b1
	ld hl, $0000                                     ; $4e3c: $21 $00 $00
	rla                                              ; $4e3f: $17
	inc b                                            ; $4e40: $04
	or c                                             ; $4e41: $b1
	ld sp, $0304                                     ; $4e42: $31 $04 $03
	rla                                              ; $4e45: $17
	inc b                                            ; $4e46: $04
	or c                                             ; $4e47: $b1
	ld [hl], c                                       ; $4e48: $71
	inc b                                            ; $4e49: $04
	dec b                                            ; $4e4a: $05
	ld d, $04                                        ; $4e4b: $16 $04
	or c                                             ; $4e4d: $b1
	ld hl, $0000                                     ; $4e4e: $21 $00 $00
	ld d, $04                                        ; $4e51: $16 $04
	or c                                             ; $4e53: $b1
	ld sp, $0304                                     ; $4e54: $31 $04 $03
	ld d, $04                                        ; $4e57: $16 $04
	ld a, d                                          ; $4e59: $7a
	add $fd                                          ; $4e5a: $c6 $fd
	ld a, a                                          ; $4e5c: $7f
	ld c, [hl]                                       ; $4e5d: $4e
	rst JumpTable                                          ; $4e5e: $c7
	ld [hl], b                                       ; $4e5f: $70
	sub [hl]                                         ; $4e60: $96
	ld [$1704], sp                                   ; $4e61: $08 $04 $17
	ld [$0096], sp                                   ; $4e64: $08 $96 $00
	nop                                              ; $4e67: $00
	sub a                                            ; $4e68: $97
	ld c, l                                          ; $4e69: $4d
	rla                                              ; $4e6a: $17
	ld [$3e97], sp                                   ; $4e6b: $08 $97 $3e
	rla                                              ; $4e6e: $17
	ld [$2f97], sp                                   ; $4e6f: $08 $97 $2f
	rla                                              ; $4e72: $17
	ld [$1f97], sp                                   ; $4e73: $08 $97 $1f
	rla                                              ; $4e76: $17
	ld [$97c1], sp                                   ; $4e77: $08 $c1 $97
	nop                                              ; $4e7a: $00

jr_037_4e7b:
	rla                                              ; $4e7b: $17
	ld [$fffe], sp                                   ; $4e7c: $08 $fe $ff
	sub [hl]                                         ; $4e7f: $96
	inc b                                            ; $4e80: $04
	dec b                                            ; $4e81: $05
	inc hl                                           ; $4e82: $23
	inc b                                            ; $4e83: $04
	or c                                             ; $4e84: $b1
	ld hl, $0000                                     ; $4e85: $21 $00 $00
	inc hl                                           ; $4e88: $23
	inc b                                            ; $4e89: $04
	or c                                             ; $4e8a: $b1
	ld b, c                                          ; $4e8b: $41
	inc b                                            ; $4e8c: $04
	ld [bc], a                                       ; $4e8d: $02
	inc hl                                           ; $4e8e: $23
	inc b                                            ; $4e8f: $04
	pop de                                           ; $4e90: $d1
	rst JumpTable                                          ; $4e91: $c7
	db $fd                                           ; $4e92: $fd
	ret nc                                           ; $4e93: $d0

	ld d, b                                          ; $4e94: $50
	cp $cb                                           ; $4e95: $fe $cb
	sub e                                            ; $4e97: $93
	sub a                                            ; $4e98: $97
	ld l, h                                          ; $4e99: $6c
	daa                                              ; $4e9a: $27

jr_037_4e9b:
	inc c                                            ; $4e9b: $0c
	sub a                                            ; $4e9c: $97
	nop                                              ; $4e9d: $00
	or c                                             ; $4e9e: $b1
	sub c                                            ; $4e9f: $91
	nop                                              ; $4ea0: $00
	nop                                              ; $4ea1: $00
	daa                                              ; $4ea2: $27
	jr jr_037_4e3b                                   ; $4ea3: $18 $96

	jr jr_037_4eae                                   ; $4ea5: $18 $07

	daa                                              ; $4ea7: $27
	jr @-$4d                                         ; $4ea8: $18 $b1

	ld hl, $0000                                     ; $4eaa: $21 $00 $00
	sub a                                            ; $4ead: $97

jr_037_4eae:
	nop                                              ; $4eae: $00
	daa                                              ; $4eaf: $27
	inc c                                            ; $4eb0: $0c
	res 2, a                                         ; $4eb1: $cb $97
	ld l, h                                          ; $4eb3: $6c
	jr z, jr_037_4ec2                                ; $4eb4: $28 $0c

	daa                                              ; $4eb6: $27
	inc c                                            ; $4eb7: $0c
	sub a                                            ; $4eb8: $97
	ld l, h                                          ; $4eb9: $6c
	ld a, [hl+]                                      ; $4eba: $2a

jr_037_4ebb:
	inc c                                            ; $4ebb: $0c
	or c                                             ; $4ebc: $b1
	sub c                                            ; $4ebd: $91
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	sub a                                            ; $4ec0: $97
	nop                                              ; $4ec1: $00

jr_037_4ec2:
	ld a, [hl+]                                      ; $4ec2: $2a
	jr @-$68                                         ; $4ec3: $18 $96

	jr jr_037_4ece                                   ; $4ec5: $18 $07

	ld a, [hl+]                                      ; $4ec7: $2a
	jr jr_037_4e7b                                   ; $4ec8: $18 $b1

	ld hl, $0000                                     ; $4eca: $21 $00 $00
	sub a                                            ; $4ecd: $97

jr_037_4ece:
	nop                                              ; $4ece: $00
	ld a, [hl+]                                      ; $4ecf: $2a
	inc c                                            ; $4ed0: $0c
	res 2, a                                         ; $4ed1: $cb $97
	ld l, h                                          ; $4ed3: $6c
	jr z, jr_037_4ee2                                ; $4ed4: $28 $0c

	daa                                              ; $4ed6: $27
	inc c                                            ; $4ed7: $0c
	sub a                                            ; $4ed8: $97
	ld l, h                                          ; $4ed9: $6c
	inc hl                                           ; $4eda: $23
	inc c                                            ; $4edb: $0c
	or c                                             ; $4edc: $b1
	sub c                                            ; $4edd: $91
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	sub a                                            ; $4ee0: $97
	nop                                              ; $4ee1: $00

jr_037_4ee2:
	inc hl                                           ; $4ee2: $23
	jr jr_037_4e7b                                   ; $4ee3: $18 $96

	jr jr_037_4eee                                   ; $4ee5: $18 $07

	inc hl                                           ; $4ee7: $23
	jr jr_037_4e9b                                   ; $4ee8: $18 $b1

	ld hl, $0000                                     ; $4eea: $21 $00 $00
	sub a                                            ; $4eed: $97

jr_037_4eee:
	nop                                              ; $4eee: $00
	inc hl                                           ; $4eef: $23
	inc c                                            ; $4ef0: $0c
	res 2, a                                         ; $4ef1: $cb $97
	ld l, h                                          ; $4ef3: $6c
	dec h                                            ; $4ef4: $25
	inc c                                            ; $4ef5: $0c
	inc hl                                           ; $4ef6: $23
	inc c                                            ; $4ef7: $0c
	sub a                                            ; $4ef8: $97
	ld l, h                                          ; $4ef9: $6c
	daa                                              ; $4efa: $27
	inc c                                            ; $4efb: $0c
	or c                                             ; $4efc: $b1
	sub c                                            ; $4efd: $91
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	sub a                                            ; $4f00: $97
	nop                                              ; $4f01: $00
	daa                                              ; $4f02: $27
	jr jr_037_4e9b                                   ; $4f03: $18 $96

	jr jr_037_4f0e                                   ; $4f05: $18 $07

	daa                                              ; $4f07: $27
	jr jr_037_4ebb                                   ; $4f08: $18 $b1

	ld hl, $0000                                     ; $4f0a: $21 $00 $00
	sub a                                            ; $4f0d: $97

jr_037_4f0e:
	nop                                              ; $4f0e: $00
	daa                                              ; $4f0f: $27
	inc c                                            ; $4f10: $0c
	res 2, a                                         ; $4f11: $cb $97
	ld l, h                                          ; $4f13: $6c
	ld [hl+], a                                      ; $4f14: $22
	inc c                                            ; $4f15: $0c
	ld e, $0c                                        ; $4f16: $1e $0c
	sub e                                            ; $4f18: $93
	res 2, a                                         ; $4f19: $cb $97
	ld l, h                                          ; $4f1b: $6c
	jr nz, @+$0e                                     ; $4f1c: $20 $0c

	or c                                             ; $4f1e: $b1
	sub c                                            ; $4f1f: $91
	nop                                              ; $4f20: $00
	nop                                              ; $4f21: $00
	sub a                                            ; $4f22: $97
	nop                                              ; $4f23: $00
	jr nz, jr_037_4f3e                               ; $4f24: $20 $18

	sub [hl]                                         ; $4f26: $96
	jr jr_037_4f30                                   ; $4f27: $18 $07

	jr nz, jr_037_4f43                               ; $4f29: $20 $18

	or c                                             ; $4f2b: $b1
	ld hl, $0000                                     ; $4f2c: $21 $00 $00
	sub a                                            ; $4f2f: $97

jr_037_4f30:
	nop                                              ; $4f30: $00
	jr nz, jr_037_4f3f                               ; $4f31: $20 $0c

	res 2, a                                         ; $4f33: $cb $97
	ld l, h                                          ; $4f35: $6c
	ld e, $0c                                        ; $4f36: $1e $0c
	inc e                                            ; $4f38: $1c
	inc c                                            ; $4f39: $0c
	sub a                                            ; $4f3a: $97
	ld l, h                                          ; $4f3b: $6c
	ld e, $0c                                        ; $4f3c: $1e $0c

jr_037_4f3e:
	or c                                             ; $4f3e: $b1

jr_037_4f3f:
	sub c                                            ; $4f3f: $91
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00

jr_037_4f42:
	sub a                                            ; $4f42: $97

jr_037_4f43:
	nop                                              ; $4f43: $00
	ld e, $18                                        ; $4f44: $1e $18
	sub [hl]                                         ; $4f46: $96
	jr jr_037_4f50                                   ; $4f47: $18 $07

	ld e, $18                                        ; $4f49: $1e $18
	or c                                             ; $4f4b: $b1
	ld hl, $0000                                     ; $4f4c: $21 $00 $00
	sub a                                            ; $4f4f: $97

jr_037_4f50:
	nop                                              ; $4f50: $00
	ld e, $0c                                        ; $4f51: $1e $0c
	res 2, a                                         ; $4f53: $cb $97

jr_037_4f55:
	ld l, h                                          ; $4f55: $6c
	inc e                                            ; $4f56: $1c
	inc c                                            ; $4f57: $0c
	dec de                                           ; $4f58: $1b
	inc c                                            ; $4f59: $0c
	sub a                                            ; $4f5a: $97
	ld l, h                                          ; $4f5b: $6c
	dec de                                           ; $4f5c: $1b
	inc c                                            ; $4f5d: $0c
	add hl, de                                       ; $4f5e: $19
	inc c                                            ; $4f5f: $0c
	sub a                                            ; $4f60: $97
	ld l, a                                          ; $4f61: $6f
	add hl, de                                       ; $4f62: $19

jr_037_4f63:
	inc c                                            ; $4f63: $0c
	or c                                             ; $4f64: $b1
	add c                                            ; $4f65: $81
	nop                                              ; $4f66: $00
	nop                                              ; $4f67: $00
	sub a                                            ; $4f68: $97
	nop                                              ; $4f69: $00
	add hl, de                                       ; $4f6a: $19
	inc c                                            ; $4f6b: $0c
	or c                                             ; $4f6c: $b1
	ld h, c                                          ; $4f6d: $61
	inc c                                            ; $4f6e: $0c
	rlca                                             ; $4f6f: $07
	add hl, de                                       ; $4f70: $19
	inc c                                            ; $4f71: $0c
	or c                                             ; $4f72: $b1
	ld hl, $0000                                     ; $4f73: $21 $00 $00
	sub a                                            ; $4f76: $97
	nop                                              ; $4f77: $00
	add hl, de                                       ; $4f78: $19
	inc c                                            ; $4f79: $0c
	res 2, a                                         ; $4f7a: $cb $97
	ld l, h                                          ; $4f7c: $6c
	rla                                              ; $4f7d: $17
	inc c                                            ; $4f7e: $0c
	dec de                                           ; $4f7f: $1b
	inc c                                            ; $4f80: $0c
	sub a                                            ; $4f81: $97
	ld l, a                                          ; $4f82: $6f

jr_037_4f83:
	add hl, de                                       ; $4f83: $19
	inc c                                            ; $4f84: $0c
	or c                                             ; $4f85: $b1
	add c                                            ; $4f86: $81
	nop                                              ; $4f87: $00
	nop                                              ; $4f88: $00
	sub a                                            ; $4f89: $97
	nop                                              ; $4f8a: $00
	add hl, de                                       ; $4f8b: $19
	jr jr_037_4f55                                   ; $4f8c: $18 $c7

	add hl, de                                       ; $4f8e: $19
	jr jr_037_4f42                                   ; $4f8f: $18 $b1

	ld h, c                                          ; $4f91: $61
	jr jr_037_4f9b                                   ; $4f92: $18 $07

	add hl, de                                       ; $4f94: $19
	jr @-$4d                                         ; $4f95: $18 $b1

	ld hl, $0000                                     ; $4f97: $21 $00 $00
	sub a                                            ; $4f9a: $97

jr_037_4f9b:
	nop                                              ; $4f9b: $00
	add hl, de                                       ; $4f9c: $19
	inc c                                            ; $4f9d: $0c
	res 2, e                                         ; $4f9e: $cb $93
	sub a                                            ; $4fa0: $97
	ld l, h                                          ; $4fa1: $6c
	daa                                              ; $4fa2: $27

jr_037_4fa3:
	inc c                                            ; $4fa3: $0c
	sub a                                            ; $4fa4: $97
	nop                                              ; $4fa5: $00
	or c                                             ; $4fa6: $b1
	sub c                                            ; $4fa7: $91
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	daa                                              ; $4faa: $27
	jr jr_037_4f43                                   ; $4fab: $18 $96

	jr jr_037_4fb6                                   ; $4fad: $18 $07

	daa                                              ; $4faf: $27
	jr jr_037_4f63                                   ; $4fb0: $18 $b1

	ld hl, $0000                                     ; $4fb2: $21 $00 $00
	sub a                                            ; $4fb5: $97

jr_037_4fb6:
	nop                                              ; $4fb6: $00
	daa                                              ; $4fb7: $27
	inc c                                            ; $4fb8: $0c
	res 2, a                                         ; $4fb9: $cb $97
	ld l, h                                          ; $4fbb: $6c
	jr z, jr_037_4fca                                ; $4fbc: $28 $0c

	daa                                              ; $4fbe: $27
	inc c                                            ; $4fbf: $0c
	sub a                                            ; $4fc0: $97
	ld l, h                                          ; $4fc1: $6c
	ld a, [hl+]                                      ; $4fc2: $2a

jr_037_4fc3:
	inc c                                            ; $4fc3: $0c
	or c                                             ; $4fc4: $b1
	sub c                                            ; $4fc5: $91
	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	sub a                                            ; $4fc8: $97
	nop                                              ; $4fc9: $00

jr_037_4fca:
	ld a, [hl+]                                      ; $4fca: $2a
	jr jr_037_4f63                                   ; $4fcb: $18 $96

	jr jr_037_4fd6                                   ; $4fcd: $18 $07

	ld a, [hl+]                                      ; $4fcf: $2a
	jr jr_037_4f83                                   ; $4fd0: $18 $b1

	ld hl, $0000                                     ; $4fd2: $21 $00 $00
	sub a                                            ; $4fd5: $97

jr_037_4fd6:
	nop                                              ; $4fd6: $00
	ld a, [hl+]                                      ; $4fd7: $2a
	inc c                                            ; $4fd8: $0c
	res 2, a                                         ; $4fd9: $cb $97
	ld l, h                                          ; $4fdb: $6c
	jr z, jr_037_4fea                                ; $4fdc: $28 $0c

	daa                                              ; $4fde: $27
	inc c                                            ; $4fdf: $0c
	sub a                                            ; $4fe0: $97
	ld l, h                                          ; $4fe1: $6c
	inc hl                                           ; $4fe2: $23
	inc c                                            ; $4fe3: $0c
	or c                                             ; $4fe4: $b1
	sub c                                            ; $4fe5: $91
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	sub a                                            ; $4fe8: $97
	nop                                              ; $4fe9: $00

jr_037_4fea:
	inc hl                                           ; $4fea: $23
	jr jr_037_4f83                                   ; $4feb: $18 $96

	jr jr_037_4ff6                                   ; $4fed: $18 $07

	inc hl                                           ; $4fef: $23
	jr jr_037_4fa3                                   ; $4ff0: $18 $b1

	ld hl, $0000                                     ; $4ff2: $21 $00 $00
	sub a                                            ; $4ff5: $97

jr_037_4ff6:
	nop                                              ; $4ff6: $00
	inc hl                                           ; $4ff7: $23
	inc c                                            ; $4ff8: $0c
	res 2, a                                         ; $4ff9: $cb $97
	ld l, h                                          ; $4ffb: $6c
	dec h                                            ; $4ffc: $25
	inc c                                            ; $4ffd: $0c
	inc hl                                           ; $4ffe: $23
	inc c                                            ; $4fff: $0c
	sub a                                            ; $5000: $97
	ld l, h                                          ; $5001: $6c
	daa                                              ; $5002: $27
	inc c                                            ; $5003: $0c
	or c                                             ; $5004: $b1
	sub c                                            ; $5005: $91

jr_037_5006:
	nop                                              ; $5006: $00
	nop                                              ; $5007: $00
	sub a                                            ; $5008: $97
	nop                                              ; $5009: $00

jr_037_500a:
	daa                                              ; $500a: $27
	jr jr_037_4fa3                                   ; $500b: $18 $96

	jr jr_037_5016                                   ; $500d: $18 $07

Jump_037_500f:
	daa                                              ; $500f: $27
	jr jr_037_4fc3                                   ; $5010: $18 $b1

	ld hl, $0000                                     ; $5012: $21 $00 $00
	sub a                                            ; $5015: $97

jr_037_5016:
	nop                                              ; $5016: $00
	daa                                              ; $5017: $27
	inc c                                            ; $5018: $0c
	res 2, a                                         ; $5019: $cb $97
	ld l, h                                          ; $501b: $6c
	ld [hl+], a                                      ; $501c: $22
	inc c                                            ; $501d: $0c
	ld e, $0c                                        ; $501e: $1e $0c
	res 2, a                                         ; $5020: $cb $97
	ld l, h                                          ; $5022: $6c
	sub e                                            ; $5023: $93
	jr nz, @+$0e                                     ; $5024: $20 $0c

	sub a                                            ; $5026: $97
	nop                                              ; $5027: $00
	or c                                             ; $5028: $b1
	sub c                                            ; $5029: $91
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	jr nz, jr_037_5046                               ; $502c: $20 $18

	sub [hl]                                         ; $502e: $96
	jr jr_037_5038                                   ; $502f: $18 $07

	jr nz, @+$1a                                     ; $5031: $20 $18

	or c                                             ; $5033: $b1
	ld hl, $0000                                     ; $5034: $21 $00 $00
	sub a                                            ; $5037: $97

jr_037_5038:
	nop                                              ; $5038: $00
	jr nz, jr_037_5047                               ; $5039: $20 $0c

	res 2, a                                         ; $503b: $cb $97
	ld l, h                                          ; $503d: $6c
	ld [hl+], a                                      ; $503e: $22
	inc c                                            ; $503f: $0c
	inc hl                                           ; $5040: $23
	dec bc                                           ; $5041: $0b
	or c                                             ; $5042: $b1
	ld bc, $0000                                     ; $5043: $01 $00 $00

jr_037_5046:
	inc hl                                           ; $5046: $23

jr_037_5047:
	ld bc, $6c97                                     ; $5047: $01 $97 $6c
	call z, $0c23                                    ; $504a: $cc $23 $0c
	ld e, $0c                                        ; $504d: $1e $0c
	ld e, $0c                                        ; $504f: $1e $0c
	ret                                              ; $5051: $c9


	sub a                                            ; $5052: $97
	nop                                              ; $5053: $00
	ld e, $0c                                        ; $5054: $1e $0c
	sub [hl]                                         ; $5056: $96
	inc c                                            ; $5057: $0c
	rlca                                             ; $5058: $07
	ld e, $0c                                        ; $5059: $1e $0c
	jp $0c1e                                         ; $505b: $c3 $1e $0c


	sub [hl]                                         ; $505e: $96
	nop                                              ; $505f: $00
	nop                                              ; $5060: $00
	sub a                                            ; $5061: $97
	ld l, h                                          ; $5062: $6c
	inc hl                                           ; $5063: $23
	inc c                                            ; $5064: $0c
	sub a                                            ; $5065: $97
	nop                                              ; $5066: $00
	ret                                              ; $5067: $c9


	inc hl                                           ; $5068: $23
	inc c                                            ; $5069: $0c
	sub a                                            ; $506a: $97
	ld e, a                                          ; $506b: $5f
	inc e                                            ; $506c: $1c
	jr jr_037_5006                                   ; $506d: $18 $97

	ld l, a                                          ; $506f: $6f
	inc hl                                           ; $5070: $23
	jr jr_037_500a                                   ; $5071: $18 $97

	ld l, h                                          ; $5073: $6c
	ld [hl+], a                                      ; $5074: $22
	inc c                                            ; $5075: $0c
	sub a                                            ; $5076: $97
	nop                                              ; $5077: $00
	or c                                             ; $5078: $b1
	sub c                                            ; $5079: $91
	rla                                              ; $507a: $17
	rlca                                             ; $507b: $07
	ld [hl+], a                                      ; $507c: $22
	rla                                              ; $507d: $17
	nop                                              ; $507e: $00
	ld bc, $0096                                     ; $507f: $01 $96 $00
	nop                                              ; $5082: $00
	sub a                                            ; $5083: $97
	ld l, h                                          ; $5084: $6c
	inc hl                                           ; $5085: $23
	dec bc                                           ; $5086: $0b
	nop                                              ; $5087: $00
	ld bc, $6c97                                     ; $5088: $01 $97 $6c
	inc hl                                           ; $508b: $23
	inc c                                            ; $508c: $0c
	or c                                             ; $508d: $b1
	sub c                                            ; $508e: $91
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	sub a                                            ; $5091: $97
	nop                                              ; $5092: $00
	inc hl                                           ; $5093: $23
	jr nc, jr_037_5047                               ; $5094: $30 $b1

	add c                                            ; $5096: $81
	inc c                                            ; $5097: $0c
	rlca                                             ; $5098: $07
	inc hl                                           ; $5099: $23
	inc c                                            ; $509a: $0c
	or c                                             ; $509b: $b1
	ld hl, $0000                                     ; $509c: $21 $00 $00
	sub a                                            ; $509f: $97
	nop                                              ; $50a0: $00
	inc hl                                           ; $50a1: $23

jr_037_50a2:
	jr jr_037_50a2                                   ; $50a2: $18 $fe

	rst $38                                          ; $50a4: $ff
	ret nc                                           ; $50a5: $d0

	ld d, b                                          ; $50a6: $50
	cp $c6                                           ; $50a7: $fe $c6
	ld a, l                                          ; $50a9: $7d
	ld bc, $177f                                     ; $50aa: $01 $7f $17
	cpl                                              ; $50ad: $2f
	ld b, $33                                        ; $50ae: $06 $33
	ld c, b                                          ; $50b0: $48
	ld a, l                                          ; $50b1: $7d
	nop                                              ; $50b2: $00
	add c                                            ; $50b3: $81
	inc [hl]                                         ; $50b4: $34
	inc c                                            ; $50b5: $0c
	inc sp                                           ; $50b6: $33
	inc c                                            ; $50b7: $0c
	ld [hl], $48                                     ; $50b8: $36 $48
	inc [hl]                                         ; $50ba: $34
	inc c                                            ; $50bb: $0c
	inc sp                                           ; $50bc: $33
	inc c                                            ; $50bd: $0c
	cpl                                              ; $50be: $2f
	ld c, b                                          ; $50bf: $48
	ld sp, $2f0c                                     ; $50c0: $31 $0c $2f
	inc c                                            ; $50c3: $0c
	ld a, l                                          ; $50c4: $7d
	ld bc, $4833                                     ; $50c5: $01 $33 $48
	ld a, l                                          ; $50c8: $7d
	nop                                              ; $50c9: $00
	ld l, $0c                                        ; $50ca: $2e $0c
	cp l                                             ; $50cc: $bd
	ld [bc], a                                       ; $50cd: $02
	ld a, [hl+]                                      ; $50ce: $2a
	ld b, $06                                        ; $50cf: $06 $06
	add $81                                          ; $50d1: $c6 $81
	ld a, l                                          ; $50d3: $7d
	ld bc, $482c                                     ; $50d4: $01 $2c $48
	ld a, [hl+]                                      ; $50d7: $2a
	inc c                                            ; $50d8: $0c
	jr z, jr_037_50e7                                ; $50d9: $28 $0c

	ld a, l                                          ; $50db: $7d
	ld bc, $482a                                     ; $50dc: $01 $2a $48
	ld a, l                                          ; $50df: $7d
	nop                                              ; $50e0: $00
	jr z, jr_037_50ef                                ; $50e1: $28 $0c

	daa                                              ; $50e3: $27
	inc c                                            ; $50e4: $0c
	daa                                              ; $50e5: $27
	inc c                                            ; $50e6: $0c

jr_037_50e7:
	dec h                                            ; $50e7: $25
	dec bc                                           ; $50e8: $0b
	nop                                              ; $50e9: $00
	ld bc, $3025                                     ; $50ea: $01 $25 $30
	inc hl                                           ; $50ed: $23
	inc c                                            ; $50ee: $0c

jr_037_50ef:
	daa                                              ; $50ef: $27
	inc c                                            ; $50f0: $0c
	cp l                                             ; $50f1: $bd
	ld [bc], a                                       ; $50f2: $02
	dec h                                            ; $50f3: $25
	ld e, d                                          ; $50f4: $5a
	ld b, $c6                                        ; $50f5: $06 $c6
	ld a, l                                          ; $50f7: $7d
	ld bc, $177f                                     ; $50f8: $01 $7f $17
	add c                                            ; $50fb: $81
	inc sp                                           ; $50fc: $33
	ld c, b                                          ; $50fd: $48
	ld a, l                                          ; $50fe: $7d
	nop                                              ; $50ff: $00
	inc [hl]                                         ; $5100: $34
	inc c                                            ; $5101: $0c
	inc sp                                           ; $5102: $33
	inc c                                            ; $5103: $0c
	ld [hl], $48                                     ; $5104: $36 $48
	inc [hl]                                         ; $5106: $34
	inc c                                            ; $5107: $0c
	inc sp                                           ; $5108: $33
	inc c                                            ; $5109: $0c
	cpl                                              ; $510a: $2f
	ld c, b                                          ; $510b: $48
	ld sp, $2f0c                                     ; $510c: $31 $0c $2f
	inc c                                            ; $510f: $0c
	ld a, l                                          ; $5110: $7d
	ld bc, $4833                                     ; $5111: $01 $33 $48
	ld a, l                                          ; $5114: $7d
	nop                                              ; $5115: $00
	ld l, $0c                                        ; $5116: $2e $0c
	cp l                                             ; $5118: $bd
	ld [bc], a                                       ; $5119: $02
	ld a, [hl+]                                      ; $511a: $2a
	ld b, $06                                        ; $511b: $06 $06
	add $7d                                          ; $511d: $c6 $7d
	ld bc, $177f                                     ; $511f: $01 $7f $17
	inc l                                            ; $5122: $2c
	ld c, b                                          ; $5123: $48
	ld l, $0c                                        ; $5124: $2e $0c
	cpl                                              ; $5126: $2f
	inc c                                            ; $5127: $0c
	cpl                                              ; $5128: $2f
	inc c                                            ; $5129: $0c
	ld a, [hl+]                                      ; $512a: $2a
	inc c                                            ; $512b: $0c
	ld a, [hl+]                                      ; $512c: $2a
	jr nc, @+$31                                     ; $512d: $30 $2f

	jr jr_037_5159                                   ; $512f: $18 $28

	jr jr_037_5162                                   ; $5131: $18 $2f

	jr jr_037_5163                                   ; $5133: $18 $2e

	inc h                                            ; $5135: $24
	cpl                                              ; $5136: $2f
	inc c                                            ; $5137: $0c
	ld a, l                                          ; $5138: $7d
	ld bc, $482f                                     ; $5139: $01 $2f $48
	cpl                                              ; $513c: $2f

jr_037_513d:
	ld [de], a                                       ; $513d: $12
	ld a, l                                          ; $513e: $7d
	nop                                              ; $513f: $00
	cp $ff                                           ; $5140: $fe $ff
	ret nc                                           ; $5142: $d0

	ld d, b                                          ; $5143: $50
	cp $fb                                           ; $5144: $fe $fb
	cp [hl]                                          ; $5146: $be
	jr jr_037_5159                                   ; $5147: $18 $10

	ld [de], a                                       ; $5149: $12
	ld [de], a                                       ; $514a: $12
	ld [de], a                                       ; $514b: $12
	ld de, $1212                                     ; $514c: $11 $12 $12
	ld [de], a                                       ; $514f: $12
	cp [hl]                                          ; $5150: $be
	ei                                               ; $5151: $fb
	rlca                                             ; $5152: $07
	cp [hl]                                          ; $5153: $be
	jr jr_037_5166                                   ; $5154: $18 $10

	ld [de], a                                       ; $5156: $12
	ld [de], a                                       ; $5157: $12
	ld [de], a                                       ; $5158: $12

jr_037_5159:
	db $10                                           ; $5159: $10
	ld [de], a                                       ; $515a: $12
	cp [hl]                                          ; $515b: $be
	rla                                              ; $515c: $17

jr_037_515d:
	jr nc, jr_037_515d                               ; $515d: $30 $fe

	rst $38                                          ; $515f: $ff
	or h                                             ; $5160: $b4
	ld h, h                                          ; $5161: $64

jr_037_5162:
	or c                                             ; $5162: $b1

jr_037_5163:
	ld bc, $7e75                                     ; $5163: $01 $75 $7e

jr_037_5166:
	dec h                                            ; $5166: $25

jr_037_5167:
	nop                                              ; $5167: $00
	and d                                            ; $5168: $a2
	cp [hl]                                          ; $5169: $be
	ld b, $25                                        ; $516a: $06 $25
	inc h                                            ; $516c: $24
	inc hl                                           ; $516d: $23
	ld [hl+], a                                      ; $516e: $22
	ld hl, $be20                                     ; $516f: $21 $20 $be
	ld a, [hl]                                       ; $5172: $7e
	dec e                                            ; $5173: $1d
	nop                                              ; $5174: $00
	and e                                            ; $5175: $a3
	rra                                              ; $5176: $1f
	jr jr_037_513d                                   ; $5177: $18 $c4

	rra                                              ; $5179: $1f
	inc c                                            ; $517a: $0c
	ld a, [hl]                                       ; $517b: $7e
	nop                                              ; $517c: $00
	and b                                            ; $517d: $a0
	sla b                                            ; $517e: $cb $20
	ld b, $c4                                        ; $5180: $06 $c4
	jr nz, jr_037_518a                               ; $5182: $20 $06

	call $061a                                       ; $5184: $cd $1a $06
	call nz, $0c1a                                   ; $5187: $c4 $1a $0c

jr_037_518a:
	rst $38                                          ; $518a: $ff
	or h                                             ; $518b: $b4
	ld h, h                                          ; $518c: $64
	pop de                                           ; $518d: $d1
	ld bc, $257e                                     ; $518e: $01 $7e $25
	nop                                              ; $5191: $00
	xor e                                            ; $5192: $ab

jr_037_5193:
	cp [hl]                                          ; $5193: $be
	ld b, $25                                        ; $5194: $06 $25
	inc h                                            ; $5196: $24
	inc hl                                           ; $5197: $23
	ld [hl+], a                                      ; $5198: $22
	ld hl, $be20                                     ; $5199: $21 $20 $be
	ld a, [hl]                                       ; $519c: $7e
	dec e                                            ; $519d: $1d
	nop                                              ; $519e: $00
	and e                                            ; $519f: $a3
	rra                                              ; $51a0: $1f
	jr jr_037_5167                                   ; $51a1: $18 $c4

	rra                                              ; $51a3: $1f
	inc c                                            ; $51a4: $0c
	ld a, [hl]                                       ; $51a5: $7e
	nop                                              ; $51a6: $00
	and b                                            ; $51a7: $a0
	call $0620                                       ; $51a8: $cd $20 $06
	call nz, $0620                                   ; $51ab: $c4 $20 $06
	call $061a                                       ; $51ae: $cd $1a $06
	call nz, $0c1a                                   ; $51b1: $c4 $1a $0c
	rst $38                                          ; $51b4: $ff
	or h                                             ; $51b5: $b4
	ld h, h                                          ; $51b6: $64
	ld hl, $7e18                                     ; $51b7: $21 $18 $7e
	dec h                                            ; $51ba: $25
	nop                                              ; $51bb: $00
	and d                                            ; $51bc: $a2
	cp [hl]                                          ; $51bd: $be
	ld b, $0d                                        ; $51be: $06 $0d
	inc c                                            ; $51c0: $0c
	dec bc                                           ; $51c1: $0b
	ld a, [bc]                                       ; $51c2: $0a
	add hl, bc                                       ; $51c3: $09
	ld [$7ebe], sp                                   ; $51c4: $08 $be $7e
	dec e                                            ; $51c7: $1d
	nop                                              ; $51c8: $00
	and a                                            ; $51c9: $a7
	rlca                                             ; $51ca: $07
	jr jr_037_5193                                   ; $51cb: $18 $c6

	rlca                                             ; $51cd: $07
	inc c                                            ; $51ce: $0c
	ld a, [hl]                                       ; $51cf: $7e
	nop                                              ; $51d0: $00
	and b                                            ; $51d1: $a0
	jp nz, $0608                                     ; $51d2: $c2 $08 $06

	add $08                                          ; $51d5: $c6 $08
	ld b, $c2                                        ; $51d7: $06 $c2
	ld [bc], a                                       ; $51d9: $02
	ld b, $c6                                        ; $51da: $06 $c6
	ld [bc], a                                       ; $51dc: $02
	inc c                                            ; $51dd: $0c
	rst $38                                          ; $51de: $ff
	ret nc                                           ; $51df: $d0

	ld h, h                                          ; $51e0: $64
	nop                                              ; $51e1: $00
	ld c, b                                          ; $51e2: $48
	jr nz, jr_037_51f1                               ; $51e3: $20 $0c

	jr nz, jr_037_51f3                               ; $51e5: $20 $0c

	nop                                              ; $51e7: $00
	ld b, $ff                                        ; $51e8: $06 $ff
	ret nc                                           ; $51ea: $d0

	ret nz                                           ; $51eb: $c0

	cp $b5                                           ; $51ec: $fe $b5
	ld h, c                                          ; $51ee: $61
	ld [bc], a                                       ; $51ef: $02
	rst $38                                          ; $51f0: $ff

jr_037_51f1:
	rlca                                             ; $51f1: $07
	nop                                              ; $51f2: $00

jr_037_51f3:
	ld b, $7e                                        ; $51f3: $06 $7e
	inc bc                                           ; $51f5: $03
	nop                                              ; $51f6: $00
	and b                                            ; $51f7: $a0
	ld a, l                                          ; $51f8: $7d
	ld a, [bc]                                       ; $51f9: $0a
	jr z, @+$26                                      ; $51fa: $28 $24

	ld a, [hl]                                       ; $51fc: $7e
	nop                                              ; $51fd: $00
	ld a, l                                          ; $51fe: $7d
	ld bc, $2425                                     ; $51ff: $01 $25 $24
	jr nz, @+$1a                                     ; $5202: $20 $18

	ld a, [hl]                                       ; $5204: $7e
	ld bc, $a02a                                     ; $5205: $01 $2a $a0
	ld [hl+], a                                      ; $5208: $22
	ld [de], a                                       ; $5209: $12
	or c                                             ; $520a: $b1
	ld [hl], c                                       ; $520b: $71
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	ld a, [hl]                                       ; $520e: $7e
	nop                                              ; $520f: $00
	ld a, l                                          ; $5210: $7d
	nop                                              ; $5211: $00
	inc l                                            ; $5212: $2c
	ld b, $c2                                        ; $5213: $06 $c2
	ld l, $06                                        ; $5215: $2e $06
	rst JumpTable                                          ; $5217: $c7
	jr nc, @+$08                                     ; $5218: $30 $06

	jp nz, $0630                                     ; $521a: $c2 $30 $06

	rst JumpTable                                          ; $521d: $c7
	ld sp, $c206                                     ; $521e: $31 $06 $c2
	ld sp, $c712                                     ; $5221: $31 $12 $c7
	ld sp, $c206                                     ; $5224: $31 $06 $c2
	ld sp, $b112                                     ; $5227: $31 $12 $b1
	ld h, c                                          ; $522a: $61
	rst $38                                          ; $522b: $ff
	rlca                                             ; $522c: $07
	ld a, l                                          ; $522d: $7d
	ld bc, $0600                                     ; $522e: $01 $00 $06
	ld a, [hl]                                       ; $5231: $7e
	inc bc                                           ; $5232: $03
	nop                                              ; $5233: $00
	xor c                                            ; $5234: $a9
	add hl, hl                                       ; $5235: $29
	inc h                                            ; $5236: $24
	ld a, [hl]                                       ; $5237: $7e
	nop                                              ; $5238: $00
	dec h                                            ; $5239: $25
	inc h                                            ; $523a: $24
	jr nz, @+$1a                                     ; $523b: $20 $18

	sub [hl]                                         ; $523d: $96
	inc c                                            ; $523e: $0c
	inc b                                            ; $523f: $04
	ld a, [hl]                                       ; $5240: $7e
	ld bc, $a03f                                     ; $5241: $01 $3f $a0
	ld [hl+], a                                      ; $5244: $22
	ld [de], a                                       ; $5245: $12
	or c                                             ; $5246: $b1
	ld [hl], c                                       ; $5247: $71
	nop                                              ; $5248: $00
	nop                                              ; $5249: $00
	ld a, l                                          ; $524a: $7d
	nop                                              ; $524b: $00
	inc l                                            ; $524c: $2c
	ld b, $c2                                        ; $524d: $06 $c2
	inc l                                            ; $524f: $2c
	ld b, $c7                                        ; $5250: $06 $c7
	jr nc, @+$08                                     ; $5252: $30 $06

	jp nz, $0630                                     ; $5254: $c2 $30 $06

	rst JumpTable                                          ; $5257: $c7
	ld sp, $c206                                     ; $5258: $31 $06 $c2
	ld sp, $c712                                     ; $525b: $31 $12 $c7
	jr nc, jr_037_5266                               ; $525e: $30 $06

	jp nz, $0630                                     ; $5260: $c2 $30 $06

	rst JumpTable                                          ; $5263: $c7
	ld l, $06                                        ; $5264: $2e $06

jr_037_5266:
	jp nz, $062e                                     ; $5266: $c2 $2e $06

	add $92                                          ; $5269: $c6 $92
	ld a, [hl]                                       ; $526b: $7e
	ld bc, $a900                                     ; $526c: $01 $00 $a9
	inc l                                            ; $526f: $2c
	inc h                                            ; $5270: $24
	ld a, [hl]                                       ; $5271: $7e
	nop                                              ; $5272: $00

jr_037_5273:
	push bc                                          ; $5273: $c5
	inc l                                            ; $5274: $2c
	ld b, $c3                                        ; $5275: $06 $c3
	inc l                                            ; $5277: $2c
	ld b, $c7                                        ; $5278: $06 $c7
	add hl, hl                                       ; $527a: $29
	inc h                                            ; $527b: $24
	push bc                                          ; $527c: $c5
	add hl, hl                                       ; $527d: $29
	ld b, $c3                                        ; $527e: $06 $c3
	add hl, hl                                       ; $5280: $29
	ld b, $c7                                        ; $5281: $06 $c7
	ld a, [hl+]                                      ; $5283: $2a
	inc h                                            ; $5284: $24
	jp $062a                                         ; $5285: $c3 $2a $06


	push bc                                          ; $5288: $c5
	ld a, [hl+]                                      ; $5289: $2a
	ld b, $c7                                        ; $528a: $06 $c7
	ld sp, $c524                                     ; $528c: $31 $24 $c5
	ld sp, $c306                                     ; $528f: $31 $06 $c3
	ld sp, $b106                                     ; $5292: $31 $06 $b1
	ld [hl], c                                       ; $5295: $71
	rst $38                                          ; $5296: $ff
	rlca                                             ; $5297: $07
	ld a, [hl]                                       ; $5298: $7e
	nop                                              ; $5299: $00
	jr nc, @+$26                                     ; $529a: $30 $24

	ld sp, $b10c                                     ; $529c: $31 $0c $b1
	ld [hl], c                                       ; $529f: $71
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	jr nc, jr_037_52aa                               ; $52a2: $30 $06

	jp nz, $1230                                     ; $52a4: $c2 $30 $12

	rst JumpTable                                          ; $52a7: $c7
	ld l, $06                                        ; $52a8: $2e $06

jr_037_52aa:
	jp nz, $122e                                     ; $52aa: $c2 $2e $12

	rst JumpTable                                          ; $52ad: $c7
	dec l                                            ; $52ae: $2d
	ld b, $c2                                        ; $52af: $06 $c2
	dec l                                            ; $52b1: $2d
	ld [de], a                                       ; $52b2: $12
	or c                                             ; $52b3: $b1
	ld [hl], c                                       ; $52b4: $71
	rst $38                                          ; $52b5: $ff
	rlca                                             ; $52b6: $07
	dec l                                            ; $52b7: $2d
	jr jr_037_52e8                                   ; $52b8: $18 $2e

	jr @+$32                                         ; $52ba: $18 $30

	jr jr_037_5273                                   ; $52bc: $18 $b5

	ld [hl], c                                       ; $52be: $71
	ld bc, $0000                                     ; $52bf: $01 $00 $00
	ld l, $30                                        ; $52c2: $2e $30
	add $7e                                          ; $52c4: $c6 $7e
	ld bc, $a900                                     ; $52c6: $01 $00 $a9
	ld l, $30                                        ; $52c9: $2e $30
	jp $182e                                         ; $52cb: $c3 $2e $18


	ld a, [hl]                                       ; $52ce: $7e
	nop                                              ; $52cf: $00
	sub d                                            ; $52d0: $92
	add $2e                                          ; $52d1: $c6 $2e
	ld b, $c2                                        ; $52d3: $06 $c2
	ld l, $06                                        ; $52d5: $2e $06
	add $30                                          ; $52d7: $c6 $30
	ld b, $c2                                        ; $52d9: $06 $c2
	jr nc, @+$08                                     ; $52db: $30 $06

	add $31                                          ; $52dd: $c6 $31
	ld b, $c2                                        ; $52df: $06 $c2
	ld sp, $c612                                     ; $52e1: $31 $12 $c6
	inc sp                                           ; $52e4: $33
	ld b, $c2                                        ; $52e5: $06 $c2
	inc sp                                           ; $52e7: $33

jr_037_52e8:
	ld [de], a                                       ; $52e8: $12
	ld a, [hl]                                       ; $52e9: $7e
	ld bc, $a930                                     ; $52ea: $01 $30 $a9
	call nz, $6035                                   ; $52ed: $c4 $35 $60
	ld a, [hl]                                       ; $52f0: $7e
	ld bc, $a000                                     ; $52f1: $01 $00 $a0
	jp nz, $1835                                     ; $52f4: $c2 $35 $18

	ld a, [hl]                                       ; $52f7: $7e
	nop                                              ; $52f8: $00
	add $2e                                          ; $52f9: $c6 $2e
	ld b, $c2                                        ; $52fb: $06 $c2
	ld l, $06                                        ; $52fd: $2e $06
	add $30                                          ; $52ff: $c6 $30
	ld b, $c2                                        ; $5301: $06 $c2
	jr nc, @+$08                                     ; $5303: $30 $06

	add $31                                          ; $5305: $c6 $31
	ld b, $c2                                        ; $5307: $06 $c2
	ld sp, $c612                                     ; $5309: $31 $12 $c6
	inc sp                                           ; $530c: $33
	ld b, $c2                                        ; $530d: $06 $c2
	inc sp                                           ; $530f: $33
	ld [de], a                                       ; $5310: $12
	ld a, [hl]                                       ; $5311: $7e
	ld bc, $a930                                     ; $5312: $01 $30 $a9
	push bc                                          ; $5315: $c5
	dec [hl]                                         ; $5316: $35
	inc a                                            ; $5317: $3c

jr_037_5318:
	ld a, [hl]                                       ; $5318: $7e
	nop                                              ; $5319: $00
	jp $1835                                         ; $531a: $c3 $35 $18


	jp nz, $0c35                                     ; $531d: $c2 $35 $0c

	or c                                             ; $5320: $b1
	ld h, c                                          ; $5321: $61

jr_037_5322:
	rst $38                                          ; $5322: $ff
	rlca                                             ; $5323: $07
	ld a, [hl]                                       ; $5324: $7e
	dec b                                            ; $5325: $05
	nop                                              ; $5326: $00
	and b                                            ; $5327: $a0
	inc sp                                           ; $5328: $33
	inc h                                            ; $5329: $24
	ld a, [hl]                                       ; $532a: $7e
	nop                                              ; $532b: $00
	ld sp, $3324                                     ; $532c: $31 $24 $33
	jr @-$4d                                         ; $532f: $18 $b1

	ld d, c                                          ; $5331: $51
	nop                                              ; $5332: $00
	nop                                              ; $5333: $00
	ld a, [hl]                                       ; $5334: $7e
	ld bc, $a918                                     ; $5335: $01 $18 $a9

jr_037_5338:
	jr nc, jr_037_5364                               ; $5338: $30 $2a

	jp nz, $0630                                     ; $533a: $c2 $30 $06

	push bc                                          ; $533d: $c5
	ld sp, $c22a                                     ; $533e: $31 $2a $c2
	ld sp, $c506                                     ; $5341: $31 $06 $c5
	ld l, $2a                                        ; $5344: $2e $2a
	jp nz, $062e                                     ; $5346: $c2 $2e $06

	push bc                                          ; $5349: $c5
	jr nc, jr_037_5376                               ; $534a: $30 $2a

jr_037_534c:
	jp nz, $0630                                     ; $534c: $c2 $30 $06

	ld a, [hl]                                       ; $534f: $7e
	nop                                              ; $5350: $00
	ei                                               ; $5351: $fb
	pop de                                           ; $5352: $d1
	nop                                              ; $5353: $00
	jr @-$49                                         ; $5354: $18 $b5

	pop bc                                           ; $5356: $c1
	ld bc, $01ff                                     ; $5357: $01 $ff $01
	dec h                                            ; $535a: $25
	jr @-$4d                                         ; $535b: $18 $b1

	and e                                            ; $535d: $a3
	rst $38                                          ; $535e: $ff
	rlca                                             ; $535f: $07
	ld a, [hl]                                       ; $5360: $7e
	dec b                                            ; $5361: $05
	nop                                              ; $5362: $00
	and b                                            ; $5363: $a0

jr_037_5364:
	inc l                                            ; $5364: $2c
	jr jr_037_5318                                   ; $5365: $18 $b1

jr_037_5367:
	pop bc                                           ; $5367: $c1
	rst $38                                          ; $5368: $ff
	ld bc, $007e                                     ; $5369: $01 $7e $00
	dec h                                            ; $536c: $25
	jr nc, @+$27                                     ; $536d: $30 $25

	jr jr_037_5322                                   ; $536f: $18 $b1

	and d                                            ; $5371: $a2
	rst $38                                          ; $5372: $ff
	rlca                                             ; $5373: $07
	ld a, [hl]                                       ; $5374: $7e
	dec b                                            ; $5375: $05

jr_037_5376:
	nop                                              ; $5376: $00
	and b                                            ; $5377: $a0
	ld l, $18                                        ; $5378: $2e $18

jr_037_537a:
	or c                                             ; $537a: $b1
	pop bc                                           ; $537b: $c1
	rst $38                                          ; $537c: $ff
	ld bc, $007e                                     ; $537d: $01 $7e $00
	dec h                                            ; $5380: $25
	jr jr_037_5383                                   ; $5381: $18 $00

jr_037_5383:
	jr @+$27                                         ; $5383: $18 $25

	jr jr_037_5338                                   ; $5385: $18 $b1

	and e                                            ; $5387: $a3
	rst $38                                          ; $5388: $ff
	rlca                                             ; $5389: $07
	ld a, [hl]                                       ; $538a: $7e

jr_037_538b:
	dec b                                            ; $538b: $05
	nop                                              ; $538c: $00
	and b                                            ; $538d: $a0
	inc l                                            ; $538e: $2c
	jr @-$4d                                         ; $538f: $18 $b1

	pop bc                                           ; $5391: $c1
	rst $38                                          ; $5392: $ff
	ld bc, $007e                                     ; $5393: $01 $7e $00
	dec h                                            ; $5396: $25
	jr nc, jr_037_53bd                               ; $5397: $30 $24

	jr jr_037_534c                                   ; $5399: $18 $b1

	and d                                            ; $539b: $a2
	rst $38                                          ; $539c: $ff
	rlca                                             ; $539d: $07
	ld a, [hl]                                       ; $539e: $7e
	dec b                                            ; $539f: $05
	nop                                              ; $53a0: $00
	and b                                            ; $53a1: $a0
	inc l                                            ; $53a2: $2c
	jr jr_037_5423                                   ; $53a3: $18 $7e

	nop                                              ; $53a5: $00
	or c                                             ; $53a6: $b1
	pop bc                                           ; $53a7: $c1
	rst $38                                          ; $53a8: $ff
	ld bc, $1824                                     ; $53a9: $01 $24 $18
	ei                                               ; $53ac: $fb
	ld [bc], a                                       ; $53ad: $02
	sub [hl]                                         ; $53ae: $96
	rst $38                                          ; $53af: $ff
	ld bc, $1800                                     ; $53b0: $01 $00 $18
	dec h                                            ; $53b3: $25
	jr jr_037_5367                                   ; $53b4: $18 $b1

	and e                                            ; $53b6: $a3
	rst $38                                          ; $53b7: $ff
	rlca                                             ; $53b8: $07

jr_037_53b9:
	ld a, [hl]                                       ; $53b9: $7e
	dec b                                            ; $53ba: $05
	nop                                              ; $53bb: $00
	inc l                                            ; $53bc: $2c

jr_037_53bd:
	jr @-$4d                                         ; $53bd: $18 $b1

	pop bc                                           ; $53bf: $c1
	rst $38                                          ; $53c0: $ff
	ld bc, $007e                                     ; $53c1: $01 $7e $00
	dec h                                            ; $53c4: $25
	jr nc, jr_037_53ee                               ; $53c5: $30 $27

	jr jr_037_537a                                   ; $53c7: $18 $b1

	and d                                            ; $53c9: $a2
	rst $38                                          ; $53ca: $ff
	rlca                                             ; $53cb: $07
	ld a, [hl]                                       ; $53cc: $7e
	dec b                                            ; $53cd: $05
	nop                                              ; $53ce: $00
	ld l, $18                                        ; $53cf: $2e $18
	or c                                             ; $53d1: $b1
	pop bc                                           ; $53d2: $c1
	rst $38                                          ; $53d3: $ff
	ld bc, $007e                                     ; $53d4: $01 $7e $00
	daa                                              ; $53d7: $27
	jr jr_037_538b                                   ; $53d8: $18 $b1

	ld [hl], c                                       ; $53da: $71
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	ld a, l                                          ; $53dd: $7d
	ld b, $34                                        ; $53de: $06 $34
	jr nc, jr_037_545f                               ; $53e0: $30 $7d

	nop                                              ; $53e2: $00
	ld a, [hl]                                       ; $53e3: $7e
	dec bc                                           ; $53e4: $0b

jr_037_53e5:
	ld d, $31                                        ; $53e5: $16 $31
	ld b, h                                          ; $53e7: $44
	nop                                              ; $53e8: $00
	dec b                                            ; $53e9: $05
	ld a, [hl]                                       ; $53ea: $7e
	nop                                              ; $53eb: $00
	sub [hl]                                         ; $53ec: $96
	nop                                              ; $53ed: $00

jr_037_53ee:
	nop                                              ; $53ee: $00

jr_037_53ef:
	ld sp, $0016                                     ; $53ef: $31 $16 $00
	ld [bc], a                                       ; $53f2: $02
	ld sp, $0017                                     ; $53f3: $31 $17 $00
	ld bc, $1633                                     ; $53f6: $01 $33 $16
	nop                                              ; $53f9: $00
	ld [bc], a                                       ; $53fa: $02
	ld a, [hl]                                       ; $53fb: $7e
	ld bc, $9628                                     ; $53fc: $01 $28 $96
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	ld sp, $2c60                                     ; $5401: $31 $60 $2c
	jr nc, jr_037_5430                               ; $5404: $30 $2a

	jr nc, jr_037_53b9                               ; $5406: $30 $b1

	ld h, c                                          ; $5408: $61
	nop                                              ; $5409: $00
	nop                                              ; $540a: $00
	ld l, $60                                        ; $540b: $2e $60
	ld a, [hl]                                       ; $540d: $7e
	nop                                              ; $540e: $00
	inc l                                            ; $540f: $2c
	jr nc, jr_037_543c                               ; $5410: $30 $2a

jr_037_5412:
	jr nc, jr_037_5412                               ; $5412: $30 $fe

	rst $38                                          ; $5414: $ff
	ret nc                                           ; $5415: $d0

	ret nz                                           ; $5416: $c0

	cp $b5                                           ; $5417: $fe $b5
	and c                                            ; $5419: $a1
	ld bc, $07ff                                     ; $541a: $01 $ff $07
	ld a, [hl]                                       ; $541d: $7e
	inc bc                                           ; $541e: $03
	nop                                              ; $541f: $00
	and b                                            ; $5420: $a0
	ld a, l                                          ; $5421: $7d
	ld a, [bc]                                       ; $5422: $0a

jr_037_5423:
	jr z, jr_037_5449                                ; $5423: $28 $24

	ld a, [hl]                                       ; $5425: $7e
	nop                                              ; $5426: $00
	ld a, l                                          ; $5427: $7d
	nop                                              ; $5428: $00
	dec h                                            ; $5429: $25
	inc h                                            ; $542a: $24
	jr nz, jr_037_5445                               ; $542b: $20 $18

	or c                                             ; $542d: $b1
	pop bc                                           ; $542e: $c1
	rst $38                                          ; $542f: $ff

jr_037_5430:
	rlca                                             ; $5430: $07
	ld [hl+], a                                      ; $5431: $22
	jr nc, jr_037_53e5                               ; $5432: $30 $b1

	ld [hl], c                                       ; $5434: $71
	rst $38                                          ; $5435: $ff
	rlca                                             ; $5436: $07
	ld a, [hl]                                       ; $5437: $7e

jr_037_5438:
	ld bc, $a100                                     ; $5438: $01 $00 $a1
	ld [hl+], a                                      ; $543b: $22

jr_037_543c:
	jr nc, jr_037_53ef                               ; $543c: $30 $b1

	and c                                            ; $543e: $a1
	rst $38                                          ; $543f: $ff
	rlca                                             ; $5440: $07
	ld a, [hl]                                       ; $5441: $7e
	inc bc                                           ; $5442: $03
	nop                                              ; $5443: $00
	xor c                                            ; $5444: $a9

jr_037_5445:
	add hl, hl                                       ; $5445: $29
	inc h                                            ; $5446: $24
	ld a, [hl]                                       ; $5447: $7e
	nop                                              ; $5448: $00

jr_037_5449:
	dec h                                            ; $5449: $25
	inc h                                            ; $544a: $24
	jr nz, jr_037_5465                               ; $544b: $20 $18

	call z, $3022                                    ; $544d: $cc $22 $30
	ld a, [hl]                                       ; $5450: $7e
	ld bc, $a100                                     ; $5451: $01 $00 $a1
	call nz, $1822                                   ; $5454: $c4 $22 $18
	or c                                             ; $5457: $b1
	or c                                             ; $5458: $b1
	rst $38                                          ; $5459: $ff
	ld [bc], a                                       ; $545a: $02

jr_037_545b:
	ld a, [hl]                                       ; $545b: $7e
	nop                                              ; $545c: $00
	dec h                                            ; $545d: $25
	inc c                                            ; $545e: $0c

jr_037_545f:
	daa                                              ; $545f: $27
	inc c                                            ; $5460: $0c
	or c                                             ; $5461: $b1
	sub c                                            ; $5462: $91
	rst $38                                          ; $5463: $ff

jr_037_5464:
	rlca                                             ; $5464: $07

jr_037_5465:
	ld a, [hl]                                       ; $5465: $7e

jr_037_5466:
	inc bc                                           ; $5466: $03
	nop                                              ; $5467: $00
	and b                                            ; $5468: $a0
	add hl, hl                                       ; $5469: $29
	jr jr_037_54ea                                   ; $546a: $18 $7e

	nop                                              ; $546c: $00
	inc l                                            ; $546d: $2c
	jr jr_037_5438                                   ; $546e: $18 $c8

	ld a, [hl]                                       ; $5470: $7e
	inc bc                                           ; $5471: $03
	nop                                              ; $5472: $00
	xor c                                            ; $5473: $a9
	ld sp, $7e18                                     ; $5474: $31 $18 $7e
	nop                                              ; $5477: $00
	jr nc, jr_037_5492                               ; $5478: $30 $18

	or c                                             ; $547a: $b1
	sub c                                            ; $547b: $91
	rst $38                                          ; $547c: $ff
	rlca                                             ; $547d: $07
	ld l, $22                                        ; $547e: $2e $22
	jp $022e                                         ; $5480: $c3 $2e $02


	jp z, $222c                                      ; $5483: $ca $2c $22

	jp $022c                                         ; $5486: $c3 $2c $02


	ret                                              ; $5489: $c9


	ld a, [hl+]                                      ; $548a: $2a
	ld d, $c3                                        ; $548b: $16 $c3
	ld a, [hl+]                                      ; $548d: $2a
	ld [bc], a                                       ; $548e: $02
	or c                                             ; $548f: $b1
	add c                                            ; $5490: $81
	nop                                              ; $5491: $00

jr_037_5492:
	nop                                              ; $5492: $00
	add hl, hl                                       ; $5493: $29
	ld h, b                                          ; $5494: $60
	ld a, [hl]                                       ; $5495: $7e
	ld bc, $a000                                     ; $5496: $01 $00 $a0
	ret z                                            ; $5499: $c8

	add hl, hl                                       ; $549a: $29
	jr jr_037_5464                                   ; $549b: $18 $c7

	add hl, hl                                       ; $549d: $29
	jr jr_037_5466                                   ; $549e: $18 $c6

jr_037_54a0:
	add hl, hl                                       ; $54a0: $29
	jr jr_037_5466                                   ; $54a1: $18 $c3

	add hl, hl                                       ; $54a3: $29
	jr jr_037_545b                                   ; $54a4: $18 $b5

	or c                                             ; $54a6: $b1
	ld [bc], a                                       ; $54a7: $02
	rst $38                                          ; $54a8: $ff
	rlca                                             ; $54a9: $07
	ld a, [hl]                                       ; $54aa: $7e
	nop                                              ; $54ab: $00
	dec h                                            ; $54ac: $25
	inc h                                            ; $54ad: $24
	ret z                                            ; $54ae: $c8

jr_037_54af:
	ld a, [hl]                                       ; $54af: $7e
	inc bc                                           ; $54b0: $03
	nop                                              ; $54b1: $00
	xor c                                            ; $54b2: $a9
	add hl, hl                                       ; $54b3: $29
	inc h                                            ; $54b4: $24
	bit 7, [hl]                                      ; $54b5: $cb $7e
	nop                                              ; $54b7: $00
	dec h                                            ; $54b8: $25
	jr jr_037_5539                                   ; $54b9: $18 $7e

	ld bc, $a018                                     ; $54bb: $01 $18 $a0
	ld [hl+], a                                      ; $54be: $22
	jr nc, @+$80                                     ; $54bf: $30 $7e

	ld bc, $a000                                     ; $54c1: $01 $00 $a0
	jp $1822                                         ; $54c4: $c3 $22 $18


	or c                                             ; $54c7: $b1
	pop bc                                           ; $54c8: $c1
	rst $38                                          ; $54c9: $ff
	inc bc                                           ; $54ca: $03
	ld a, [hl]                                       ; $54cb: $7e
	nop                                              ; $54cc: $00
	ld [hl+], a                                      ; $54cd: $22
	inc c                                            ; $54ce: $0c
	inc h                                            ; $54cf: $24
	inc c                                            ; $54d0: $0c
	or c                                             ; $54d1: $b1
	or c                                             ; $54d2: $b1
	rst $38                                          ; $54d3: $ff
	rlca                                             ; $54d4: $07
	ld a, [hl]                                       ; $54d5: $7e
	nop                                              ; $54d6: $00
	dec h                                            ; $54d7: $25
	inc h                                            ; $54d8: $24
	ret z                                            ; $54d9: $c8

	ld a, [hl]                                       ; $54da: $7e
	inc bc                                           ; $54db: $03
	nop                                              ; $54dc: $00
	xor d                                            ; $54dd: $aa
	add hl, hl                                       ; $54de: $29
	inc h                                            ; $54df: $24
	bit 7, [hl]                                      ; $54e0: $cb $7e
	nop                                              ; $54e2: $00
	dec h                                            ; $54e3: $25
	jr @+$80                                         ; $54e4: $18 $7e

	ld bc, $a01c                                     ; $54e6: $01 $1c $a0
	ld [hl+], a                                      ; $54e9: $22

jr_037_54ea:
	jr nc, jr_037_54af                               ; $54ea: $30 $c3

	ld [hl+], a                                      ; $54ec: $22
	jr jr_037_54a0                                   ; $54ed: $18 $b1

	or c                                             ; $54ef: $b1
	rst $38                                          ; $54f0: $ff
	inc bc                                           ; $54f1: $03
	ld a, [hl]                                       ; $54f2: $7e
	nop                                              ; $54f3: $00
	ld [hl+], a                                      ; $54f4: $22
	inc c                                            ; $54f5: $0c
	inc h                                            ; $54f6: $24
	inc c                                            ; $54f7: $0c
	sub [hl]                                         ; $54f8: $96
	rst $38                                          ; $54f9: $ff
	rlca                                             ; $54fa: $07
	ld a, [hl]                                       ; $54fb: $7e
	ld bc, $a014                                     ; $54fc: $01 $14 $a0
	dec h                                            ; $54ff: $25
	ld [hl+], a                                      ; $5500: $22
	nop                                              ; $5501: $00
	ld [bc], a                                       ; $5502: $02
	ret                                              ; $5503: $c9


	ld a, [hl]                                       ; $5504: $7e
	nop                                              ; $5505: $00
	daa                                              ; $5506: $27
	ld [hl+], a                                      ; $5507: $22
	nop                                              ; $5508: $00
	ld [bc], a                                       ; $5509: $02
	add hl, hl                                       ; $550a: $29
	ld d, $00                                        ; $550b: $16 $00
	ld [bc], a                                       ; $550d: $02
	ret z                                            ; $550e: $c8

	ld a, [hl]                                       ; $550f: $7e
	ld bc, $a914                                     ; $5510: $01 $14 $a9
	dec hl                                           ; $5513: $2b
	ld [hl+], a                                      ; $5514: $22
	nop                                              ; $5515: $00

jr_037_5516:
	ld [bc], a                                       ; $5516: $02
	ld a, [hl]                                       ; $5517: $7e
	nop                                              ; $5518: $00
	add hl, hl                                       ; $5519: $29
	ld [hl+], a                                      ; $551a: $22
	nop                                              ; $551b: $00
	ld [bc], a                                       ; $551c: $02
	dec hl                                           ; $551d: $2b
	rla                                              ; $551e: $17
	nop                                              ; $551f: $00
	ld bc, $71b1                                     ; $5520: $01 $b1 $71
	ld a, [hl-]                                      ; $5523: $3a
	dec b                                            ; $5524: $05
	ld a, [hl]                                       ; $5525: $7e
	ld bc, $a93c                                     ; $5526: $01 $3c $a9
	inc l                                            ; $5529: $2c
	cp [hl]                                          ; $552a: $be
	nop                                              ; $552b: $00
	ld [bc], a                                       ; $552c: $02
	or l                                             ; $552d: $b5
	and c                                            ; $552e: $a1
	ld bc, $07ff                                     ; $552f: $01 $ff $07
	ld a, [hl]                                       ; $5532: $7e
	inc bc                                           ; $5533: $03
	nop                                              ; $5534: $00
	and b                                            ; $5535: $a0
	inc l                                            ; $5536: $2c
	inc h                                            ; $5537: $24
	sub [hl]                                         ; $5538: $96

jr_037_5539:
	nop                                              ; $5539: $00
	nop                                              ; $553a: $00
	ld a, [hl]                                       ; $553b: $7e
	nop                                              ; $553c: $00
	ld sp, $0021                                     ; $553d: $31 $21 $00
	inc bc                                           ; $5540: $03
	ret                                              ; $5541: $c9


	jr nc, jr_037_555a                               ; $5542: $30 $16

	nop                                              ; $5544: $00
	ld [bc], a                                       ; $5545: $02
	ld l, $22                                        ; $5546: $2e $22
	nop                                              ; $5548: $00
	inc bc                                           ; $5549: $03
	inc l                                            ; $554a: $2c
	ld [hl+], a                                      ; $554b: $22
	nop                                              ; $554c: $00
	ld bc, $162a                                     ; $554d: $01 $2a $16
	nop                                              ; $5550: $00
	ld [bc], a                                       ; $5551: $02
	or c                                             ; $5552: $b1
	or c                                             ; $5553: $b1
	rst $38                                          ; $5554: $ff
	rlca                                             ; $5555: $07
	add hl, hl                                       ; $5556: $29
	ld [hl+], a                                      ; $5557: $22
	nop                                              ; $5558: $00
	ld [bc], a                                       ; $5559: $02

jr_037_555a:
	sub [hl]                                         ; $555a: $96
	rst $38                                          ; $555b: $ff
	rlca                                             ; $555c: $07
	ld a, [hl+]                                      ; $555d: $2a
	inc h                                            ; $555e: $24
	sub [hl]                                         ; $555f: $96
	rst $38                                          ; $5560: $ff
	rlca                                             ; $5561: $07
	add hl, hl                                       ; $5562: $29
	jr jr_037_5516                                   ; $5563: $18 $b1

	sub c                                            ; $5565: $91
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	ld a, [hl]                                       ; $5568: $7e
	ld bc, $a025                                     ; $5569: $01 $25 $a0
	daa                                              ; $556c: $27
	inc a                                            ; $556d: $3c
	ld a, [hl]                                       ; $556e: $7e
	ld bc, $a000                                     ; $556f: $01 $00 $a0
	push bc                                          ; $5572: $c5
	daa                                              ; $5573: $27
	inc c                                            ; $5574: $0c
	or l                                             ; $5575: $b5

jr_037_5576:
	and c                                            ; $5576: $a1
	ld [bc], a                                       ; $5577: $02
	rst $38                                          ; $5578: $ff
	ld [bc], a                                       ; $5579: $02
	ld a, [hl]                                       ; $557a: $7e
	nop                                              ; $557b: $00
	add hl, hl                                       ; $557c: $29
	inc c                                            ; $557d: $0c
	ld a, [hl+]                                      ; $557e: $2a
	inc c                                            ; $557f: $0c
	or c                                             ; $5580: $b1
	sub c                                            ; $5581: $91
	rst $38                                          ; $5582: $ff
	rlca                                             ; $5583: $07
	inc l                                            ; $5584: $2c
	inc h                                            ; $5585: $24
	ret z                                            ; $5586: $c8

	ld a, [hl]                                       ; $5587: $7e
	inc bc                                           ; $5588: $03
	nop                                              ; $5589: $00
	xor c                                            ; $558a: $a9
	ld sp, $c924                                     ; $558b: $31 $24 $c9
	ld a, [hl]                                       ; $558e: $7e
	nop                                              ; $558f: $00
	jr nc, jr_037_55a8                               ; $5590: $30 $16

	nop                                              ; $5592: $00
	ld [bc], a                                       ; $5593: $02
	ld l, $21                                        ; $5594: $2e $21
	nop                                              ; $5596: $00
	inc bc                                           ; $5597: $03
	inc l                                            ; $5598: $2c
	ld [hl+], a                                      ; $5599: $22
	nop                                              ; $559a: $00
	ld [bc], a                                       ; $559b: $02
	ret                                              ; $559c: $c9


	ld a, [hl+]                                      ; $559d: $2a
	ld d, $00                                        ; $559e: $16 $00
	ld [bc], a                                       ; $55a0: $02
	jp z, $2129                                      ; $55a1: $ca $29 $21

	nop                                              ; $55a4: $00
	inc bc                                           ; $55a5: $03
	ld a, [hl+]                                      ; $55a6: $2a
	inc h                                            ; $55a7: $24

jr_037_55a8:
	inc l                                            ; $55a8: $2c
	jr jr_037_5576                                   ; $55a9: $18 $cb

	ld a, [hl]                                       ; $55ab: $7e
	ld bc, $a025                                     ; $55ac: $01 $25 $a0
	daa                                              ; $55af: $27
	ld c, b                                          ; $55b0: $48
	or l                                             ; $55b1: $b5
	pop bc                                           ; $55b2: $c1
	inc bc                                           ; $55b3: $03
	rst $38                                          ; $55b4: $ff
	ld [bc], a                                       ; $55b5: $02
	ld a, [hl]                                       ; $55b6: $7e
	nop                                              ; $55b7: $00
	add hl, hl                                       ; $55b8: $29
	dec bc                                           ; $55b9: $0b
	nop                                              ; $55ba: $00
	ld bc, $0c2a                                     ; $55bb: $01 $2a $0c
	sub [hl]                                         ; $55be: $96
	rst $38                                          ; $55bf: $ff
	rlca                                             ; $55c0: $07
	inc l                                            ; $55c1: $2c
	ld [hl+], a                                      ; $55c2: $22
	nop                                              ; $55c3: $00
	ld [bc], a                                       ; $55c4: $02
	ret                                              ; $55c5: $c9


	ld a, [hl]                                       ; $55c6: $7e
	inc bc                                           ; $55c7: $03
	nop                                              ; $55c8: $00
	xor c                                            ; $55c9: $a9
	dec [hl]                                         ; $55ca: $35
	inc h                                            ; $55cb: $24
	ld a, [hl]                                       ; $55cc: $7e
	ld bc, $a017                                     ; $55cd: $01 $17 $a0
	ld sp, $7e18                                     ; $55d0: $31 $18 $7e
	nop                                              ; $55d3: $00
	jp z, $242e                                      ; $55d4: $ca $2e $24

	jr nc, jr_037_55fd                               ; $55d7: $30 $24

	ld sp, $0017                                     ; $55d9: $31 $17 $00
	ld bc, $3031                                     ; $55dc: $01 $31 $30
	ld a, l                                          ; $55df: $7d
	ld bc, $442c                                     ; $55e0: $01 $2c $44
	nop                                              ; $55e3: $00
	dec b                                            ; $55e4: $05
	or c                                             ; $55e5: $b1
	sub c                                            ; $55e6: $91
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	ld a, l                                          ; $55e9: $7d
	nop                                              ; $55ea: $00
	add hl, hl                                       ; $55eb: $29
	ld d, $00                                        ; $55ec: $16 $00
	ld [bc], a                                       ; $55ee: $02
	add hl, hl                                       ; $55ef: $29
	rla                                              ; $55f0: $17
	nop                                              ; $55f1: $00
	ld bc, $162a                                     ; $55f2: $01 $2a $16
	nop                                              ; $55f5: $00
	ld [bc], a                                       ; $55f6: $02
	ld a, [hl]                                       ; $55f7: $7e
	ld bc, $9628                                     ; $55f8: $01 $28 $96
	ld a, [hl+]                                      ; $55fb: $2a
	rlca                                             ; $55fc: $07

jr_037_55fd:
	add hl, hl                                       ; $55fd: $29
	ld h, b                                          ; $55fe: $60
	daa                                              ; $55ff: $27
	ld h, b                                          ; $5600: $60
	ld a, [hl]                                       ; $5601: $7e
	ld bc, $9628                                     ; $5602: $01 $28 $96
	ld c, a                                          ; $5605: $4f
	ld b, $25                                        ; $5606: $06 $25
	ret nz                                           ; $5608: $c0

	or c                                             ; $5609: $b1
	ld bc, $0000                                     ; $560a: $01 $00 $00
	ld a, [hl]                                       ; $560d: $7e
	nop                                              ; $560e: $00
	cp $ff                                           ; $560f: $fe $ff
	ret nc                                           ; $5611: $d0

	ret nz                                           ; $5612: $c0

	cp $c2                                           ; $5613: $fe $c2
	add e                                            ; $5615: $83
	pop de                                           ; $5616: $d1
	ei                                               ; $5617: $fb
	jp nz, $1819                                     ; $5618: $c2 $19 $18

	jr nz, jr_037_5623                               ; $561b: $20 $06

	call nz, $0620                                   ; $561d: $c4 $20 $06
	add $20                                          ; $5620: $c6 $20
	inc c                                            ; $5622: $0c

jr_037_5623:
	jp nz, $1819                                     ; $5623: $c2 $19 $18

	jr nz, jr_037_562e                               ; $5626: $20 $06

	call nz, $0620                                   ; $5628: $c4 $20 $06
	add $20                                          ; $562b: $c6 $20
	inc c                                            ; $562d: $0c

jr_037_562e:
	jp nz, $181e                                     ; $562e: $c2 $1e $18

	ld [hl+], a                                      ; $5631: $22
	ld b, $c4                                        ; $5632: $06 $c4
	ld [hl+], a                                      ; $5634: $22
	ld b, $c6                                        ; $5635: $06 $c6
	ld [hl+], a                                      ; $5637: $22
	inc c                                            ; $5638: $0c
	jp nz, $181e                                     ; $5639: $c2 $1e $18

	ld [hl+], a                                      ; $563c: $22
	ld b, $c4                                        ; $563d: $06 $c4
	ld [hl+], a                                      ; $563f: $22
	ld b, $c6                                        ; $5640: $06 $c6
	ld [hl+], a                                      ; $5642: $22
	inc c                                            ; $5643: $0c
	ei                                               ; $5644: $fb
	inc bc                                           ; $5645: $03
	jp nz, $1818                                     ; $5646: $c2 $18 $18

	rra                                              ; $5649: $1f
	ld b, $c4                                        ; $564a: $06 $c4
	rra                                              ; $564c: $1f
	ld b, $c6                                        ; $564d: $06 $c6
	rra                                              ; $564f: $1f
	inc c                                            ; $5650: $0c
	jp nz, $1818                                     ; $5651: $c2 $18 $18

	rra                                              ; $5654: $1f
	ld b, $c4                                        ; $5655: $06 $c4
	rra                                              ; $5657: $1f
	ld b, $c6                                        ; $5658: $06 $c6
	rra                                              ; $565a: $1f
	inc c                                            ; $565b: $0c
	jp nz, $181d                                     ; $565c: $c2 $1d $18

	ld hl, $c406                                     ; $565f: $21 $06 $c4
	ld hl, $c606                                     ; $5662: $21 $06 $c6
	ld hl, $c20c                                     ; $5665: $21 $0c $c2
	dec e                                            ; $5668: $1d
	jr jr_037_568c                                   ; $5669: $18 $21

	ld b, $c4                                        ; $566b: $06 $c4
	ld hl, $c606                                     ; $566d: $21 $06 $c6
	ld hl, $c20c                                     ; $5670: $21 $0c $c2
	add e                                            ; $5673: $83
	pop de                                           ; $5674: $d1
	ei                                               ; $5675: $fb
	jp nz, $1816                                     ; $5676: $c2 $16 $18

	dec e                                            ; $5679: $1d
	ld b, $c4                                        ; $567a: $06 $c4
	dec e                                            ; $567c: $1d
	ld b, $c6                                        ; $567d: $06 $c6
	dec e                                            ; $567f: $1d
	inc c                                            ; $5680: $0c
	jp nz, $1816                                     ; $5681: $c2 $16 $18

	dec e                                            ; $5684: $1d
	ld b, $c4                                        ; $5685: $06 $c4
	dec e                                            ; $5687: $1d
	ld b, $c6                                        ; $5688: $06 $c6
	dec e                                            ; $568a: $1d
	inc c                                            ; $568b: $0c

jr_037_568c:
	jp nz, $181b                                     ; $568c: $c2 $1b $18

	ld [hl+], a                                      ; $568f: $22
	ld b, $c4                                        ; $5690: $06 $c4
	ld [hl+], a                                      ; $5692: $22
	ld b, $c6                                        ; $5693: $06 $c6
	ld [hl+], a                                      ; $5695: $22
	inc c                                            ; $5696: $0c
	jp nz, $181b                                     ; $5697: $c2 $1b $18

	ld [hl+], a                                      ; $569a: $22
	ld b, $c4                                        ; $569b: $06 $c4
	ld [hl+], a                                      ; $569d: $22
	ld b, $c6                                        ; $569e: $06 $c6
	ld [hl+], a                                      ; $56a0: $22
	inc c                                            ; $56a1: $0c
	ei                                               ; $56a2: $fb
	inc bc                                           ; $56a3: $03
	jp nz, $1820                                     ; $56a4: $c2 $20 $18

	dec h                                            ; $56a7: $25
	ld b, $c4                                        ; $56a8: $06 $c4
	dec h                                            ; $56aa: $25
	ld b, $c6                                        ; $56ab: $06 $c6
	dec h                                            ; $56ad: $25
	inc c                                            ; $56ae: $0c
	jp nz, $1820                                     ; $56af: $c2 $20 $18

	dec h                                            ; $56b2: $25
	ld b, $c4                                        ; $56b3: $06 $c4
	dec h                                            ; $56b5: $25
	ld b, $c6                                        ; $56b6: $06 $c6
	dec h                                            ; $56b8: $25
	inc c                                            ; $56b9: $0c
	jp nz, $181e                                     ; $56ba: $c2 $1e $18

	inc h                                            ; $56bd: $24
	ld b, $c4                                        ; $56be: $06 $c4
	inc h                                            ; $56c0: $24
	ld b, $c6                                        ; $56c1: $06 $c6
	inc h                                            ; $56c3: $24
	inc c                                            ; $56c4: $0c
	jp nz, $161e                                     ; $56c5: $c2 $1e $16

	nop                                              ; $56c8: $00
	ld [bc], a                                       ; $56c9: $02
	jr nz, jr_037_56e3                               ; $56ca: $20 $17

	nop                                              ; $56cc: $00
	ld bc, $d183                                     ; $56cd: $01 $83 $d1
	ei                                               ; $56d0: $fb
	jp nz, $261d                                     ; $56d1: $c2 $1d $26

	call nz, $0a1d                                   ; $56d4: $c4 $1d $0a
	jp nz, $2e1d                                     ; $56d7: $c2 $1d $2e

	call nz, $021d                                   ; $56da: $c4 $1d $02
	jp nz, $261e                                     ; $56dd: $c2 $1e $26

	call nz, $0a1e                                   ; $56e0: $c4 $1e $0a

jr_037_56e3:
	jp nz, $2e1e                                     ; $56e3: $c2 $1e $2e

	call nz, $021e                                   ; $56e6: $c4 $1e $02
	jp nz, $2620                                     ; $56e9: $c2 $20 $26

	call nz, $0a20                                   ; $56ec: $c4 $20 $0a
	jp nz, $2e20                                     ; $56ef: $c2 $20 $2e

	call nz, $0220                                   ; $56f2: $c4 $20 $02
	jp nz, $2a1e                                     ; $56f5: $c2 $1e $2a

	call nz, $061e                                   ; $56f8: $c4 $1e $06
	jp nz, $161e                                     ; $56fb: $c2 $1e $16

	call nz, $021e                                   ; $56fe: $c4 $1e $02
	jp nz, $161e                                     ; $5701: $c2 $1e $16

	call nz, $0200                                   ; $5704: $c4 $00 $02
	ei                                               ; $5707: $fb
	ld [bc], a                                       ; $5708: $02
	ld a, l                                          ; $5709: $7d
	ld bc, $c2fb                                     ; $570a: $01 $fb $c2
	dec e                                            ; $570d: $1d
	ld d, $c4                                        ; $570e: $16 $c4
	dec e                                            ; $5710: $1d
	ld [bc], a                                       ; $5711: $02
	ei                                               ; $5712: $fb
	inc b                                            ; $5713: $04
	ei                                               ; $5714: $fb
	jp nz, $161f                                     ; $5715: $c2 $1f $16

	call nz, $021f                                   ; $5718: $c4 $1f $02
	ei                                               ; $571b: $fb
	inc b                                            ; $571c: $04
	ld a, l                                          ; $571d: $7d
	ld bc, $20c2                                     ; $571e: $01 $c2 $20
	sub e                                            ; $5721: $93
	call nz, $0420                                   ; $5722: $c4 $20 $04
	add $20                                          ; $5725: $c6 $20
	dec d                                            ; $5727: $15
	nop                                              ; $5728: $00
	dec d                                            ; $5729: $15
	ld a, l                                          ; $572a: $7d
	nop                                              ; $572b: $00
	jp nz, $1800                                     ; $572c: $c2 $00 $18

	jr nz, jr_037_575f                               ; $572f: $20 $2e

	nop                                              ; $5731: $00
	ld [bc], a                                       ; $5732: $02
	jr nz, @+$13                                     ; $5733: $20 $11

	call nz, $0720                                   ; $5735: $c4 $20 $07
	add $20                                          ; $5738: $c6 $20
	inc c                                            ; $573a: $0c
	nop                                              ; $573b: $00
	inc c                                            ; $573c: $0c
	jp nz, $2e20                                     ; $573d: $c2 $20 $2e

	nop                                              ; $5740: $00
	ld [bc], a                                       ; $5741: $02
	jp nz, $0c20                                     ; $5742: $c2 $20 $0c

	call nz, $0c20                                   ; $5745: $c4 $20 $0c
	jp nz, $5e1e                                     ; $5748: $c2 $1e $5e

	call nz, $021e                                   ; $574b: $c4 $1e $02
	jp nz, $2e1d                                     ; $574e: $c2 $1d $2e

	call nz, $021d                                   ; $5751: $c4 $1d $02
	jp nz, $2f1b                                     ; $5754: $c2 $1b $2f

	nop                                              ; $5757: $00
	ld bc, $fffe                                     ; $5758: $01 $fe $ff
	ret nc                                           ; $575b: $d0

	ret nz                                           ; $575c: $c0

	cp $be                                           ; $575d: $fe $be

jr_037_575f:
	inc c                                            ; $575f: $0c
	dec bc                                           ; $5760: $0b
	ld [de], a                                       ; $5761: $12
	dec c                                            ; $5762: $0d
	add hl, bc                                       ; $5763: $09
	cp [hl]                                          ; $5764: $be
	add hl, bc                                       ; $5765: $09
	jr jr_037_5775                                   ; $5766: $18 $0d

	inc c                                            ; $5768: $0c
	ld [de], a                                       ; $5769: $12
	inc c                                            ; $576a: $0c
	cp [hl]                                          ; $576b: $be
	inc c                                            ; $576c: $0c
	dec bc                                           ; $576d: $0b
	ld [de], a                                       ; $576e: $12
	dec c                                            ; $576f: $0d
	add hl, bc                                       ; $5770: $09
	cp [hl]                                          ; $5771: $be
	ld c, a                                          ; $5772: $4f
	jr jr_037_577e                                   ; $5773: $18 $09

jr_037_5775:
	inc c                                            ; $5775: $0c
	ld [de], a                                       ; $5776: $12
	inc c                                            ; $5777: $0c
	cp [hl]                                          ; $5778: $be
	inc c                                            ; $5779: $0c
	dec bc                                           ; $577a: $0b
	ld [de], a                                       ; $577b: $12
	dec c                                            ; $577c: $0d
	add hl, bc                                       ; $577d: $09

jr_037_577e:
	cp [hl]                                          ; $577e: $be
	add hl, bc                                       ; $577f: $09
	jr jr_037_578f                                   ; $5780: $18 $0d

	inc c                                            ; $5782: $0c
	ld [de], a                                       ; $5783: $12
	inc c                                            ; $5784: $0c
	cp [hl]                                          ; $5785: $be
	inc c                                            ; $5786: $0c
	dec bc                                           ; $5787: $0b
	ld [de], a                                       ; $5788: $12
	dec c                                            ; $5789: $0d
	add hl, bc                                       ; $578a: $09
	cp [hl]                                          ; $578b: $be
	ld c, a                                          ; $578c: $4f
	jr jr_037_579c                                   ; $578d: $18 $0d

jr_037_578f:
	inc c                                            ; $578f: $0c
	dec c                                            ; $5790: $0d
	inc c                                            ; $5791: $0c
	cp [hl]                                          ; $5792: $be
	inc c                                            ; $5793: $0c
	dec bc                                           ; $5794: $0b
	ld [de], a                                       ; $5795: $12
	dec c                                            ; $5796: $0d
	add hl, bc                                       ; $5797: $09
	cp [hl]                                          ; $5798: $be
	add hl, bc                                       ; $5799: $09
	jr jr_037_57a9                                   ; $579a: $18 $0d

jr_037_579c:
	inc c                                            ; $579c: $0c
	ld [de], a                                       ; $579d: $12
	inc c                                            ; $579e: $0c
	cp [hl]                                          ; $579f: $be
	inc c                                            ; $57a0: $0c
	dec bc                                           ; $57a1: $0b
	ld [de], a                                       ; $57a2: $12
	dec c                                            ; $57a3: $0d
	add hl, bc                                       ; $57a4: $09
	cp [hl]                                          ; $57a5: $be
	ld c, a                                          ; $57a6: $4f
	jr jr_037_57b2                                   ; $57a7: $18 $09

jr_037_57a9:
	inc c                                            ; $57a9: $0c
	ld [de], a                                       ; $57aa: $12
	inc c                                            ; $57ab: $0c
	cp [hl]                                          ; $57ac: $be
	inc c                                            ; $57ad: $0c
	dec bc                                           ; $57ae: $0b
	ld [de], a                                       ; $57af: $12
	dec c                                            ; $57b0: $0d
	add hl, bc                                       ; $57b1: $09

jr_037_57b2:
	cp [hl]                                          ; $57b2: $be
	ld c, a                                          ; $57b3: $4f
	jr @+$0f                                         ; $57b4: $18 $0d

	inc c                                            ; $57b6: $0c
	ld [de], a                                       ; $57b7: $12
	inc c                                            ; $57b8: $0c
	cp [hl]                                          ; $57b9: $be
	inc c                                            ; $57ba: $0c
	dec bc                                           ; $57bb: $0b
	ld [de], a                                       ; $57bc: $12
	dec c                                            ; $57bd: $0d
	add hl, bc                                       ; $57be: $09
	ld c, a                                          ; $57bf: $4f
	add hl, bc                                       ; $57c0: $09
	cp [hl]                                          ; $57c1: $be
	ld e, $18                                        ; $57c2: $1e $18
	cp [hl]                                          ; $57c4: $be
	inc c                                            ; $57c5: $0c
	dec bc                                           ; $57c6: $0b
	ld [de], a                                       ; $57c7: $12
	dec c                                            ; $57c8: $0d
	dec c                                            ; $57c9: $0d
	cp [hl]                                          ; $57ca: $be
	add hl, bc                                       ; $57cb: $09
	jr jr_037_57db                                   ; $57cc: $18 $0d

	inc c                                            ; $57ce: $0c
	ld [de], a                                       ; $57cf: $12
	inc c                                            ; $57d0: $0c
	cp [hl]                                          ; $57d1: $be
	inc c                                            ; $57d2: $0c
	dec bc                                           ; $57d3: $0b
	ld [de], a                                       ; $57d4: $12
	dec c                                            ; $57d5: $0d
	add hl, bc                                       ; $57d6: $09
	cp [hl]                                          ; $57d7: $be
	ld c, a                                          ; $57d8: $4f
	jr jr_037_57e4                                   ; $57d9: $18 $09

jr_037_57db:
	inc c                                            ; $57db: $0c
	ld [de], a                                       ; $57dc: $12
	inc c                                            ; $57dd: $0c
	cp [hl]                                          ; $57de: $be
	inc c                                            ; $57df: $0c
	dec bc                                           ; $57e0: $0b
	ld [de], a                                       ; $57e1: $12
	dec c                                            ; $57e2: $0d
	add hl, bc                                       ; $57e3: $09

jr_037_57e4:
	cp [hl]                                          ; $57e4: $be
	add hl, bc                                       ; $57e5: $09
	jr jr_037_57f5                                   ; $57e6: $18 $0d

	inc c                                            ; $57e8: $0c
	ld [de], a                                       ; $57e9: $12
	inc c                                            ; $57ea: $0c
	cp [hl]                                          ; $57eb: $be
	inc c                                            ; $57ec: $0c
	dec bc                                           ; $57ed: $0b
	ld [de], a                                       ; $57ee: $12
	dec c                                            ; $57ef: $0d
	add hl, bc                                       ; $57f0: $09
	cp [hl]                                          ; $57f1: $be
	ld c, a                                          ; $57f2: $4f
	jr jr_037_5802                                   ; $57f3: $18 $0d

jr_037_57f5:
	inc c                                            ; $57f5: $0c
	dec c                                            ; $57f6: $0d
	inc c                                            ; $57f7: $0c
	cp [hl]                                          ; $57f8: $be
	inc c                                            ; $57f9: $0c
	dec bc                                           ; $57fa: $0b
	ld [de], a                                       ; $57fb: $12
	dec c                                            ; $57fc: $0d
	add hl, bc                                       ; $57fd: $09
	cp [hl]                                          ; $57fe: $be
	add hl, bc                                       ; $57ff: $09
	jr jr_037_580f                                   ; $5800: $18 $0d

jr_037_5802:
	inc c                                            ; $5802: $0c
	ld [de], a                                       ; $5803: $12
	inc c                                            ; $5804: $0c
	cp [hl]                                          ; $5805: $be
	inc c                                            ; $5806: $0c
	dec bc                                           ; $5807: $0b
	ld [de], a                                       ; $5808: $12
	dec c                                            ; $5809: $0d
	add hl, bc                                       ; $580a: $09
	cp [hl]                                          ; $580b: $be
	ld c, a                                          ; $580c: $4f
	jr jr_037_5818                                   ; $580d: $18 $09

jr_037_580f:
	inc c                                            ; $580f: $0c
	ld [de], a                                       ; $5810: $12
	inc c                                            ; $5811: $0c
	cp [hl]                                          ; $5812: $be
	inc c                                            ; $5813: $0c
	dec bc                                           ; $5814: $0b
	ld [de], a                                       ; $5815: $12
	dec c                                            ; $5816: $0d
	add hl, bc                                       ; $5817: $09

jr_037_5818:
	cp [hl]                                          ; $5818: $be
	ld c, a                                          ; $5819: $4f
	jr jr_037_5829                                   ; $581a: $18 $0d

	inc c                                            ; $581c: $0c
	ld [de], a                                       ; $581d: $12
	inc c                                            ; $581e: $0c
	cp [hl]                                          ; $581f: $be
	inc c                                            ; $5820: $0c
	dec bc                                           ; $5821: $0b
	ld [de], a                                       ; $5822: $12
	dec c                                            ; $5823: $0d
	add hl, bc                                       ; $5824: $09
	ld c, a                                          ; $5825: $4f

jr_037_5826:
	add hl, bc                                       ; $5826: $09
	cp [hl]                                          ; $5827: $be
	dec bc                                           ; $5828: $0b

jr_037_5829:
	jr jr_037_5826                                   ; $5829: $18 $fb

	cp [hl]                                          ; $582b: $be
	inc c                                            ; $582c: $0c
	dec bc                                           ; $582d: $0b
	dec c                                            ; $582e: $0d
	dec bc                                           ; $582f: $0b
	add hl, bc                                       ; $5830: $09
	cp [hl]                                          ; $5831: $be
	ld c, a                                          ; $5832: $4f
	jr jr_037_5840                                   ; $5833: $18 $0b

	inc c                                            ; $5835: $0c
	ld [de], a                                       ; $5836: $12
	inc c                                            ; $5837: $0c
	ei                                               ; $5838: $fb
	inc bc                                           ; $5839: $03
	cp [hl]                                          ; $583a: $be
	inc c                                            ; $583b: $0c
	dec bc                                           ; $583c: $0b
	add hl, bc                                       ; $583d: $09
	dec bc                                           ; $583e: $0b
	ld [de], a                                       ; $583f: $12

jr_037_5840:
	cp [hl]                                          ; $5840: $be
	ld c, a                                          ; $5841: $4f
	jr jr_037_584f                                   ; $5842: $18 $0b

	inc c                                            ; $5844: $0c
	dec c                                            ; $5845: $0d
	inc c                                            ; $5846: $0c
	ei                                               ; $5847: $fb
	cp [hl]                                          ; $5848: $be
	inc c                                            ; $5849: $0c
	dec bc                                           ; $584a: $0b
	add hl, bc                                       ; $584b: $09
	dec bc                                           ; $584c: $0b
	add hl, bc                                       ; $584d: $09
	cp [hl]                                          ; $584e: $be

jr_037_584f:
	ld c, a                                          ; $584f: $4f
	jr jr_037_585d                                   ; $5850: $18 $0b

	inc c                                            ; $5852: $0c
	ld [de], a                                       ; $5853: $12
	inc c                                            ; $5854: $0c
	ei                                               ; $5855: $fb
	inc bc                                           ; $5856: $03
	cp [hl]                                          ; $5857: $be
	inc c                                            ; $5858: $0c
	dec bc                                           ; $5859: $0b
	add hl, bc                                       ; $585a: $09
	dec bc                                           ; $585b: $0b
	ld [de], a                                       ; $585c: $12

jr_037_585d:
	cp [hl]                                          ; $585d: $be
	ld c, a                                          ; $585e: $4f
	jr jr_037_586c                                   ; $585f: $18 $0b

	inc c                                            ; $5861: $0c
	add hl, bc                                       ; $5862: $09
	inc c                                            ; $5863: $0c
	ei                                               ; $5864: $fb
	cp [hl]                                          ; $5865: $be
	inc c                                            ; $5866: $0c
	dec bc                                           ; $5867: $0b
	add hl, bc                                       ; $5868: $09
	dec bc                                           ; $5869: $0b
	add hl, bc                                       ; $586a: $09
	cp [hl]                                          ; $586b: $be

jr_037_586c:
	dec bc                                           ; $586c: $0b
	jr jr_037_587a                                   ; $586d: $18 $0b

	inc c                                            ; $586f: $0c
	add hl, bc                                       ; $5870: $09
	inc c                                            ; $5871: $0c
	ei                                               ; $5872: $fb
	ld [bc], a                                       ; $5873: $02
	inc d                                            ; $5874: $14
	sub c                                            ; $5875: $91
	add hl, bc                                       ; $5876: $09
	jr nc, @+$0b                                     ; $5877: $30 $09

	inc c                                            ; $5879: $0c

jr_037_587a:
	ld [de], a                                       ; $587a: $12
	inc c                                            ; $587b: $0c
	dec c                                            ; $587c: $0d
	jr @+$0b                                         ; $587d: $18 $09

	jr jr_037_588e                                   ; $587f: $18 $0d

	jr @+$0b                                         ; $5881: $18 $09

	inc c                                            ; $5883: $0c
	ld [de], a                                       ; $5884: $12
	inc c                                            ; $5885: $0c
	dec c                                            ; $5886: $0d
	jr jr_037_5892                                   ; $5887: $18 $09

	jr jr_037_5898                                   ; $5889: $18 $0d

	jr jr_037_589a                                   ; $588b: $18 $0d

	ld h, b                                          ; $588d: $60

jr_037_588e:
	dec c                                            ; $588e: $0d
	jr nc, jr_037_589e                               ; $588f: $30 $0d

	inc c                                            ; $5891: $0c

jr_037_5892:
	add hl, bc                                       ; $5892: $09
	inc c                                            ; $5893: $0c
	ld e, $18                                        ; $5894: $1e $18
	cp $ff                                           ; $5896: $fe $ff

jr_037_5898:
	or [hl]                                          ; $5898: $b6
	rst $38                                          ; $5899: $ff

jr_037_589a:
	pop af                                           ; $589a: $f1
	ld [bc], a                                       ; $589b: $02
	ld a, [bc]                                       ; $589c: $0a
	dec b                                            ; $589d: $05

jr_037_589e:
	ld a, [hl]                                       ; $589e: $7e
	dec l                                            ; $589f: $2d
	nop                                              ; $58a0: $00
	and c                                            ; $58a1: $a1
	sub a                                            ; $58a2: $97
	ld c, e                                          ; $58a3: $4b
	cp l                                             ; $58a4: $bd
	ld [bc], a                                       ; $58a5: $02
	nop                                              ; $58a6: $00
	jr jr_037_58d9                                   ; $58a7: $18 $30

	inc h                                            ; $58a9: $24
	jr nc, jr_037_58d0                               ; $58aa: $30 $24

	jr nc, jr_037_58ce                               ; $58ac: $30 $20

	jr nc, @-$40                                     ; $58ae: $30 $be

	jr nc, @+$26                                     ; $58b0: $30 $24

	ld [hl+], a                                      ; $58b2: $22
	ld e, $22                                        ; $58b3: $1e $22
	cp [hl]                                          ; $58b5: $be
	or b                                             ; $58b6: $b0
	cp [hl]                                          ; $58b7: $be
	ld a, b                                          ; $58b8: $78
	rlca                                             ; $58b9: $07
	sub a                                            ; $58ba: $97
	dec a                                            ; $58bb: $3d
	jr nz, @-$3e                                     ; $58bc: $20 $c0

	rst $38                                          ; $58be: $ff
	or [hl]                                          ; $58bf: $b6
	rst $38                                          ; $58c0: $ff
	pop af                                           ; $58c1: $f1
	ld [bc], a                                       ; $58c2: $02
	ld a, [bc]                                       ; $58c3: $0a
	dec b                                            ; $58c4: $05
	ld a, [hl]                                       ; $58c5: $7e
	dec l                                            ; $58c6: $2d
	nop                                              ; $58c7: $00
	and c                                            ; $58c8: $a1
	sub a                                            ; $58c9: $97
	ld c, e                                          ; $58ca: $4b
	cp l                                             ; $58cb: $bd
	ld [bc], a                                       ; $58cc: $02
	nop                                              ; $58cd: $00

jr_037_58ce:
	jr jr_037_5900                                   ; $58ce: $18 $30

jr_037_58d0:
	add hl, hl                                       ; $58d0: $29
	jr nc, @+$2a                                     ; $58d1: $30 $28

	jr nc, @+$26                                     ; $58d3: $30 $24

	jr nc, @-$40                                     ; $58d5: $30 $be

	jr nc, jr_037_5900                               ; $58d7: $30 $27

jr_037_58d9:
	ld h, $22                                        ; $58d9: $26 $22
	dec h                                            ; $58db: $25
	cp [hl]                                          ; $58dc: $be
	or b                                             ; $58dd: $b0
	cp [hl]                                          ; $58de: $be
	ld a, b                                          ; $58df: $78
	rlca                                             ; $58e0: $07
	sub a                                            ; $58e1: $97
	dec a                                            ; $58e2: $3d
	inc h                                            ; $58e3: $24
	ret nz                                           ; $58e4: $c0

	rst $38                                          ; $58e5: $ff
	or h                                             ; $58e6: $b4
	rst $38                                          ; $58e7: $ff
	ld hl, $0023                                     ; $58e8: $21 $23 $00
	jr jr_037_596b                                   ; $58eb: $18 $7e

	add hl, hl                                       ; $58ed: $29
	nop                                              ; $58ee: $00
	and b                                            ; $58ef: $a0
	pop de                                           ; $58f0: $d1
	ld de, $d325                                     ; $58f1: $11 $25 $d3
	ld de, $d114                                     ; $58f4: $11 $14 $d1
	ld de, $d23b                                     ; $58f7: $11 $3b $d2
	ld de, $d122                                     ; $58fa: $11 $22 $d1
	ld de, $d32a                                     ; $58fd: $11 $2a $d3

jr_037_5900:
	ld de, $d11c                                     ; $5900: $11 $1c $d1
	ld de, $d233                                     ; $5903: $11 $33 $d2
	ld de, $d12e                                     ; $5906: $11 $2e $d1
	ld de, $d319                                     ; $5909: $11 $19 $d3
	ld de, $e12a                                     ; $590c: $11 $2a $e1
	cp [hl]                                          ; $590f: $be
	ld hl, $c011                                     ; $5910: $21 $11 $c0
	rst $38                                          ; $5913: $ff
	ret nc                                           ; $5914: $d0

	rst $38                                          ; $5915: $ff
	ld a, [de]                                       ; $5916: $1a
	ld [$081b], sp                                   ; $5917: $08 $1b $08
	inc e                                            ; $591a: $1c
	ld [$0734], sp                                   ; $591b: $08 $34 $07
	ccf                                              ; $591e: $3f
	rlca                                             ; $591f: $07
	dec [hl]                                         ; $5920: $35
	ld a, [$6441]                                    ; $5921: $fa $41 $64
	rst $38                                          ; $5924: $ff
	ret nc                                           ; $5925: $d0

	ld d, b                                          ; $5926: $50
	cp $d1                                           ; $5927: $fe $d1
	sub d                                            ; $5929: $92
	pop bc                                           ; $592a: $c1
	nop                                              ; $592b: $00
	inc c                                            ; $592c: $0c
	ld a, [hl]                                       ; $592d: $7e
	dec e                                            ; $592e: $1d
	nop                                              ; $592f: $00
	xor c                                            ; $5930: $a9
	ei                                               ; $5931: $fb
	cp [hl]                                          ; $5932: $be
	ld b, $35                                        ; $5933: $06 $35
	ld sp, $2c30                                     ; $5935: $31 $30 $2c
	cp [hl]                                          ; $5938: $be
	ei                                               ; $5939: $fb
	inc b                                            ; $593a: $04
	ei                                               ; $593b: $fb
	cp [hl]                                          ; $593c: $be
	ld b, $36                                        ; $593d: $06 $36
	inc sp                                           ; $593f: $33
	cpl                                              ; $5940: $2f
	inc l                                            ; $5941: $2c
	cp [hl]                                          ; $5942: $be
	ei                                               ; $5943: $fb
	inc b                                            ; $5944: $04
	ei                                               ; $5945: $fb
	cp [hl]                                          ; $5946: $be
	ld b, $35                                        ; $5947: $06 $35
	ld sp, $2c30                                     ; $5949: $31 $30 $2c
	cp [hl]                                          ; $594c: $be
	ei                                               ; $594d: $fb
	inc b                                            ; $594e: $04
	ld [hl], $06                                     ; $594f: $36 $06
	inc sp                                           ; $5951: $33
	ld b, $d0                                        ; $5952: $06 $d0
	ld b, [hl]                                       ; $5954: $46
	cpl                                              ; $5955: $2f
	ld b, $d0                                        ; $5956: $06 $d0
	inc a                                            ; $5958: $3c
	inc l                                            ; $5959: $2c
	ld b, $d0                                        ; $595a: $06 $d0
	ld [hl-], a                                      ; $595c: $32
	nop                                              ; $595d: $00
	ld b, $d0                                        ; $595e: $06 $d0
	jr z, jr_037_5962                                ; $5960: $28 $00

jr_037_5962:
	ld b, $d0                                        ; $5962: $06 $d0
	ld a, [bc]                                       ; $5964: $0a
	nop                                              ; $5965: $00
	inc c                                            ; $5966: $0c
	ret nc                                           ; $5967: $d0

	ld d, b                                          ; $5968: $50
	cp $ff                                           ; $5969: $fe $ff

jr_037_596b:
	ret nc                                           ; $596b: $d0

	ld d, b                                          ; $596c: $50
	cp $d1                                           ; $596d: $fe $d1
	sub d                                            ; $596f: $92
	ei                                               ; $5970: $fb
	push bc                                          ; $5971: $c5
	dec [hl]                                         ; $5972: $35
	inc bc                                           ; $5973: $03
	pop bc                                           ; $5974: $c1
	dec [hl]                                         ; $5975: $35
	inc bc                                           ; $5976: $03
	rst JumpTable                                          ; $5977: $c7
	ld sp, $c103                                     ; $5978: $31 $03 $c1
	dec [hl]                                         ; $597b: $35
	inc bc                                           ; $597c: $03
	push bc                                          ; $597d: $c5
	jr nc, @+$05                                     ; $597e: $30 $03

	pop bc                                           ; $5980: $c1
	ld sp, $c303                                     ; $5981: $31 $03 $c3
	inc l                                            ; $5984: $2c
	inc bc                                           ; $5985: $03
	pop bc                                           ; $5986: $c1
	jr nc, jr_037_598c                               ; $5987: $30 $03

	ei                                               ; $5989: $fb
	inc b                                            ; $598a: $04
	ei                                               ; $598b: $fb

jr_037_598c:
	push bc                                          ; $598c: $c5
	ld [hl], $03                                     ; $598d: $36 $03
	pop bc                                           ; $598f: $c1
	ld [hl], $03                                     ; $5990: $36 $03
	push bc                                          ; $5992: $c5
	inc sp                                           ; $5993: $33
	inc bc                                           ; $5994: $03
	pop bc                                           ; $5995: $c1
	ld [hl], $03                                     ; $5996: $36 $03
	push bc                                          ; $5998: $c5
	cpl                                              ; $5999: $2f
	inc bc                                           ; $599a: $03
	pop bc                                           ; $599b: $c1
	inc sp                                           ; $599c: $33
	inc bc                                           ; $599d: $03
	jp $032c                                         ; $599e: $c3 $2c $03


	pop bc                                           ; $59a1: $c1
	cpl                                              ; $59a2: $2f
	inc bc                                           ; $59a3: $03
	ei                                               ; $59a4: $fb
	inc b                                            ; $59a5: $04
	ei                                               ; $59a6: $fb
	push bc                                          ; $59a7: $c5
	dec [hl]                                         ; $59a8: $35
	inc bc                                           ; $59a9: $03
	pop bc                                           ; $59aa: $c1
	dec [hl]                                         ; $59ab: $35
	inc bc                                           ; $59ac: $03
	rst JumpTable                                          ; $59ad: $c7
	ld sp, $c203                                     ; $59ae: $31 $03 $c2
	dec [hl]                                         ; $59b1: $35
	inc bc                                           ; $59b2: $03
	push bc                                          ; $59b3: $c5
	jr nc, @+$05                                     ; $59b4: $30 $03

	pop bc                                           ; $59b6: $c1
	ld sp, $c303                                     ; $59b7: $31 $03 $c3
	inc l                                            ; $59ba: $2c
	inc bc                                           ; $59bb: $03
	pop bc                                           ; $59bc: $c1
	jr nc, jr_037_59c2                               ; $59bd: $30 $03

	ei                                               ; $59bf: $fb
	inc b                                            ; $59c0: $04
	push bc                                          ; $59c1: $c5

jr_037_59c2:
	ld [hl], $03                                     ; $59c2: $36 $03
	pop bc                                           ; $59c4: $c1
	ld [hl], $03                                     ; $59c5: $36 $03
	push bc                                          ; $59c7: $c5
	inc sp                                           ; $59c8: $33
	inc bc                                           ; $59c9: $03
	pop bc                                           ; $59ca: $c1
	ld [hl], $03                                     ; $59cb: $36 $03
	push bc                                          ; $59cd: $c5
	cpl                                              ; $59ce: $2f
	inc bc                                           ; $59cf: $03
	pop bc                                           ; $59d0: $c1
	inc sp                                           ; $59d1: $33
	inc bc                                           ; $59d2: $03
	jp $032c                                         ; $59d3: $c3 $2c $03


	pop bc                                           ; $59d6: $c1
	cpl                                              ; $59d7: $2f
	inc bc                                           ; $59d8: $03
	pop hl                                           ; $59d9: $e1
	ld b, [hl]                                       ; $59da: $46
	ld sp, $032a                                     ; $59db: $31 $2a $03
	pop bc                                           ; $59de: $c1
	inc l                                            ; $59df: $2c
	inc bc                                           ; $59e0: $03
	pop hl                                           ; $59e1: $e1
	inc a                                            ; $59e2: $3c
	ld sp, $032c                                     ; $59e3: $31 $2c $03
	pop bc                                           ; $59e6: $c1
	ld a, [hl+]                                      ; $59e7: $2a
	inc bc                                           ; $59e8: $03
	pop hl                                           ; $59e9: $e1
	ld [hl-], a                                      ; $59ea: $32
	ld b, c                                          ; $59eb: $41
	cpl                                              ; $59ec: $2f
	inc bc                                           ; $59ed: $03
	jp nz, $032c                                     ; $59ee: $c2 $2c $03

	pop hl                                           ; $59f1: $e1
	jr z, jr_037_5a25                                ; $59f2: $28 $31

	inc sp                                           ; $59f4: $33
	inc bc                                           ; $59f5: $03
	pop bc                                           ; $59f6: $c1
	cpl                                              ; $59f7: $2f
	inc bc                                           ; $59f8: $03
	or e                                             ; $59f9: $b3
	ld a, [bc]                                       ; $59fa: $0a
	ld h, c                                          ; $59fb: $61
	ld a, [bc]                                       ; $59fc: $0a
	rlca                                             ; $59fd: $07
	ld [hl], $0c                                     ; $59fe: $36 $0c
	sub [hl]                                         ; $5a00: $96
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	ret nc                                           ; $5a03: $d0

	ld d, b                                          ; $5a04: $50
	cp $ff                                           ; $5a05: $fe $ff
	ret nc                                           ; $5a07: $d0

	sbc e                                            ; $5a08: $9b
	cp $d1                                           ; $5a09: $fe $d1
	sub b                                            ; $5a0b: $90
	ret z                                            ; $5a0c: $c8

	nop                                              ; $5a0d: $00
	jr nc, @+$80                                     ; $5a0e: $30 $7e

	dec e                                            ; $5a10: $1d
	inc c                                            ; $5a11: $0c
	and d                                            ; $5a12: $a2
	ld a, [bc]                                       ; $5a13: $0a
	inc h                                            ; $5a14: $24
	jp nz, $1d7e                                     ; $5a15: $c2 $7e $1d

	nop                                              ; $5a18: $00
	and d                                            ; $5a19: $a2
	ld a, [bc]                                       ; $5a1a: $0a
	inc c                                            ; $5a1b: $0c
	ret z                                            ; $5a1c: $c8

	nop                                              ; $5a1d: $00
	jr nc, jr_037_5a9e                               ; $5a1e: $30 $7e

	dec e                                            ; $5a20: $1d
	inc c                                            ; $5a21: $0c
	and d                                            ; $5a22: $a2
	dec c                                            ; $5a23: $0d
	inc h                                            ; $5a24: $24

jr_037_5a25:
	jp nz, $1d7e                                     ; $5a25: $c2 $7e $1d

	nop                                              ; $5a28: $00
	and d                                            ; $5a29: $a2
	dec c                                            ; $5a2a: $0d
	inc c                                            ; $5a2b: $0c
	add $00                                          ; $5a2c: $c6 $00
	jr nc, @+$80                                     ; $5a2e: $30 $7e

	dec e                                            ; $5a30: $1d
	inc c                                            ; $5a31: $0c
	and d                                            ; $5a32: $a2
	ld [de], a                                       ; $5a33: $12
	inc h                                            ; $5a34: $24
	jp nz, $1d7e                                     ; $5a35: $c2 $7e $1d

	nop                                              ; $5a38: $00
	and d                                            ; $5a39: $a2
	ld [de], a                                       ; $5a3a: $12
	inc c                                            ; $5a3b: $0c
	rst JumpTable                                          ; $5a3c: $c7
	nop                                              ; $5a3d: $00
	jr nc, jr_037_5abe                               ; $5a3e: $30 $7e

	dec e                                            ; $5a40: $1d
	inc c                                            ; $5a41: $0c
	and d                                            ; $5a42: $a2
	ld de, $c224                                     ; $5a43: $11 $24 $c2
	ld a, [hl]                                       ; $5a46: $7e
	dec e                                            ; $5a47: $1d
	nop                                              ; $5a48: $00
	and d                                            ; $5a49: $a2
	ld de, $fe0c                                     ; $5a4a: $11 $0c $fe
	rst $38                                          ; $5a4d: $ff
	ret nc                                           ; $5a4e: $d0

	sbc e                                            ; $5a4f: $9b
	cp $d1                                           ; $5a50: $fe $d1
	sub b                                            ; $5a52: $90
	jp z, $3000                                      ; $5a53: $ca $00 $30

	ld a, [hl]                                       ; $5a56: $7e
	dec e                                            ; $5a57: $1d
	inc c                                            ; $5a58: $0c
	and d                                            ; $5a59: $a2
	dec c                                            ; $5a5a: $0d
	inc h                                            ; $5a5b: $24
	call nz, $1d7e                                   ; $5a5c: $c4 $7e $1d
	nop                                              ; $5a5f: $00
	and d                                            ; $5a60: $a2
	dec c                                            ; $5a61: $0d
	inc c                                            ; $5a62: $0c
	ret                                              ; $5a63: $c9


	nop                                              ; $5a64: $00
	jr nc, @+$80                                     ; $5a65: $30 $7e

	dec e                                            ; $5a67: $1d
	inc c                                            ; $5a68: $0c
	and d                                            ; $5a69: $a2
	db $10                                           ; $5a6a: $10
	inc h                                            ; $5a6b: $24
	call nz, $1d7e                                   ; $5a6c: $c4 $7e $1d
	nop                                              ; $5a6f: $00
	and d                                            ; $5a70: $a2
	db $10                                           ; $5a71: $10
	inc c                                            ; $5a72: $0c
	ret z                                            ; $5a73: $c8

	nop                                              ; $5a74: $00
	jr nc, jr_037_5af5                               ; $5a75: $30 $7e

	dec e                                            ; $5a77: $1d
	inc c                                            ; $5a78: $0c
	and d                                            ; $5a79: $a2
	rrca                                             ; $5a7a: $0f
	inc h                                            ; $5a7b: $24
	call nz, $1d7e                                   ; $5a7c: $c4 $7e $1d
	nop                                              ; $5a7f: $00
	and d                                            ; $5a80: $a2
	rrca                                             ; $5a81: $0f
	inc c                                            ; $5a82: $0c
	jp z, $3000                                      ; $5a83: $ca $00 $30

	ld a, [hl]                                       ; $5a86: $7e
	dec e                                            ; $5a87: $1d
	inc c                                            ; $5a88: $0c
	and d                                            ; $5a89: $a2
	dec c                                            ; $5a8a: $0d
	inc h                                            ; $5a8b: $24
	call nz, $1d7e                                   ; $5a8c: $c4 $7e $1d
	nop                                              ; $5a8f: $00
	and d                                            ; $5a90: $a2
	dec c                                            ; $5a91: $0d
	inc c                                            ; $5a92: $0c
	cp $ff                                           ; $5a93: $fe $ff
	ret nc                                           ; $5a95: $d0

	sbc e                                            ; $5a96: $9b
	cp $d1                                           ; $5a97: $fe $d1
	ld a, a                                          ; $5a99: $7f
	ld hl, $c2fb                                     ; $5a9a: $21 $fb $c2
	ld a, [bc]                                       ; $5a9d: $0a

jr_037_5a9e:
	inc c                                            ; $5a9e: $0c
	add $0a                                          ; $5a9f: $c6 $0a
	inc c                                            ; $5aa1: $0c
	ei                                               ; $5aa2: $fb
	ld [bc], a                                       ; $5aa3: $02
	nop                                              ; $5aa4: $00

jr_037_5aa5:
	jr nc, jr_037_5aa5                               ; $5aa5: $30 $fe

	rst $38                                          ; $5aa7: $ff
	ret nc                                           ; $5aa8: $d0

	ld [hl], b                                       ; $5aa9: $70
	sub d                                            ; $5aaa: $92
	ld h, l                                          ; $5aab: $65
	nop                                              ; $5aac: $00
	call z, $b1fb                                    ; $5aad: $cc $fb $b1
	or c                                             ; $5ab0: $b1
	rst $38                                          ; $5ab1: $ff
	ld b, $19                                        ; $5ab2: $06 $19
	inc c                                            ; $5ab4: $0c
	or c                                             ; $5ab5: $b1
	ld hl, $0000                                     ; $5ab6: $21 $00 $00
	add hl, de                                       ; $5ab9: $19
	ld b, $fb                                        ; $5aba: $06 $fb
	inc b                                            ; $5abc: $04
	or c                                             ; $5abd: $b1

jr_037_5abe:
	or c                                             ; $5abe: $b1
	rst $38                                          ; $5abf: $ff
	ld b, $19                                        ; $5ac0: $06 $19
	inc c                                            ; $5ac2: $0c
	nop                                              ; $5ac3: $00
	inc c                                            ; $5ac4: $0c
	ei                                               ; $5ac5: $fb
	or c                                             ; $5ac6: $b1
	or c                                             ; $5ac7: $b1
	rst $38                                          ; $5ac8: $ff
	ld b, $18                                        ; $5ac9: $06 $18
	inc c                                            ; $5acb: $0c
	or c                                             ; $5acc: $b1
	ld hl, $0000                                     ; $5acd: $21 $00 $00
	jr @+$08                                         ; $5ad0: $18 $06

	ei                                               ; $5ad2: $fb
	inc b                                            ; $5ad3: $04
	or c                                             ; $5ad4: $b1
	or c                                             ; $5ad5: $b1
	rst $38                                          ; $5ad6: $ff
	ld b, $18                                        ; $5ad7: $06 $18
	inc c                                            ; $5ad9: $0c
	nop                                              ; $5ada: $00
	inc c                                            ; $5adb: $0c
	ei                                               ; $5adc: $fb
	or c                                             ; $5add: $b1
	or c                                             ; $5ade: $b1
	rst $38                                          ; $5adf: $ff
	ld b, $19                                        ; $5ae0: $06 $19
	inc c                                            ; $5ae2: $0c
	or c                                             ; $5ae3: $b1
	ld hl, $0000                                     ; $5ae4: $21 $00 $00
	add hl, de                                       ; $5ae7: $19
	ld b, $fb                                        ; $5ae8: $06 $fb
	inc b                                            ; $5aea: $04
	or c                                             ; $5aeb: $b1
	or c                                             ; $5aec: $b1
	rst $38                                          ; $5aed: $ff
	ld b, $19                                        ; $5aee: $06 $19
	inc c                                            ; $5af0: $0c
	nop                                              ; $5af1: $00
	inc c                                            ; $5af2: $0c
	ei                                               ; $5af3: $fb
	or c                                             ; $5af4: $b1

jr_037_5af5:
	or c                                             ; $5af5: $b1
	rst $38                                          ; $5af6: $ff
	ld b, $18                                        ; $5af7: $06 $18
	inc c                                            ; $5af9: $0c
	or c                                             ; $5afa: $b1
	ld hl, $0000                                     ; $5afb: $21 $00 $00
	jr @+$08                                         ; $5afe: $18 $06

	ei                                               ; $5b00: $fb
	inc b                                            ; $5b01: $04
	or c                                             ; $5b02: $b1
	or c                                             ; $5b03: $b1
	rst $38                                          ; $5b04: $ff
	ld b, $18                                        ; $5b05: $06 $18
	inc c                                            ; $5b07: $0c
	sub d                                            ; $5b08: $92
	ld h, l                                          ; $5b09: $65
	or c                                             ; $5b0a: $b1
	sub c                                            ; $5b0b: $91
	rst $38                                          ; $5b0c: $ff
	ld bc, $0616                                     ; $5b0d: $01 $16 $06
	ret z                                            ; $5b10: $c8

	cp [hl]                                          ; $5b11: $be
	ld b, $16                                        ; $5b12: $06 $16
	dec e                                            ; $5b14: $1d
	ld d, $1d                                        ; $5b15: $16 $1d
	ld d, $1d                                        ; $5b17: $16 $1d
	ld [hl+], a                                      ; $5b19: $22
	cp [hl]                                          ; $5b1a: $be
	ei                                               ; $5b1b: $fb
	or c                                             ; $5b1c: $b1
	add c                                            ; $5b1d: $81
	rst $38                                          ; $5b1e: $ff
	ld bc, $06be                                     ; $5b1f: $01 $be $06
	ld d, $16                                        ; $5b22: $16 $16
	dec e                                            ; $5b24: $1d
	ld d, $1d                                        ; $5b25: $16 $1d
	ld d, $1d                                        ; $5b27: $16 $1d
	ld [hl+], a                                      ; $5b29: $22
	cp [hl]                                          ; $5b2a: $be
	ei                                               ; $5b2b: $fb
	ld [bc], a                                       ; $5b2c: $02
	or c                                             ; $5b2d: $b1
	add c                                            ; $5b2e: $81
	rst $38                                          ; $5b2f: $ff
	ld bc, $06be                                     ; $5b30: $01 $be $06
	ld d, $16                                        ; $5b33: $16 $16
	dec e                                            ; $5b35: $1d
	ld d, $1d                                        ; $5b36: $16 $1d
	ld d, $1d                                        ; $5b38: $16 $1d
	add hl, de                                       ; $5b3a: $19
	cp [hl]                                          ; $5b3b: $be
	sub d                                            ; $5b3c: $92
	ld h, l                                          ; $5b3d: $65
	or c                                             ; $5b3e: $b1
	sub c                                            ; $5b3f: $91
	rst $38                                          ; $5b40: $ff
	ld bc, $0612                                     ; $5b41: $01 $12 $06
	ret z                                            ; $5b44: $c8

	cp [hl]                                          ; $5b45: $be
	ld b, $12                                        ; $5b46: $06 $12
	add hl, de                                       ; $5b48: $19
	ld d, $1d                                        ; $5b49: $16 $1d
	ld d, $1d                                        ; $5b4b: $16 $1d
	ld d, $be                                        ; $5b4d: $16 $be
	or c                                             ; $5b4f: $b1
	add c                                            ; $5b50: $81
	rst $38                                          ; $5b51: $ff
	ld bc, $06be                                     ; $5b52: $01 $be $06
	ld [de], a                                       ; $5b55: $12
	ld d, $19                                        ; $5b56: $16 $19
	ld d, $1d                                        ; $5b58: $16 $1d
	ld d, $1d                                        ; $5b5a: $16 $1d
	ld d, $be                                        ; $5b5c: $16 $be
	or c                                             ; $5b5e: $b1
	add c                                            ; $5b5f: $81
	rst $38                                          ; $5b60: $ff
	ld bc, $06be                                     ; $5b61: $01 $be $06
	inc d                                            ; $5b64: $14
	inc d                                            ; $5b65: $14
	dec de                                           ; $5b66: $1b
	inc d                                            ; $5b67: $14
	dec de                                           ; $5b68: $1b
	inc d                                            ; $5b69: $14
	dec de                                           ; $5b6a: $1b
	inc d                                            ; $5b6b: $14
	cp [hl]                                          ; $5b6c: $be
	or c                                             ; $5b6d: $b1
	add c                                            ; $5b6e: $81
	rst $38                                          ; $5b6f: $ff
	ld bc, $06be                                     ; $5b70: $01 $be $06
	dec c                                            ; $5b73: $0d
	dec c                                            ; $5b74: $0d
	inc d                                            ; $5b75: $14
	dec c                                            ; $5b76: $0d
	dec c                                            ; $5b77: $0d
	dec de                                           ; $5b78: $1b
	ld de, $be1d                                     ; $5b79: $11 $1d $be
	sub d                                            ; $5b7c: $92
	ld h, l                                          ; $5b7d: $65
	or c                                             ; $5b7e: $b1
	sub c                                            ; $5b7f: $91
	rst $38                                          ; $5b80: $ff
	ld bc, $0616                                     ; $5b81: $01 $16 $06
	ret z                                            ; $5b84: $c8

	cp [hl]                                          ; $5b85: $be
	ld b, $16                                        ; $5b86: $06 $16
	dec e                                            ; $5b88: $1d
	ld d, $1d                                        ; $5b89: $16 $1d
	ld d, $1d                                        ; $5b8b: $16 $1d
	ld [hl+], a                                      ; $5b8d: $22
	cp [hl]                                          ; $5b8e: $be
	ei                                               ; $5b8f: $fb
	or c                                             ; $5b90: $b1
	add c                                            ; $5b91: $81
	rst $38                                          ; $5b92: $ff
	ld bc, $06be                                     ; $5b93: $01 $be $06
	ld d, $16                                        ; $5b96: $16 $16
	dec e                                            ; $5b98: $1d
	ld d, $1d                                        ; $5b99: $16 $1d
	ld d, $1d                                        ; $5b9b: $16 $1d
	ld [hl+], a                                      ; $5b9d: $22
	cp [hl]                                          ; $5b9e: $be
	ei                                               ; $5b9f: $fb
	ld [bc], a                                       ; $5ba0: $02
	or c                                             ; $5ba1: $b1
	add c                                            ; $5ba2: $81
	rst $38                                          ; $5ba3: $ff
	ld bc, $06be                                     ; $5ba4: $01 $be $06
	ld d, $16                                        ; $5ba7: $16 $16
	dec e                                            ; $5ba9: $1d
	ld d, $1d                                        ; $5baa: $16 $1d
	ld d, $1d                                        ; $5bac: $16 $1d
	add hl, de                                       ; $5bae: $19
	cp [hl]                                          ; $5baf: $be
	sub d                                            ; $5bb0: $92
	ld h, l                                          ; $5bb1: $65
	or c                                             ; $5bb2: $b1
	sub c                                            ; $5bb3: $91
	rst $38                                          ; $5bb4: $ff
	ld bc, $0612                                     ; $5bb5: $01 $12 $06
	ret z                                            ; $5bb8: $c8

	cp [hl]                                          ; $5bb9: $be
	ld b, $12                                        ; $5bba: $06 $12
	add hl, de                                       ; $5bbc: $19
	ld d, $1d                                        ; $5bbd: $16 $1d
	ld d, $1d                                        ; $5bbf: $16 $1d
	ld d, $be                                        ; $5bc1: $16 $be
	or c                                             ; $5bc3: $b1
	add c                                            ; $5bc4: $81
	rst $38                                          ; $5bc5: $ff
	ld bc, $06be                                     ; $5bc6: $01 $be $06
	ld [de], a                                       ; $5bc9: $12
	ld d, $19                                        ; $5bca: $16 $19
	ld d, $1d                                        ; $5bcc: $16 $1d
	ld d, $1d                                        ; $5bce: $16 $1d
	ld d, $be                                        ; $5bd0: $16 $be
	or c                                             ; $5bd2: $b1
	add c                                            ; $5bd3: $81
	rst $38                                          ; $5bd4: $ff
	ld bc, $06be                                     ; $5bd5: $01 $be $06
	inc d                                            ; $5bd8: $14
	inc d                                            ; $5bd9: $14
	dec de                                           ; $5bda: $1b
	inc d                                            ; $5bdb: $14
	dec de                                           ; $5bdc: $1b
	inc d                                            ; $5bdd: $14
	dec de                                           ; $5bde: $1b
	inc d                                            ; $5bdf: $14
	cp [hl]                                          ; $5be0: $be
	or c                                             ; $5be1: $b1
	add c                                            ; $5be2: $81
	rst $38                                          ; $5be3: $ff
	ld bc, $06be                                     ; $5be4: $01 $be $06
	dec c                                            ; $5be7: $0d
	inc d                                            ; $5be8: $14
	dec c                                            ; $5be9: $0d
	inc d                                            ; $5bea: $14
	rrca                                             ; $5beb: $0f
	dec de                                           ; $5bec: $1b
	add hl, de                                       ; $5bed: $19
	inc d                                            ; $5bee: $14
	cp [hl]                                          ; $5bef: $be
	sub [hl]                                         ; $5bf0: $96
	nop                                              ; $5bf1: $00
	nop                                              ; $5bf2: $00
	sub b                                            ; $5bf3: $90
	ld h, l                                          ; $5bf4: $65
	db $d3                                           ; $5bf5: $d3
	call z, $0619                                    ; $5bf6: $cc $19 $06
	push bc                                          ; $5bf9: $c5
	add hl, de                                       ; $5bfa: $19
	ld b, $c4                                        ; $5bfb: $06 $c4
	add hl, de                                       ; $5bfd: $19
	ld b, $d2                                        ; $5bfe: $06 $d2
	call z, $0619                                    ; $5c00: $cc $19 $06
	push bc                                          ; $5c03: $c5
	add hl, de                                       ; $5c04: $19
	ld b, $c4                                        ; $5c05: $06 $c4
	add hl, de                                       ; $5c07: $19
	ld b, $d3                                        ; $5c08: $06 $d3
	call z, $0619                                    ; $5c0a: $cc $19 $06
	push bc                                          ; $5c0d: $c5
	add hl, de                                       ; $5c0e: $19
	ld b, $c4                                        ; $5c0f: $06 $c4
	add hl, de                                       ; $5c11: $19
	ld b, $d2                                        ; $5c12: $06 $d2
	call z, $0619                                    ; $5c14: $cc $19 $06
	push bc                                          ; $5c17: $c5
	add hl, de                                       ; $5c18: $19
	ld b, $c4                                        ; $5c19: $06 $c4
	add hl, de                                       ; $5c1b: $19
	ld b, $d3                                        ; $5c1c: $06 $d3
	call z, $0619                                    ; $5c1e: $cc $19 $06
	push bc                                          ; $5c21: $c5
	add hl, de                                       ; $5c22: $19
	ld b, $cc                                        ; $5c23: $06 $cc
	add hl, de                                       ; $5c25: $19
	ld b, $c5                                        ; $5c26: $06 $c5
	add hl, de                                       ; $5c28: $19
	ld b, $d2                                        ; $5c29: $06 $d2
	call z, $0619                                    ; $5c2b: $cc $19 $06
	push bc                                          ; $5c2e: $c5
	add hl, de                                       ; $5c2f: $19
	ld b, $c4                                        ; $5c30: $06 $c4
	add hl, de                                       ; $5c32: $19
	ld b, $d2                                        ; $5c33: $06 $d2
	call z, $0619                                    ; $5c35: $cc $19 $06
	push bc                                          ; $5c38: $c5
	add hl, de                                       ; $5c39: $19
	ld b, $c4                                        ; $5c3a: $06 $c4
	add hl, de                                       ; $5c3c: $19
	ld b, $d3                                        ; $5c3d: $06 $d3
	call z, $0619                                    ; $5c3f: $cc $19 $06
	push bc                                          ; $5c42: $c5
	add hl, de                                       ; $5c43: $19
	ld b, $c4                                        ; $5c44: $06 $c4
	add hl, de                                       ; $5c46: $19
	ld b, $d2                                        ; $5c47: $06 $d2
	call z, $0619                                    ; $5c49: $cc $19 $06
	push bc                                          ; $5c4c: $c5
	add hl, de                                       ; $5c4d: $19
	ld b, $c4                                        ; $5c4e: $06 $c4
	add hl, de                                       ; $5c50: $19
	ld b, $d3                                        ; $5c51: $06 $d3
	call z, $0619                                    ; $5c53: $cc $19 $06
	push bc                                          ; $5c56: $c5
	add hl, de                                       ; $5c57: $19
	ld b, $cc                                        ; $5c58: $06 $cc
	add hl, de                                       ; $5c5a: $19
	ld b, $c5                                        ; $5c5b: $06 $c5
	add hl, de                                       ; $5c5d: $19
	ld b, $90                                        ; $5c5e: $06 $90
	ld h, l                                          ; $5c60: $65
	db $d3                                           ; $5c61: $d3
	call z, $0619                                    ; $5c62: $cc $19 $06
	push bc                                          ; $5c65: $c5
	add hl, de                                       ; $5c66: $19
	ld b, $c4                                        ; $5c67: $06 $c4
	add hl, de                                       ; $5c69: $19
	ld b, $d2                                        ; $5c6a: $06 $d2
	call z, $0619                                    ; $5c6c: $cc $19 $06
	push bc                                          ; $5c6f: $c5
	add hl, de                                       ; $5c70: $19
	ld b, $c4                                        ; $5c71: $06 $c4
	add hl, de                                       ; $5c73: $19
	ld b, $d3                                        ; $5c74: $06 $d3
	call z, $0619                                    ; $5c76: $cc $19 $06
	push bc                                          ; $5c79: $c5
	add hl, de                                       ; $5c7a: $19
	ld b, $c4                                        ; $5c7b: $06 $c4
	add hl, de                                       ; $5c7d: $19
	ld b, $d2                                        ; $5c7e: $06 $d2
	call z, $0619                                    ; $5c80: $cc $19 $06
	push bc                                          ; $5c83: $c5
	add hl, de                                       ; $5c84: $19
	ld b, $c4                                        ; $5c85: $06 $c4
	add hl, de                                       ; $5c87: $19
	ld b, $d3                                        ; $5c88: $06 $d3
	call z, $0619                                    ; $5c8a: $cc $19 $06
	push bc                                          ; $5c8d: $c5
	add hl, de                                       ; $5c8e: $19
	ld b, $cc                                        ; $5c8f: $06 $cc
	add hl, de                                       ; $5c91: $19
	ld b, $c5                                        ; $5c92: $06 $c5
	add hl, de                                       ; $5c94: $19
	ld b, $d2                                        ; $5c95: $06 $d2
	call z, $0619                                    ; $5c97: $cc $19 $06
	push bc                                          ; $5c9a: $c5
	add hl, de                                       ; $5c9b: $19
	ld b, $c4                                        ; $5c9c: $06 $c4
	add hl, de                                       ; $5c9e: $19
	ld b, $d2                                        ; $5c9f: $06 $d2
	call z, $0619                                    ; $5ca1: $cc $19 $06
	push bc                                          ; $5ca4: $c5
	add hl, de                                       ; $5ca5: $19
	ld b, $c4                                        ; $5ca6: $06 $c4
	add hl, de                                       ; $5ca8: $19
	ld b, $d3                                        ; $5ca9: $06 $d3
	call z, $0619                                    ; $5cab: $cc $19 $06
	push bc                                          ; $5cae: $c5
	add hl, de                                       ; $5caf: $19
	ld b, $c4                                        ; $5cb0: $06 $c4
	add hl, de                                       ; $5cb2: $19
	ld b, $d2                                        ; $5cb3: $06 $d2
	call z, $0619                                    ; $5cb5: $cc $19 $06
	push bc                                          ; $5cb8: $c5
	add hl, de                                       ; $5cb9: $19
	ld b, $c4                                        ; $5cba: $06 $c4
	add hl, de                                       ; $5cbc: $19
	ld b, $d3                                        ; $5cbd: $06 $d3
	call z, $0619                                    ; $5cbf: $cc $19 $06
	push bc                                          ; $5cc2: $c5
	add hl, de                                       ; $5cc3: $19
	ld b, $cc                                        ; $5cc4: $06 $cc
	add hl, de                                       ; $5cc6: $19
	ld b, $c5                                        ; $5cc7: $06 $c5
	add hl, de                                       ; $5cc9: $19
	ld b, $d1                                        ; $5cca: $06 $d1
	sub b                                            ; $5ccc: $90
	ld h, l                                          ; $5ccd: $65
	or c                                             ; $5cce: $b1
	add c                                            ; $5ccf: $81
	rst $38                                          ; $5cd0: $ff
	ld bc, $06be                                     ; $5cd1: $01 $be $06
	ld d, $16                                        ; $5cd4: $16 $16
	ld d, $16                                        ; $5cd6: $16 $16
	inc d                                            ; $5cd8: $14
	inc d                                            ; $5cd9: $14
	inc d                                            ; $5cda: $14
	inc d                                            ; $5cdb: $14
	ld d, $16                                        ; $5cdc: $16 $16
	ld d, $16                                        ; $5cde: $16 $16
	ld d, $16                                        ; $5ce0: $16 $16
	ld d, $16                                        ; $5ce2: $16 $16
	cp [hl]                                          ; $5ce4: $be
	cp [hl]                                          ; $5ce5: $be
	ld b, $16                                        ; $5ce6: $06 $16
	ld d, $16                                        ; $5ce8: $16 $16
	ld d, $18                                        ; $5cea: $16 $18
	jr jr_037_5d06                                   ; $5cec: $18 $18

	jr jr_037_5d09                                   ; $5cee: $18 $19

	add hl, de                                       ; $5cf0: $19
	add hl, de                                       ; $5cf1: $19
	add hl, de                                       ; $5cf2: $19
	add hl, de                                       ; $5cf3: $19
	add hl, de                                       ; $5cf4: $19
	add hl, de                                       ; $5cf5: $19
	add hl, de                                       ; $5cf6: $19
	cp [hl]                                          ; $5cf7: $be
	pop de                                           ; $5cf8: $d1
	sub b                                            ; $5cf9: $90
	ld h, l                                          ; $5cfa: $65
	or c                                             ; $5cfb: $b1
	add c                                            ; $5cfc: $81
	rst $38                                          ; $5cfd: $ff
	ld bc, $06be                                     ; $5cfe: $01 $be $06
	ld e, $1e                                        ; $5d01: $1e $1e
	ld e, $1e                                        ; $5d03: $1e $1e
	dec e                                            ; $5d05: $1d

jr_037_5d06:
	dec e                                            ; $5d06: $1d
	dec e                                            ; $5d07: $1d
	dec e                                            ; $5d08: $1d

jr_037_5d09:
	add hl, de                                       ; $5d09: $19
	add hl, de                                       ; $5d0a: $19
	add hl, de                                       ; $5d0b: $19
	add hl, de                                       ; $5d0c: $19
	ld d, $16                                        ; $5d0d: $16 $16
	ld d, $16                                        ; $5d0f: $16 $16
	cp [hl]                                          ; $5d11: $be
	or c                                             ; $5d12: $b1
	ld d, c                                          ; $5d13: $51
	rst $38                                          ; $5d14: $ff
	inc b                                            ; $5d15: $04
	ei                                               ; $5d16: $fb
	cp [hl]                                          ; $5d17: $be
	inc b                                            ; $5d18: $04
	inc d                                            ; $5d19: $14
	ld d, $17                                        ; $5d1a: $16 $17
	jr jr_037_5d34                                   ; $5d1c: $18 $16

	inc d                                            ; $5d1e: $14
	cp [hl]                                          ; $5d1f: $be
	ei                                               ; $5d20: $fb
	inc bc                                           ; $5d21: $03
	or c                                             ; $5d22: $b1
	ld d, c                                          ; $5d23: $51
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	inc d                                            ; $5d26: $14
	inc b                                            ; $5d27: $04
	ld d, $04                                        ; $5d28: $16 $04
	jr jr_037_5d30                                   ; $5d2a: $18 $04

	rst JumpTable                                          ; $5d2c: $c7
	dec de                                           ; $5d2d: $1b
	inc b                                            ; $5d2e: $04
	dec e                                            ; $5d2f: $1d

jr_037_5d30:
	inc b                                            ; $5d30: $04
	ld e, $04                                        ; $5d31: $1e $04
	or l                                             ; $5d33: $b5

jr_037_5d34:
	pop bc                                           ; $5d34: $c1
	ld bc, $02ff                                     ; $5d35: $01 $ff $02
	jr nz, jr_037_5d4c                               ; $5d38: $20 $12

	jr nz, jr_037_5d4e                               ; $5d3a: $20 $12

	jr nz, @+$0e                                     ; $5d3c: $20 $0c

	sub [hl]                                         ; $5d3e: $96
	rst $38                                          ; $5d3f: $ff
	ld [bc], a                                       ; $5d40: $02
	jr nz, jr_037_5d5b                               ; $5d41: $20 $18

	or l                                             ; $5d43: $b5
	ld sp, $0001                                     ; $5d44: $31 $01 $00
	nop                                              ; $5d47: $00
	ld a, [hl]                                       ; $5d48: $7e
	ld bc, $a900                                     ; $5d49: $01 $00 $a9

jr_037_5d4c:
	nop                                              ; $5d4c: $00
	inc b                                            ; $5d4d: $04

jr_037_5d4e:
	add hl, hl                                       ; $5d4e: $29
	inc c                                            ; $5d4f: $0c
	sub d                                            ; $5d50: $92
	ld a, [hl+]                                      ; $5d51: $2a
	ld b, $90                                        ; $5d52: $06 $90
	inc l                                            ; $5d54: $2c
	ld [bc], a                                       ; $5d55: $02
	ld a, [hl]                                       ; $5d56: $7e
	nop                                              ; $5d57: $00
	pop de                                           ; $5d58: $d1
	sub c                                            ; $5d59: $91
	ld h, l                                          ; $5d5a: $65

jr_037_5d5b:
	or c                                             ; $5d5b: $b1
	add c                                            ; $5d5c: $81
	rst $38                                          ; $5d5d: $ff
	ld bc, $11fb                                     ; $5d5e: $01 $fb $11
	ld b, $fb                                        ; $5d61: $06 $fb
	db $10                                           ; $5d63: $10
	ei                                               ; $5d64: $fb
	ld de, $fb06                                     ; $5d65: $11 $06 $fb
	db $10                                           ; $5d68: $10
	ei                                               ; $5d69: $fb
	jr jr_037_5d72                                   ; $5d6a: $18 $06

	ei                                               ; $5d6c: $fb
	db $10                                           ; $5d6d: $10
	ei                                               ; $5d6e: $fb
	ld d, $06                                        ; $5d6f: $16 $06
	ei                                               ; $5d71: $fb

jr_037_5d72:
	ld [$18fb], sp                                   ; $5d72: $08 $fb $18
	ld b, $fb                                        ; $5d75: $06 $fb
	ld [$91d1], sp                                   ; $5d77: $08 $d1 $91
	ld h, l                                          ; $5d7a: $65
	or c                                             ; $5d7b: $b1
	sub c                                            ; $5d7c: $91
	rst $38                                          ; $5d7d: $ff
	ld bc, $16fb                                     ; $5d7e: $01 $fb $16
	ld b, $fb                                        ; $5d81: $06 $fb
	db $10                                           ; $5d83: $10
	ei                                               ; $5d84: $fb
	ld d, $06                                        ; $5d85: $16 $06
	ei                                               ; $5d87: $fb
	db $10                                           ; $5d88: $10
	ei                                               ; $5d89: $fb
	ld d, $06                                        ; $5d8a: $16 $06
	ei                                               ; $5d8c: $fb
	db $10                                           ; $5d8d: $10
	ei                                               ; $5d8e: $fb
	ld [de], a                                       ; $5d8f: $12
	ld b, $fb                                        ; $5d90: $06 $fb
	ld [$18fb], sp                                   ; $5d92: $08 $fb $18
	ld b, $fb                                        ; $5d95: $06 $fb
	ld [$91d1], sp                                   ; $5d97: $08 $d1 $91
	ld h, l                                          ; $5d9a: $65
	or c                                             ; $5d9b: $b1
	sub c                                            ; $5d9c: $91
	rst $38                                          ; $5d9d: $ff
	ld bc, $11fb                                     ; $5d9e: $01 $fb $11
	ld b, $fb                                        ; $5da1: $06 $fb
	db $10                                           ; $5da3: $10
	ei                                               ; $5da4: $fb
	ld de, $fb06                                     ; $5da5: $11 $06 $fb
	db $10                                           ; $5da8: $10
	ei                                               ; $5da9: $fb
	jr jr_037_5db2                                   ; $5daa: $18 $06

	ei                                               ; $5dac: $fb
	db $10                                           ; $5dad: $10
	ei                                               ; $5dae: $fb
	ld d, $06                                        ; $5daf: $16 $06
	ei                                               ; $5db1: $fb

jr_037_5db2:
	ld [$18fb], sp                                   ; $5db2: $08 $fb $18
	ld b, $fb                                        ; $5db5: $06 $fb
	ld [$91d1], sp                                   ; $5db7: $08 $d1 $91
	ld h, l                                          ; $5dba: $65
	or c                                             ; $5dbb: $b1
	sub c                                            ; $5dbc: $91
	rst $38                                          ; $5dbd: $ff
	ld bc, $1dfb                                     ; $5dbe: $01 $fb $1d
	ld b, $fb                                        ; $5dc1: $06 $fb
	db $10                                           ; $5dc3: $10
	ei                                               ; $5dc4: $fb
	dec e                                            ; $5dc5: $1d
	ld b, $fb                                        ; $5dc6: $06 $fb
	db $10                                           ; $5dc8: $10
	ei                                               ; $5dc9: $fb
	add hl, de                                       ; $5dca: $19
	ld b, $fb                                        ; $5dcb: $06 $fb
	db $10                                           ; $5dcd: $10
	ei                                               ; $5dce: $fb
	ld [hl+], a                                      ; $5dcf: $22
	ld b, $fb                                        ; $5dd0: $06 $fb
	inc b                                            ; $5dd2: $04
	ei                                               ; $5dd3: $fb
	jr nz, jr_037_5ddc                               ; $5dd4: $20 $06

	ei                                               ; $5dd6: $fb
	inc b                                            ; $5dd7: $04
	ei                                               ; $5dd8: $fb
	ld e, $06                                        ; $5dd9: $1e $06
	ei                                               ; $5ddb: $fb

jr_037_5ddc:
	inc b                                            ; $5ddc: $04
	ei                                               ; $5ddd: $fb
	dec de                                           ; $5dde: $1b
	ld b, $fb                                        ; $5ddf: $06 $fb
	inc b                                            ; $5de1: $04
	pop de                                           ; $5de2: $d1
	sub c                                            ; $5de3: $91
	ld h, l                                          ; $5de4: $65
	or c                                             ; $5de5: $b1
	ld [hl], c                                       ; $5de6: $71
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	ld b, $96                                        ; $5dea: $06 $96
	rst $38                                          ; $5dec: $ff
	ld bc, $061e                                     ; $5ded: $01 $1e $06
	or c                                             ; $5df0: $b1
	ld h, c                                          ; $5df1: $61
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	ld e, $0c                                        ; $5df4: $1e $0c
	jp $0c1e                                         ; $5df6: $c3 $1e $0c


	ei                                               ; $5df9: $fb
	add $1e                                          ; $5dfa: $c6 $1e
	inc c                                            ; $5dfc: $0c
	jp $0c1e                                         ; $5dfd: $c3 $1e $0c


	ei                                               ; $5e00: $fb
	ld [bc], a                                       ; $5e01: $02
	add $1e                                          ; $5e02: $c6 $1e
	inc c                                            ; $5e04: $0c
	jp $0c1e                                         ; $5e05: $c3 $1e $0c


	ei                                               ; $5e08: $fb
	add $1d                                          ; $5e09: $c6 $1d
	inc c                                            ; $5e0b: $0c
	jp $0c1d                                         ; $5e0c: $c3 $1d $0c


	ei                                               ; $5e0f: $fb
	inc bc                                           ; $5e10: $03
	add $1d                                          ; $5e11: $c6 $1d
	inc c                                            ; $5e13: $0c
	pop de                                           ; $5e14: $d1
	sub c                                            ; $5e15: $91
	ld h, l                                          ; $5e16: $65
	add $00                                          ; $5e17: $c6 $00
	inc c                                            ; $5e19: $0c
	ld e, $0c                                        ; $5e1a: $1e $0c
	jp $0c1e                                         ; $5e1c: $c3 $1e $0c


	ei                                               ; $5e1f: $fb
	add $1e                                          ; $5e20: $c6 $1e
	inc c                                            ; $5e22: $0c
	jp $0c1e                                         ; $5e23: $c3 $1e $0c


	ei                                               ; $5e26: $fb
	ld [bc], a                                       ; $5e27: $02
	add $1e                                          ; $5e28: $c6 $1e
	inc c                                            ; $5e2a: $0c
	sub d                                            ; $5e2b: $92
	jp $017e                                         ; $5e2c: $c3 $7e $01


	nop                                              ; $5e2f: $00
	and l                                            ; $5e30: $a5
	ld bc, $b158                                     ; $5e31: $01 $58 $b1
	ld b, c                                          ; $5e34: $41
	rst $38                                          ; $5e35: $ff
	rlca                                             ; $5e36: $07
	ld bc, $ff14                                     ; $5e37: $01 $14 $ff
	ret nc                                           ; $5e3a: $d0

	ld [hl], b                                       ; $5e3b: $70
	sub d                                            ; $5e3c: $92
	ld h, l                                          ; $5e3d: $65
	ld a, [hl]                                       ; $5e3e: $7e
	dec b                                            ; $5e3f: $05
	nop                                              ; $5e40: $00
	and c                                            ; $5e41: $a1
	nop                                              ; $5e42: $00
	ret nz                                           ; $5e43: $c0

	push bc                                          ; $5e44: $c5
	ld [hl+], a                                      ; $5e45: $22
	jr jr_037_5ec6                                   ; $5e46: $18 $7e

	dec b                                            ; $5e48: $05
	nop                                              ; $5e49: $00
	and d                                            ; $5e4a: $a2
	ld l, $0c                                        ; $5e4b: $2e $0c
	ld a, [hl]                                       ; $5e4d: $7e
	add hl, bc                                       ; $5e4e: $09
	nop                                              ; $5e4f: $00
	and c                                            ; $5e50: $a1
	add hl, hl                                       ; $5e51: $29
	jr jr_037_5ed2                                   ; $5e52: $18 $7e

	add hl, bc                                       ; $5e54: $09
	nop                                              ; $5e55: $00
	and b                                            ; $5e56: $a0
	dec h                                            ; $5e57: $25
	ld [de], a                                       ; $5e58: $12
	ld a, [hl]                                       ; $5e59: $7e
	dec b                                            ; $5e5a: $05
	nop                                              ; $5e5b: $00
	and c                                            ; $5e5c: $a1
	add hl, hl                                       ; $5e5d: $29
	ld [de], a                                       ; $5e5e: $12
	push bc                                          ; $5e5f: $c5
	ld [hl+], a                                      ; $5e60: $22
	jr jr_037_5ee1                                   ; $5e61: $18 $7e

	dec b                                            ; $5e63: $05
	nop                                              ; $5e64: $00
	and d                                            ; $5e65: $a2
	ld l, $12                                        ; $5e66: $2e $12
	ld a, [hl]                                       ; $5e68: $7e
	add hl, bc                                       ; $5e69: $09
	nop                                              ; $5e6a: $00
	and c                                            ; $5e6b: $a1
	add hl, hl                                       ; $5e6c: $29
	ld [de], a                                       ; $5e6d: $12
	ld a, [hl]                                       ; $5e6e: $7e
	add hl, bc                                       ; $5e6f: $09
	nop                                              ; $5e70: $00
	and b                                            ; $5e71: $a0
	dec h                                            ; $5e72: $25
	jr jr_037_5ef3                                   ; $5e73: $18 $7e

	dec b                                            ; $5e75: $05
	nop                                              ; $5e76: $00
	and c                                            ; $5e77: $a1
	add hl, hl                                       ; $5e78: $29
	inc c                                            ; $5e79: $0c
	ld a, [hl]                                       ; $5e7a: $7e
	dec b                                            ; $5e7b: $05
	nop                                              ; $5e7c: $00
	and c                                            ; $5e7d: $a1
	push bc                                          ; $5e7e: $c5
	ld [hl+], a                                      ; $5e7f: $22
	jr @+$80                                         ; $5e80: $18 $7e

	dec b                                            ; $5e82: $05
	nop                                              ; $5e83: $00
	and d                                            ; $5e84: $a2
	ld l, $12                                        ; $5e85: $2e $12
	ld a, [hl]                                       ; $5e87: $7e
	add hl, bc                                       ; $5e88: $09
	nop                                              ; $5e89: $00
	and c                                            ; $5e8a: $a1
	add hl, hl                                       ; $5e8b: $29

jr_037_5e8c:
	ld [de], a                                       ; $5e8c: $12
	ld a, [hl]                                       ; $5e8d: $7e
	add hl, bc                                       ; $5e8e: $09
	nop                                              ; $5e8f: $00
	and b                                            ; $5e90: $a0
	dec h                                            ; $5e91: $25
	jr jr_037_5f12                                   ; $5e92: $18 $7e

	dec b                                            ; $5e94: $05
	nop                                              ; $5e95: $00
	and c                                            ; $5e96: $a1
	add hl, hl                                       ; $5e97: $29
	inc c                                            ; $5e98: $0c
	ld a, [hl]                                       ; $5e99: $7e
	dec b                                            ; $5e9a: $05
	nop                                              ; $5e9b: $00
	and c                                            ; $5e9c: $a1
	add $22                                          ; $5e9d: $c6 $22
	ld [de], a                                       ; $5e9f: $12
	ld a, [hl]                                       ; $5ea0: $7e
	dec b                                            ; $5ea1: $05
	nop                                              ; $5ea2: $00
	and d                                            ; $5ea3: $a2
	ld l, $12                                        ; $5ea4: $2e $12
	ld a, [hl]                                       ; $5ea6: $7e
	add hl, bc                                       ; $5ea7: $09
	nop                                              ; $5ea8: $00
	and c                                            ; $5ea9: $a1
	add hl, hl                                       ; $5eaa: $29
	jr jr_037_5f2b                                   ; $5eab: $18 $7e

	add hl, bc                                       ; $5ead: $09
	nop                                              ; $5eae: $00
	and b                                            ; $5eaf: $a0
	dec h                                            ; $5eb0: $25
	jr jr_037_5f31                                   ; $5eb1: $18 $7e

	dec b                                            ; $5eb3: $05
	nop                                              ; $5eb4: $00

jr_037_5eb5:
	and c                                            ; $5eb5: $a1
	add hl, hl                                       ; $5eb6: $29
	inc c                                            ; $5eb7: $0c
	sub c                                            ; $5eb8: $91
	ld h, l                                          ; $5eb9: $65
	ld a, [hl]                                       ; $5eba: $7e
	nop                                              ; $5ebb: $00
	or c                                             ; $5ebc: $b1
	add c                                            ; $5ebd: $81
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	dec h                                            ; $5ec0: $25
	inc c                                            ; $5ec1: $0c
	sub c                                            ; $5ec2: $91
	daa                                              ; $5ec3: $27
	inc c                                            ; $5ec4: $0c
	ld a, [hl]                                       ; $5ec5: $7e

jr_037_5ec6:
	dec b                                            ; $5ec6: $05
	nop                                              ; $5ec7: $00
	xor c                                            ; $5ec8: $a9
	sub b                                            ; $5ec9: $90
	inc h                                            ; $5eca: $24
	inc c                                            ; $5ecb: $0c
	ld a, [hl]                                       ; $5ecc: $7e
	nop                                              ; $5ecd: $00
	dec h                                            ; $5ece: $25
	ld b, $91                                        ; $5ecf: $06 $91
	ld a, [hl]                                       ; $5ed1: $7e

jr_037_5ed2:
	ld bc, $a900                                     ; $5ed2: $01 $00 $a9
	sub [hl]                                         ; $5ed5: $96
	rst $38                                          ; $5ed6: $ff
	rlca                                             ; $5ed7: $07
	ld [hl+], a                                      ; $5ed8: $22
	jr jr_037_5e8c                                   ; $5ed9: $18 $b1

	ld sp, $0000                                     ; $5edb: $31 $00 $00
	ld [hl+], a                                      ; $5ede: $22
	inc c                                            ; $5edf: $0c
	ld a, [hl]                                       ; $5ee0: $7e

jr_037_5ee1:
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	ld b, $ca                                        ; $5ee3: $06 $ca
	jr nz, jr_037_5ef3                               ; $5ee5: $20 $0c

	or l                                             ; $5ee7: $b5
	sub c                                            ; $5ee8: $91
	ld [bc], a                                       ; $5ee9: $02
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	ld [hl+], a                                      ; $5eec: $22
	dec bc                                           ; $5eed: $0b
	nop                                              ; $5eee: $00

jr_037_5eef:
	ld bc, $2291                                     ; $5eef: $01 $91 $22
	inc c                                            ; $5ef2: $0c

jr_037_5ef3:
	sub b                                            ; $5ef3: $90
	inc h                                            ; $5ef4: $24
	inc c                                            ; $5ef5: $0c
	sub c                                            ; $5ef6: $91
	jr nz, @+$08                                     ; $5ef7: $20 $06

	sub b                                            ; $5ef9: $90
	sub [hl]                                         ; $5efa: $96
	rst $38                                          ; $5efb: $ff
	rlca                                             ; $5efc: $07
	ld a, [hl]                                       ; $5efd: $7e
	ld bc, $a900                                     ; $5efe: $01 $00 $a9
	ld [hl+], a                                      ; $5f01: $22
	jr jr_037_5eb5                                   ; $5f02: $18 $b1

	ld sp, $0000                                     ; $5f04: $31 $00 $00
	ld [hl+], a                                      ; $5f07: $22
	inc c                                            ; $5f08: $0c
	ld a, [hl]                                       ; $5f09: $7e
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	ld b, $92                                        ; $5f0c: $06 $92
	jp z, $0522                                      ; $5f0e: $ca $22 $05

	nop                                              ; $5f11: $00

jr_037_5f12:
	ld bc, $0522                                     ; $5f12: $01 $22 $05
	nop                                              ; $5f15: $00
	ld bc, $7e65                                     ; $5f16: $01 $65 $7e
	nop                                              ; $5f19: $00
	or l                                             ; $5f1a: $b5
	sub c                                            ; $5f1b: $91
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	dec h                                            ; $5f1f: $25
	inc c                                            ; $5f20: $0c
	ret z                                            ; $5f21: $c8

	sub d                                            ; $5f22: $92
	daa                                              ; $5f23: $27
	inc c                                            ; $5f24: $0c
	ld a, [hl]                                       ; $5f25: $7e
	dec b                                            ; $5f26: $05
	nop                                              ; $5f27: $00
	xor c                                            ; $5f28: $a9
	add $24                                          ; $5f29: $c6 $24

jr_037_5f2b:
	inc c                                            ; $5f2b: $0c
	ld a, [hl]                                       ; $5f2c: $7e
	nop                                              ; $5f2d: $00
	ret z                                            ; $5f2e: $c8

	sub c                                            ; $5f2f: $91
	dec h                                            ; $5f30: $25

jr_037_5f31:
	ld b, $92                                        ; $5f31: $06 $92
	ld a, [hl]                                       ; $5f33: $7e
	ld bc, $a900                                     ; $5f34: $01 $00 $a9
	or c                                             ; $5f37: $b1
	sub c                                            ; $5f38: $91
	rst $38                                          ; $5f39: $ff
	rlca                                             ; $5f3a: $07
	ld [hl+], a                                      ; $5f3b: $22
	jr jr_037_5eef                                   ; $5f3c: $18 $b1

	ld sp, $0000                                     ; $5f3e: $31 $00 $00
	ld [hl+], a                                      ; $5f41: $22
	inc c                                            ; $5f42: $0c
	ld a, [hl]                                       ; $5f43: $7e
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	ld b, $ca                                        ; $5f46: $06 $ca
	jr nz, jr_037_5f56                               ; $5f48: $20 $0c

	or l                                             ; $5f4a: $b5
	and c                                            ; $5f4b: $a1
	ld bc, $0000                                     ; $5f4c: $01 $00 $00

jr_037_5f4f:
	ld [hl+], a                                      ; $5f4f: $22
	dec bc                                           ; $5f50: $0b
	nop                                              ; $5f51: $00
	ld bc, $25c8                                     ; $5f52: $01 $c8 $25
	inc c                                            ; $5f55: $0c

jr_037_5f56:
	ret                                              ; $5f56: $c9


	ld a, [hl]                                       ; $5f57: $7e
	dec b                                            ; $5f58: $05
	nop                                              ; $5f59: $00
	xor c                                            ; $5f5a: $a9
	inc h                                            ; $5f5b: $24
	inc c                                            ; $5f5c: $0c
	ret                                              ; $5f5d: $c9


	ld a, [hl]                                       ; $5f5e: $7e
	nop                                              ; $5f5f: $00
	jr nz, @+$08                                     ; $5f60: $20 $06

	sub d                                            ; $5f62: $92
	sub [hl]                                         ; $5f63: $96
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	ld a, [hl]                                       ; $5f66: $7e
	ld bc, $a900                                     ; $5f67: $01 $00 $a9
	ret                                              ; $5f6a: $c9


	dec e                                            ; $5f6b: $1d
	inc c                                            ; $5f6c: $0c
	or c                                             ; $5f6d: $b1
	ld sp, $0000                                     ; $5f6e: $31 $00 $00
	dec e                                            ; $5f71: $1d
	inc c                                            ; $5f72: $0c
	jp nz, $0c1d                                     ; $5f73: $c2 $1d $0c

	ld a, [hl]                                       ; $5f76: $7e
	nop                                              ; $5f77: $00

jr_037_5f78:
	nop                                              ; $5f78: $00
	ld [de], a                                       ; $5f79: $12
	sub c                                            ; $5f7a: $91
	ld h, l                                          ; $5f7b: $65
	ld a, [hl]                                       ; $5f7c: $7e
	nop                                              ; $5f7d: $00
	or c                                             ; $5f7e: $b1
	add c                                            ; $5f7f: $81
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	dec h                                            ; $5f82: $25
	inc c                                            ; $5f83: $0c
	sub c                                            ; $5f84: $91
	daa                                              ; $5f85: $27
	inc c                                            ; $5f86: $0c
	ld a, [hl]                                       ; $5f87: $7e
	dec b                                            ; $5f88: $05
	nop                                              ; $5f89: $00
	xor c                                            ; $5f8a: $a9
	sub b                                            ; $5f8b: $90
	inc h                                            ; $5f8c: $24
	inc c                                            ; $5f8d: $0c
	sub c                                            ; $5f8e: $91
	ld a, [hl]                                       ; $5f8f: $7e
	nop                                              ; $5f90: $00
	dec h                                            ; $5f91: $25
	ld b, $90                                        ; $5f92: $06 $90
	ld a, [hl]                                       ; $5f94: $7e
	ld bc, $a900                                     ; $5f95: $01 $00 $a9
	sub [hl]                                         ; $5f98: $96
	rst $38                                          ; $5f99: $ff
	rlca                                             ; $5f9a: $07
	ld [hl+], a                                      ; $5f9b: $22
	jr jr_037_5f4f                                   ; $5f9c: $18 $b1

	ld sp, $0000                                     ; $5f9e: $31 $00 $00
	ld [hl+], a                                      ; $5fa1: $22
	inc c                                            ; $5fa2: $0c
	ld a, [hl]                                       ; $5fa3: $7e
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	ld b, $ca                                        ; $5fa6: $06 $ca
	jr nz, jr_037_5fb6                               ; $5fa8: $20 $0c

	or l                                             ; $5faa: $b5
	sub c                                            ; $5fab: $91
	ld [bc], a                                       ; $5fac: $02
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	ld [hl+], a                                      ; $5faf: $22
	dec bc                                           ; $5fb0: $0b
	nop                                              ; $5fb1: $00
	ld bc, $2291                                     ; $5fb2: $01 $91 $22
	inc c                                            ; $5fb5: $0c

jr_037_5fb6:
	sub b                                            ; $5fb6: $90
	inc h                                            ; $5fb7: $24
	inc c                                            ; $5fb8: $0c
	sub c                                            ; $5fb9: $91

jr_037_5fba:
	jr nz, @+$08                                     ; $5fba: $20 $06

	sub b                                            ; $5fbc: $90
	sub [hl]                                         ; $5fbd: $96
	rst $38                                          ; $5fbe: $ff
	rlca                                             ; $5fbf: $07
	ld a, [hl]                                       ; $5fc0: $7e
	ld bc, $a900                                     ; $5fc1: $01 $00 $a9
	ld [hl+], a                                      ; $5fc4: $22
	jr jr_037_5f78                                   ; $5fc5: $18 $b1

	ld sp, $0000                                     ; $5fc7: $31 $00 $00
	ld [hl+], a                                      ; $5fca: $22
	inc c                                            ; $5fcb: $0c
	ld a, [hl]                                       ; $5fcc: $7e
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	ld b, $90                                        ; $5fcf: $06 $90
	jp z, $0522                                      ; $5fd1: $ca $22 $05

	nop                                              ; $5fd4: $00
	ld bc, $2292                                     ; $5fd5: $01 $92 $22
	dec b                                            ; $5fd8: $05
	nop                                              ; $5fd9: $00
	ld bc, $7e65                                     ; $5fda: $01 $65 $7e
	nop                                              ; $5fdd: $00
	or l                                             ; $5fde: $b5
	sub c                                            ; $5fdf: $91
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	dec h                                            ; $5fe3: $25
	dec bc                                           ; $5fe4: $0b
	nop                                              ; $5fe5: $00
	ld bc, $92c8                                     ; $5fe6: $01 $c8 $92
	daa                                              ; $5fe9: $27
	dec bc                                           ; $5fea: $0b

jr_037_5feb:
	nop                                              ; $5feb: $00
	ld bc, $7ec6                                     ; $5fec: $01 $c6 $7e
	dec b                                            ; $5fef: $05
	nop                                              ; $5ff0: $00
	xor c                                            ; $5ff1: $a9
	inc h                                            ; $5ff2: $24
	dec bc                                           ; $5ff3: $0b
	nop                                              ; $5ff4: $00
	ld bc, $007e                                     ; $5ff5: $01 $7e $00
	sub c                                            ; $5ff8: $91
	ret z                                            ; $5ff9: $c8

	dec h                                            ; $5ffa: $25
	dec b                                            ; $5ffb: $05
	nop                                              ; $5ffc: $00
	ld bc, $7e92                                     ; $5ffd: $01 $92 $7e
	ld bc, $a900                                     ; $6000: $01 $00 $a9
	sub [hl]                                         ; $6003: $96
	rst $38                                          ; $6004: $ff
	rlca                                             ; $6005: $07
	ld [hl+], a                                      ; $6006: $22
	jr jr_037_5fba                                   ; $6007: $18 $b1

	ld sp, $0000                                     ; $6009: $31 $00 $00
	ld [hl+], a                                      ; $600c: $22
	inc c                                            ; $600d: $0c
	ld a, [hl]                                       ; $600e: $7e
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	ld b, $ca                                        ; $6011: $06 $ca
	jr nz, jr_037_6021                               ; $6013: $20 $0c

	or l                                             ; $6015: $b5
	and c                                            ; $6016: $a1
	ld bc, $0000                                     ; $6017: $01 $00 $00
	ld [hl+], a                                      ; $601a: $22
	dec bc                                           ; $601b: $0b
	nop                                              ; $601c: $00
	ld bc, $25c8                                     ; $601d: $01 $c8 $25
	dec bc                                           ; $6020: $0b

jr_037_6021:
	nop                                              ; $6021: $00
	ld bc, $24ca                                     ; $6022: $01 $ca $24
	dec bc                                           ; $6025: $0b
	nop                                              ; $6026: $00
	ld bc, $007e                                     ; $6027: $01 $7e $00
	daa                                              ; $602a: $27
	dec b                                            ; $602b: $05
	nop                                              ; $602c: $00
	ld bc, $91b5                                     ; $602d: $01 $b5 $91
	nop                                              ; $6030: $00
	rst $38                                          ; $6031: $ff
	rlca                                             ; $6032: $07
	ld a, [hl]                                       ; $6033: $7e
	ld bc, $a900                                     ; $6034: $01 $00 $a9
	add hl, hl                                       ; $6037: $29
	jr jr_037_5feb                                   ; $6038: $18 $b1

	ld sp, $0000                                     ; $603a: $31 $00 $00
	add hl, hl                                       ; $603d: $29
	inc c                                            ; $603e: $0c
	ld a, [hl]                                       ; $603f: $7e
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	ld b, $ca                                        ; $6042: $06 $ca
	sub d                                            ; $6044: $92
	dec h                                            ; $6045: $25
	dec b                                            ; $6046: $05
	nop                                              ; $6047: $00
	ld bc, $2791                                     ; $6048: $01 $91 $27
	dec b                                            ; $604b: $05
	nop                                              ; $604c: $00
	ld bc, $007e                                     ; $604d: $01 $7e $00
	ld h, l                                          ; $6050: $65
	sub c                                            ; $6051: $91
	jp z, $057e                                      ; $6052: $ca $7e $05

	nop                                              ; $6055: $00
	xor c                                            ; $6056: $a9
	add hl, hl                                       ; $6057: $29
	inc c                                            ; $6058: $0c
	sub [hl]                                         ; $6059: $96
	rst $38                                          ; $605a: $ff
	rlca                                             ; $605b: $07
	ld a, [hl]                                       ; $605c: $7e
	nop                                              ; $605d: $00
	daa                                              ; $605e: $27
	inc c                                            ; $605f: $0c
	dec h                                            ; $6060: $25
	inc c                                            ; $6061: $0c
	ld [hl+], a                                      ; $6062: $22
	dec b                                            ; $6063: $05
	nop                                              ; $6064: $00
	ld bc, $9692                                     ; $6065: $01 $92 $96
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	ld a, [hl]                                       ; $606a: $7e
	ld bc, $a911                                     ; $606b: $01 $11 $a9
	ld [hl+], a                                      ; $606e: $22
	ld e, $7e                                        ; $606f: $1e $7e
	ld bc, $a900                                     ; $6071: $01 $00 $a9
	jp $0c22                                         ; $6074: $c3 $22 $0c


	ld a, [hl]                                       ; $6077: $7e
	nop                                              ; $6078: $00
	rst JumpTable                                          ; $6079: $c7
	dec h                                            ; $607a: $25
	ld b, $c9                                        ; $607b: $06 $c9
	sub b                                            ; $607d: $90
	daa                                              ; $607e: $27
	ld b, $91                                        ; $607f: $06 $91
	jp z, $057e                                      ; $6081: $ca $7e $05

	nop                                              ; $6084: $00
	xor c                                            ; $6085: $a9
	add hl, hl                                       ; $6086: $29
	inc c                                            ; $6087: $0c
	sub [hl]                                         ; $6088: $96
	rst $38                                          ; $6089: $ff
	rlca                                             ; $608a: $07
	ld a, [hl]                                       ; $608b: $7e
	nop                                              ; $608c: $00
	sub b                                            ; $608d: $90
	daa                                              ; $608e: $27
	inc c                                            ; $608f: $0c
	sub c                                            ; $6090: $91
	dec h                                            ; $6091: $25
	inc c                                            ; $6092: $0c
	sub c                                            ; $6093: $91
	ld [hl+], a                                      ; $6094: $22
	dec b                                            ; $6095: $05
	nop                                              ; $6096: $00
	ld bc, $9690                                     ; $6097: $01 $90 $96
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	ld a, [hl]                                       ; $609c: $7e
	ld bc, $a911                                     ; $609d: $01 $11 $a9
	sla d                                            ; $60a0: $cb $22
	ld e, $7e                                        ; $60a2: $1e $7e
	ld bc, $a900                                     ; $60a4: $01 $00 $a9
	sub c                                            ; $60a7: $91
	jp $0c22                                         ; $60a8: $c3 $22 $0c


	sub d                                            ; $60ab: $92
	ld a, [hl]                                       ; $60ac: $7e
	nop                                              ; $60ad: $00
	ret z                                            ; $60ae: $c8

	dec h                                            ; $60af: $25
	dec b                                            ; $60b0: $05
	nop                                              ; $60b1: $00
	ld bc, $27ca                                     ; $60b2: $01 $ca $27
	dec b                                            ; $60b5: $05
	nop                                              ; $60b6: $00
	ld bc, $9065                                     ; $60b7: $01 $65 $90
	jp z, $057e                                      ; $60ba: $ca $7e $05

	nop                                              ; $60bd: $00
	and b                                            ; $60be: $a0
	sub [hl]                                         ; $60bf: $96
	rst $38                                          ; $60c0: $ff
	rlca                                             ; $60c1: $07
	add hl, hl                                       ; $60c2: $29
	inc c                                            ; $60c3: $0c
	sub c                                            ; $60c4: $91
	ld a, [hl]                                       ; $60c5: $7e
	nop                                              ; $60c6: $00
	daa                                              ; $60c7: $27
	inc c                                            ; $60c8: $0c
	ret z                                            ; $60c9: $c8

	dec h                                            ; $60ca: $25
	inc c                                            ; $60cb: $0c
	sub b                                            ; $60cc: $90
	jp z, $0522                                      ; $60cd: $ca $22 $05

	nop                                              ; $60d0: $00
	ld bc, $ff96                                     ; $60d1: $01 $96 $ff
	rlca                                             ; $60d4: $07
	ld a, [hl]                                       ; $60d5: $7e
	ld bc, $a900                                     ; $60d6: $01 $00 $a9
	jr nz, @+$14                                     ; $60d9: $20 $12

	sub [hl]                                         ; $60db: $96
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	ld a, [hl]                                       ; $60de: $7e
	nop                                              ; $60df: $00
	sub c                                            ; $60e0: $91
	ld [hl+], a                                      ; $60e1: $22
	inc c                                            ; $60e2: $0c
	sub d                                            ; $60e3: $92
	add $25                                          ; $60e4: $c6 $25
	inc c                                            ; $60e6: $0c
	sub b                                            ; $60e7: $90
	ret                                              ; $60e8: $c9


	daa                                              ; $60e9: $27
	dec bc                                           ; $60ea: $0b
	nop                                              ; $60eb: $00
	ld bc, $1227                                     ; $60ec: $01 $27 $12
	sub c                                            ; $60ef: $91
	ld a, l                                          ; $60f0: $7d
	ld bc, $127e                                     ; $60f1: $01 $7e $12
	inc c                                            ; $60f4: $0c
	and b                                            ; $60f5: $a0
	add hl, hl                                       ; $60f6: $29
	ld [de], a                                       ; $60f7: $12
	ld a, l                                          ; $60f8: $7d
	nop                                              ; $60f9: $00
	ld a, [hl]                                       ; $60fa: $7e
	nop                                              ; $60fb: $00
	dec h                                            ; $60fc: $25
	dec bc                                           ; $60fd: $0b
	nop                                              ; $60fe: $00
	ld bc, $71b1                                     ; $60ff: $01 $b1 $71
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	ld a, [hl]                                       ; $6104: $7e
	ld bc, $a90c                                     ; $6105: $01 $0c $a9
	dec h                                            ; $6108: $25
	jr @+$80                                         ; $6109: $18 $7e

	ld bc, $a000                                     ; $610b: $01 $00 $a0
	or c                                             ; $610e: $b1
	ld sp, $0000                                     ; $610f: $31 $00 $00
	dec h                                            ; $6112: $25
	dec bc                                           ; $6113: $0b
	nop                                              ; $6114: $00
	ld bc, $007e                                     ; $6115: $01 $7e $00
	jp z, $2290                                      ; $6118: $ca $90 $22

	dec b                                            ; $611b: $05
	nop                                              ; $611c: $00
	ld bc, $2491                                     ; $611d: $01 $91 $24
	dec b                                            ; $6120: $05
	nop                                              ; $6121: $00
	ld bc, $b565                                     ; $6122: $01 $65 $b5
	and c                                            ; $6125: $a1
	ld bc, $07ff                                     ; $6126: $01 $ff $07
	dec h                                            ; $6129: $25
	inc c                                            ; $612a: $0c
	sub d                                            ; $612b: $92
	ld [hl+], a                                      ; $612c: $22
	inc c                                            ; $612d: $0c
	sub c                                            ; $612e: $91
	dec h                                            ; $612f: $25
	inc c                                            ; $6130: $0c
	sub b                                            ; $6131: $90
	daa                                              ; $6132: $27
	ld b, $7e                                        ; $6133: $06 $7e
	dec b                                            ; $6135: $05
	nop                                              ; $6136: $00
	and b                                            ; $6137: $a0
	add hl, hl                                       ; $6138: $29
	inc c                                            ; $6139: $0c
	or c                                             ; $613a: $b1
	ld sp, $0000                                     ; $613b: $31 $00 $00
	ld a, [hl]                                       ; $613e: $7e
	dec b                                            ; $613f: $05
	nop                                              ; $6140: $00
	xor c                                            ; $6141: $a9
	add hl, hl                                       ; $6142: $29
	ld b, $91                                        ; $6143: $06 $91
	jp z, $017e                                      ; $6145: $ca $7e $01

	inc c                                            ; $6148: $0c
	xor c                                            ; $6149: $a9
	sub [hl]                                         ; $614a: $96
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	ld [hl+], a                                      ; $614d: $22
	ld [de], a                                       ; $614e: $12
	jp $0622                                         ; $614f: $c3 $22 $06


	jp z, $2292                                      ; $6152: $ca $92 $22

	dec b                                            ; $6155: $05
	nop                                              ; $6156: $00
	ld bc, $2491                                     ; $6157: $01 $91 $24
	dec b                                            ; $615a: $05
	nop                                              ; $615b: $00
	ld bc, $a1b5                                     ; $615c: $01 $b5 $a1
	ld bc, $07ff                                     ; $615f: $01 $ff $07
	dec h                                            ; $6162: $25
	inc c                                            ; $6163: $0c
	sub b                                            ; $6164: $90
	ld [hl+], a                                      ; $6165: $22
	inc c                                            ; $6166: $0c
	dec h                                            ; $6167: $25
	inc c                                            ; $6168: $0c
	sub b                                            ; $6169: $90
	daa                                              ; $616a: $27
	ld b, $7e                                        ; $616b: $06 $7e
	dec b                                            ; $616d: $05
	nop                                              ; $616e: $00
	and b                                            ; $616f: $a0
	add hl, hl                                       ; $6170: $29
	inc c                                            ; $6171: $0c
	or c                                             ; $6172: $b1
	ld sp, $0000                                     ; $6173: $31 $00 $00
	ld a, [hl]                                       ; $6176: $7e
	dec b                                            ; $6177: $05
	nop                                              ; $6178: $00
	xor c                                            ; $6179: $a9
	add hl, hl                                       ; $617a: $29
	ld b, $91                                        ; $617b: $06 $91
	jp z, $017e                                      ; $617d: $ca $7e $01

	inc c                                            ; $6180: $0c
	xor c                                            ; $6181: $a9
	sub [hl]                                         ; $6182: $96
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	inc l                                            ; $6185: $2c
	ld [de], a                                       ; $6186: $12
	jp $062c                                         ; $6187: $c3 $2c $06


	jp z, $2991                                      ; $618a: $ca $91 $29

	dec b                                            ; $618d: $05
	nop                                              ; $618e: $00
	ld bc, $2c92                                     ; $618f: $01 $92 $2c
	dec b                                            ; $6192: $05
	nop                                              ; $6193: $00
	ld bc, $9165                                     ; $6194: $01 $65 $91
	jp z, $1f7e                                      ; $6197: $ca $7e $1f

	ld b, $a0                                        ; $619a: $06 $a0
	sub [hl]                                         ; $619c: $96
	rst $38                                          ; $619d: $ff
	rlca                                             ; $619e: $07
	ld l, $0b                                        ; $619f: $2e $0b
	nop                                              ; $61a1: $00
	ld bc, $007e                                     ; $61a2: $01 $7e $00
	or l                                             ; $61a5: $b5
	pop de                                           ; $61a6: $d1
	nop                                              ; $61a7: $00
	rst $38                                          ; $61a8: $ff
	inc b                                            ; $61a9: $04
	add hl, hl                                       ; $61aa: $29
	dec bc                                           ; $61ab: $0b
	nop                                              ; $61ac: $00
	ld bc, $0096                                     ; $61ad: $01 $96 $00
	nop                                              ; $61b0: $00
	ld a, [hl]                                       ; $61b1: $7e
	dec b                                            ; $61b2: $05
	nop                                              ; $61b3: $00
	xor c                                            ; $61b4: $a9
	jp z, $0c29                                      ; $61b5: $ca $29 $0c

	ld a, [hl]                                       ; $61b8: $7e
	nop                                              ; $61b9: $00
	daa                                              ; $61ba: $27
	dec b                                            ; $61bb: $05
	nop                                              ; $61bc: $00
	ld bc, $91b5                                     ; $61bd: $01 $b5 $91
	ld bc, $0000                                     ; $61c0: $01 $00 $00
	dec h                                            ; $61c3: $25
	inc c                                            ; $61c4: $0c
	ld a, [hl]                                       ; $61c5: $7e
	ld bc, $a900                                     ; $61c6: $01 $00 $a9
	jp $0625                                         ; $61c9: $c3 $25 $06


	sub b                                            ; $61cc: $90
	jp z, $057e                                      ; $61cd: $ca $7e $05

	nop                                              ; $61d0: $00
	xor c                                            ; $61d1: $a9

jr_037_61d2:
	ld [hl+], a                                      ; $61d2: $22
	inc c                                            ; $61d3: $0c
	ld a, [hl]                                       ; $61d4: $7e
	nop                                              ; $61d5: $00
	dec h                                            ; $61d6: $25
	ld b, $c3                                        ; $61d7: $06 $c3
	dec h                                            ; $61d9: $25
	dec b                                            ; $61da: $05
	nop                                              ; $61db: $00
	ld bc, $ca91                                     ; $61dc: $01 $91 $ca
	ld a, [hl]                                       ; $61df: $7e
	nop                                              ; $61e0: $00
	daa                                              ; $61e1: $27
	dec bc                                           ; $61e2: $0b
	nop                                              ; $61e3: $00
	ld bc, $057e                                     ; $61e4: $01 $7e $05
	nop                                              ; $61e7: $00
	xor c                                            ; $61e8: $a9
	sub [hl]                                         ; $61e9: $96
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	add hl, hl                                       ; $61ec: $29
	ld de, $0100                                     ; $61ed: $11 $00 $01
	sub d                                            ; $61f0: $92
	ret z                                            ; $61f1: $c8

	add hl, hl                                       ; $61f2: $29
	ld de, $0100                                     ; $61f3: $11 $00 $01
	or l                                             ; $61f6: $b5
	pop bc                                           ; $61f7: $c1
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	ld a, [hl]                                       ; $61fb: $7e
	nop                                              ; $61fc: $00
	daa                                              ; $61fd: $27
	dec bc                                           ; $61fe: $0b
	nop                                              ; $61ff: $00
	ld bc, $7ecc                                     ; $6200: $01 $cc $7e
	ld bc, $a918                                     ; $6203: $01 $18 $a9
	daa                                              ; $6206: $27
	jr nc, jr_037_6287                               ; $6207: $30 $7e

	ld bc, $a900                                     ; $6209: $01 $00 $a9
	rst JumpTable                                          ; $620c: $c7
	daa                                              ; $620d: $27
	jr jr_037_61d2                                   ; $620e: $18 $c2

	daa                                              ; $6210: $27
	jr jr_037_6291                                   ; $6211: $18 $7e

	nop                                              ; $6213: $00
	or l                                             ; $6214: $b5
	ld [hl], c                                       ; $6215: $71
	ld [bc], a                                       ; $6216: $02
	rst $38                                          ; $6217: $ff
	rlca                                             ; $6218: $07
	dec h                                            ; $6219: $25
	inc c                                            ; $621a: $0c
	ret                                              ; $621b: $c9


	sub c                                            ; $621c: $91
	daa                                              ; $621d: $27
	dec bc                                           ; $621e: $0b
	nop                                              ; $621f: $00
	ld bc, $0b29                                     ; $6220: $01 $29 $0b
	nop                                              ; $6223: $00
	ld bc, $2a92                                     ; $6224: $01 $92 $2a
	dec b                                            ; $6227: $05
	nop                                              ; $6228: $00
	ld bc, $7e90                                     ; $6229: $01 $90 $7e
	dec b                                            ; $622c: $05
	nop                                              ; $622d: $00
	xor c                                            ; $622e: $a9
	or c                                             ; $622f: $b1
	or c                                             ; $6230: $b1
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	cp l                                             ; $6233: $bd
	ld [bc], a                                       ; $6234: $02
	inc l                                            ; $6235: $2c
	ld b, $18                                        ; $6236: $06 $18
	ld h, l                                          ; $6238: $65
	sub b                                            ; $6239: $90
	ret                                              ; $623a: $c9


	ld a, [hl]                                       ; $623b: $7e
	ld bc, $a900                                     ; $623c: $01 $00 $a9
	inc l                                            ; $623f: $2c
	jr jr_037_62c0                                   ; $6240: $18 $7e

	ld bc, $a900                                     ; $6242: $01 $00 $a9
	jp $0c2c                                         ; $6245: $c3 $2c $0c


	ld a, [hl]                                       ; $6248: $7e
	nop                                              ; $6249: $00
	or l                                             ; $624a: $b5
	ld [hl], c                                       ; $624b: $71
	ld [bc], a                                       ; $624c: $02
	rst $38                                          ; $624d: $ff
	rlca                                             ; $624e: $07
	dec h                                            ; $624f: $25
	dec bc                                           ; $6250: $0b
	nop                                              ; $6251: $00
	ld bc, $91ca                                     ; $6252: $01 $ca $91
	dec h                                            ; $6255: $25
	inc c                                            ; $6256: $0c
	sub b                                            ; $6257: $90
	ld [hl+], a                                      ; $6258: $22
	ld b, $96                                        ; $6259: $06 $96
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	ld a, [hl]                                       ; $625d: $7e
	ld bc, $a918                                     ; $625e: $01 $18 $a9
	or c                                             ; $6261: $b1
	and c                                            ; $6262: $a1
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	dec h                                            ; $6265: $25
	ld e, $7e                                        ; $6266: $1e $7e
	ld bc, $a900                                     ; $6268: $01 $00 $a9
	or c                                             ; $626b: $b1
	ld b, c                                          ; $626c: $41
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	dec h                                            ; $626f: $25
	inc c                                            ; $6270: $0c
	or l                                             ; $6271: $b5
	ld [hl], c                                       ; $6272: $71
	ld [bc], a                                       ; $6273: $02
	rst $38                                          ; $6274: $ff
	ld b, $7e                                        ; $6275: $06 $7e
	nop                                              ; $6277: $00
	dec h                                            ; $6278: $25
	dec bc                                           ; $6279: $0b
	nop                                              ; $627a: $00
	ld bc, $91c9                                     ; $627b: $01 $c9 $91
	ld a, [hl]                                       ; $627e: $7e
	dec b                                            ; $627f: $05
	nop                                              ; $6280: $00
	xor c                                            ; $6281: $a9
	dec h                                            ; $6282: $25
	inc c                                            ; $6283: $0c
	sub d                                            ; $6284: $92
	ld a, [hl]                                       ; $6285: $7e
	nop                                              ; $6286: $00

jr_037_6287:
	daa                                              ; $6287: $27
	inc c                                            ; $6288: $0c
	sub c                                            ; $6289: $91
	add hl, hl                                       ; $628a: $29
	inc c                                            ; $628b: $0c
	sub b                                            ; $628c: $90
	ld a, [hl+]                                      ; $628d: $2a
	ld b, $92                                        ; $628e: $06 $92
	sub [hl]                                         ; $6290: $96

jr_037_6291:
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	cp l                                             ; $6293: $bd
	ld [bc], a                                       ; $6294: $02
	inc l                                            ; $6295: $2c
	ld b, $18                                        ; $6296: $06 $18
	ld a, [hl]                                       ; $6298: $7e
	ld bc, $a900                                     ; $6299: $01 $00 $a9
	inc l                                            ; $629c: $2c
	jr jr_037_631d                                   ; $629d: $18 $7e

	ld bc, $a900                                     ; $629f: $01 $00 $a9
	jp $0c2c                                         ; $62a2: $c3 $2c $0c


	ld a, [hl]                                       ; $62a5: $7e
	nop                                              ; $62a6: $00
	or l                                             ; $62a7: $b5
	add c                                            ; $62a8: $81
	ld [bc], a                                       ; $62a9: $02
	rst $38                                          ; $62aa: $ff
	rlca                                             ; $62ab: $07
	ld a, [hl]                                       ; $62ac: $7e
	dec b                                            ; $62ad: $05
	nop                                              ; $62ae: $00
	xor c                                            ; $62af: $a9
	inc l                                            ; $62b0: $2c
	dec bc                                           ; $62b1: $0b
	nop                                              ; $62b2: $00
	ld bc, $91c9                                     ; $62b3: $01 $c9 $91
	ld a, [hl]                                       ; $62b6: $7e
	nop                                              ; $62b7: $00
	dec h                                            ; $62b8: $25
	inc c                                            ; $62b9: $0c
	ld [hl+], a                                      ; $62ba: $22
	ld b, $96                                        ; $62bb: $06 $96
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	ld a, [hl]                                       ; $62bf: $7e

jr_037_62c0:
	ld bc, $a918                                     ; $62c0: $01 $18 $a9
	sub [hl]                                         ; $62c3: $96
	rst $38                                          ; $62c4: $ff
	rlca                                             ; $62c5: $07
	dec h                                            ; $62c6: $25
	ld e, $7e                                        ; $62c7: $1e $7e
	ld bc, $a900                                     ; $62c9: $01 $00 $a9
	call nz, $0c25                                   ; $62cc: $c4 $25 $0c
	ld a, [hl]                                       ; $62cf: $7e
	nop                                              ; $62d0: $00
	ret                                              ; $62d1: $c9


	dec h                                            ; $62d2: $25
	dec bc                                           ; $62d3: $0b
	nop                                              ; $62d4: $00
	ld bc, $057e                                     ; $62d5: $01 $7e $05
	nop                                              ; $62d8: $00
	and b                                            ; $62d9: $a0
	sub d                                            ; $62da: $92
	add hl, hl                                       ; $62db: $29
	inc c                                            ; $62dc: $0c
	ld a, [hl]                                       ; $62dd: $7e
	nop                                              ; $62de: $00
	sub c                                            ; $62df: $91
	daa                                              ; $62e0: $27
	dec bc                                           ; $62e1: $0b
	nop                                              ; $62e2: $00
	ld bc, $2590                                     ; $62e3: $01 $90 $25
	ld b, $91                                        ; $62e6: $06 $91
	daa                                              ; $62e8: $27
	inc c                                            ; $62e9: $0c
	or l                                             ; $62ea: $b5
	ld h, c                                          ; $62eb: $61
	ld [bc], a                                       ; $62ec: $02
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	cp l                                             ; $62ef: $bd
	ld [bc], a                                       ; $62f0: $02
	dec h                                            ; $62f1: $25
	ld b, $18                                        ; $62f2: $06 $18
	ld h, l                                          ; $62f4: $65
	sub d                                            ; $62f5: $92
	ld a, [hl]                                       ; $62f6: $7e
	ld bc, $a900                                     ; $62f7: $01 $00 $a9
	call nz, $0b25                                   ; $62fa: $c4 $25 $0b
	nop                                              ; $62fd: $00
	ld bc, $7e90                                     ; $62fe: $01 $90 $7e
	nop                                              ; $6301: $00
	or c                                             ; $6302: $b1
	or c                                             ; $6303: $b1
	rst $38                                          ; $6304: $ff
	rlca                                             ; $6305: $07
	dec h                                            ; $6306: $25
	dec bc                                           ; $6307: $0b
	nop                                              ; $6308: $00
	ld bc, $0c27                                     ; $6309: $01 $27 $0c
	sub c                                            ; $630c: $91
	ret                                              ; $630d: $c9


	dec h                                            ; $630e: $25
	inc c                                            ; $630f: $0c
	call $2790                                       ; $6310: $cd $90 $27
	dec b                                            ; $6313: $05
	nop                                              ; $6314: $00
	ld bc, $7e91                                     ; $6315: $01 $91 $7e
	dec b                                            ; $6318: $05
	nop                                              ; $6319: $00
	xor c                                            ; $631a: $a9
	sra c                                            ; $631b: $cb $29

jr_037_631d:
	inc c                                            ; $631d: $0c
	sub b                                            ; $631e: $90
	dec h                                            ; $631f: $25
	ld e, $7e                                        ; $6320: $1e $7e
	ld bc, $a000                                     ; $6322: $01 $00 $a0

jr_037_6325:
	jp $0c25                                         ; $6325: $c3 $25 $0c


	sub b                                            ; $6328: $90
	ld a, [hl]                                       ; $6329: $7e
	nop                                              ; $632a: $00
	or c                                             ; $632b: $b1
	and c                                            ; $632c: $a1
	rst $38                                          ; $632d: $ff
	rlca                                             ; $632e: $07
	dec h                                            ; $632f: $25
	inc c                                            ; $6330: $0c
	daa                                              ; $6331: $27
	inc c                                            ; $6332: $0c
	sub c                                            ; $6333: $91
	dec h                                            ; $6334: $25
	inc c                                            ; $6335: $0c
	sub b                                            ; $6336: $90
	daa                                              ; $6337: $27
	ld b, $91                                        ; $6338: $06 $91
	ld a, [hl]                                       ; $633a: $7e
	dec b                                            ; $633b: $05
	nop                                              ; $633c: $00
	xor c                                            ; $633d: $a9

jr_037_633e:
	add hl, hl                                       ; $633e: $29
	inc c                                            ; $633f: $0c
	ld a, [hl]                                       ; $6340: $7e
	nop                                              ; $6341: $00
	sub b                                            ; $6342: $90
	ld a, [hl]                                       ; $6343: $7e
	ld bc, $a900                                     ; $6344: $01 $00 $a9
	sub [hl]                                         ; $6347: $96
	rst $38                                          ; $6348: $ff
	rlca                                             ; $6349: $07
	cp l                                             ; $634a: $bd
	ld [bc], a                                       ; $634b: $02
	dec h                                            ; $634c: $25
	ld b, $18                                        ; $634d: $06 $18
	ld a, [hl]                                       ; $634f: $7e
	ld bc, $a000                                     ; $6350: $01 $00 $a0
	jp $0c25                                         ; $6353: $c3 $25 $0c


	ld a, [hl]                                       ; $6356: $7e
	nop                                              ; $6357: $00
	or l                                             ; $6358: $b5
	sub c                                            ; $6359: $91
	ld bc, $06ff                                     ; $635a: $01 $ff $06
	dec h                                            ; $635d: $25
	inc c                                            ; $635e: $0c
	ld a, [hl]                                       ; $635f: $7e
	dec b                                            ; $6360: $05
	nop                                              ; $6361: $00
	xor c                                            ; $6362: $a9
	daa                                              ; $6363: $27
	inc c                                            ; $6364: $0c
	ld a, [hl]                                       ; $6365: $7e
	nop                                              ; $6366: $00
	sub b                                            ; $6367: $90
	dec h                                            ; $6368: $25
	inc c                                            ; $6369: $0c
	sub c                                            ; $636a: $91
	inc h                                            ; $636b: $24
	inc c                                            ; $636c: $0c
	sub b                                            ; $636d: $90
	jr nz, @+$08                                     ; $636e: $20 $06

	sub c                                            ; $6370: $91
	ld [hl+], a                                      ; $6371: $22
	jr jr_037_6325                                   ; $6372: $18 $b1

	ld sp, $0000                                     ; $6374: $31 $00 $00
	ld a, [hl]                                       ; $6377: $7e
	ld bc, $a900                                     ; $6378: $01 $00 $a9
	ld [hl+], a                                      ; $637b: $22
	ld b, $7e                                        ; $637c: $06 $7e
	ld bc, $a90c                                     ; $637e: $01 $0c $a9
	jp z, $2590                                      ; $6381: $ca $90 $25

	rla                                              ; $6384: $17
	nop                                              ; $6385: $00
	ld bc, $1725                                     ; $6386: $01 $25 $17
	nop                                              ; $6389: $00
	ld bc, $2791                                     ; $638a: $01 $91 $27
	jr @+$67                                         ; $638d: $18 $65

	sub b                                            ; $638f: $90
	call $017e                                       ; $6390: $cd $7e $01
	jr jr_037_633e                                   ; $6393: $18 $a9

	inc l                                            ; $6395: $2c
	jr nc, jr_037_6416                               ; $6396: $30 $7e

	ld bc, $a900                                     ; $6398: $01 $00 $a9
	jp $0c2c                                         ; $639b: $c3 $2c $0c


	ld a, [hl]                                       ; $639e: $7e
	nop                                              ; $639f: $00
	or l                                             ; $63a0: $b5
	ld [hl], c                                       ; $63a1: $71
	ld [bc], a                                       ; $63a2: $02
	rst $38                                          ; $63a3: $ff
	rlca                                             ; $63a4: $07
	dec h                                            ; $63a5: $25
	dec bc                                           ; $63a6: $0b
	nop                                              ; $63a7: $00
	ld bc, $91ca                                     ; $63a8: $01 $ca $91
	dec h                                            ; $63ab: $25
	dec bc                                           ; $63ac: $0b
	nop                                              ; $63ad: $00
	ld bc, $2290                                     ; $63ae: $01 $90 $22
	dec b                                            ; $63b1: $05
	nop                                              ; $63b2: $00
	ld bc, $0096                                     ; $63b3: $01 $96 $00
	nop                                              ; $63b6: $00
	ld a, [hl]                                       ; $63b7: $7e
	ld bc, $a918                                     ; $63b8: $01 $18 $a9
	sub [hl]                                         ; $63bb: $96
	rst $38                                          ; $63bc: $ff
	rlca                                             ; $63bd: $07
	dec h                                            ; $63be: $25
	ld e, $7e                                        ; $63bf: $1e $7e
	ld bc, $a900                                     ; $63c1: $01 $00 $a9
	or c                                             ; $63c4: $b1
	ld b, c                                          ; $63c5: $41
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	dec h                                            ; $63c8: $25
	inc c                                            ; $63c9: $0c
	or l                                             ; $63ca: $b5
	add c                                            ; $63cb: $81
	ld [bc], a                                       ; $63cc: $02
	rst $38                                          ; $63cd: $ff
	ld b, $7e                                        ; $63ce: $06 $7e
	nop                                              ; $63d0: $00
	dec h                                            ; $63d1: $25
	dec bc                                           ; $63d2: $0b
	nop                                              ; $63d3: $00
	ld bc, $91c9                                     ; $63d4: $01 $c9 $91
	ld a, [hl]                                       ; $63d7: $7e
	dec b                                            ; $63d8: $05
	nop                                              ; $63d9: $00
	xor c                                            ; $63da: $a9
	dec h                                            ; $63db: $25
	inc c                                            ; $63dc: $0c
	sub d                                            ; $63dd: $92
	ld a, [hl]                                       ; $63de: $7e
	nop                                              ; $63df: $00
	daa                                              ; $63e0: $27
	inc c                                            ; $63e1: $0c
	sub c                                            ; $63e2: $91
	add hl, hl                                       ; $63e3: $29
	inc c                                            ; $63e4: $0c
	sub b                                            ; $63e5: $90
	ld a, [hl+]                                      ; $63e6: $2a
	ld b, $92                                        ; $63e7: $06 $92
	sub [hl]                                         ; $63e9: $96
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	cp l                                             ; $63ec: $bd
	ld [bc], a                                       ; $63ed: $02
	inc l                                            ; $63ee: $2c
	ld b, $18                                        ; $63ef: $06 $18
	ld a, [hl]                                       ; $63f1: $7e
	ld bc, $a900                                     ; $63f2: $01 $00 $a9
	inc l                                            ; $63f5: $2c
	jr jr_037_6476                                   ; $63f6: $18 $7e

	ld bc, $a900                                     ; $63f8: $01 $00 $a9
	jp $0c2c                                         ; $63fb: $c3 $2c $0c


	ld a, [hl]                                       ; $63fe: $7e
	nop                                              ; $63ff: $00
	or l                                             ; $6400: $b5
	add c                                            ; $6401: $81
	ld [bc], a                                       ; $6402: $02
	rst $38                                          ; $6403: $ff
	rlca                                             ; $6404: $07
	ld a, [hl]                                       ; $6405: $7e
	dec b                                            ; $6406: $05
	nop                                              ; $6407: $00
	xor c                                            ; $6408: $a9
	inc l                                            ; $6409: $2c
	dec bc                                           ; $640a: $0b
	nop                                              ; $640b: $00
	ld bc, $91c9                                     ; $640c: $01 $c9 $91
	ld a, [hl]                                       ; $640f: $7e
	nop                                              ; $6410: $00
	dec h                                            ; $6411: $25
	inc c                                            ; $6412: $0c
	ld [hl+], a                                      ; $6413: $22
	ld b, $96                                        ; $6414: $06 $96

jr_037_6416:
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	ld a, [hl]                                       ; $6418: $7e
	ld bc, $a918                                     ; $6419: $01 $18 $a9
	sub [hl]                                         ; $641c: $96
	rst $38                                          ; $641d: $ff
	rlca                                             ; $641e: $07
	dec h                                            ; $641f: $25
	ld e, $7e                                        ; $6420: $1e $7e
	ld bc, $a900                                     ; $6422: $01 $00 $a9
	call nz, $0c25                                   ; $6425: $c4 $25 $0c
	ld a, [hl]                                       ; $6428: $7e
	nop                                              ; $6429: $00
	ret                                              ; $642a: $c9


	dec h                                            ; $642b: $25
	dec bc                                           ; $642c: $0b
	nop                                              ; $642d: $00
	ld bc, $057e                                     ; $642e: $01 $7e $05
	nop                                              ; $6431: $00
	and b                                            ; $6432: $a0
	sub d                                            ; $6433: $92
	rst JumpTable                                          ; $6434: $c7
	add hl, hl                                       ; $6435: $29
	inc c                                            ; $6436: $0c
	ld a, [hl]                                       ; $6437: $7e
	nop                                              ; $6438: $00
	sub c                                            ; $6439: $91
	ret                                              ; $643a: $c9


	daa                                              ; $643b: $27
	dec bc                                           ; $643c: $0b
	nop                                              ; $643d: $00
	ld bc, $2590                                     ; $643e: $01 $90 $25
	ld b, $b1                                        ; $6441: $06 $b1
	ld sp, $0000                                     ; $6443: $31 $00 $00
	dec h                                            ; $6446: $25
	ld b, $b5                                        ; $6447: $06 $b5
	sub c                                            ; $6449: $91
	ld bc, $07ff                                     ; $644a: $01 $ff $07
	daa                                              ; $644d: $27
	ld b, $c7                                        ; $644e: $06 $c7
	sub d                                            ; $6450: $92
	cp l                                             ; $6451: $bd
	ld [bc], a                                       ; $6452: $02
	dec h                                            ; $6453: $25
	ld b, $18                                        ; $6454: $06 $18
	ld h, l                                          ; $6456: $65
	sub d                                            ; $6457: $92
	ret                                              ; $6458: $c9


	ld a, [hl]                                       ; $6459: $7e
	ld bc, $a900                                     ; $645a: $01 $00 $a9
	call nz, $0b25                                   ; $645d: $c4 $25 $0b
	nop                                              ; $6460: $00
	ld bc, $7e92                                     ; $6461: $01 $92 $7e
	nop                                              ; $6464: $00
	or c                                             ; $6465: $b1
	add c                                            ; $6466: $81
	rst $38                                          ; $6467: $ff
	rlca                                             ; $6468: $07
	dec h                                            ; $6469: $25
	dec bc                                           ; $646a: $0b
	nop                                              ; $646b: $00
	ld bc, $90cb                                     ; $646c: $01 $cb $90
	daa                                              ; $646f: $27
	inc c                                            ; $6470: $0c
	sub d                                            ; $6471: $92
	ret                                              ; $6472: $c9


	dec h                                            ; $6473: $25
	inc c                                            ; $6474: $0c
	daa                                              ; $6475: $27

jr_037_6476:
	ld b, $c3                                        ; $6476: $06 $c3
	daa                                              ; $6478: $27
	ld b, $c8                                        ; $6479: $06 $c8
	ld a, [hl]                                       ; $647b: $7e
	dec b                                            ; $647c: $05
	nop                                              ; $647d: $00
	xor c                                            ; $647e: $a9
	add hl, hl                                       ; $647f: $29
	ld b, $b5                                        ; $6480: $06 $b5
	ld [hl], c                                       ; $6482: $71
	ld [bc], a                                       ; $6483: $02
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	dec h                                            ; $6486: $25
	ld e, $7e                                        ; $6487: $1e $7e
	ld bc, $a000                                     ; $6489: $01 $00 $a0
	jp $0c25                                         ; $648c: $c3 $25 $0c


	sub b                                            ; $648f: $90
	ld a, [hl]                                       ; $6490: $7e
	nop                                              ; $6491: $00
	or l                                             ; $6492: $b5
	and c                                            ; $6493: $a1
	ld bc, $07ff                                     ; $6494: $01 $ff $07
	dec h                                            ; $6497: $25
	inc c                                            ; $6498: $0c
	sub d                                            ; $6499: $92
	daa                                              ; $649a: $27
	inc c                                            ; $649b: $0c
	sub b                                            ; $649c: $90
	dec h                                            ; $649d: $25
	inc c                                            ; $649e: $0c
	sub c                                            ; $649f: $91
	daa                                              ; $64a0: $27
	inc c                                            ; $64a1: $0c
	sub b                                            ; $64a2: $90
	ld a, [hl]                                       ; $64a3: $7e
	dec b                                            ; $64a4: $05
	nop                                              ; $64a5: $00
	xor c                                            ; $64a6: $a9
	sra c                                            ; $64a7: $cb $29
	ld b, $7e                                        ; $64a9: $06 $7e
	nop                                              ; $64ab: $00
	sub c                                            ; $64ac: $91
	ld a, [hl]                                       ; $64ad: $7e
	nop                                              ; $64ae: $00
	or c                                             ; $64af: $b1
	or c                                             ; $64b0: $b1
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	ld l, $06                                        ; $64b3: $2e $06
	or c                                             ; $64b5: $b1
	ld sp, $0000                                     ; $64b6: $31 $00 $00
	ld a, [hl]                                       ; $64b9: $7e
	ld bc, $a900                                     ; $64ba: $01 $00 $a9

jr_037_64bd:
	ld l, $0c                                        ; $64bd: $2e $0c
	pop bc                                           ; $64bf: $c1
	ld l, $0c                                        ; $64c0: $2e $0c
	call z, $057e                                    ; $64c2: $cc $7e $05
	ld [$96a9], sp                                   ; $64c5: $08 $a9 $96
	rst $38                                          ; $64c8: $ff
	rlca                                             ; $64c9: $07
	sub b                                            ; $64ca: $90
	ld l, $18                                        ; $64cb: $2e $18
	ld a, [hl]                                       ; $64cd: $7e
	nop                                              ; $64ce: $00
	or l                                             ; $64cf: $b5
	pop bc                                           ; $64d0: $c1
	ld bc, $0000                                     ; $64d1: $01 $00 $00
	inc l                                            ; $64d4: $2c

jr_037_64d5:
	ld de, $0100                                     ; $64d5: $11 $00 $01
	sub b                                            ; $64d8: $90
	ld a, [hl+]                                      ; $64d9: $2a
	ld de, $0100                                     ; $64da: $11 $00 $01
	sub c                                            ; $64dd: $91
	add hl, hl                                       ; $64de: $29
	dec bc                                           ; $64df: $0b
	nop                                              ; $64e0: $00
	ld bc, $90ca                                     ; $64e1: $01 $ca $90
	ld a, [hl]                                       ; $64e4: $7e
	dec b                                            ; $64e5: $05
	nop                                              ; $64e6: $00
	xor c                                            ; $64e7: $a9
	ld a, [hl+]                                      ; $64e8: $2a
	rla                                              ; $64e9: $17
	nop                                              ; $64ea: $00
	ld bc, $7e91                                     ; $64eb: $01 $91 $7e
	ld bc, $a90c                                     ; $64ee: $01 $0c $a9
	add hl, hl                                       ; $64f1: $29
	jr jr_037_64bd                                   ; $64f2: $18 $c9

	ld a, [hl]                                       ; $64f4: $7e
	dec b                                            ; $64f5: $05
	nop                                              ; $64f6: $00
	xor c                                            ; $64f7: $a9
	dec h                                            ; $64f8: $25
	jr @-$6c                                         ; $64f9: $18 $92

	ld a, [hl]                                       ; $64fb: $7e
	ld bc, $a900                                     ; $64fc: $01 $00 $a9
	ld [hl+], a                                      ; $64ff: $22
	jr @+$67                                         ; $6500: $18 $65

	sub c                                            ; $6502: $91
	ret                                              ; $6503: $c9


	ld a, [hl]                                       ; $6504: $7e
	dec b                                            ; $6505: $05
	nop                                              ; $6506: $00
	and b                                            ; $6507: $a0
	daa                                              ; $6508: $27
	jr jr_037_6589                                   ; $6509: $18 $7e

	ld bc, $a900                                     ; $650b: $01 $00 $a9
	daa                                              ; $650e: $27
	jr nc, jr_037_64d5                               ; $650f: $30 $c4

	daa                                              ; $6511: $27
	inc c                                            ; $6512: $0c
	add $90                                          ; $6513: $c6 $90
	dec h                                            ; $6515: $25
	dec bc                                           ; $6516: $0b
	nop                                              ; $6517: $00
	ld bc, $91c6                                     ; $6518: $01 $c6 $91
	ld a, [hl]                                       ; $651b: $7e
	dec b                                            ; $651c: $05
	dec b                                            ; $651d: $05
	xor c                                            ; $651e: $a9
	dec h                                            ; $651f: $25
	jr jr_037_65a0                                   ; $6520: $18 $7e

	ld bc, $a900                                     ; $6522: $01 $00 $a9
	dec h                                            ; $6525: $25
	inc a                                            ; $6526: $3c
	push bc                                          ; $6527: $c5
	dec h                                            ; $6528: $25
	inc c                                            ; $6529: $0c
	ld h, l                                          ; $652a: $65
	sub b                                            ; $652b: $90
	jp $1825                                         ; $652c: $c3 $25 $18


	jp nz, $1825                                     ; $652f: $c2 $25 $18

	pop bc                                           ; $6532: $c1

jr_037_6533:
	dec h                                            ; $6533: $25
	jr jr_037_6536                                   ; $6534: $18 $00

jr_037_6536:
	jr jr_037_6533                                   ; $6536: $18 $fb

	push bc                                          ; $6538: $c5
	add hl, de                                       ; $6539: $19
	inc c                                            ; $653a: $0c
	jp nz, $0619                                     ; $653b: $c2 $19 $06

	ei                                               ; $653e: $fb
	inc b                                            ; $653f: $04
	push bc                                          ; $6540: $c5
	add hl, de                                       ; $6541: $19
	inc c                                            ; $6542: $0c
	jp nz, $0c19                                     ; $6543: $c2 $19 $0c

	pop bc                                           ; $6546: $c1
	add hl, de                                       ; $6547: $19
	inc c                                            ; $6548: $0c
	rst $38                                          ; $6549: $ff
	ret nc                                           ; $654a: $d0

	ld [hl], b                                       ; $654b: $70
	add e                                            ; $654c: $83
	ld h, l                                          ; $654d: $65
	nop                                              ; $654e: $00
	ret nz                                           ; $654f: $c0

	jp nz, $0c1d                                     ; $6550: $c2 $1d $0c

	call nz, $0c22                                   ; $6553: $c4 $22 $0c
	dec e                                            ; $6556: $1d
	ld b, $22                                        ; $6557: $06 $22
	inc c                                            ; $6559: $0c
	dec e                                            ; $655a: $1d
	ld b, $22                                        ; $655b: $06 $22
	inc c                                            ; $655d: $0c
	add $22                                          ; $655e: $c6 $22
	ld b, $c4                                        ; $6560: $06 $c4
	ld [hl+], a                                      ; $6562: $22
	inc c                                            ; $6563: $0c
	add $22                                          ; $6564: $c6 $22
	ld b, $c4                                        ; $6566: $06 $c4
	ld [hl+], a                                      ; $6568: $22
	inc c                                            ; $6569: $0c
	call nz, $0c1d                                   ; $656a: $c4 $1d $0c
	call nz, $0c20                                   ; $656d: $c4 $20 $0c
	dec e                                            ; $6570: $1d
	ld b, $20                                        ; $6571: $06 $20
	inc c                                            ; $6573: $0c
	dec e                                            ; $6574: $1d
	ld b, $20                                        ; $6575: $06 $20
	inc c                                            ; $6577: $0c
	add $20                                          ; $6578: $c6 $20
	ld b, $c4                                        ; $657a: $06 $c4
	jr nz, jr_037_658a                               ; $657c: $20 $0c

	add $20                                          ; $657e: $c6 $20
	ld b, $c4                                        ; $6580: $06 $c4
	jr nz, jr_037_6590                               ; $6582: $20 $0c

	call nz, $0c1d                                   ; $6584: $c4 $1d $0c
	ld [hl+], a                                      ; $6587: $22
	inc c                                            ; $6588: $0c

jr_037_6589:
	dec e                                            ; $6589: $1d

jr_037_658a:
	ld b, $22                                        ; $658a: $06 $22
	inc c                                            ; $658c: $0c
	dec e                                            ; $658d: $1d
	ld b, $22                                        ; $658e: $06 $22

jr_037_6590:
	inc c                                            ; $6590: $0c
	add $22                                          ; $6591: $c6 $22
	ld b, $c4                                        ; $6593: $06 $c4
	ld [hl+], a                                      ; $6595: $22
	inc c                                            ; $6596: $0c
	add $22                                          ; $6597: $c6 $22
	ld b, $c4                                        ; $6599: $06 $c4
	ld [hl+], a                                      ; $659b: $22
	inc c                                            ; $659c: $0c
	call nz, $0c1d                                   ; $659d: $c4 $1d $0c

jr_037_65a0:
	call nz, $0c20                                   ; $65a0: $c4 $20 $0c
	dec e                                            ; $65a3: $1d
	ld b, $20                                        ; $65a4: $06 $20
	inc c                                            ; $65a6: $0c
	dec e                                            ; $65a7: $1d
	ld b, $20                                        ; $65a8: $06 $20
	inc c                                            ; $65aa: $0c
	add $20                                          ; $65ab: $c6 $20
	ld b, $c4                                        ; $65ad: $06 $c4
	jr nz, jr_037_65bd                               ; $65af: $20 $0c

	add $20                                          ; $65b1: $c6 $20
	ld b, $c4                                        ; $65b3: $06 $c4
	jr nz, jr_037_65c3                               ; $65b5: $20 $0c

	add h                                            ; $65b7: $84
	ld h, l                                          ; $65b8: $65
	jp nz, $c000                                     ; $65b9: $c2 $00 $c0

	add h                                            ; $65bc: $84

jr_037_65bd:
	ld h, l                                          ; $65bd: $65
	jp nz, $c000                                     ; $65be: $c2 $00 $c0

	add h                                            ; $65c1: $84
	ld h, l                                          ; $65c2: $65

jr_037_65c3:
	jp nz, $c000                                     ; $65c3: $c2 $00 $c0

	add h                                            ; $65c6: $84
	ld h, l                                          ; $65c7: $65
	jp nz, $c000                                     ; $65c8: $c2 $00 $c0

	adc b                                            ; $65cb: $88
	ld h, l                                          ; $65cc: $65
	or c                                             ; $65cd: $b1
	ld hl, $0000                                     ; $65ce: $21 $00 $00
	dec de                                           ; $65d1: $1b
	inc c                                            ; $65d2: $0c
	ld e, $0c                                        ; $65d3: $1e $0c
	ld [hl+], a                                      ; $65d5: $22
	ld b, $25                                        ; $65d6: $06 $25
	ld b, $7e                                        ; $65d8: $06 $7e
	dec bc                                           ; $65da: $0b
	nop                                              ; $65db: $00
	xor c                                            ; $65dc: $a9
	daa                                              ; $65dd: $27
	inc h                                            ; $65de: $24
	ld a, [hl]                                       ; $65df: $7e
	ld bc, $a900                                     ; $65e0: $01 $00 $a9
	call nz, $0c27                                   ; $65e3: $c4 $27 $0c
	add $27                                          ; $65e6: $c6 $27
	inc c                                            ; $65e8: $0c
	ld a, [hl]                                       ; $65e9: $7e
	ld bc, $a900                                     ; $65ea: $01 $00 $a9
	or c                                             ; $65ed: $b1
	ld hl, $0000                                     ; $65ee: $21 $00 $00
	ld e, $18                                        ; $65f1: $1e $18
	ld a, [hl]                                       ; $65f3: $7e
	nop                                              ; $65f4: $00
	ld [hl+], a                                      ; $65f5: $22
	ld b, $25                                        ; $65f6: $06 $25
	ld b, $7e                                        ; $65f8: $06 $7e
	dec bc                                           ; $65fa: $0b
	nop                                              ; $65fb: $00
	xor c                                            ; $65fc: $a9
	daa                                              ; $65fd: $27
	inc h                                            ; $65fe: $24
	ld a, [hl]                                       ; $65ff: $7e
	ld bc, $a900                                     ; $6600: $01 $00 $a9
	call nz, $0c27                                   ; $6603: $c4 $27 $0c
	add $27                                          ; $6606: $c6 $27
	inc c                                            ; $6608: $0c
	adc b                                            ; $6609: $88
	ld h, l                                          ; $660a: $65
	or c                                             ; $660b: $b1
	ld hl, $0000                                     ; $660c: $21 $00 $00
	add hl, de                                       ; $660f: $19
	inc c                                            ; $6610: $0c
	dec e                                            ; $6611: $1d
	inc c                                            ; $6612: $0c
	jr nz, jr_037_661b                               ; $6613: $20 $06

	ld [hl+], a                                      ; $6615: $22
	ld b, $7e                                        ; $6616: $06 $7e
	dec bc                                           ; $6618: $0b
	nop                                              ; $6619: $00
	xor c                                            ; $661a: $a9

jr_037_661b:
	dec h                                            ; $661b: $25
	inc h                                            ; $661c: $24
	ld a, [hl]                                       ; $661d: $7e
	ld bc, $a900                                     ; $661e: $01 $00 $a9
	call nz, $0c25                                   ; $6621: $c4 $25 $0c
	add $25                                          ; $6624: $c6 $25
	inc c                                            ; $6626: $0c
	or c                                             ; $6627: $b1
	ld hl, $0000                                     ; $6628: $21 $00 $00
	dec de                                           ; $662b: $1b
	inc c                                            ; $662c: $0c
	ld e, $0c                                        ; $662d: $1e $0c
	ld [hl+], a                                      ; $662f: $22
	ld b, $25                                        ; $6630: $06 $25
	ld b, $7e                                        ; $6632: $06 $7e
	dec bc                                           ; $6634: $0b
	nop                                              ; $6635: $00
	xor c                                            ; $6636: $a9
	daa                                              ; $6637: $27
	inc h                                            ; $6638: $24
	jp nz, Jump_037_7e83                             ; $6639: $c2 $83 $7e

	rra                                              ; $663c: $1f
	inc c                                            ; $663d: $0c
	and d                                            ; $663e: $a2
	inc d                                            ; $663f: $14
	jr @-$7b                                         ; $6640: $18 $83

	ld h, l                                          ; $6642: $65
	ld a, [hl]                                       ; $6643: $7e
	nop                                              ; $6644: $00
	jp nz, $0c12                                     ; $6645: $c2 $12 $0c

	call nz, $0c12                                   ; $6648: $c4 $12 $0c
	jp nz, $0c11                                     ; $664b: $c2 $11 $0c

	call nz, $0c11                                   ; $664e: $c4 $11 $0c
	jp nz, $0c12                                     ; $6651: $c2 $12 $0c

	call nz, $0c12                                   ; $6654: $c4 $12 $0c
	add $12                                          ; $6657: $c6 $12
	inc c                                            ; $6659: $0c
	nop                                              ; $665a: $00
	inc c                                            ; $665b: $0c
	jp nz, $0c12                                     ; $665c: $c2 $12 $0c

	call nz, $0c12                                   ; $665f: $c4 $12 $0c
	jp nz, $0c14                                     ; $6662: $c2 $14 $0c

	call nz, $0c14                                   ; $6665: $c4 $14 $0c
	jp nz, $0c16                                     ; $6668: $c2 $16 $0c

	call nz, $0c16                                   ; $666b: $c4 $16 $0c
	add $16                                          ; $666e: $c6 $16
	inc c                                            ; $6670: $0c
	nop                                              ; $6671: $00
	inc c                                            ; $6672: $0c
	add e                                            ; $6673: $83
	ld h, l                                          ; $6674: $65
	jp nz, $0c0f                                     ; $6675: $c2 $0f $0c

	call nz, $0c0f                                   ; $6678: $c4 $0f $0c
	jp nz, $0c11                                     ; $667b: $c2 $11 $0c

	call nz, $0611                                   ; $667e: $c4 $11 $06
	jp nz, $0c12                                     ; $6681: $c2 $12 $0c

	call nz, $1d12                                   ; $6684: $c4 $12 $1d
	add $12                                          ; $6687: $c6 $12
	inc c                                            ; $6689: $0c
	nop                                              ; $668a: $00
	ld bc, $81c2                                     ; $668b: $01 $c2 $81
	ld [$8860], sp                                   ; $668e: $08 $60 $88
	ei                                               ; $6691: $fb
	jp nz, $0624                                     ; $6692: $c2 $24 $06

	call nz, $0624                                   ; $6695: $c4 $24 $06
	add $24                                          ; $6698: $c6 $24
	ld b, $fb                                        ; $669a: $06 $fb
	ld [bc], a                                       ; $669c: $02
	jp nz, $0624                                     ; $669d: $c2 $24 $06

	call nz, $0624                                   ; $66a0: $c4 $24 $06
	jp nz, $0624                                     ; $66a3: $c2 $24 $06

	call nz, $0624                                   ; $66a6: $c4 $24 $06
	nop                                              ; $66a9: $00
	inc h                                            ; $66aa: $24
	add l                                            ; $66ab: $85
	ld h, l                                          ; $66ac: $65
	or c                                             ; $66ad: $b1
	ld hl, $0102                                     ; $66ae: $21 $02 $01
	dec c                                            ; $66b1: $0d
	inc c                                            ; $66b2: $0c
	add $0d                                          ; $66b3: $c6 $0d
	ld b, $c2                                        ; $66b5: $06 $c2
	dec c                                            ; $66b7: $0d
	inc c                                            ; $66b8: $0c
	add $0d                                          ; $66b9: $c6 $0d
	ld b, $c2                                        ; $66bb: $06 $c2
	dec c                                            ; $66bd: $0d
	inc c                                            ; $66be: $0c
	add $0d                                          ; $66bf: $c6 $0d
	inc c                                            ; $66c1: $0c
	or c                                             ; $66c2: $b1
	ld hl, $0000                                     ; $66c3: $21 $00 $00
	dec c                                            ; $66c6: $0d
	inc c                                            ; $66c7: $0c
	add $0d                                          ; $66c8: $c6 $0d
	ld b, $b1                                        ; $66ca: $06 $b1
	ld hl, $0102                                     ; $66cc: $21 $02 $01
	dec c                                            ; $66cf: $0d
	ld [de], a                                       ; $66d0: $12
	jp nz, $0c0a                                     ; $66d1: $c2 $0a $0c

	add $0a                                          ; $66d4: $c6 $0a
	ld b, $c2                                        ; $66d6: $06 $c2
	ld a, [bc]                                       ; $66d8: $0a
	inc c                                            ; $66d9: $0c
	add $0a                                          ; $66da: $c6 $0a
	ld b, $c2                                        ; $66dc: $06 $c2
	ld a, [bc]                                       ; $66de: $0a
	inc c                                            ; $66df: $0c
	add $0a                                          ; $66e0: $c6 $0a
	inc c                                            ; $66e2: $0c
	or c                                             ; $66e3: $b1
	ld hl, $0000                                     ; $66e4: $21 $00 $00
	ld a, [bc]                                       ; $66e7: $0a
	inc c                                            ; $66e8: $0c
	add $00                                          ; $66e9: $c6 $00
	ld b, $b1                                        ; $66eb: $06 $b1
	ld hl, $0102                                     ; $66ed: $21 $02 $01
	ld a, [bc]                                       ; $66f0: $0a
	ld [de], a                                       ; $66f1: $12
	jp nz, $0c05                                     ; $66f2: $c2 $05 $0c

	add $05                                          ; $66f5: $c6 $05
	ld b, $c2                                        ; $66f7: $06 $c2
	dec b                                            ; $66f9: $05
	inc c                                            ; $66fa: $0c
	add $05                                          ; $66fb: $c6 $05
	ld b, $c2                                        ; $66fd: $06 $c2
	dec b                                            ; $66ff: $05
	inc c                                            ; $6700: $0c
	add $05                                          ; $6701: $c6 $05
	inc c                                            ; $6703: $0c
	or c                                             ; $6704: $b1
	ld hl, $0000                                     ; $6705: $21 $00 $00
	dec b                                            ; $6708: $05
	inc c                                            ; $6709: $0c
	add $05                                          ; $670a: $c6 $05
	ld b, $b1                                        ; $670c: $06 $b1
	ld hl, $0102                                     ; $670e: $21 $02 $01
	dec b                                            ; $6711: $05
	ld [de], a                                       ; $6712: $12
	jp nz, $0c03                                     ; $6713: $c2 $03 $0c

	add $03                                          ; $6716: $c6 $03
	ld b, $c2                                        ; $6718: $06 $c2
	inc bc                                           ; $671a: $03
	inc c                                            ; $671b: $0c
	add $03                                          ; $671c: $c6 $03
	ld b, $c2                                        ; $671e: $06 $c2
	inc bc                                           ; $6720: $03
	inc c                                            ; $6721: $0c
	add $03                                          ; $6722: $c6 $03
	inc c                                            ; $6724: $0c
	or c                                             ; $6725: $b1
	ld hl, $0000                                     ; $6726: $21 $00 $00
	add hl, bc                                       ; $6729: $09
	inc c                                            ; $672a: $0c
	nop                                              ; $672b: $00
	ld b, $b1                                        ; $672c: $06 $b1
	ld hl, $0102                                     ; $672e: $21 $02 $01
	add hl, bc                                       ; $6731: $09
	ld [de], a                                       ; $6732: $12
	add l                                            ; $6733: $85
	ld h, l                                          ; $6734: $65
	or c                                             ; $6735: $b1
	ld hl, $0102                                     ; $6736: $21 $02 $01
	ld a, [bc]                                       ; $6739: $0a
	inc c                                            ; $673a: $0c
	add $0a                                          ; $673b: $c6 $0a
	ld b, $c2                                        ; $673d: $06 $c2
	ld a, [bc]                                       ; $673f: $0a
	inc c                                            ; $6740: $0c
	add $0a                                          ; $6741: $c6 $0a
	ld b, $c2                                        ; $6743: $06 $c2
	ld a, [bc]                                       ; $6745: $0a
	inc c                                            ; $6746: $0c
	add $0a                                          ; $6747: $c6 $0a
	inc c                                            ; $6749: $0c
	or c                                             ; $674a: $b1
	ld hl, $0000                                     ; $674b: $21 $00 $00
	ld a, [bc]                                       ; $674e: $0a
	inc c                                            ; $674f: $0c
	add $0a                                          ; $6750: $c6 $0a
	ld b, $b1                                        ; $6752: $06 $b1
	ld hl, $0102                                     ; $6754: $21 $02 $01
	ld a, [bc]                                       ; $6757: $0a
	ld [de], a                                       ; $6758: $12
	or c                                             ; $6759: $b1
	ld hl, $0102                                     ; $675a: $21 $02 $01
	ld [$c60c], sp                                   ; $675d: $08 $0c $c6
	ld [$c206], sp                                   ; $6760: $08 $06 $c2
	ld [$c60c], sp                                   ; $6763: $08 $0c $c6
	ld [$c206], sp                                   ; $6766: $08 $06 $c2
	ld [$c60c], sp                                   ; $6769: $08 $0c $c6
	ld [$b10c], sp                                   ; $676c: $08 $0c $b1
	ld hl, $0000                                     ; $676f: $21 $00 $00
	ld [$c60c], sp                                   ; $6772: $08 $0c $c6
	ld [$b106], sp                                   ; $6775: $08 $06 $b1
	ld hl, $0102                                     ; $6778: $21 $02 $01
	ld [$b112], sp                                   ; $677b: $08 $12 $b1
	ld hl, $0102                                     ; $677e: $21 $02 $01
	ld b, $0c                                        ; $6781: $06 $0c
	add $06                                          ; $6783: $c6 $06
	ld b, $c2                                        ; $6785: $06 $c2
	ld b, $0c                                        ; $6787: $06 $0c
	add $06                                          ; $6789: $c6 $06
	ld b, $c2                                        ; $678b: $06 $c2
	ld b, $0c                                        ; $678d: $06 $0c
	jp nz, $0c05                                     ; $678f: $c2 $05 $0c

	add $05                                          ; $6792: $c6 $05
	ld b, $c2                                        ; $6794: $06 $c2
	dec b                                            ; $6796: $05
	inc c                                            ; $6797: $0c
	add $05                                          ; $6798: $c6 $05
	ld b, $c2                                        ; $679a: $06 $c2
	dec b                                            ; $679c: $05
	inc c                                            ; $679d: $0c
	or c                                             ; $679e: $b1
	ld hl, $0102                                     ; $679f: $21 $02 $01
	inc bc                                           ; $67a2: $03
	inc c                                            ; $67a3: $0c
	add $03                                          ; $67a4: $c6 $03
	ld b, $c2                                        ; $67a6: $06 $c2
	inc bc                                           ; $67a8: $03
	inc c                                            ; $67a9: $0c
	add $03                                          ; $67aa: $c6 $03
	ld b, $c2                                        ; $67ac: $06 $c2
	inc bc                                           ; $67ae: $03
	inc c                                            ; $67af: $0c
	add $03                                          ; $67b0: $c6 $03
	inc c                                            ; $67b2: $0c
	or c                                             ; $67b3: $b1
	ld hl, $0000                                     ; $67b4: $21 $00 $00
	ld [$000c], sp                                   ; $67b7: $08 $0c $00
	ld b, $b1                                        ; $67ba: $06 $b1
	ld hl, $0102                                     ; $67bc: $21 $02 $01
	ld [$8512], sp                                   ; $67bf: $08 $12 $85
	ld h, l                                          ; $67c2: $65
	or c                                             ; $67c3: $b1
	ld hl, $0102                                     ; $67c4: $21 $02 $01
	dec c                                            ; $67c7: $0d
	inc c                                            ; $67c8: $0c
	add $0d                                          ; $67c9: $c6 $0d
	ld b, $c2                                        ; $67cb: $06 $c2
	dec c                                            ; $67cd: $0d
	inc c                                            ; $67ce: $0c
	add $0d                                          ; $67cf: $c6 $0d
	ld b, $c2                                        ; $67d1: $06 $c2
	dec c                                            ; $67d3: $0d
	inc c                                            ; $67d4: $0c
	add $0d                                          ; $67d5: $c6 $0d
	inc c                                            ; $67d7: $0c
	or c                                             ; $67d8: $b1
	ld hl, $0000                                     ; $67d9: $21 $00 $00
	dec c                                            ; $67dc: $0d
	inc c                                            ; $67dd: $0c
	add $0d                                          ; $67de: $c6 $0d
	ld b, $b1                                        ; $67e0: $06 $b1
	ld hl, $0102                                     ; $67e2: $21 $02 $01
	dec c                                            ; $67e5: $0d
	ld [de], a                                       ; $67e6: $12
	jp nz, $0c0a                                     ; $67e7: $c2 $0a $0c

	add $0a                                          ; $67ea: $c6 $0a
	ld b, $c2                                        ; $67ec: $06 $c2
	ld a, [bc]                                       ; $67ee: $0a
	inc c                                            ; $67ef: $0c
	add $0a                                          ; $67f0: $c6 $0a
	ld b, $c2                                        ; $67f2: $06 $c2
	ld a, [bc]                                       ; $67f4: $0a
	inc c                                            ; $67f5: $0c
	add $0a                                          ; $67f6: $c6 $0a
	inc c                                            ; $67f8: $0c
	or c                                             ; $67f9: $b1
	ld hl, $0000                                     ; $67fa: $21 $00 $00
	ld a, [bc]                                       ; $67fd: $0a
	inc c                                            ; $67fe: $0c
	add $00                                          ; $67ff: $c6 $00
	ld b, $b1                                        ; $6801: $06 $b1
	ld hl, $0102                                     ; $6803: $21 $02 $01
	ld a, [bc]                                       ; $6806: $0a
	ld [de], a                                       ; $6807: $12
	jp nz, $0c05                                     ; $6808: $c2 $05 $0c

	add $05                                          ; $680b: $c6 $05
	ld b, $c2                                        ; $680d: $06 $c2
	dec b                                            ; $680f: $05
	inc c                                            ; $6810: $0c
	add $05                                          ; $6811: $c6 $05
	ld b, $c2                                        ; $6813: $06 $c2
	dec b                                            ; $6815: $05
	inc c                                            ; $6816: $0c
	add $05                                          ; $6817: $c6 $05
	inc c                                            ; $6819: $0c
	or c                                             ; $681a: $b1
	ld hl, $0000                                     ; $681b: $21 $00 $00
	dec b                                            ; $681e: $05
	inc c                                            ; $681f: $0c
	add $05                                          ; $6820: $c6 $05
	ld b, $b1                                        ; $6822: $06 $b1
	ld hl, $0102                                     ; $6824: $21 $02 $01
	dec b                                            ; $6827: $05
	ld [de], a                                       ; $6828: $12
	jp nz, $0c03                                     ; $6829: $c2 $03 $0c

	add $03                                          ; $682c: $c6 $03
	ld b, $c2                                        ; $682e: $06 $c2
	inc bc                                           ; $6830: $03
	inc c                                            ; $6831: $0c
	add $03                                          ; $6832: $c6 $03
	ld b, $c2                                        ; $6834: $06 $c2
	inc bc                                           ; $6836: $03
	inc c                                            ; $6837: $0c
	add $03                                          ; $6838: $c6 $03
	inc c                                            ; $683a: $0c
	or c                                             ; $683b: $b1
	ld hl, $0101                                     ; $683c: $21 $01 $01
	add hl, bc                                       ; $683f: $09
	inc c                                            ; $6840: $0c
	nop                                              ; $6841: $00
	ld b, $b1                                        ; $6842: $06 $b1
	ld hl, $0000                                     ; $6844: $21 $00 $00
	add hl, bc                                       ; $6847: $09
	ld b, $0a                                        ; $6848: $06 $0a
	ld b, $0c                                        ; $684a: $06 $0c
	ld b, $85                                        ; $684c: $06 $85
	ld h, l                                          ; $684e: $65
	or c                                             ; $684f: $b1
	ld hl, $0102                                     ; $6850: $21 $02 $01
	ld a, [bc]                                       ; $6853: $0a
	inc c                                            ; $6854: $0c
	add $0a                                          ; $6855: $c6 $0a
	ld b, $c2                                        ; $6857: $06 $c2
	ld a, [bc]                                       ; $6859: $0a
	inc c                                            ; $685a: $0c
	add $0a                                          ; $685b: $c6 $0a
	ld b, $c2                                        ; $685d: $06 $c2
	ld a, [bc]                                       ; $685f: $0a
	inc c                                            ; $6860: $0c
	add $0a                                          ; $6861: $c6 $0a
	inc c                                            ; $6863: $0c
	or c                                             ; $6864: $b1
	ld hl, $0000                                     ; $6865: $21 $00 $00
	ld a, [bc]                                       ; $6868: $0a
	inc c                                            ; $6869: $0c
	add $0a                                          ; $686a: $c6 $0a
	ld b, $b1                                        ; $686c: $06 $b1
	ld hl, $0102                                     ; $686e: $21 $02 $01
	ld a, [bc]                                       ; $6871: $0a
	ld [de], a                                       ; $6872: $12
	or c                                             ; $6873: $b1
	ld hl, $0102                                     ; $6874: $21 $02 $01
	ld [$c60c], sp                                   ; $6877: $08 $0c $c6
	ld [$c206], sp                                   ; $687a: $08 $06 $c2
	ld [$c60c], sp                                   ; $687d: $08 $0c $c6
	ld [$c206], sp                                   ; $6880: $08 $06 $c2
	ld [$c60c], sp                                   ; $6883: $08 $0c $c6
	ld [$b10c], sp                                   ; $6886: $08 $0c $b1
	ld hl, $0000                                     ; $6889: $21 $00 $00
	ld [$c60c], sp                                   ; $688c: $08 $0c $c6
	ld [$b106], sp                                   ; $688f: $08 $06 $b1
	ld hl, $0102                                     ; $6892: $21 $02 $01
	ld [$b112], sp                                   ; $6895: $08 $12 $b1
	ld hl, $0102                                     ; $6898: $21 $02 $01
	ld b, $0c                                        ; $689b: $06 $0c
	add $06                                          ; $689d: $c6 $06
	ld b, $c2                                        ; $689f: $06 $c2
	ld b, $0c                                        ; $68a1: $06 $0c
	add $06                                          ; $68a3: $c6 $06
	ld b, $c2                                        ; $68a5: $06 $c2
	ld b, $0c                                        ; $68a7: $06 $0c
	jp nz, $0c05                                     ; $68a9: $c2 $05 $0c

	add $05                                          ; $68ac: $c6 $05
	ld b, $c2                                        ; $68ae: $06 $c2
	dec b                                            ; $68b0: $05
	inc c                                            ; $68b1: $0c
	add $05                                          ; $68b2: $c6 $05
	ld b, $c2                                        ; $68b4: $06 $c2
	dec b                                            ; $68b6: $05
	inc c                                            ; $68b7: $0c
	or c                                             ; $68b8: $b1
	ld hl, $0102                                     ; $68b9: $21 $02 $01
	inc bc                                           ; $68bc: $03
	inc c                                            ; $68bd: $0c
	add $03                                          ; $68be: $c6 $03
	ld b, $c2                                        ; $68c0: $06 $c2
	inc bc                                           ; $68c2: $03
	inc c                                            ; $68c3: $0c
	add $03                                          ; $68c4: $c6 $03
	ld b, $c2                                        ; $68c6: $06 $c2
	inc bc                                           ; $68c8: $03
	inc c                                            ; $68c9: $0c
	jp nz, $0c08                                     ; $68ca: $c2 $08 $0c

	add $08                                          ; $68cd: $c6 $08
	ld b, $b1                                        ; $68cf: $06 $b1
	ld hl, $0000                                     ; $68d1: $21 $00 $00
	ld [$c412], sp                                   ; $68d4: $08 $12 $c4
	ld [$0306], sp                                   ; $68d7: $08 $06 $03
	dec b                                            ; $68da: $05
	nop                                              ; $68db: $00
	ld bc, $658c                                     ; $68dc: $01 $8c $65
	or c                                             ; $68df: $b1
	ld hl, $0000                                     ; $68e0: $21 $00 $00
	ld a, [hl]                                       ; $68e3: $7e
	dec b                                            ; $68e4: $05
	nop                                              ; $68e5: $00
	and c                                            ; $68e6: $a1
	ld a, [hl+]                                      ; $68e7: $2a
	ld [de], a                                       ; $68e8: $12
	inc l                                            ; $68e9: $2c
	ld [de], a                                       ; $68ea: $12
	ld sp, $7e18                                     ; $68eb: $31 $18 $7e
	add hl, bc                                       ; $68ee: $09
	nop                                              ; $68ef: $00
	and d                                            ; $68f0: $a2
	ld a, [hl+]                                      ; $68f1: $2a
	rla                                              ; $68f2: $17
	ld a, [hl]                                       ; $68f3: $7e
	dec b                                            ; $68f4: $05
	nop                                              ; $68f5: $00
	and c                                            ; $68f6: $a1
	inc l                                            ; $68f7: $2c
	dec c                                            ; $68f8: $0d
	ld a, [hl]                                       ; $68f9: $7e
	nop                                              ; $68fa: $00
	add hl, hl                                       ; $68fb: $29
	ld [de], a                                       ; $68fc: $12
	ld a, [hl]                                       ; $68fd: $7e
	dec b                                            ; $68fe: $05
	nop                                              ; $68ff: $00
	and c                                            ; $6900: $a1
	inc l                                            ; $6901: $2c
	ld [de], a                                       ; $6902: $12
	ld sp, $7e18                                     ; $6903: $31 $18 $7e
	add hl, bc                                       ; $6906: $09
	nop                                              ; $6907: $00
	and d                                            ; $6908: $a2
	add hl, hl                                       ; $6909: $29
	rla                                              ; $690a: $17
	ld a, [hl]                                       ; $690b: $7e
	dec b                                            ; $690c: $05
	nop                                              ; $690d: $00
	and c                                            ; $690e: $a1
	inc l                                            ; $690f: $2c
	dec c                                            ; $6910: $0d
	ld a, [hl]                                       ; $6911: $7e
	nop                                              ; $6912: $00
	adc h                                            ; $6913: $8c
	ld h, l                                          ; $6914: $65
	or c                                             ; $6915: $b1
	ld hl, $0000                                     ; $6916: $21 $00 $00
	ld a, [hl]                                       ; $6919: $7e
	nop                                              ; $691a: $00
	ld a, [hl+]                                      ; $691b: $2a
	ld [de], a                                       ; $691c: $12
	ld a, [hl]                                       ; $691d: $7e
	dec b                                            ; $691e: $05
	nop                                              ; $691f: $00
	and c                                            ; $6920: $a1
	inc l                                            ; $6921: $2c
	ld [de], a                                       ; $6922: $12
	ld sp, $7e18                                     ; $6923: $31 $18 $7e
	add hl, bc                                       ; $6926: $09
	nop                                              ; $6927: $00
	and d                                            ; $6928: $a2
	ld a, [hl+]                                      ; $6929: $2a
	rla                                              ; $692a: $17
	ld a, [hl]                                       ; $692b: $7e
	dec b                                            ; $692c: $05
	nop                                              ; $692d: $00
	and c                                            ; $692e: $a1
	inc l                                            ; $692f: $2c
	dec c                                            ; $6930: $0d
	ld a, [hl]                                       ; $6931: $7e
	nop                                              ; $6932: $00
	call nz, $0c29                                   ; $6933: $c4 $29 $0c
	add $29                                          ; $6936: $c6 $29
	ld b, $c4                                        ; $6938: $06 $c4
	add hl, hl                                       ; $693a: $29
	inc c                                            ; $693b: $0c
	add $29                                          ; $693c: $c6 $29
	ld b, $c4                                        ; $693e: $06 $c4
	add hl, hl                                       ; $6940: $29
	inc c                                            ; $6941: $0c
	add $29                                          ; $6942: $c6 $29
	ld b, $c4                                        ; $6944: $06 $c4
	add hl, hl                                       ; $6946: $29
	inc c                                            ; $6947: $0c
	add $29                                          ; $6948: $c6 $29
	ld b, $c4                                        ; $694a: $06 $c4
	ld a, [hl]                                       ; $694c: $7e
	dec b                                            ; $694d: $05
	nop                                              ; $694e: $00
	xor d                                            ; $694f: $aa
	add hl, hl                                       ; $6950: $29
	inc c                                            ; $6951: $0c
	add $29                                          ; $6952: $c6 $29
	inc c                                            ; $6954: $0c
	add hl, hl                                       ; $6955: $29
	inc c                                            ; $6956: $0c
	rst $38                                          ; $6957: $ff
	ret nc                                           ; $6958: $d0

	ld [hl], b                                       ; $6959: $70
	nop                                              ; $695a: $00
	ret nz                                           ; $695b: $c0

	cp [hl]                                          ; $695c: $be
	ld b, $58                                        ; $695d: $06 $58
	ld e, c                                          ; $695f: $59
	ld e, b                                          ; $6960: $58
	ld e, c                                          ; $6961: $59
	ld e, b                                          ; $6962: $58
	ld e, c                                          ; $6963: $59
	ld e, b                                          ; $6964: $58
	ld e, c                                          ; $6965: $59
	ld e, b                                          ; $6966: $58
	ld e, c                                          ; $6967: $59
	ld e, d                                          ; $6968: $5a
	ld e, c                                          ; $6969: $59
	ld e, b                                          ; $696a: $58
	ld e, c                                          ; $696b: $59
	ld e, b                                          ; $696c: $58
	ld e, c                                          ; $696d: $59
	cp [hl]                                          ; $696e: $be
	ei                                               ; $696f: $fb
	cp [hl]                                          ; $6970: $be
	ld b, $58                                        ; $6971: $06 $58
	ld e, c                                          ; $6973: $59
	ld e, b                                          ; $6974: $58
	ld e, c                                          ; $6975: $59
	ld e, b                                          ; $6976: $58
	ld e, c                                          ; $6977: $59
	ld e, b                                          ; $6978: $58
	ld e, c                                          ; $6979: $59
	ld e, b                                          ; $697a: $58
	ld e, c                                          ; $697b: $59
	ld e, d                                          ; $697c: $5a
	ld e, c                                          ; $697d: $59
	ld e, b                                          ; $697e: $58
	ld e, c                                          ; $697f: $59
	ld e, b                                          ; $6980: $58
	ld e, c                                          ; $6981: $59
	cp [hl]                                          ; $6982: $be
	ei                                               ; $6983: $fb
	inc bc                                           ; $6984: $03
	ld e, e                                          ; $6985: $5b
	ld [de], a                                       ; $6986: $12
	cp [hl]                                          ; $6987: $be
	ld b, $59                                        ; $6988: $06 $59
	ld d, h                                          ; $698a: $54
	ld e, c                                          ; $698b: $59
	ld e, c                                          ; $698c: $59
	ld e, c                                          ; $698d: $59
	ld d, e                                          ; $698e: $53
	ld e, c                                          ; $698f: $59
	ld e, c                                          ; $6990: $59
	ld e, c                                          ; $6991: $59
	ld d, h                                          ; $6992: $54
	ld e, c                                          ; $6993: $59
	ld e, c                                          ; $6994: $59
	ld e, c                                          ; $6995: $59
	cp [hl]                                          ; $6996: $be
	cp [hl]                                          ; $6997: $be
	ld b, $53                                        ; $6998: $06 $53
	ld e, c                                          ; $699a: $59
	ld e, c                                          ; $699b: $59
	ld e, c                                          ; $699c: $59
	ld d, h                                          ; $699d: $54
	ld e, c                                          ; $699e: $59
	ld e, c                                          ; $699f: $59
	ld e, c                                          ; $69a0: $59
	ld d, e                                          ; $69a1: $53
	ld e, c                                          ; $69a2: $59
	ld e, d                                          ; $69a3: $5a
	ld e, c                                          ; $69a4: $59
	ld d, h                                          ; $69a5: $54
	ld e, c                                          ; $69a6: $59
	ld e, b                                          ; $69a7: $58
	ld e, c                                          ; $69a8: $59
	cp [hl]                                          ; $69a9: $be
	cp [hl]                                          ; $69aa: $be
	ld b, $53                                        ; $69ab: $06 $53
	ld e, c                                          ; $69ad: $59
	ld e, c                                          ; $69ae: $59
	ld e, c                                          ; $69af: $59
	ld d, h                                          ; $69b0: $54
	ld e, c                                          ; $69b1: $59
	ld e, c                                          ; $69b2: $59
	ld e, c                                          ; $69b3: $59
	ld d, e                                          ; $69b4: $53
	ld e, c                                          ; $69b5: $59
	ld e, c                                          ; $69b6: $59
	ld e, c                                          ; $69b7: $59
	ld d, h                                          ; $69b8: $54
	ld e, c                                          ; $69b9: $59
	ld e, c                                          ; $69ba: $59
	ld e, c                                          ; $69bb: $59
	cp [hl]                                          ; $69bc: $be
	cp [hl]                                          ; $69bd: $be
	ld b, $53                                        ; $69be: $06 $53
	ld e, c                                          ; $69c0: $59
	ld e, c                                          ; $69c1: $59
	ld e, c                                          ; $69c2: $59
	ld d, h                                          ; $69c3: $54
	ld e, c                                          ; $69c4: $59
	ld e, c                                          ; $69c5: $59
	ld e, c                                          ; $69c6: $59
	ld d, e                                          ; $69c7: $53
	ld e, c                                          ; $69c8: $59
	ld e, d                                          ; $69c9: $5a
	ld e, c                                          ; $69ca: $59
	ld d, h                                          ; $69cb: $54
	ld e, c                                          ; $69cc: $59
	ld d, l                                          ; $69cd: $55
	ld e, c                                          ; $69ce: $59
	cp [hl]                                          ; $69cf: $be
	ld d, e                                          ; $69d0: $53
	inc c                                            ; $69d1: $0c
	cp [hl]                                          ; $69d2: $be
	ld b, $56                                        ; $69d3: $06 $56
	ld e, b                                          ; $69d5: $58
	ld d, h                                          ; $69d6: $54
	ld e, c                                          ; $69d7: $59
	ld d, [hl]                                       ; $69d8: $56
	ld e, c                                          ; $69d9: $59
	cp [hl]                                          ; $69da: $be
	ei                                               ; $69db: $fb
	cp [hl]                                          ; $69dc: $be
	ld b, $53                                        ; $69dd: $06 $53
	ld e, c                                          ; $69df: $59
	ld d, [hl]                                       ; $69e0: $56
	ld e, c                                          ; $69e1: $59
	ld d, h                                          ; $69e2: $54
	ld e, c                                          ; $69e3: $59
	ld d, [hl]                                       ; $69e4: $56
	ld e, c                                          ; $69e5: $59
	cp [hl]                                          ; $69e6: $be
	ei                                               ; $69e7: $fb
	inc bc                                           ; $69e8: $03
	ld d, e                                          ; $69e9: $53
	inc c                                            ; $69ea: $0c
	cp [hl]                                          ; $69eb: $be
	ld b, $56                                        ; $69ec: $06 $56
	ld e, b                                          ; $69ee: $58
	ld d, h                                          ; $69ef: $54
	ld e, c                                          ; $69f0: $59
	ld d, [hl]                                       ; $69f1: $56
	ld e, c                                          ; $69f2: $59
	ld d, e                                          ; $69f3: $53
	ld e, c                                          ; $69f4: $59
	ld d, [hl]                                       ; $69f5: $56
	ld e, c                                          ; $69f6: $59
	ld d, h                                          ; $69f7: $54
	ld e, c                                          ; $69f8: $59
	ld d, [hl]                                       ; $69f9: $56
	ld e, c                                          ; $69fa: $59
	cp [hl]                                          ; $69fb: $be
	cp [hl]                                          ; $69fc: $be
	ld b, $53                                        ; $69fd: $06 $53
	ld e, c                                          ; $69ff: $59
	ld d, [hl]                                       ; $6a00: $56
	ld e, c                                          ; $6a01: $59
	ld d, h                                          ; $6a02: $54
	ld e, c                                          ; $6a03: $59
	ld d, [hl]                                       ; $6a04: $56
	ld e, c                                          ; $6a05: $59
	ld d, e                                          ; $6a06: $53
	ld e, c                                          ; $6a07: $59
	ld d, [hl]                                       ; $6a08: $56
	ld e, c                                          ; $6a09: $59
	cp [hl]                                          ; $6a0a: $be
	ld e, e                                          ; $6a0b: $5b
	inc c                                            ; $6a0c: $0c
	ld d, [hl]                                       ; $6a0d: $56
	ld b, $59                                        ; $6a0e: $06 $59
	ld b, $5b                                        ; $6a10: $06 $5b
	jr @-$03                                         ; $6a12: $18 $fb

	cp [hl]                                          ; $6a14: $be
	ld b, $53                                        ; $6a15: $06 $53
	ld e, c                                          ; $6a17: $59
	ld e, b                                          ; $6a18: $58
	ld e, c                                          ; $6a19: $59
	cp [hl]                                          ; $6a1a: $be
	ei                                               ; $6a1b: $fb
	rlca                                             ; $6a1c: $07
	ei                                               ; $6a1d: $fb
	cp [hl]                                          ; $6a1e: $be
	ld b, $53                                        ; $6a1f: $06 $53
	ld e, c                                          ; $6a21: $59
	ld e, b                                          ; $6a22: $58
	ld e, c                                          ; $6a23: $59
	cp [hl]                                          ; $6a24: $be
	ei                                               ; $6a25: $fb
	ld [$befb], sp                                   ; $6a26: $08 $fb $be
	ld b, $53                                        ; $6a29: $06 $53
	ld e, c                                          ; $6a2b: $59
	ld e, b                                          ; $6a2c: $58
	ld e, c                                          ; $6a2d: $59
	cp [hl]                                          ; $6a2e: $be
	ei                                               ; $6a2f: $fb
	ld [$befb], sp                                   ; $6a30: $08 $fb $be
	ld b, $53                                        ; $6a33: $06 $53
	ld e, c                                          ; $6a35: $59
	ld e, b                                          ; $6a36: $58
	ld e, c                                          ; $6a37: $59
	cp [hl]                                          ; $6a38: $be
	ei                                               ; $6a39: $fb
	ld [$6000], sp                                   ; $6a3a: $08 $00 $60
	ei                                               ; $6a3d: $fb
	cp [hl]                                          ; $6a3e: $be
	ld b, $58                                        ; $6a3f: $06 $58
	ld e, c                                          ; $6a41: $59
	ld e, b                                          ; $6a42: $58
	ld e, c                                          ; $6a43: $59
	cp [hl]                                          ; $6a44: $be
	ei                                               ; $6a45: $fb
	db $10                                           ; $6a46: $10
	ei                                               ; $6a47: $fb
	cp [hl]                                          ; $6a48: $be
	ld b, $58                                        ; $6a49: $06 $58
	ld e, c                                          ; $6a4b: $59
	ld e, b                                          ; $6a4c: $58
	ld e, c                                          ; $6a4d: $59
	cp [hl]                                          ; $6a4e: $be
	ei                                               ; $6a4f: $fb
	db $10                                           ; $6a50: $10
	ei                                               ; $6a51: $fb
	cp [hl]                                          ; $6a52: $be
	ld b, $58                                        ; $6a53: $06 $58
	ld e, c                                          ; $6a55: $59
	ld e, b                                          ; $6a56: $58
	ld e, c                                          ; $6a57: $59
	cp [hl]                                          ; $6a58: $be
	ei                                               ; $6a59: $fb
	db $10                                           ; $6a5a: $10
	ei                                               ; $6a5b: $fb
	cp [hl]                                          ; $6a5c: $be
	ld b, $58                                        ; $6a5d: $06 $58
	ld e, c                                          ; $6a5f: $59
	ld e, b                                          ; $6a60: $58
	ld e, c                                          ; $6a61: $59
	cp [hl]                                          ; $6a62: $be
	ei                                               ; $6a63: $fb
	db $10                                           ; $6a64: $10
	ei                                               ; $6a65: $fb
	cp [hl]                                          ; $6a66: $be
	ld b, $58                                        ; $6a67: $06 $58
	ld e, c                                          ; $6a69: $59
	ld e, b                                          ; $6a6a: $58
	ld e, c                                          ; $6a6b: $59
	cp [hl]                                          ; $6a6c: $be
	ei                                               ; $6a6d: $fb
	ld [$befb], sp                                   ; $6a6e: $08 $fb $be
	ld b, $58                                        ; $6a71: $06 $58
	ld e, c                                          ; $6a73: $59
	ld e, b                                          ; $6a74: $58
	ld e, c                                          ; $6a75: $59
	cp [hl]                                          ; $6a76: $be
	ei                                               ; $6a77: $fb
	inc bc                                           ; $6a78: $03
	ld e, b                                          ; $6a79: $58
	ld b, $59                                        ; $6a7a: $06 $59
	ld b, $57                                        ; $6a7c: $06 $57
	inc c                                            ; $6a7e: $0c
	nop                                              ; $6a7f: $00
	ld h, b                                          ; $6a80: $60
	rst $38                                          ; $6a81: $ff
	ret nc                                           ; $6a82: $d0

	ld c, e                                          ; $6a83: $4b
	sub d                                            ; $6a84: $92
	nop                                              ; $6a85: $00
	ld b, $fe                                        ; $6a86: $06 $fe
	ei                                               ; $6a88: $fb
	or c                                             ; $6a89: $b1
	or c                                             ; $6a8a: $b1
	rst $38                                          ; $6a8b: $ff
	inc bc                                           ; $6a8c: $03
	ld b, $0c                                        ; $6a8d: $06 $0c
	call z, $0c0d                                    ; $6a8f: $cc $0d $0c
	call z, $0c12                                    ; $6a92: $cc $12 $0c
	or c                                             ; $6a95: $b1
	ld sp, $0000                                     ; $6a96: $31 $00 $00
	ld [de], a                                       ; $6a99: $12
	inc c                                            ; $6a9a: $0c
	jp nz, $0c12                                     ; $6a9b: $c2 $12 $0c

	pop bc                                           ; $6a9e: $c1
	ld [de], a                                       ; $6a9f: $12
	inc c                                            ; $6aa0: $0c
	or c                                             ; $6aa1: $b1
	or c                                             ; $6aa2: $b1
	rst $38                                          ; $6aa3: $ff
	inc bc                                           ; $6aa4: $03
	ld bc, $cc0c                                     ; $6aa5: $01 $0c $cc
	ld [$cc0c], sp                                   ; $6aa8: $08 $0c $cc
	dec c                                            ; $6aab: $0d
	inc c                                            ; $6aac: $0c
	or c                                             ; $6aad: $b1
	ld sp, $0000                                     ; $6aae: $31 $00 $00
	dec c                                            ; $6ab1: $0d
	inc c                                            ; $6ab2: $0c
	jp nz, $0c0d                                     ; $6ab3: $c2 $0d $0c

	pop bc                                           ; $6ab6: $c1
	dec c                                            ; $6ab7: $0d
	inc c                                            ; $6ab8: $0c
	ei                                               ; $6ab9: $fb
	ld [bc], a                                       ; $6aba: $02
	or l                                             ; $6abb: $b5
	or c                                             ; $6abc: $b1
	ld [bc], a                                       ; $6abd: $02
	rst $38                                          ; $6abe: $ff
	inc bc                                           ; $6abf: $03
	add hl, bc                                       ; $6ac0: $09
	inc c                                            ; $6ac1: $0c
	db $10                                           ; $6ac2: $10
	inc c                                            ; $6ac3: $0c
	call z, $0c15                                    ; $6ac4: $cc $15 $0c
	or c                                             ; $6ac7: $b1
	ld sp, $0000                                     ; $6ac8: $31 $00 $00
	dec d                                            ; $6acb: $15
	inc c                                            ; $6acc: $0c
	jp nz, $0c15                                     ; $6acd: $c2 $15 $0c

	pop bc                                           ; $6ad0: $c1
	dec d                                            ; $6ad1: $15
	inc c                                            ; $6ad2: $0c
	or c                                             ; $6ad3: $b1
	or c                                             ; $6ad4: $b1
	rst $38                                          ; $6ad5: $ff
	inc bc                                           ; $6ad6: $03
	inc b                                            ; $6ad7: $04
	inc c                                            ; $6ad8: $0c
	dec bc                                           ; $6ad9: $0b
	inc c                                            ; $6ada: $0c
	call z, $0c10                                    ; $6adb: $cc $10 $0c
	or c                                             ; $6ade: $b1
	ld sp, $0000                                     ; $6adf: $31 $00 $00
	db $10                                           ; $6ae2: $10
	inc c                                            ; $6ae3: $0c
	jp nz, $0c10                                     ; $6ae4: $c2 $10 $0c

	pop bc                                           ; $6ae7: $c1

jr_037_6ae8:
	db $10                                           ; $6ae8: $10
	inc c                                            ; $6ae9: $0c
	or c                                             ; $6aea: $b1
	or c                                             ; $6aeb: $b1
	rst $38                                          ; $6aec: $ff
	inc bc                                           ; $6aed: $03
	ld b, $0c                                        ; $6aee: $06 $0c
	call z, $0c0d                                    ; $6af0: $cc $0d $0c
	call z, $0c12                                    ; $6af3: $cc $12 $0c
	or c                                             ; $6af6: $b1
	ld sp, $0000                                     ; $6af7: $31 $00 $00
	ld [de], a                                       ; $6afa: $12
	inc c                                            ; $6afb: $0c
	jp nz, $0c12                                     ; $6afc: $c2 $12 $0c

	pop bc                                           ; $6aff: $c1
	ld [de], a                                       ; $6b00: $12
	inc c                                            ; $6b01: $0c
	or c                                             ; $6b02: $b1
	or c                                             ; $6b03: $b1
	rst $38                                          ; $6b04: $ff
	inc bc                                           ; $6b05: $03
	ld [$cc0c], sp                                   ; $6b06: $08 $0c $cc
	rrca                                             ; $6b09: $0f
	inc c                                            ; $6b0a: $0c
	call z, $0c14                                    ; $6b0b: $cc $14 $0c
	or c                                             ; $6b0e: $b1
	ld sp, $0000                                     ; $6b0f: $31 $00 $00
	inc d                                            ; $6b12: $14
	inc c                                            ; $6b13: $0c

jr_037_6b14:
	jp nz, $1014                                     ; $6b14: $c2 $14 $10

	pop bc                                           ; $6b17: $c1
	inc d                                            ; $6b18: $14
	ld [de], a                                       ; $6b19: $12
	nop                                              ; $6b1a: $00
	inc b                                            ; $6b1b: $04
	cp $ff                                           ; $6b1c: $fe $ff
	or [hl]                                          ; $6b1e: $b6
	ld c, e                                          ; $6b1f: $4b
	ld d, c                                          ; $6b20: $51
	ld [bc], a                                       ; $6b21: $02
	rst $38                                          ; $6b22: $ff
	inc bc                                           ; $6b23: $03
	jr nz, jr_037_6b28                               ; $6b24: $20 $02

	add $22                                          ; $6b26: $c6 $22

jr_037_6b28:
	ld [bc], a                                       ; $6b28: $02
	rst JumpTable                                          ; $6b29: $c7
	dec h                                            ; $6b2a: $25
	ld [bc], a                                       ; $6b2b: $02
	cp $b1                                           ; $6b2c: $fe $b1
	or c                                             ; $6b2e: $b1
	rst $38                                          ; $6b2f: $ff
	dec b                                            ; $6b30: $05
	add hl, hl                                       ; $6b31: $29
	jr @-$4d                                         ; $6b32: $18 $b1

	ld hl, $0000                                     ; $6b34: $21 $00 $00
	add hl, hl                                       ; $6b37: $29
	inc c                                            ; $6b38: $0c
	or c                                             ; $6b39: $b1
	or c                                             ; $6b3a: $b1
	rst $38                                          ; $6b3b: $ff
	inc bc                                           ; $6b3c: $03
	daa                                              ; $6b3d: $27
	inc c                                            ; $6b3e: $0c
	add hl, hl                                       ; $6b3f: $29
	inc c                                            ; $6b40: $0c
	ret                                              ; $6b41: $c9


	ld a, [hl]                                       ; $6b42: $7e
	dec b                                            ; $6b43: $05
	nop                                              ; $6b44: $00
	xor d                                            ; $6b45: $aa
	ld l, $0c                                        ; $6b46: $2e $0c
	ld a, [hl]                                       ; $6b48: $7e
	nop                                              ; $6b49: $00
	inc l                                            ; $6b4a: $2c
	inc c                                            ; $6b4b: $0c
	sub [hl]                                         ; $6b4c: $96
	rst $38                                          ; $6b4d: $ff
	dec b                                            ; $6b4e: $05
	add hl, hl                                       ; $6b4f: $29
	jr jr_037_6ae8                                   ; $6b50: $18 $96

	rst $38                                          ; $6b52: $ff
	dec b                                            ; $6b53: $05
	dec h                                            ; $6b54: $25
	jr @-$4d                                         ; $6b55: $18 $b1

	ld hl, $0000                                     ; $6b57: $21 $00 $00
	dec h                                            ; $6b5a: $25
	inc c                                            ; $6b5b: $0c
	or c                                             ; $6b5c: $b1
	or c                                             ; $6b5d: $b1
	rst $38                                          ; $6b5e: $ff
	dec b                                            ; $6b5f: $05
	add hl, hl                                       ; $6b60: $29
	jr jr_037_6b14                                   ; $6b61: $18 $b1

	ld hl, $0000                                     ; $6b63: $21 $00 $00
	add hl, hl                                       ; $6b66: $29
	inc c                                            ; $6b67: $0c
	or c                                             ; $6b68: $b1
	or c                                             ; $6b69: $b1
	rst $38                                          ; $6b6a: $ff
	inc bc                                           ; $6b6b: $03
	daa                                              ; $6b6c: $27
	inc c                                            ; $6b6d: $0c
	add hl, hl                                       ; $6b6e: $29
	inc c                                            ; $6b6f: $0c
	ret                                              ; $6b70: $c9


	ld l, $0c                                        ; $6b71: $2e $0c
	or c                                             ; $6b73: $b1
	and c                                            ; $6b74: $a1
	rst $38                                          ; $6b75: $ff
	inc b                                            ; $6b76: $04
	ld a, [hl]                                       ; $6b77: $7e
	dec b                                            ; $6b78: $05
	nop                                              ; $6b79: $00
	xor d                                            ; $6b7a: $aa

jr_037_6b7b:
	jr nc, @+$0e                                     ; $6b7b: $30 $0c

	ld a, [hl]                                       ; $6b7d: $7e
	nop                                              ; $6b7e: $00
	inc l                                            ; $6b7f: $2c
	inc c                                            ; $6b80: $0c
	or c                                             ; $6b81: $b1
	or c                                             ; $6b82: $b1
	rst $38                                          ; $6b83: $ff
	inc bc                                           ; $6b84: $03
	add hl, hl                                       ; $6b85: $29
	ld a, [bc]                                       ; $6b86: $0a
	or c                                             ; $6b87: $b1
	ld hl, $0000                                     ; $6b88: $21 $00 $00

jr_037_6b8b:
	add hl, hl                                       ; $6b8b: $29
	ld [bc], a                                       ; $6b8c: $02
	or c                                             ; $6b8d: $b1
	sub c                                            ; $6b8e: $91
	rst $38                                          ; $6b8f: $ff
	inc b                                            ; $6b90: $04
	add hl, hl                                       ; $6b91: $29
	inc c                                            ; $6b92: $0c
	jp z, $0c2a                                      ; $6b93: $ca $2a $0c

	sub [hl]                                         ; $6b96: $96
	rst $38                                          ; $6b97: $ff
	inc b                                            ; $6b98: $04
	inc l                                            ; $6b99: $2c
	dec bc                                           ; $6b9a: $0b
	nop                                              ; $6b9b: $00
	ld bc, $a1b5                                     ; $6b9c: $01 $b5 $a1
	ld [bc], a                                       ; $6b9f: $02
	rst $38                                          ; $6ba0: $ff
	dec b                                            ; $6ba1: $05

jr_037_6ba2:
	inc l                                            ; $6ba2: $2c
	jr @-$4d                                         ; $6ba3: $18 $b1

	ld hl, $0000                                     ; $6ba5: $21 $00 $00
	inc l                                            ; $6ba8: $2c
	inc c                                            ; $6ba9: $0c
	or c                                             ; $6baa: $b1
	and c                                            ; $6bab: $a1
	rst $38                                          ; $6bac: $ff
	inc bc                                           ; $6bad: $03
	ld a, [hl+]                                      ; $6bae: $2a
	inc c                                            ; $6baf: $0c
	inc l                                            ; $6bb0: $2c
	inc c                                            ; $6bb1: $0c
	or c                                             ; $6bb2: $b1
	sub c                                            ; $6bb3: $91
	rst $38                                          ; $6bb4: $ff
	inc b                                            ; $6bb5: $04
	ld a, [hl]                                       ; $6bb6: $7e
	dec b                                            ; $6bb7: $05
	nop                                              ; $6bb8: $00
	xor d                                            ; $6bb9: $aa
	ld sp, $b10c                                     ; $6bba: $31 $0c $b1

jr_037_6bbd:
	sub c                                            ; $6bbd: $91
	rst $38                                          ; $6bbe: $ff
	inc bc                                           ; $6bbf: $03
	ld a, [hl]                                       ; $6bc0: $7e
	nop                                              ; $6bc1: $00
	cpl                                              ; $6bc2: $2f
	inc c                                            ; $6bc3: $0c
	sub [hl]                                         ; $6bc4: $96
	rst $38                                          ; $6bc5: $ff
	inc b                                            ; $6bc6: $04
	inc l                                            ; $6bc7: $2c
	jr jr_037_6b7b                                   ; $6bc8: $18 $b1

	sub c                                            ; $6bca: $91
	rst $38                                          ; $6bcb: $ff
	inc b                                            ; $6bcc: $04
	ld a, [hl+]                                      ; $6bcd: $2a
	inc c                                            ; $6bce: $0c
	jr z, jr_037_6bdd                                ; $6bcf: $28 $0c

	ld a, [hl+]                                      ; $6bd1: $2a
	inc c                                            ; $6bd2: $0c
	or c                                             ; $6bd3: $b1
	and c                                            ; $6bd4: $a1
	rst $38                                          ; $6bd5: $ff
	dec b                                            ; $6bd6: $05
	inc l                                            ; $6bd7: $2c
	jr jr_037_6b8b                                   ; $6bd8: $18 $b1

	ld sp, $0000                                     ; $6bda: $31 $00 $00

jr_037_6bdd:
	inc l                                            ; $6bdd: $2c
	jr jr_037_6ba2                                   ; $6bde: $18 $c2

	inc l                                            ; $6be0: $2c
	ld [de], a                                       ; $6be1: $12
	or c                                             ; $6be2: $b1
	ld d, c                                          ; $6be3: $51
	rst $38                                          ; $6be4: $ff
	inc bc                                           ; $6be5: $03
	inc h                                            ; $6be6: $24
	ld [bc], a                                       ; $6be7: $02
	add $27                                          ; $6be8: $c6 $27
	ld [bc], a                                       ; $6bea: $02
	ret z                                            ; $6beb: $c8

	ld a, [hl+]                                      ; $6bec: $2a
	ld [bc], a                                       ; $6bed: $02
	or c                                             ; $6bee: $b1
	and c                                            ; $6bef: $a1
	rst $38                                          ; $6bf0: $ff
	dec b                                            ; $6bf1: $05
	inc l                                            ; $6bf2: $2c
	jr @-$4d                                         ; $6bf3: $18 $b1

	ld sp, $0000                                     ; $6bf5: $31 $00 $00
	inc l                                            ; $6bf8: $2c
	jr jr_037_6bbd                                   ; $6bf9: $18 $c2

	inc l                                            ; $6bfb: $2c
	ld [de], a                                       ; $6bfc: $12
	pop bc                                           ; $6bfd: $c1
	inc l                                            ; $6bfe: $2c
	ld c, $b1                                        ; $6bff: $0e $b1
	ld d, c                                          ; $6c01: $51
	rst $38                                          ; $6c02: $ff
	inc bc                                           ; $6c03: $03
	jr nz, jr_037_6c08                               ; $6c04: $20 $02

	add $22                                          ; $6c06: $c6 $22

jr_037_6c08:
	ld [bc], a                                       ; $6c08: $02
	rst JumpTable                                          ; $6c09: $c7
	dec h                                            ; $6c0a: $25
	ld [bc], a                                       ; $6c0b: $02
	cp $ff                                           ; $6c0c: $fe $ff
	ret nc                                           ; $6c0e: $d0

	ld c, e                                          ; $6c0f: $4b
	adc b                                            ; $6c10: $88
	nop                                              ; $6c11: $00
	ld b, $fe                                        ; $6c12: $06 $fe
	jp nz, $0c31                                     ; $6c14: $c2 $31 $0c

	call nz, $0c31                                   ; $6c17: $c4 $31 $0c
	add $31                                          ; $6c1a: $c6 $31
	jr jr_037_6c1e                                   ; $6c1c: $18 $00

jr_037_6c1e:
	inc c                                            ; $6c1e: $0c
	call nz, $0c31                                   ; $6c1f: $c4 $31 $0c
	jr nc, @+$0e                                     ; $6c22: $30 $0c

	call nz, $0c30                                   ; $6c24: $c4 $30 $0c
	add $30                                          ; $6c27: $c6 $30
	inc c                                            ; $6c29: $0c
	nop                                              ; $6c2a: $00
	inc c                                            ; $6c2b: $0c
	call nz, $0c2c                                   ; $6c2c: $c4 $2c $0c

jr_037_6c2f:
	ld l, $0c                                        ; $6c2f: $2e $0c
	jp nz, $0c31                                     ; $6c31: $c2 $31 $0c

	call nz, $0c31                                   ; $6c34: $c4 $31 $0c
	add $31                                          ; $6c37: $c6 $31
	jr jr_037_6c3b                                   ; $6c39: $18 $00

jr_037_6c3b:
	inc c                                            ; $6c3b: $0c
	call nz, $0c31                                   ; $6c3c: $c4 $31 $0c
	jp nz, $0c30                                     ; $6c3f: $c2 $30 $0c

	call nz, $0c30                                   ; $6c42: $c4 $30 $0c
	add $30                                          ; $6c45: $c6 $30
	ld a, [bc]                                       ; $6c47: $0a
	nop                                              ; $6c48: $00
	ld [bc], a                                       ; $6c49: $02
	call nz, $0c31                                   ; $6c4a: $c4 $31 $0c
	inc sp                                           ; $6c4d: $33
	inc c                                            ; $6c4e: $0c
	dec [hl]                                         ; $6c4f: $35
	inc c                                            ; $6c50: $0c
	jp nz, $3188                                     ; $6c51: $c2 $88 $31

	inc c                                            ; $6c54: $0c
	call nz, $0c31                                   ; $6c55: $c4 $31 $0c
	add $31                                          ; $6c58: $c6 $31
	inc e                                            ; $6c5a: $1c
	nop                                              ; $6c5b: $00
	ld a, [bc]                                       ; $6c5c: $0a
	jp nz, $0531                                     ; $6c5d: $c2 $31 $05

	jp nz, $0532                                     ; $6c60: $c2 $32 $05

	jp nz, $0c33                                     ; $6c63: $c2 $33 $0c

	call nz, $0c33                                   ; $6c66: $c4 $33 $0c
	add $33                                          ; $6c69: $c6 $33
	jr jr_037_6c2f                                   ; $6c6b: $18 $c2

	inc l                                            ; $6c6d: $2c
	inc c                                            ; $6c6e: $0c
	jp nz, $0c28                                     ; $6c6f: $c2 $28 $0c

	jp nz, $0c1e                                     ; $6c72: $c2 $1e $0c

	jp nz, $0b25                                     ; $6c75: $c2 $25 $0b

	nop                                              ; $6c78: $00
	ld bc, $2ac4                                     ; $6c79: $01 $c4 $2a
	inc c                                            ; $6c7c: $0c
	inc l                                            ; $6c7d: $2c
	inc c                                            ; $6c7e: $0c
	ld l, $0b                                        ; $6c7f: $2e $0b
	nop                                              ; $6c81: $00
	ld bc, $0b31                                     ; $6c82: $01 $31 $0b
	nop                                              ; $6c85: $00
	ld bc, $31c4                                     ; $6c86: $01 $c4 $31
	inc c                                            ; $6c89: $0c
	add $31                                          ; $6c8a: $c6 $31
	inc c                                            ; $6c8c: $0c
	call nz, $1030                                   ; $6c8d: $c4 $30 $10
	add $30                                          ; $6c90: $c6 $30
	ld a, [hl+]                                      ; $6c92: $2a
	nop                                              ; $6c93: $00
	inc b                                            ; $6c94: $04
	cp $ff                                           ; $6c95: $fe $ff
	rst $38                                          ; $6c97: $ff
	rst $38                                          ; $6c98: $ff
	rst $38                                          ; $6c99: $ff
	rst $38                                          ; $6c9a: $ff
	rst $38                                          ; $6c9b: $ff
	rst $38                                          ; $6c9c: $ff
	rst $38                                          ; $6c9d: $ff
	rst $38                                          ; $6c9e: $ff
	rst $38                                          ; $6c9f: $ff
	rst $38                                          ; $6ca0: $ff
	rst $38                                          ; $6ca1: $ff
	rst $38                                          ; $6ca2: $ff
	rst $38                                          ; $6ca3: $ff
	rst $38                                          ; $6ca4: $ff
	rst $38                                          ; $6ca5: $ff
	rst $38                                          ; $6ca6: $ff
	rst $38                                          ; $6ca7: $ff
	rst $38                                          ; $6ca8: $ff
	rst $38                                          ; $6ca9: $ff
	rst $38                                          ; $6caa: $ff
	rst $38                                          ; $6cab: $ff
	rst $38                                          ; $6cac: $ff
	rst $38                                          ; $6cad: $ff
	rst $38                                          ; $6cae: $ff
	rst $38                                          ; $6caf: $ff
	rst $38                                          ; $6cb0: $ff
	rst $38                                          ; $6cb1: $ff
	rst $38                                          ; $6cb2: $ff
	rst $38                                          ; $6cb3: $ff
	rst $38                                          ; $6cb4: $ff
	rst $38                                          ; $6cb5: $ff
	rst $38                                          ; $6cb6: $ff
	rst $38                                          ; $6cb7: $ff
	rst $38                                          ; $6cb8: $ff
	rst $38                                          ; $6cb9: $ff
	rst $38                                          ; $6cba: $ff
	rst $38                                          ; $6cbb: $ff
	rst $38                                          ; $6cbc: $ff
	rst $38                                          ; $6cbd: $ff
	rst $38                                          ; $6cbe: $ff
	rst $38                                          ; $6cbf: $ff
	rst $38                                          ; $6cc0: $ff
	rst $38                                          ; $6cc1: $ff
	rst $38                                          ; $6cc2: $ff
	rst $38                                          ; $6cc3: $ff
	rst $38                                          ; $6cc4: $ff
	rst $38                                          ; $6cc5: $ff
	rst $38                                          ; $6cc6: $ff
	rst $38                                          ; $6cc7: $ff
	rst $38                                          ; $6cc8: $ff
	rst $38                                          ; $6cc9: $ff
	rst $38                                          ; $6cca: $ff
	rst $38                                          ; $6ccb: $ff
	rst $38                                          ; $6ccc: $ff
	rst $38                                          ; $6ccd: $ff
	rst $38                                          ; $6cce: $ff
	rst $38                                          ; $6ccf: $ff
	rst $38                                          ; $6cd0: $ff
	rst $38                                          ; $6cd1: $ff
	rst $38                                          ; $6cd2: $ff
	rst $38                                          ; $6cd3: $ff
	rst $38                                          ; $6cd4: $ff
	rst $38                                          ; $6cd5: $ff
	rst $38                                          ; $6cd6: $ff
	rst $38                                          ; $6cd7: $ff
	rst $38                                          ; $6cd8: $ff
	rst $38                                          ; $6cd9: $ff
	rst $38                                          ; $6cda: $ff
	rst $38                                          ; $6cdb: $ff
	rst $38                                          ; $6cdc: $ff
	rst $38                                          ; $6cdd: $ff
	rst $38                                          ; $6cde: $ff
	rst $38                                          ; $6cdf: $ff
	rst $38                                          ; $6ce0: $ff
	rst $38                                          ; $6ce1: $ff
	rst $38                                          ; $6ce2: $ff
	rst $38                                          ; $6ce3: $ff
	rst $38                                          ; $6ce4: $ff
	rst $38                                          ; $6ce5: $ff
	rst $38                                          ; $6ce6: $ff
	rst $38                                          ; $6ce7: $ff
	rst $38                                          ; $6ce8: $ff
	rst $38                                          ; $6ce9: $ff
	rst $38                                          ; $6cea: $ff
	rst $38                                          ; $6ceb: $ff
	rst $38                                          ; $6cec: $ff
	rst $38                                          ; $6ced: $ff
	rst $38                                          ; $6cee: $ff
	rst $38                                          ; $6cef: $ff
	rst $38                                          ; $6cf0: $ff
	rst $38                                          ; $6cf1: $ff
	rst $38                                          ; $6cf2: $ff
	rst $38                                          ; $6cf3: $ff
	rst $38                                          ; $6cf4: $ff
	rst $38                                          ; $6cf5: $ff
	rst $38                                          ; $6cf6: $ff
	rst $38                                          ; $6cf7: $ff
	rst $38                                          ; $6cf8: $ff
	rst $38                                          ; $6cf9: $ff
	rst $38                                          ; $6cfa: $ff
	rst $38                                          ; $6cfb: $ff
	rst $38                                          ; $6cfc: $ff
	rst $38                                          ; $6cfd: $ff
	rst $38                                          ; $6cfe: $ff
	rst $38                                          ; $6cff: $ff
	rst $38                                          ; $6d00: $ff
	rst $38                                          ; $6d01: $ff
	rst $38                                          ; $6d02: $ff
	rst $38                                          ; $6d03: $ff
	rst $38                                          ; $6d04: $ff
	rst $38                                          ; $6d05: $ff
	rst $38                                          ; $6d06: $ff
	rst $38                                          ; $6d07: $ff
	rst $38                                          ; $6d08: $ff
	rst $38                                          ; $6d09: $ff
	rst $38                                          ; $6d0a: $ff
	rst $38                                          ; $6d0b: $ff
	rst $38                                          ; $6d0c: $ff
	rst $38                                          ; $6d0d: $ff
	rst $38                                          ; $6d0e: $ff
	rst $38                                          ; $6d0f: $ff
	rst $38                                          ; $6d10: $ff
	rst $38                                          ; $6d11: $ff
	rst $38                                          ; $6d12: $ff
	rst $38                                          ; $6d13: $ff
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	rst $38                                          ; $6d16: $ff
	rst $38                                          ; $6d17: $ff
	rst $38                                          ; $6d18: $ff
	rst $38                                          ; $6d19: $ff
	rst $38                                          ; $6d1a: $ff
	rst $38                                          ; $6d1b: $ff
	rst $38                                          ; $6d1c: $ff
	rst $38                                          ; $6d1d: $ff
	rst $38                                          ; $6d1e: $ff
	rst $38                                          ; $6d1f: $ff
	rst $38                                          ; $6d20: $ff
	rst $38                                          ; $6d21: $ff
	rst $38                                          ; $6d22: $ff
	rst $38                                          ; $6d23: $ff
	rst $38                                          ; $6d24: $ff
	rst $38                                          ; $6d25: $ff
	rst $38                                          ; $6d26: $ff
	rst $38                                          ; $6d27: $ff
	rst $38                                          ; $6d28: $ff
	rst $38                                          ; $6d29: $ff
	rst $38                                          ; $6d2a: $ff
	rst $38                                          ; $6d2b: $ff
	rst $38                                          ; $6d2c: $ff
	rst $38                                          ; $6d2d: $ff
	rst $38                                          ; $6d2e: $ff
	rst $38                                          ; $6d2f: $ff
	rst $38                                          ; $6d30: $ff
	rst $38                                          ; $6d31: $ff
	rst $38                                          ; $6d32: $ff
	rst $38                                          ; $6d33: $ff
	rst $38                                          ; $6d34: $ff
	rst $38                                          ; $6d35: $ff
	rst $38                                          ; $6d36: $ff
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	rst $38                                          ; $6d39: $ff
	rst $38                                          ; $6d3a: $ff
	rst $38                                          ; $6d3b: $ff
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rst $38                                          ; $6d3e: $ff
	rst $38                                          ; $6d3f: $ff
	rst $38                                          ; $6d40: $ff
	rst $38                                          ; $6d41: $ff
	rst $38                                          ; $6d42: $ff
	rst $38                                          ; $6d43: $ff
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	rst $38                                          ; $6d46: $ff
	rst $38                                          ; $6d47: $ff
	rst $38                                          ; $6d48: $ff
	rst $38                                          ; $6d49: $ff
	rst $38                                          ; $6d4a: $ff
	rst $38                                          ; $6d4b: $ff
	rst $38                                          ; $6d4c: $ff
	rst $38                                          ; $6d4d: $ff
	rst $38                                          ; $6d4e: $ff
	rst $38                                          ; $6d4f: $ff
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	rst $38                                          ; $6d52: $ff
	rst $38                                          ; $6d53: $ff
	rst $38                                          ; $6d54: $ff
	rst $38                                          ; $6d55: $ff
	rst $38                                          ; $6d56: $ff
	rst $38                                          ; $6d57: $ff
	rst $38                                          ; $6d58: $ff
	rst $38                                          ; $6d59: $ff
	rst $38                                          ; $6d5a: $ff
	rst $38                                          ; $6d5b: $ff
	rst $38                                          ; $6d5c: $ff
	rst $38                                          ; $6d5d: $ff
	rst $38                                          ; $6d5e: $ff
	rst $38                                          ; $6d5f: $ff
	rst $38                                          ; $6d60: $ff
	rst $38                                          ; $6d61: $ff
	rst $38                                          ; $6d62: $ff
	rst $38                                          ; $6d63: $ff
	rst $38                                          ; $6d64: $ff
	rst $38                                          ; $6d65: $ff
	rst $38                                          ; $6d66: $ff
	rst $38                                          ; $6d67: $ff
	rst $38                                          ; $6d68: $ff
	rst $38                                          ; $6d69: $ff
	rst $38                                          ; $6d6a: $ff
	rst $38                                          ; $6d6b: $ff
	rst $38                                          ; $6d6c: $ff
	rst $38                                          ; $6d6d: $ff
	rst $38                                          ; $6d6e: $ff
	rst $38                                          ; $6d6f: $ff
	rst $38                                          ; $6d70: $ff
	rst $38                                          ; $6d71: $ff
	rst $38                                          ; $6d72: $ff
	rst $38                                          ; $6d73: $ff
	rst $38                                          ; $6d74: $ff
	rst $38                                          ; $6d75: $ff
	rst $38                                          ; $6d76: $ff
	rst $38                                          ; $6d77: $ff
	rst $38                                          ; $6d78: $ff
	rst $38                                          ; $6d79: $ff
	rst $38                                          ; $6d7a: $ff
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	rst $38                                          ; $6d7d: $ff
	rst $38                                          ; $6d7e: $ff
	rst $38                                          ; $6d7f: $ff
	rst $38                                          ; $6d80: $ff
	rst $38                                          ; $6d81: $ff
	rst $38                                          ; $6d82: $ff
	rst $38                                          ; $6d83: $ff
	rst $38                                          ; $6d84: $ff
	rst $38                                          ; $6d85: $ff
	rst $38                                          ; $6d86: $ff
	rst $38                                          ; $6d87: $ff
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	rst $38                                          ; $6d8a: $ff
	rst $38                                          ; $6d8b: $ff
	rst $38                                          ; $6d8c: $ff
	rst $38                                          ; $6d8d: $ff
	rst $38                                          ; $6d8e: $ff
	rst $38                                          ; $6d8f: $ff
	rst $38                                          ; $6d90: $ff
	rst $38                                          ; $6d91: $ff
	rst $38                                          ; $6d92: $ff
	rst $38                                          ; $6d93: $ff
	rst $38                                          ; $6d94: $ff
	rst $38                                          ; $6d95: $ff
	rst $38                                          ; $6d96: $ff
	rst $38                                          ; $6d97: $ff
	rst $38                                          ; $6d98: $ff
	rst $38                                          ; $6d99: $ff
	rst $38                                          ; $6d9a: $ff
	rst $38                                          ; $6d9b: $ff
	rst $38                                          ; $6d9c: $ff
	rst $38                                          ; $6d9d: $ff
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst $38                                          ; $6da0: $ff
	rst $38                                          ; $6da1: $ff
	rst $38                                          ; $6da2: $ff
	rst $38                                          ; $6da3: $ff
	rst $38                                          ; $6da4: $ff
	rst $38                                          ; $6da5: $ff
	rst $38                                          ; $6da6: $ff
	rst $38                                          ; $6da7: $ff
	rst $38                                          ; $6da8: $ff
	rst $38                                          ; $6da9: $ff
	rst $38                                          ; $6daa: $ff
	rst $38                                          ; $6dab: $ff
	rst $38                                          ; $6dac: $ff
	rst $38                                          ; $6dad: $ff
	rst $38                                          ; $6dae: $ff
	rst $38                                          ; $6daf: $ff
	rst $38                                          ; $6db0: $ff
	rst $38                                          ; $6db1: $ff
	rst $38                                          ; $6db2: $ff
	rst $38                                          ; $6db3: $ff
	rst $38                                          ; $6db4: $ff
	rst $38                                          ; $6db5: $ff
	rst $38                                          ; $6db6: $ff
	rst $38                                          ; $6db7: $ff
	rst $38                                          ; $6db8: $ff
	rst $38                                          ; $6db9: $ff
	rst $38                                          ; $6dba: $ff
	rst $38                                          ; $6dbb: $ff
	rst $38                                          ; $6dbc: $ff
	rst $38                                          ; $6dbd: $ff
	rst $38                                          ; $6dbe: $ff
	rst $38                                          ; $6dbf: $ff
	rst $38                                          ; $6dc0: $ff
	rst $38                                          ; $6dc1: $ff
	rst $38                                          ; $6dc2: $ff
	rst $38                                          ; $6dc3: $ff
	rst $38                                          ; $6dc4: $ff
	rst $38                                          ; $6dc5: $ff
	rst $38                                          ; $6dc6: $ff
	rst $38                                          ; $6dc7: $ff
	rst $38                                          ; $6dc8: $ff
	rst $38                                          ; $6dc9: $ff
	rst $38                                          ; $6dca: $ff
	rst $38                                          ; $6dcb: $ff
	rst $38                                          ; $6dcc: $ff
	rst $38                                          ; $6dcd: $ff
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rst $38                                          ; $6dd2: $ff
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	rst $38                                          ; $6dd5: $ff
	rst $38                                          ; $6dd6: $ff
	rst $38                                          ; $6dd7: $ff
	rst $38                                          ; $6dd8: $ff
	rst $38                                          ; $6dd9: $ff
	rst $38                                          ; $6dda: $ff
	rst $38                                          ; $6ddb: $ff
	rst $38                                          ; $6ddc: $ff
	rst $38                                          ; $6ddd: $ff
	rst $38                                          ; $6dde: $ff
	rst $38                                          ; $6ddf: $ff
	rst $38                                          ; $6de0: $ff
	rst $38                                          ; $6de1: $ff
	rst $38                                          ; $6de2: $ff
	rst $38                                          ; $6de3: $ff
	rst $38                                          ; $6de4: $ff
	rst $38                                          ; $6de5: $ff
	rst $38                                          ; $6de6: $ff
	rst $38                                          ; $6de7: $ff
	rst $38                                          ; $6de8: $ff
	rst $38                                          ; $6de9: $ff
	rst $38                                          ; $6dea: $ff
	rst $38                                          ; $6deb: $ff
	rst $38                                          ; $6dec: $ff
	rst $38                                          ; $6ded: $ff
	rst $38                                          ; $6dee: $ff
	rst $38                                          ; $6def: $ff
	rst $38                                          ; $6df0: $ff
	rst $38                                          ; $6df1: $ff
	rst $38                                          ; $6df2: $ff
	rst $38                                          ; $6df3: $ff
	rst $38                                          ; $6df4: $ff
	rst $38                                          ; $6df5: $ff
	rst $38                                          ; $6df6: $ff
	rst $38                                          ; $6df7: $ff
	rst $38                                          ; $6df8: $ff
	rst $38                                          ; $6df9: $ff
	rst $38                                          ; $6dfa: $ff
	rst $38                                          ; $6dfb: $ff
	rst $38                                          ; $6dfc: $ff
	rst $38                                          ; $6dfd: $ff
	rst $38                                          ; $6dfe: $ff
	rst $38                                          ; $6dff: $ff
	rst $38                                          ; $6e00: $ff
	rst $38                                          ; $6e01: $ff
	rst $38                                          ; $6e02: $ff
	rst $38                                          ; $6e03: $ff
	rst $38                                          ; $6e04: $ff
	rst $38                                          ; $6e05: $ff
	rst $38                                          ; $6e06: $ff
	rst $38                                          ; $6e07: $ff
	rst $38                                          ; $6e08: $ff
	rst $38                                          ; $6e09: $ff
	rst $38                                          ; $6e0a: $ff
	rst $38                                          ; $6e0b: $ff
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	rst $38                                          ; $6e0e: $ff
	rst $38                                          ; $6e0f: $ff
	rst $38                                          ; $6e10: $ff
	rst $38                                          ; $6e11: $ff
	rst $38                                          ; $6e12: $ff
	rst $38                                          ; $6e13: $ff
	rst $38                                          ; $6e14: $ff
	rst $38                                          ; $6e15: $ff
	rst $38                                          ; $6e16: $ff
	rst $38                                          ; $6e17: $ff
	rst $38                                          ; $6e18: $ff
	rst $38                                          ; $6e19: $ff
	rst $38                                          ; $6e1a: $ff
	rst $38                                          ; $6e1b: $ff
	rst $38                                          ; $6e1c: $ff
	rst $38                                          ; $6e1d: $ff
	rst $38                                          ; $6e1e: $ff
	rst $38                                          ; $6e1f: $ff
	rst $38                                          ; $6e20: $ff
	rst $38                                          ; $6e21: $ff
	rst $38                                          ; $6e22: $ff
	rst $38                                          ; $6e23: $ff
	rst $38                                          ; $6e24: $ff
	rst $38                                          ; $6e25: $ff
	rst $38                                          ; $6e26: $ff
	rst $38                                          ; $6e27: $ff
	rst $38                                          ; $6e28: $ff
	rst $38                                          ; $6e29: $ff
	rst $38                                          ; $6e2a: $ff
	rst $38                                          ; $6e2b: $ff
	rst $38                                          ; $6e2c: $ff
	rst $38                                          ; $6e2d: $ff
	rst $38                                          ; $6e2e: $ff
	rst $38                                          ; $6e2f: $ff
	rst $38                                          ; $6e30: $ff
	rst $38                                          ; $6e31: $ff
	rst $38                                          ; $6e32: $ff
	rst $38                                          ; $6e33: $ff
	rst $38                                          ; $6e34: $ff
	rst $38                                          ; $6e35: $ff
	rst $38                                          ; $6e36: $ff
	rst $38                                          ; $6e37: $ff
	rst $38                                          ; $6e38: $ff
	rst $38                                          ; $6e39: $ff
	rst $38                                          ; $6e3a: $ff
	rst $38                                          ; $6e3b: $ff
	rst $38                                          ; $6e3c: $ff
	rst $38                                          ; $6e3d: $ff
	rst $38                                          ; $6e3e: $ff
	rst $38                                          ; $6e3f: $ff
	rst $38                                          ; $6e40: $ff
	rst $38                                          ; $6e41: $ff
	rst $38                                          ; $6e42: $ff
	rst $38                                          ; $6e43: $ff
	rst $38                                          ; $6e44: $ff
	rst $38                                          ; $6e45: $ff
	rst $38                                          ; $6e46: $ff
	rst $38                                          ; $6e47: $ff
	rst $38                                          ; $6e48: $ff
	rst $38                                          ; $6e49: $ff
	rst $38                                          ; $6e4a: $ff
	rst $38                                          ; $6e4b: $ff
	rst $38                                          ; $6e4c: $ff
	rst $38                                          ; $6e4d: $ff
	rst $38                                          ; $6e4e: $ff
	rst $38                                          ; $6e4f: $ff
	rst $38                                          ; $6e50: $ff
	rst $38                                          ; $6e51: $ff
	rst $38                                          ; $6e52: $ff
	rst $38                                          ; $6e53: $ff
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	rst $38                                          ; $6e56: $ff
	rst $38                                          ; $6e57: $ff
	rst $38                                          ; $6e58: $ff
	rst $38                                          ; $6e59: $ff
	rst $38                                          ; $6e5a: $ff
	rst $38                                          ; $6e5b: $ff
	rst $38                                          ; $6e5c: $ff
	rst $38                                          ; $6e5d: $ff
	rst $38                                          ; $6e5e: $ff
	rst $38                                          ; $6e5f: $ff
	rst $38                                          ; $6e60: $ff
	rst $38                                          ; $6e61: $ff
	rst $38                                          ; $6e62: $ff
	rst $38                                          ; $6e63: $ff
	rst $38                                          ; $6e64: $ff
	rst $38                                          ; $6e65: $ff
	rst $38                                          ; $6e66: $ff
	rst $38                                          ; $6e67: $ff
	rst $38                                          ; $6e68: $ff
	rst $38                                          ; $6e69: $ff
	rst $38                                          ; $6e6a: $ff
	rst $38                                          ; $6e6b: $ff
	rst $38                                          ; $6e6c: $ff
	rst $38                                          ; $6e6d: $ff
	rst $38                                          ; $6e6e: $ff
	rst $38                                          ; $6e6f: $ff
	rst $38                                          ; $6e70: $ff
	rst $38                                          ; $6e71: $ff
	rst $38                                          ; $6e72: $ff
	rst $38                                          ; $6e73: $ff
	rst $38                                          ; $6e74: $ff
	rst $38                                          ; $6e75: $ff
	rst $38                                          ; $6e76: $ff
	rst $38                                          ; $6e77: $ff
	rst $38                                          ; $6e78: $ff
	rst $38                                          ; $6e79: $ff
	rst $38                                          ; $6e7a: $ff
	rst $38                                          ; $6e7b: $ff
	rst $38                                          ; $6e7c: $ff
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	rst $38                                          ; $6e7f: $ff
	rst $38                                          ; $6e80: $ff
	rst $38                                          ; $6e81: $ff
	rst $38                                          ; $6e82: $ff
	rst $38                                          ; $6e83: $ff
	rst $38                                          ; $6e84: $ff
	rst $38                                          ; $6e85: $ff
	rst $38                                          ; $6e86: $ff
	rst $38                                          ; $6e87: $ff
	rst $38                                          ; $6e88: $ff
	rst $38                                          ; $6e89: $ff
	rst $38                                          ; $6e8a: $ff
	rst $38                                          ; $6e8b: $ff
	rst $38                                          ; $6e8c: $ff
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	rst $38                                          ; $6e8f: $ff
	rst $38                                          ; $6e90: $ff
	rst $38                                          ; $6e91: $ff
	rst $38                                          ; $6e92: $ff
	rst $38                                          ; $6e93: $ff
	rst $38                                          ; $6e94: $ff
	rst $38                                          ; $6e95: $ff
	rst $38                                          ; $6e96: $ff
	rst $38                                          ; $6e97: $ff
	rst $38                                          ; $6e98: $ff
	rst $38                                          ; $6e99: $ff
	rst $38                                          ; $6e9a: $ff
	rst $38                                          ; $6e9b: $ff
	rst $38                                          ; $6e9c: $ff
	rst $38                                          ; $6e9d: $ff
	rst $38                                          ; $6e9e: $ff
	rst $38                                          ; $6e9f: $ff
	rst $38                                          ; $6ea0: $ff
	rst $38                                          ; $6ea1: $ff
	rst $38                                          ; $6ea2: $ff
	rst $38                                          ; $6ea3: $ff
	rst $38                                          ; $6ea4: $ff
	rst $38                                          ; $6ea5: $ff
	rst $38                                          ; $6ea6: $ff
	rst $38                                          ; $6ea7: $ff
	rst $38                                          ; $6ea8: $ff
	rst $38                                          ; $6ea9: $ff
	rst $38                                          ; $6eaa: $ff
	rst $38                                          ; $6eab: $ff
	rst $38                                          ; $6eac: $ff
	rst $38                                          ; $6ead: $ff
	rst $38                                          ; $6eae: $ff
	rst $38                                          ; $6eaf: $ff
	rst $38                                          ; $6eb0: $ff
	rst $38                                          ; $6eb1: $ff
	rst $38                                          ; $6eb2: $ff
	rst $38                                          ; $6eb3: $ff
	rst $38                                          ; $6eb4: $ff
	rst $38                                          ; $6eb5: $ff
	rst $38                                          ; $6eb6: $ff
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	rst $38                                          ; $6ebb: $ff
	rst $38                                          ; $6ebc: $ff
	rst $38                                          ; $6ebd: $ff
	rst $38                                          ; $6ebe: $ff
	rst $38                                          ; $6ebf: $ff
	rst $38                                          ; $6ec0: $ff
	rst $38                                          ; $6ec1: $ff
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff
	rst $38                                          ; $6ec4: $ff
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	rst $38                                          ; $6ec7: $ff
	rst $38                                          ; $6ec8: $ff
	rst $38                                          ; $6ec9: $ff
	rst $38                                          ; $6eca: $ff
	rst $38                                          ; $6ecb: $ff
	rst $38                                          ; $6ecc: $ff
	rst $38                                          ; $6ecd: $ff
	rst $38                                          ; $6ece: $ff
	rst $38                                          ; $6ecf: $ff
	rst $38                                          ; $6ed0: $ff
	rst $38                                          ; $6ed1: $ff
	rst $38                                          ; $6ed2: $ff
	rst $38                                          ; $6ed3: $ff
	rst $38                                          ; $6ed4: $ff
	rst $38                                          ; $6ed5: $ff
	rst $38                                          ; $6ed6: $ff
	rst $38                                          ; $6ed7: $ff
	rst $38                                          ; $6ed8: $ff
	rst $38                                          ; $6ed9: $ff
	rst $38                                          ; $6eda: $ff
	rst $38                                          ; $6edb: $ff
	rst $38                                          ; $6edc: $ff
	rst $38                                          ; $6edd: $ff
	rst $38                                          ; $6ede: $ff
	rst $38                                          ; $6edf: $ff
	rst $38                                          ; $6ee0: $ff
	rst $38                                          ; $6ee1: $ff
	rst $38                                          ; $6ee2: $ff
	rst $38                                          ; $6ee3: $ff
	rst $38                                          ; $6ee4: $ff
	rst $38                                          ; $6ee5: $ff
	rst $38                                          ; $6ee6: $ff
	rst $38                                          ; $6ee7: $ff
	rst $38                                          ; $6ee8: $ff
	rst $38                                          ; $6ee9: $ff
	rst $38                                          ; $6eea: $ff
	rst $38                                          ; $6eeb: $ff
	rst $38                                          ; $6eec: $ff
	rst $38                                          ; $6eed: $ff
	rst $38                                          ; $6eee: $ff
	rst $38                                          ; $6eef: $ff
	rst $38                                          ; $6ef0: $ff
	rst $38                                          ; $6ef1: $ff
	rst $38                                          ; $6ef2: $ff
	rst $38                                          ; $6ef3: $ff
	rst $38                                          ; $6ef4: $ff
	rst $38                                          ; $6ef5: $ff
	rst $38                                          ; $6ef6: $ff
	rst $38                                          ; $6ef7: $ff
	rst $38                                          ; $6ef8: $ff
	rst $38                                          ; $6ef9: $ff
	rst $38                                          ; $6efa: $ff
	rst $38                                          ; $6efb: $ff
	rst $38                                          ; $6efc: $ff
	rst $38                                          ; $6efd: $ff
	rst $38                                          ; $6efe: $ff
	rst $38                                          ; $6eff: $ff
	rst $38                                          ; $6f00: $ff
	rst $38                                          ; $6f01: $ff
	rst $38                                          ; $6f02: $ff
	rst $38                                          ; $6f03: $ff
	rst $38                                          ; $6f04: $ff
	rst $38                                          ; $6f05: $ff
	rst $38                                          ; $6f06: $ff
	rst $38                                          ; $6f07: $ff
	rst $38                                          ; $6f08: $ff
	rst $38                                          ; $6f09: $ff
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	rst $38                                          ; $6f0c: $ff
	rst $38                                          ; $6f0d: $ff
	rst $38                                          ; $6f0e: $ff
	rst $38                                          ; $6f0f: $ff
	rst $38                                          ; $6f10: $ff
	rst $38                                          ; $6f11: $ff
	rst $38                                          ; $6f12: $ff
	rst $38                                          ; $6f13: $ff
	rst $38                                          ; $6f14: $ff
	rst $38                                          ; $6f15: $ff
	rst $38                                          ; $6f16: $ff
	rst $38                                          ; $6f17: $ff
	rst $38                                          ; $6f18: $ff
	rst $38                                          ; $6f19: $ff
	rst $38                                          ; $6f1a: $ff
	rst $38                                          ; $6f1b: $ff
	rst $38                                          ; $6f1c: $ff
	rst $38                                          ; $6f1d: $ff
	rst $38                                          ; $6f1e: $ff
	rst $38                                          ; $6f1f: $ff
	rst $38                                          ; $6f20: $ff
	rst $38                                          ; $6f21: $ff
	rst $38                                          ; $6f22: $ff
	rst $38                                          ; $6f23: $ff
	rst $38                                          ; $6f24: $ff
	rst $38                                          ; $6f25: $ff
	rst $38                                          ; $6f26: $ff
	rst $38                                          ; $6f27: $ff
	rst $38                                          ; $6f28: $ff
	rst $38                                          ; $6f29: $ff
	rst $38                                          ; $6f2a: $ff
	rst $38                                          ; $6f2b: $ff
	rst $38                                          ; $6f2c: $ff
	rst $38                                          ; $6f2d: $ff
	rst $38                                          ; $6f2e: $ff
	rst $38                                          ; $6f2f: $ff
	rst $38                                          ; $6f30: $ff
	rst $38                                          ; $6f31: $ff
	rst $38                                          ; $6f32: $ff
	rst $38                                          ; $6f33: $ff
	rst $38                                          ; $6f34: $ff
	rst $38                                          ; $6f35: $ff
	rst $38                                          ; $6f36: $ff
	rst $38                                          ; $6f37: $ff
	rst $38                                          ; $6f38: $ff
	rst $38                                          ; $6f39: $ff
	rst $38                                          ; $6f3a: $ff
	rst $38                                          ; $6f3b: $ff
	rst $38                                          ; $6f3c: $ff
	rst $38                                          ; $6f3d: $ff
	rst $38                                          ; $6f3e: $ff
	rst $38                                          ; $6f3f: $ff
	rst $38                                          ; $6f40: $ff
	rst $38                                          ; $6f41: $ff
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	rst $38                                          ; $6f44: $ff
	rst $38                                          ; $6f45: $ff
	rst $38                                          ; $6f46: $ff
	rst $38                                          ; $6f47: $ff
	rst $38                                          ; $6f48: $ff
	rst $38                                          ; $6f49: $ff
	rst $38                                          ; $6f4a: $ff
	rst $38                                          ; $6f4b: $ff
	rst $38                                          ; $6f4c: $ff
	rst $38                                          ; $6f4d: $ff
	rst $38                                          ; $6f4e: $ff
	rst $38                                          ; $6f4f: $ff
	rst $38                                          ; $6f50: $ff
	rst $38                                          ; $6f51: $ff
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	rst $38                                          ; $6f54: $ff
	rst $38                                          ; $6f55: $ff
	rst $38                                          ; $6f56: $ff
	rst $38                                          ; $6f57: $ff
	rst $38                                          ; $6f58: $ff
	rst $38                                          ; $6f59: $ff
	rst $38                                          ; $6f5a: $ff
	rst $38                                          ; $6f5b: $ff
	rst $38                                          ; $6f5c: $ff
	rst $38                                          ; $6f5d: $ff
	rst $38                                          ; $6f5e: $ff
	rst $38                                          ; $6f5f: $ff
	rst $38                                          ; $6f60: $ff
	rst $38                                          ; $6f61: $ff
	rst $38                                          ; $6f62: $ff
	rst $38                                          ; $6f63: $ff
	rst $38                                          ; $6f64: $ff
	rst $38                                          ; $6f65: $ff
	rst $38                                          ; $6f66: $ff
	rst $38                                          ; $6f67: $ff
	rst $38                                          ; $6f68: $ff
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rst $38                                          ; $6f6e: $ff
	rst $38                                          ; $6f6f: $ff
	rst $38                                          ; $6f70: $ff
	rst $38                                          ; $6f71: $ff
	rst $38                                          ; $6f72: $ff
	rst $38                                          ; $6f73: $ff
	rst $38                                          ; $6f74: $ff
	rst $38                                          ; $6f75: $ff
	rst $38                                          ; $6f76: $ff
	rst $38                                          ; $6f77: $ff
	rst $38                                          ; $6f78: $ff
	rst $38                                          ; $6f79: $ff
	rst $38                                          ; $6f7a: $ff
	rst $38                                          ; $6f7b: $ff
	rst $38                                          ; $6f7c: $ff
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff
	rst $38                                          ; $6f7f: $ff
	rst $38                                          ; $6f80: $ff
	rst $38                                          ; $6f81: $ff
	rst $38                                          ; $6f82: $ff
	rst $38                                          ; $6f83: $ff
	rst $38                                          ; $6f84: $ff
	rst $38                                          ; $6f85: $ff
	rst $38                                          ; $6f86: $ff
	rst $38                                          ; $6f87: $ff
	rst $38                                          ; $6f88: $ff
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	rst $38                                          ; $6f8b: $ff
	rst $38                                          ; $6f8c: $ff
	rst $38                                          ; $6f8d: $ff
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	rst $38                                          ; $6f92: $ff
	rst $38                                          ; $6f93: $ff
	rst $38                                          ; $6f94: $ff
	rst $38                                          ; $6f95: $ff
	rst $38                                          ; $6f96: $ff
	rst $38                                          ; $6f97: $ff
	rst $38                                          ; $6f98: $ff
	rst $38                                          ; $6f99: $ff
	rst $38                                          ; $6f9a: $ff
	rst $38                                          ; $6f9b: $ff
	rst $38                                          ; $6f9c: $ff
	rst $38                                          ; $6f9d: $ff
	rst $38                                          ; $6f9e: $ff
	rst $38                                          ; $6f9f: $ff
	rst $38                                          ; $6fa0: $ff
	rst $38                                          ; $6fa1: $ff
	rst $38                                          ; $6fa2: $ff
	rst $38                                          ; $6fa3: $ff
	rst $38                                          ; $6fa4: $ff
	rst $38                                          ; $6fa5: $ff
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	rst $38                                          ; $6fa8: $ff
	rst $38                                          ; $6fa9: $ff
	rst $38                                          ; $6faa: $ff
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	rst $38                                          ; $6fad: $ff
	rst $38                                          ; $6fae: $ff
	rst $38                                          ; $6faf: $ff
	rst $38                                          ; $6fb0: $ff
	rst $38                                          ; $6fb1: $ff
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	rst $38                                          ; $6fb4: $ff
	rst $38                                          ; $6fb5: $ff
	rst $38                                          ; $6fb6: $ff
	rst $38                                          ; $6fb7: $ff
	rst $38                                          ; $6fb8: $ff
	rst $38                                          ; $6fb9: $ff
	rst $38                                          ; $6fba: $ff
	rst $38                                          ; $6fbb: $ff
	rst $38                                          ; $6fbc: $ff
	rst $38                                          ; $6fbd: $ff
	rst $38                                          ; $6fbe: $ff
	rst $38                                          ; $6fbf: $ff
	rst $38                                          ; $6fc0: $ff
	rst $38                                          ; $6fc1: $ff
	rst $38                                          ; $6fc2: $ff
	rst $38                                          ; $6fc3: $ff
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	rst $38                                          ; $6fc6: $ff
	rst $38                                          ; $6fc7: $ff
	rst $38                                          ; $6fc8: $ff
	rst $38                                          ; $6fc9: $ff
	rst $38                                          ; $6fca: $ff
	rst $38                                          ; $6fcb: $ff
	rst $38                                          ; $6fcc: $ff
	rst $38                                          ; $6fcd: $ff
	rst $38                                          ; $6fce: $ff
	rst $38                                          ; $6fcf: $ff
	rst $38                                          ; $6fd0: $ff
	rst $38                                          ; $6fd1: $ff
	rst $38                                          ; $6fd2: $ff
	rst $38                                          ; $6fd3: $ff
	rst $38                                          ; $6fd4: $ff
	rst $38                                          ; $6fd5: $ff
	rst $38                                          ; $6fd6: $ff
	rst $38                                          ; $6fd7: $ff
	rst $38                                          ; $6fd8: $ff
	rst $38                                          ; $6fd9: $ff
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	rst $38                                          ; $6fdf: $ff
	rst $38                                          ; $6fe0: $ff
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	rst $38                                          ; $6fe3: $ff
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	rst $38                                          ; $6fe7: $ff
	rst $38                                          ; $6fe8: $ff
	rst $38                                          ; $6fe9: $ff
	rst $38                                          ; $6fea: $ff
	rst $38                                          ; $6feb: $ff
	rst $38                                          ; $6fec: $ff
	rst $38                                          ; $6fed: $ff
	rst $38                                          ; $6fee: $ff
	rst $38                                          ; $6fef: $ff
	rst $38                                          ; $6ff0: $ff
	rst $38                                          ; $6ff1: $ff
	rst $38                                          ; $6ff2: $ff
	rst $38                                          ; $6ff3: $ff
	rst $38                                          ; $6ff4: $ff
	rst $38                                          ; $6ff5: $ff
	rst $38                                          ; $6ff6: $ff
	rst $38                                          ; $6ff7: $ff
	rst $38                                          ; $6ff8: $ff
	rst $38                                          ; $6ff9: $ff
	rst $38                                          ; $6ffa: $ff
	rst $38                                          ; $6ffb: $ff
	rst $38                                          ; $6ffc: $ff
	rst $38                                          ; $6ffd: $ff
	rst $38                                          ; $6ffe: $ff
	rst $38                                          ; $6fff: $ff
	rst $38                                          ; $7000: $ff
	rst $38                                          ; $7001: $ff
	rst $38                                          ; $7002: $ff
	rst $38                                          ; $7003: $ff
	rst $38                                          ; $7004: $ff
	rst $38                                          ; $7005: $ff
	rst $38                                          ; $7006: $ff
	rst $38                                          ; $7007: $ff
	rst $38                                          ; $7008: $ff
	rst $38                                          ; $7009: $ff
	rst $38                                          ; $700a: $ff
	rst $38                                          ; $700b: $ff
	rst $38                                          ; $700c: $ff
	rst $38                                          ; $700d: $ff
	rst $38                                          ; $700e: $ff
	rst $38                                          ; $700f: $ff
	rst $38                                          ; $7010: $ff
	rst $38                                          ; $7011: $ff
	rst $38                                          ; $7012: $ff
	rst $38                                          ; $7013: $ff
	rst $38                                          ; $7014: $ff
	rst $38                                          ; $7015: $ff
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	rst $38                                          ; $7018: $ff
	rst $38                                          ; $7019: $ff
	rst $38                                          ; $701a: $ff
	rst $38                                          ; $701b: $ff
	rst $38                                          ; $701c: $ff
	rst $38                                          ; $701d: $ff
	rst $38                                          ; $701e: $ff
	rst $38                                          ; $701f: $ff
	rst $38                                          ; $7020: $ff
	rst $38                                          ; $7021: $ff
	rst $38                                          ; $7022: $ff
	rst $38                                          ; $7023: $ff
	rst $38                                          ; $7024: $ff
	rst $38                                          ; $7025: $ff
	rst $38                                          ; $7026: $ff
	rst $38                                          ; $7027: $ff
	rst $38                                          ; $7028: $ff
	rst $38                                          ; $7029: $ff
	rst $38                                          ; $702a: $ff
	rst $38                                          ; $702b: $ff
	rst $38                                          ; $702c: $ff
	rst $38                                          ; $702d: $ff
	rst $38                                          ; $702e: $ff
	rst $38                                          ; $702f: $ff
	rst $38                                          ; $7030: $ff
	rst $38                                          ; $7031: $ff
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	rst $38                                          ; $7035: $ff
	rst $38                                          ; $7036: $ff
	rst $38                                          ; $7037: $ff
	rst $38                                          ; $7038: $ff
	rst $38                                          ; $7039: $ff
	rst $38                                          ; $703a: $ff
	rst $38                                          ; $703b: $ff
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	rst $38                                          ; $703e: $ff
	rst $38                                          ; $703f: $ff
	rst $38                                          ; $7040: $ff
	rst $38                                          ; $7041: $ff
	rst $38                                          ; $7042: $ff
	rst $38                                          ; $7043: $ff
	rst $38                                          ; $7044: $ff
	rst $38                                          ; $7045: $ff
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	rst $38                                          ; $7048: $ff
	rst $38                                          ; $7049: $ff
	rst $38                                          ; $704a: $ff
	rst $38                                          ; $704b: $ff
	rst $38                                          ; $704c: $ff
	rst $38                                          ; $704d: $ff
	rst $38                                          ; $704e: $ff
	rst $38                                          ; $704f: $ff
	rst $38                                          ; $7050: $ff
	rst $38                                          ; $7051: $ff
	rst $38                                          ; $7052: $ff
	rst $38                                          ; $7053: $ff
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	rst $38                                          ; $7056: $ff
	rst $38                                          ; $7057: $ff
	rst $38                                          ; $7058: $ff
	rst $38                                          ; $7059: $ff
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	rst $38                                          ; $705c: $ff
	rst $38                                          ; $705d: $ff
	rst $38                                          ; $705e: $ff
	rst $38                                          ; $705f: $ff
	rst $38                                          ; $7060: $ff
	rst $38                                          ; $7061: $ff
	rst $38                                          ; $7062: $ff
	rst $38                                          ; $7063: $ff
	rst $38                                          ; $7064: $ff
	rst $38                                          ; $7065: $ff
	rst $38                                          ; $7066: $ff
	rst $38                                          ; $7067: $ff
	rst $38                                          ; $7068: $ff
	rst $38                                          ; $7069: $ff
	rst $38                                          ; $706a: $ff
	rst $38                                          ; $706b: $ff
	rst $38                                          ; $706c: $ff
	rst $38                                          ; $706d: $ff
	rst $38                                          ; $706e: $ff
	rst $38                                          ; $706f: $ff
	rst $38                                          ; $7070: $ff
	rst $38                                          ; $7071: $ff
	rst $38                                          ; $7072: $ff
	rst $38                                          ; $7073: $ff
	rst $38                                          ; $7074: $ff
	rst $38                                          ; $7075: $ff
	rst $38                                          ; $7076: $ff
	rst $38                                          ; $7077: $ff
	rst $38                                          ; $7078: $ff
	rst $38                                          ; $7079: $ff
	rst $38                                          ; $707a: $ff
	rst $38                                          ; $707b: $ff
	rst $38                                          ; $707c: $ff
	rst $38                                          ; $707d: $ff
	rst $38                                          ; $707e: $ff
	rst $38                                          ; $707f: $ff
	rst $38                                          ; $7080: $ff
	rst $38                                          ; $7081: $ff
	rst $38                                          ; $7082: $ff
	rst $38                                          ; $7083: $ff
	rst $38                                          ; $7084: $ff
	rst $38                                          ; $7085: $ff
	rst $38                                          ; $7086: $ff
	rst $38                                          ; $7087: $ff
	rst $38                                          ; $7088: $ff
	rst $38                                          ; $7089: $ff
	rst $38                                          ; $708a: $ff
	rst $38                                          ; $708b: $ff
	rst $38                                          ; $708c: $ff
	rst $38                                          ; $708d: $ff
	rst $38                                          ; $708e: $ff
	rst $38                                          ; $708f: $ff
	rst $38                                          ; $7090: $ff
	rst $38                                          ; $7091: $ff
	rst $38                                          ; $7092: $ff
	rst $38                                          ; $7093: $ff
	rst $38                                          ; $7094: $ff
	rst $38                                          ; $7095: $ff
	rst $38                                          ; $7096: $ff
	rst $38                                          ; $7097: $ff
	rst $38                                          ; $7098: $ff
	rst $38                                          ; $7099: $ff
	rst $38                                          ; $709a: $ff
	rst $38                                          ; $709b: $ff
	rst $38                                          ; $709c: $ff
	rst $38                                          ; $709d: $ff
	rst $38                                          ; $709e: $ff
	rst $38                                          ; $709f: $ff
	rst $38                                          ; $70a0: $ff
	rst $38                                          ; $70a1: $ff
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	rst $38                                          ; $70a4: $ff
	rst $38                                          ; $70a5: $ff
	rst $38                                          ; $70a6: $ff
	rst $38                                          ; $70a7: $ff
	rst $38                                          ; $70a8: $ff
	rst $38                                          ; $70a9: $ff
	rst $38                                          ; $70aa: $ff
	rst $38                                          ; $70ab: $ff
	rst $38                                          ; $70ac: $ff
	rst $38                                          ; $70ad: $ff
	rst $38                                          ; $70ae: $ff
	rst $38                                          ; $70af: $ff
	rst $38                                          ; $70b0: $ff
	rst $38                                          ; $70b1: $ff
	rst $38                                          ; $70b2: $ff
	rst $38                                          ; $70b3: $ff
	rst $38                                          ; $70b4: $ff
	rst $38                                          ; $70b5: $ff
	rst $38                                          ; $70b6: $ff
	rst $38                                          ; $70b7: $ff
	rst $38                                          ; $70b8: $ff
	rst $38                                          ; $70b9: $ff
	rst $38                                          ; $70ba: $ff
	rst $38                                          ; $70bb: $ff
	rst $38                                          ; $70bc: $ff
	rst $38                                          ; $70bd: $ff
	rst $38                                          ; $70be: $ff
	rst $38                                          ; $70bf: $ff
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	rst $38                                          ; $70c2: $ff
	rst $38                                          ; $70c3: $ff
	rst $38                                          ; $70c4: $ff
	rst $38                                          ; $70c5: $ff
	rst $38                                          ; $70c6: $ff
	rst $38                                          ; $70c7: $ff
	rst $38                                          ; $70c8: $ff
	rst $38                                          ; $70c9: $ff
	rst $38                                          ; $70ca: $ff
	rst $38                                          ; $70cb: $ff
	rst $38                                          ; $70cc: $ff
	rst $38                                          ; $70cd: $ff
	rst $38                                          ; $70ce: $ff
	rst $38                                          ; $70cf: $ff
	rst $38                                          ; $70d0: $ff
	rst $38                                          ; $70d1: $ff
	rst $38                                          ; $70d2: $ff
	rst $38                                          ; $70d3: $ff
	rst $38                                          ; $70d4: $ff
	rst $38                                          ; $70d5: $ff
	rst $38                                          ; $70d6: $ff
	rst $38                                          ; $70d7: $ff
	rst $38                                          ; $70d8: $ff
	rst $38                                          ; $70d9: $ff
	rst $38                                          ; $70da: $ff
	rst $38                                          ; $70db: $ff
	rst $38                                          ; $70dc: $ff
	rst $38                                          ; $70dd: $ff
	rst $38                                          ; $70de: $ff
	rst $38                                          ; $70df: $ff
	rst $38                                          ; $70e0: $ff
	rst $38                                          ; $70e1: $ff
	rst $38                                          ; $70e2: $ff
	rst $38                                          ; $70e3: $ff
	rst $38                                          ; $70e4: $ff
	rst $38                                          ; $70e5: $ff
	rst $38                                          ; $70e6: $ff
	rst $38                                          ; $70e7: $ff
	rst $38                                          ; $70e8: $ff
	rst $38                                          ; $70e9: $ff
	rst $38                                          ; $70ea: $ff
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	rst $38                                          ; $70ed: $ff
	rst $38                                          ; $70ee: $ff
	rst $38                                          ; $70ef: $ff
	rst $38                                          ; $70f0: $ff
	rst $38                                          ; $70f1: $ff
	rst $38                                          ; $70f2: $ff
	rst $38                                          ; $70f3: $ff
	rst $38                                          ; $70f4: $ff
	rst $38                                          ; $70f5: $ff
	rst $38                                          ; $70f6: $ff
	rst $38                                          ; $70f7: $ff
	rst $38                                          ; $70f8: $ff
	rst $38                                          ; $70f9: $ff
	rst $38                                          ; $70fa: $ff
	rst $38                                          ; $70fb: $ff
	rst $38                                          ; $70fc: $ff
	rst $38                                          ; $70fd: $ff
	rst $38                                          ; $70fe: $ff
	rst $38                                          ; $70ff: $ff
	rst $38                                          ; $7100: $ff
	rst $38                                          ; $7101: $ff
	rst $38                                          ; $7102: $ff
	rst $38                                          ; $7103: $ff
	rst $38                                          ; $7104: $ff
	rst $38                                          ; $7105: $ff
	rst $38                                          ; $7106: $ff
	rst $38                                          ; $7107: $ff
	rst $38                                          ; $7108: $ff
	rst $38                                          ; $7109: $ff
	rst $38                                          ; $710a: $ff
	rst $38                                          ; $710b: $ff
	rst $38                                          ; $710c: $ff
	rst $38                                          ; $710d: $ff
	rst $38                                          ; $710e: $ff
	rst $38                                          ; $710f: $ff
	rst $38                                          ; $7110: $ff
	rst $38                                          ; $7111: $ff
	rst $38                                          ; $7112: $ff
	rst $38                                          ; $7113: $ff
	rst $38                                          ; $7114: $ff
	rst $38                                          ; $7115: $ff
	rst $38                                          ; $7116: $ff
	rst $38                                          ; $7117: $ff
	rst $38                                          ; $7118: $ff
	rst $38                                          ; $7119: $ff
	rst $38                                          ; $711a: $ff
	rst $38                                          ; $711b: $ff
	rst $38                                          ; $711c: $ff
	rst $38                                          ; $711d: $ff
	rst $38                                          ; $711e: $ff
	rst $38                                          ; $711f: $ff
	rst $38                                          ; $7120: $ff
	rst $38                                          ; $7121: $ff
	rst $38                                          ; $7122: $ff
	rst $38                                          ; $7123: $ff
	rst $38                                          ; $7124: $ff
	rst $38                                          ; $7125: $ff
	rst $38                                          ; $7126: $ff
	rst $38                                          ; $7127: $ff
	rst $38                                          ; $7128: $ff
	rst $38                                          ; $7129: $ff
	rst $38                                          ; $712a: $ff
	rst $38                                          ; $712b: $ff
	rst $38                                          ; $712c: $ff
	rst $38                                          ; $712d: $ff
	rst $38                                          ; $712e: $ff
	rst $38                                          ; $712f: $ff
	rst $38                                          ; $7130: $ff
	rst $38                                          ; $7131: $ff
	rst $38                                          ; $7132: $ff
	rst $38                                          ; $7133: $ff
	rst $38                                          ; $7134: $ff
	rst $38                                          ; $7135: $ff
	rst $38                                          ; $7136: $ff
	rst $38                                          ; $7137: $ff
	rst $38                                          ; $7138: $ff
	rst $38                                          ; $7139: $ff
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	rst $38                                          ; $713c: $ff
	rst $38                                          ; $713d: $ff
	rst $38                                          ; $713e: $ff
	rst $38                                          ; $713f: $ff
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	rst $38                                          ; $7142: $ff
	rst $38                                          ; $7143: $ff
	rst $38                                          ; $7144: $ff
	rst $38                                          ; $7145: $ff
	rst $38                                          ; $7146: $ff
	rst $38                                          ; $7147: $ff
	rst $38                                          ; $7148: $ff
	rst $38                                          ; $7149: $ff
	rst $38                                          ; $714a: $ff
	rst $38                                          ; $714b: $ff
	rst $38                                          ; $714c: $ff
	rst $38                                          ; $714d: $ff
	rst $38                                          ; $714e: $ff
	rst $38                                          ; $714f: $ff
	rst $38                                          ; $7150: $ff
	rst $38                                          ; $7151: $ff
	rst $38                                          ; $7152: $ff
	rst $38                                          ; $7153: $ff
	rst $38                                          ; $7154: $ff
	rst $38                                          ; $7155: $ff
	rst $38                                          ; $7156: $ff
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	rst $38                                          ; $7159: $ff
	rst $38                                          ; $715a: $ff
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	rst $38                                          ; $715d: $ff
	rst $38                                          ; $715e: $ff
	rst $38                                          ; $715f: $ff
	rst $38                                          ; $7160: $ff
	rst $38                                          ; $7161: $ff
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	rst $38                                          ; $7164: $ff
	rst $38                                          ; $7165: $ff
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rst $38                                          ; $716d: $ff
	rst $38                                          ; $716e: $ff
	rst $38                                          ; $716f: $ff
	rst $38                                          ; $7170: $ff
	rst $38                                          ; $7171: $ff
	rst $38                                          ; $7172: $ff
	rst $38                                          ; $7173: $ff
	rst $38                                          ; $7174: $ff
	rst $38                                          ; $7175: $ff
	rst $38                                          ; $7176: $ff
	rst $38                                          ; $7177: $ff
	rst $38                                          ; $7178: $ff
	rst $38                                          ; $7179: $ff
	rst $38                                          ; $717a: $ff
	rst $38                                          ; $717b: $ff
	rst $38                                          ; $717c: $ff
	rst $38                                          ; $717d: $ff
	rst $38                                          ; $717e: $ff
	rst $38                                          ; $717f: $ff
	rst $38                                          ; $7180: $ff
	rst $38                                          ; $7181: $ff
	rst $38                                          ; $7182: $ff
	rst $38                                          ; $7183: $ff
	rst $38                                          ; $7184: $ff
	rst $38                                          ; $7185: $ff
	rst $38                                          ; $7186: $ff
	rst $38                                          ; $7187: $ff
	rst $38                                          ; $7188: $ff
	rst $38                                          ; $7189: $ff
	rst $38                                          ; $718a: $ff
	rst $38                                          ; $718b: $ff
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	rst $38                                          ; $718e: $ff
	rst $38                                          ; $718f: $ff
	rst $38                                          ; $7190: $ff
	rst $38                                          ; $7191: $ff
	rst $38                                          ; $7192: $ff
	rst $38                                          ; $7193: $ff
	rst $38                                          ; $7194: $ff
	rst $38                                          ; $7195: $ff
	rst $38                                          ; $7196: $ff
	rst $38                                          ; $7197: $ff
	rst $38                                          ; $7198: $ff
	rst $38                                          ; $7199: $ff
	rst $38                                          ; $719a: $ff
	rst $38                                          ; $719b: $ff
	rst $38                                          ; $719c: $ff
	rst $38                                          ; $719d: $ff
	rst $38                                          ; $719e: $ff
	rst $38                                          ; $719f: $ff
	rst $38                                          ; $71a0: $ff
	rst $38                                          ; $71a1: $ff
	rst $38                                          ; $71a2: $ff
	rst $38                                          ; $71a3: $ff
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	rst $38                                          ; $71a6: $ff
	rst $38                                          ; $71a7: $ff
	rst $38                                          ; $71a8: $ff
	rst $38                                          ; $71a9: $ff
	rst $38                                          ; $71aa: $ff
	rst $38                                          ; $71ab: $ff
	rst $38                                          ; $71ac: $ff
	rst $38                                          ; $71ad: $ff
	rst $38                                          ; $71ae: $ff
	rst $38                                          ; $71af: $ff
	rst $38                                          ; $71b0: $ff
	rst $38                                          ; $71b1: $ff
	rst $38                                          ; $71b2: $ff
	rst $38                                          ; $71b3: $ff
	rst $38                                          ; $71b4: $ff
	rst $38                                          ; $71b5: $ff
	rst $38                                          ; $71b6: $ff
	rst $38                                          ; $71b7: $ff
	rst $38                                          ; $71b8: $ff
	rst $38                                          ; $71b9: $ff
	rst $38                                          ; $71ba: $ff
	rst $38                                          ; $71bb: $ff
	rst $38                                          ; $71bc: $ff
	rst $38                                          ; $71bd: $ff
	rst $38                                          ; $71be: $ff
	rst $38                                          ; $71bf: $ff
	rst $38                                          ; $71c0: $ff
	rst $38                                          ; $71c1: $ff
	rst $38                                          ; $71c2: $ff
	rst $38                                          ; $71c3: $ff
	rst $38                                          ; $71c4: $ff
	rst $38                                          ; $71c5: $ff
	rst $38                                          ; $71c6: $ff
	rst $38                                          ; $71c7: $ff
	rst $38                                          ; $71c8: $ff
	rst $38                                          ; $71c9: $ff
	rst $38                                          ; $71ca: $ff
	rst $38                                          ; $71cb: $ff
	rst $38                                          ; $71cc: $ff
	rst $38                                          ; $71cd: $ff
	rst $38                                          ; $71ce: $ff
	rst $38                                          ; $71cf: $ff
	rst $38                                          ; $71d0: $ff
	rst $38                                          ; $71d1: $ff
	rst $38                                          ; $71d2: $ff
	rst $38                                          ; $71d3: $ff
	rst $38                                          ; $71d4: $ff
	rst $38                                          ; $71d5: $ff
	rst $38                                          ; $71d6: $ff
	rst $38                                          ; $71d7: $ff
	rst $38                                          ; $71d8: $ff
	rst $38                                          ; $71d9: $ff
	rst $38                                          ; $71da: $ff
	rst $38                                          ; $71db: $ff
	rst $38                                          ; $71dc: $ff
	rst $38                                          ; $71dd: $ff
	rst $38                                          ; $71de: $ff
	rst $38                                          ; $71df: $ff
	rst $38                                          ; $71e0: $ff
	rst $38                                          ; $71e1: $ff
	rst $38                                          ; $71e2: $ff
	rst $38                                          ; $71e3: $ff
	rst $38                                          ; $71e4: $ff
	rst $38                                          ; $71e5: $ff
	rst $38                                          ; $71e6: $ff
	rst $38                                          ; $71e7: $ff
	rst $38                                          ; $71e8: $ff
	rst $38                                          ; $71e9: $ff
	rst $38                                          ; $71ea: $ff
	rst $38                                          ; $71eb: $ff
	rst $38                                          ; $71ec: $ff
	rst $38                                          ; $71ed: $ff
	rst $38                                          ; $71ee: $ff
	rst $38                                          ; $71ef: $ff
	rst $38                                          ; $71f0: $ff
	rst $38                                          ; $71f1: $ff
	rst $38                                          ; $71f2: $ff
	rst $38                                          ; $71f3: $ff
	rst $38                                          ; $71f4: $ff
	rst $38                                          ; $71f5: $ff
	rst $38                                          ; $71f6: $ff
	rst $38                                          ; $71f7: $ff
	rst $38                                          ; $71f8: $ff
	rst $38                                          ; $71f9: $ff
	rst $38                                          ; $71fa: $ff
	rst $38                                          ; $71fb: $ff
	rst $38                                          ; $71fc: $ff
	rst $38                                          ; $71fd: $ff
	rst $38                                          ; $71fe: $ff
	rst $38                                          ; $71ff: $ff
	rst $38                                          ; $7200: $ff
	rst $38                                          ; $7201: $ff
	rst $38                                          ; $7202: $ff
	rst $38                                          ; $7203: $ff
	rst $38                                          ; $7204: $ff
	rst $38                                          ; $7205: $ff
	rst $38                                          ; $7206: $ff
	rst $38                                          ; $7207: $ff
	rst $38                                          ; $7208: $ff
	rst $38                                          ; $7209: $ff
	rst $38                                          ; $720a: $ff
	rst $38                                          ; $720b: $ff
	rst $38                                          ; $720c: $ff
	rst $38                                          ; $720d: $ff
	rst $38                                          ; $720e: $ff
	rst $38                                          ; $720f: $ff
	rst $38                                          ; $7210: $ff
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	rst $38                                          ; $7213: $ff
	rst $38                                          ; $7214: $ff
	rst $38                                          ; $7215: $ff
	rst $38                                          ; $7216: $ff
	rst $38                                          ; $7217: $ff
	rst $38                                          ; $7218: $ff
	rst $38                                          ; $7219: $ff
	rst $38                                          ; $721a: $ff
	rst $38                                          ; $721b: $ff
	rst $38                                          ; $721c: $ff
	rst $38                                          ; $721d: $ff
	rst $38                                          ; $721e: $ff
	rst $38                                          ; $721f: $ff
	rst $38                                          ; $7220: $ff
	rst $38                                          ; $7221: $ff
	rst $38                                          ; $7222: $ff
	rst $38                                          ; $7223: $ff
	rst $38                                          ; $7224: $ff
	rst $38                                          ; $7225: $ff
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rst $38                                          ; $722a: $ff
	rst $38                                          ; $722b: $ff
	rst $38                                          ; $722c: $ff
	rst $38                                          ; $722d: $ff
	rst $38                                          ; $722e: $ff
	rst $38                                          ; $722f: $ff
	rst $38                                          ; $7230: $ff
	rst $38                                          ; $7231: $ff
	rst $38                                          ; $7232: $ff
	rst $38                                          ; $7233: $ff
	rst $38                                          ; $7234: $ff
	rst $38                                          ; $7235: $ff
	rst $38                                          ; $7236: $ff
	rst $38                                          ; $7237: $ff
	rst $38                                          ; $7238: $ff
	rst $38                                          ; $7239: $ff
	rst $38                                          ; $723a: $ff
	rst $38                                          ; $723b: $ff
	rst $38                                          ; $723c: $ff
	rst $38                                          ; $723d: $ff
	rst $38                                          ; $723e: $ff
	rst $38                                          ; $723f: $ff
	rst $38                                          ; $7240: $ff
	rst $38                                          ; $7241: $ff
	rst $38                                          ; $7242: $ff
	rst $38                                          ; $7243: $ff
	rst $38                                          ; $7244: $ff
	rst $38                                          ; $7245: $ff
	rst $38                                          ; $7246: $ff
	rst $38                                          ; $7247: $ff
	rst $38                                          ; $7248: $ff
	rst $38                                          ; $7249: $ff
	rst $38                                          ; $724a: $ff
	rst $38                                          ; $724b: $ff
	rst $38                                          ; $724c: $ff
	rst $38                                          ; $724d: $ff
	rst $38                                          ; $724e: $ff
	rst $38                                          ; $724f: $ff
	rst $38                                          ; $7250: $ff
	rst $38                                          ; $7251: $ff
	rst $38                                          ; $7252: $ff
	rst $38                                          ; $7253: $ff
	rst $38                                          ; $7254: $ff
	rst $38                                          ; $7255: $ff
	rst $38                                          ; $7256: $ff
	rst $38                                          ; $7257: $ff
	rst $38                                          ; $7258: $ff
	rst $38                                          ; $7259: $ff
	rst $38                                          ; $725a: $ff
	rst $38                                          ; $725b: $ff
	rst $38                                          ; $725c: $ff
	rst $38                                          ; $725d: $ff
	rst $38                                          ; $725e: $ff
	rst $38                                          ; $725f: $ff
	rst $38                                          ; $7260: $ff
	rst $38                                          ; $7261: $ff
	rst $38                                          ; $7262: $ff
	rst $38                                          ; $7263: $ff
	rst $38                                          ; $7264: $ff
	rst $38                                          ; $7265: $ff
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	rst $38                                          ; $7268: $ff
	rst $38                                          ; $7269: $ff
	rst $38                                          ; $726a: $ff
	rst $38                                          ; $726b: $ff
	rst $38                                          ; $726c: $ff
	rst $38                                          ; $726d: $ff
	rst $38                                          ; $726e: $ff
	rst $38                                          ; $726f: $ff
	rst $38                                          ; $7270: $ff
	rst $38                                          ; $7271: $ff
	rst $38                                          ; $7272: $ff
	rst $38                                          ; $7273: $ff
	rst $38                                          ; $7274: $ff
	rst $38                                          ; $7275: $ff
	rst $38                                          ; $7276: $ff
	rst $38                                          ; $7277: $ff
	rst $38                                          ; $7278: $ff
	rst $38                                          ; $7279: $ff
	rst $38                                          ; $727a: $ff
	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	rst $38                                          ; $727d: $ff
	rst $38                                          ; $727e: $ff
	rst $38                                          ; $727f: $ff
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	rst $38                                          ; $7282: $ff
	rst $38                                          ; $7283: $ff
	rst $38                                          ; $7284: $ff
	rst $38                                          ; $7285: $ff
	rst $38                                          ; $7286: $ff
	rst $38                                          ; $7287: $ff
	rst $38                                          ; $7288: $ff
	rst $38                                          ; $7289: $ff
	rst $38                                          ; $728a: $ff
	rst $38                                          ; $728b: $ff
	rst $38                                          ; $728c: $ff
	rst $38                                          ; $728d: $ff
	rst $38                                          ; $728e: $ff
	rst $38                                          ; $728f: $ff
	rst $38                                          ; $7290: $ff
	rst $38                                          ; $7291: $ff
	rst $38                                          ; $7292: $ff
	rst $38                                          ; $7293: $ff
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	rst $38                                          ; $7296: $ff
	rst $38                                          ; $7297: $ff
	rst $38                                          ; $7298: $ff
	rst $38                                          ; $7299: $ff
	rst $38                                          ; $729a: $ff
	rst $38                                          ; $729b: $ff
	rst $38                                          ; $729c: $ff
	rst $38                                          ; $729d: $ff
	rst $38                                          ; $729e: $ff
	rst $38                                          ; $729f: $ff
	rst $38                                          ; $72a0: $ff
	rst $38                                          ; $72a1: $ff
	rst $38                                          ; $72a2: $ff
	rst $38                                          ; $72a3: $ff
	rst $38                                          ; $72a4: $ff
	rst $38                                          ; $72a5: $ff
	rst $38                                          ; $72a6: $ff
	rst $38                                          ; $72a7: $ff
	rst $38                                          ; $72a8: $ff
	rst $38                                          ; $72a9: $ff
	rst $38                                          ; $72aa: $ff
	rst $38                                          ; $72ab: $ff
	rst $38                                          ; $72ac: $ff
	rst $38                                          ; $72ad: $ff
	rst $38                                          ; $72ae: $ff
	rst $38                                          ; $72af: $ff
	rst $38                                          ; $72b0: $ff
	rst $38                                          ; $72b1: $ff
	rst $38                                          ; $72b2: $ff
	rst $38                                          ; $72b3: $ff
	rst $38                                          ; $72b4: $ff
	rst $38                                          ; $72b5: $ff
	rst $38                                          ; $72b6: $ff
	rst $38                                          ; $72b7: $ff
	rst $38                                          ; $72b8: $ff
	rst $38                                          ; $72b9: $ff
	rst $38                                          ; $72ba: $ff
	rst $38                                          ; $72bb: $ff
	rst $38                                          ; $72bc: $ff
	rst $38                                          ; $72bd: $ff
	rst $38                                          ; $72be: $ff
	rst $38                                          ; $72bf: $ff
	rst $38                                          ; $72c0: $ff
	rst $38                                          ; $72c1: $ff
	rst $38                                          ; $72c2: $ff
	rst $38                                          ; $72c3: $ff
	rst $38                                          ; $72c4: $ff
	rst $38                                          ; $72c5: $ff
	rst $38                                          ; $72c6: $ff
	rst $38                                          ; $72c7: $ff
	rst $38                                          ; $72c8: $ff
	rst $38                                          ; $72c9: $ff
	rst $38                                          ; $72ca: $ff
	rst $38                                          ; $72cb: $ff
	rst $38                                          ; $72cc: $ff
	rst $38                                          ; $72cd: $ff
	rst $38                                          ; $72ce: $ff
	rst $38                                          ; $72cf: $ff
	rst $38                                          ; $72d0: $ff
	rst $38                                          ; $72d1: $ff
	rst $38                                          ; $72d2: $ff
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	rst $38                                          ; $72d5: $ff
	rst $38                                          ; $72d6: $ff
	rst $38                                          ; $72d7: $ff
	rst $38                                          ; $72d8: $ff
	rst $38                                          ; $72d9: $ff
	rst $38                                          ; $72da: $ff
	rst $38                                          ; $72db: $ff
	rst $38                                          ; $72dc: $ff
	rst $38                                          ; $72dd: $ff
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	rst $38                                          ; $72e0: $ff
	rst $38                                          ; $72e1: $ff
	rst $38                                          ; $72e2: $ff
	rst $38                                          ; $72e3: $ff
	rst $38                                          ; $72e4: $ff
	rst $38                                          ; $72e5: $ff
	rst $38                                          ; $72e6: $ff
	rst $38                                          ; $72e7: $ff
	rst $38                                          ; $72e8: $ff
	rst $38                                          ; $72e9: $ff
	rst $38                                          ; $72ea: $ff
	rst $38                                          ; $72eb: $ff
	rst $38                                          ; $72ec: $ff
	rst $38                                          ; $72ed: $ff
	rst $38                                          ; $72ee: $ff
	rst $38                                          ; $72ef: $ff
	rst $38                                          ; $72f0: $ff
	rst $38                                          ; $72f1: $ff
	rst $38                                          ; $72f2: $ff
	rst $38                                          ; $72f3: $ff
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	rst $38                                          ; $72f6: $ff
	rst $38                                          ; $72f7: $ff
	rst $38                                          ; $72f8: $ff
	rst $38                                          ; $72f9: $ff
	rst $38                                          ; $72fa: $ff
	rst $38                                          ; $72fb: $ff
	rst $38                                          ; $72fc: $ff
	rst $38                                          ; $72fd: $ff
	rst $38                                          ; $72fe: $ff
	rst $38                                          ; $72ff: $ff
	rst $38                                          ; $7300: $ff
	rst $38                                          ; $7301: $ff
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst $38                                          ; $7304: $ff
	rst $38                                          ; $7305: $ff
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	rst $38                                          ; $7308: $ff
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	rst $38                                          ; $730b: $ff
	rst $38                                          ; $730c: $ff
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	rst $38                                          ; $730f: $ff
	rst $38                                          ; $7310: $ff
	rst $38                                          ; $7311: $ff
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff
	rst $38                                          ; $7314: $ff
	rst $38                                          ; $7315: $ff
	rst $38                                          ; $7316: $ff
	rst $38                                          ; $7317: $ff
	rst $38                                          ; $7318: $ff
	rst $38                                          ; $7319: $ff
	rst $38                                          ; $731a: $ff
	rst $38                                          ; $731b: $ff
	rst $38                                          ; $731c: $ff
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	rst $38                                          ; $731f: $ff
	rst $38                                          ; $7320: $ff
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	rst $38                                          ; $732a: $ff
	rst $38                                          ; $732b: $ff
	rst $38                                          ; $732c: $ff
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff
	rst $38                                          ; $732f: $ff
	rst $38                                          ; $7330: $ff
	rst $38                                          ; $7331: $ff
	rst $38                                          ; $7332: $ff
	rst $38                                          ; $7333: $ff
	rst $38                                          ; $7334: $ff
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	rst $38                                          ; $7339: $ff
	rst $38                                          ; $733a: $ff
	rst $38                                          ; $733b: $ff
	rst $38                                          ; $733c: $ff
	rst $38                                          ; $733d: $ff
	rst $38                                          ; $733e: $ff
	rst $38                                          ; $733f: $ff
	rst $38                                          ; $7340: $ff
	rst $38                                          ; $7341: $ff
	rst $38                                          ; $7342: $ff
	rst $38                                          ; $7343: $ff
	rst $38                                          ; $7344: $ff
	rst $38                                          ; $7345: $ff
	rst $38                                          ; $7346: $ff
	rst $38                                          ; $7347: $ff
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	rst $38                                          ; $734a: $ff
	rst $38                                          ; $734b: $ff
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	rst $38                                          ; $734e: $ff
	rst $38                                          ; $734f: $ff
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	rst $38                                          ; $7352: $ff
	rst $38                                          ; $7353: $ff
	rst $38                                          ; $7354: $ff
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	rst $38                                          ; $735c: $ff
	rst $38                                          ; $735d: $ff
	rst $38                                          ; $735e: $ff
	rst $38                                          ; $735f: $ff
	rst $38                                          ; $7360: $ff
	rst $38                                          ; $7361: $ff
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	rst $38                                          ; $7364: $ff
	rst $38                                          ; $7365: $ff
	rst $38                                          ; $7366: $ff
	rst $38                                          ; $7367: $ff
	rst $38                                          ; $7368: $ff
	rst $38                                          ; $7369: $ff
	rst $38                                          ; $736a: $ff
	rst $38                                          ; $736b: $ff
	rst $38                                          ; $736c: $ff
	rst $38                                          ; $736d: $ff
	rst $38                                          ; $736e: $ff
	rst $38                                          ; $736f: $ff
	rst $38                                          ; $7370: $ff
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	rst $38                                          ; $7373: $ff
	rst $38                                          ; $7374: $ff
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	rst $38                                          ; $7377: $ff
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst $38                                          ; $737e: $ff
	rst $38                                          ; $737f: $ff
	rst $38                                          ; $7380: $ff
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	rst $38                                          ; $7384: $ff
	rst $38                                          ; $7385: $ff
	rst $38                                          ; $7386: $ff
	rst $38                                          ; $7387: $ff
	rst $38                                          ; $7388: $ff
	rst $38                                          ; $7389: $ff
	rst $38                                          ; $738a: $ff
	rst $38                                          ; $738b: $ff
	rst $38                                          ; $738c: $ff
	rst $38                                          ; $738d: $ff
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	rst $38                                          ; $7392: $ff
	rst $38                                          ; $7393: $ff
	rst $38                                          ; $7394: $ff
	rst $38                                          ; $7395: $ff
	rst $38                                          ; $7396: $ff
	rst $38                                          ; $7397: $ff
	rst $38                                          ; $7398: $ff
	rst $38                                          ; $7399: $ff
	rst $38                                          ; $739a: $ff
	rst $38                                          ; $739b: $ff
	rst $38                                          ; $739c: $ff
	rst $38                                          ; $739d: $ff
	rst $38                                          ; $739e: $ff
	rst $38                                          ; $739f: $ff
	rst $38                                          ; $73a0: $ff
	rst $38                                          ; $73a1: $ff
	rst $38                                          ; $73a2: $ff
	rst $38                                          ; $73a3: $ff
	rst $38                                          ; $73a4: $ff
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	rst $38                                          ; $73ab: $ff
	rst $38                                          ; $73ac: $ff
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	rst $38                                          ; $73af: $ff
	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	rst $38                                          ; $73b2: $ff
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	rst $38                                          ; $73b8: $ff
	rst $38                                          ; $73b9: $ff
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
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

Jump_037_7820:
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

Jump_037_7e83:
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
	rst $38                                          ; $7e91: $ff
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

Call_037_7ffd:
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
