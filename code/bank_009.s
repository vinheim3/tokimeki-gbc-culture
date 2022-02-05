; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

	ld a, [$c146]                                    ; $4000: $fa $46 $c1
	call wJumpTable                                       ; $4003: $cd $80 $cf
	ld [de], a                                       ; $4006: $12
	ld b, b                                          ; $4007: $40
	dec de                                           ; $4008: $1b
	ld b, b                                          ; $4009: $40
	adc h                                            ; $400a: $8c
	ld b, b                                          ; $400b: $40
	or a                                             ; $400c: $b7
	ld b, b                                          ; $400d: $40
	db $fd                                           ; $400e: $fd
	ld b, b                                          ; $400f: $40
	dec bc                                           ; $4010: $0b
	ld b, c                                          ; $4011: $41
	call $1962                                       ; $4012: $cd $62 $19
	call $09d3                                       ; $4015: $cd $d3 $09
	jp Jump_009_4087                                 ; $4018: $c3 $87 $40


	ld a, $05                                        ; $401b: $3e $05
	ld [$c186], a                                    ; $401d: $ea $86 $c1
	rst FarCall                                          ; $4020: $f7
	ld d, a                                          ; $4021: $57
	ld c, h                                          ; $4022: $4c
	ld a, [bc]                                       ; $4023: $0a
	ld a, $06                                        ; $4024: $3e $06
	call $068e                                       ; $4026: $cd $8e $06
	ld a, $f7                                        ; $4029: $3e $f7
	ldh [hDisp0_LCDC], a                                     ; $402b: $e0 $82
	ld hl, $0000                                     ; $402d: $21 $00 $00
	call $0955                                       ; $4030: $cd $55 $09
	ld hl, $3f60                                     ; $4033: $21 $60 $3f
	call $095c                                       ; $4036: $cd $5c $09
	ld b, $04                                        ; $4039: $06 $04
	call $0a64                                       ; $403b: $cd $64 $0a
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $403e: $cd $ef $2d
	call $0911                                       ; $4041: $cd $11 $09
	rst FarCall                                          ; $4044: $f7
	sbc l                                            ; $4045: $9d
	ld c, l                                          ; $4046: $4d
	ld a, [bc]                                       ; $4047: $0a
	call $3c2b                                       ; $4048: $cd $2b $3c
	rst FarCall                                          ; $404b: $f7
	ld e, b                                          ; $404c: $58
	ld c, [hl]                                       ; $404d: $4e
	ld a, [bc]                                       ; $404e: $0a
	rst FarCall                                          ; $404f: $f7
	call c, $0a4d                                    ; $4050: $dc $4d $0a
	rst FarCall                                          ; $4053: $f7
	ldh a, [$50]                                     ; $4054: $f0 $50
	ld a, [bc]                                       ; $4056: $0a
	call Call_009_422f                               ; $4057: $cd $2f $42
	call Call_009_4237                               ; $405a: $cd $37 $42
	rst FarCall                                          ; $405d: $f7
	db $ec                                           ; $405e: $ec
	ld c, l                                          ; $405f: $4d
	ld a, [bc]                                       ; $4060: $0a
	ld a, $0b                                        ; $4061: $3e $0b
	ld [$d884], a                                    ; $4063: $ea $84 $d8
	ld a, [$d840]                                    ; $4066: $fa $40 $d8
	cp $04                                           ; $4069: $fe $04
	jr z, jr_009_407d                                ; $406b: $28 $10

	cp $09                                           ; $406d: $fe $09
	jr nz, jr_009_4087                               ; $406f: $20 $16

	ld a, $00                                        ; $4071: $3e $00
	call $1e2e                                       ; $4073: $cd $2e $1e
	ld a, $2d                                        ; $4076: $3e $2d
	call $1e27                                       ; $4078: $cd $27 $1e
	jr jr_009_4087                                   ; $407b: $18 $0a

jr_009_407d:
	ld a, $00                                        ; $407d: $3e $00
	call $1e2e                                       ; $407f: $cd $2e $1e
	ld a, $19                                        ; $4082: $3e $19
	call $1e2e                                       ; $4084: $cd $2e $1e

Call_009_4087:
Jump_009_4087:
jr_009_4087:
	ld hl, $c146                                     ; $4087: $21 $46 $c1
	inc [hl]                                         ; $408a: $34
	ret                                              ; $408b: $c9


	ld a, [wInitialA]                                    ; $408c: $fa $00 $c1
	cp $11                                           ; $408f: $fe $11
	jr z, jr_009_4097                                ; $4091: $28 $04

	call $0a85                                       ; $4093: $cd $85 $0a
	ret c                                            ; $4096: $d8

jr_009_4097:
	call $1986                                       ; $4097: $cd $86 $19
	ret nz                                           ; $409a: $c0

	ld a, [$d840]                                    ; $409b: $fa $40 $d8
	cp $04                                           ; $409e: $fe $04
	jr z, jr_009_40b4                                ; $40a0: $28 $12

	cp $08                                           ; $40a2: $fe $08
	jr z, jr_009_40b4                                ; $40a4: $28 $0e

	cp $09                                           ; $40a6: $fe $09
	jr z, jr_009_40b4                                ; $40a8: $28 $0a

	ld a, $00                                        ; $40aa: $3e $00
	call $1e2e                                       ; $40ac: $cd $2e $1e
	ld a, $65                                        ; $40af: $3e $65
	call $1e27                                       ; $40b1: $cd $27 $1e

jr_009_40b4:
	jp Jump_009_4087                                 ; $40b4: $c3 $87 $40


	call Call_009_4135                               ; $40b7: $cd $35 $41
	call Call_009_4c05                               ; $40ba: $cd $05 $4c
	call Call_009_4b39                               ; $40bd: $cd $39 $4b
	call Call_009_4e8b                               ; $40c0: $cd $8b $4e
	call Call_009_4258                               ; $40c3: $cd $58 $42
	call Call_009_42f4                               ; $40c6: $cd $f4 $42
	call Call_009_4183                               ; $40c9: $cd $83 $41
	call $2e21                                       ; $40cc: $cd $21 $2e
	call Call_009_4174                               ; $40cf: $cd $74 $41
	ld a, [$d884]                                    ; $40d2: $fa $84 $d8
	cp $fe                                           ; $40d5: $fe $fe
	jp z, Jump_009_40f5                              ; $40d7: $ca $f5 $40

	cp $ff                                           ; $40da: $fe $ff
	jp z, Jump_009_40e0                              ; $40dc: $ca $e0 $40

	ret                                              ; $40df: $c9


Jump_009_40e0:
	ld a, $00                                        ; $40e0: $3e $00
	ld [$c150], a                                    ; $40e2: $ea $50 $c1
	ld a, [$d840]                                    ; $40e5: $fa $40 $d8
	cp $07                                           ; $40e8: $fe $07
	jr nz, jr_009_40fa                               ; $40ea: $20 $0e

	ld a, [$d8c0]                                    ; $40ec: $fa $c0 $d8
	inc a                                            ; $40ef: $3c
	ld [$a3a0], a                                    ; $40f0: $ea $a0 $a3
	jr jr_009_40fa                                   ; $40f3: $18 $05

Jump_009_40f5:
	ld a, $01                                        ; $40f5: $3e $01
	ld [$c150], a                                    ; $40f7: $ea $50 $c1

jr_009_40fa:
	jp Jump_009_4087                                 ; $40fa: $c3 $87 $40


	ld bc, $67ae                                     ; $40fd: $01 $ae $67
	call $18c4                                       ; $4100: $cd $c4 $18
	ld b, $04                                        ; $4103: $06 $04
	call $0a64                                       ; $4105: $cd $64 $0a
	call Call_009_4087                               ; $4108: $cd $87 $40
	call Call_009_4258                               ; $410b: $cd $58 $42
	call Call_009_42f4                               ; $410e: $cd $f4 $42
	call $2e21                                       ; $4111: $cd $21 $2e
	call Call_009_4174                               ; $4114: $cd $74 $41
	ld a, [wInitialA]                                    ; $4117: $fa $00 $c1
	cp $11                                           ; $411a: $fe $11
	jr z, jr_009_4122                                ; $411c: $28 $04

	call $0a7a                                       ; $411e: $cd $7a $0a
	ret c                                            ; $4121: $d8

jr_009_4122:
	call $19a2                                       ; $4122: $cd $a2 $19
	ret nz                                           ; $4125: $c0

	xor a                                            ; $4126: $af
	ld [$d892], a                                    ; $4127: $ea $92 $d8
	ld a, $38                                        ; $412a: $3e $38
	ld [$d891], a                                    ; $412c: $ea $91 $d8
	ld a, $01                                        ; $412f: $3e $01
	ld [$c151], a                                    ; $4131: $ea $51 $c1
	ret                                              ; $4134: $c9


Call_009_4135:
	ld a, [$d884]                                    ; $4135: $fa $84 $d8
	cp $04                                           ; $4138: $fe $04
	ret nc                                           ; $413a: $d0

	ld hl, $d843                                     ; $413b: $21 $43 $d8
	bit 6, [hl]                                      ; $413e: $cb $76
	jr nz, jr_009_4148                               ; $4140: $20 $06

	ld hl, $d85b                                     ; $4142: $21 $5b $d8
	call Call_009_4160                               ; $4145: $cd $60 $41

jr_009_4148:
	call Call_009_4165                               ; $4148: $cd $65 $41
	or a                                             ; $414b: $b7
	ret z                                            ; $414c: $c8

	ld hl, $d85f                                     ; $414d: $21 $5f $d8
	call Call_009_4160                               ; $4150: $cd $60 $41
	ld hl, $d844                                     ; $4153: $21 $44 $d8
	bit 6, [hl]                                      ; $4156: $cb $76
	ret nz                                           ; $4158: $c0

	ld hl, $d85d                                     ; $4159: $21 $5d $d8
	call Call_009_4160                               ; $415c: $cd $60 $41
	ret                                              ; $415f: $c9


Call_009_4160:
	inc [hl]                                         ; $4160: $34
	ret nz                                           ; $4161: $c0

	inc hl                                           ; $4162: $23
	inc [hl]                                         ; $4163: $34
	ret                                              ; $4164: $c9


Call_009_4165:
	ld b, $03                                        ; $4165: $06 $03
	xor a                                            ; $4167: $af
	ld hl, $d843                                     ; $4168: $21 $43 $d8

jr_009_416b:
	bit 7, [hl]                                      ; $416b: $cb $7e
	ret nz                                           ; $416d: $c0

	inc hl                                           ; $416e: $23
	dec b                                            ; $416f: $05
	jr nz, jr_009_416b                               ; $4170: $20 $f9

	inc a                                            ; $4172: $3c
	ret                                              ; $4173: $c9


Call_009_4174:
	ld hl, $d846                                     ; $4174: $21 $46 $d8
	ld de, $d843                                     ; $4177: $11 $43 $d8
	ld b, $03                                        ; $417a: $06 $03

jr_009_417c:
	ld a, [hl+]                                      ; $417c: $2a
	ld [de], a                                       ; $417d: $12
	inc de                                           ; $417e: $13
	dec b                                            ; $417f: $05
	jr nz, jr_009_417c                               ; $4180: $20 $fa

	ret                                              ; $4182: $c9


Call_009_4183:
	ld a, [$d884]                                    ; $4183: $fa $84 $d8
	or a                                             ; $4186: $b7
	jr z, jr_009_419b                                ; $4187: $28 $12

	cp $04                                           ; $4189: $fe $04
	ret nc                                           ; $418b: $d0

	push af                                          ; $418c: $f5
	dec a                                            ; $418d: $3d
	ld hl, $41c8                                     ; $418e: $21 $c8 $41
	call $3c83                                       ; $4191: $cd $83 $3c
	pop af                                           ; $4194: $f1
	bit 7, [hl]                                      ; $4195: $cb $7e
	ret nz                                           ; $4197: $c0

	call Call_009_421d                               ; $4198: $cd $1d $42

jr_009_419b:
	call Call_009_41ce                               ; $419b: $cd $ce $41
	or a                                             ; $419e: $b7
	jr nz, jr_009_41c4                               ; $419f: $20 $23

	ld hl, $d844                                     ; $41a1: $21 $44 $d8
	ld a, $01                                        ; $41a4: $3e $01
	bit 7, [hl]                                      ; $41a6: $cb $7e
	jr nz, jr_009_41bf                               ; $41a8: $20 $15

	ld hl, $d843                                     ; $41aa: $21 $43 $d8
	ld a, $02                                        ; $41ad: $3e $02
	bit 7, [hl]                                      ; $41af: $cb $7e
	jr nz, jr_009_41bf                               ; $41b1: $20 $0c

	ld hl, $d845                                     ; $41b3: $21 $45 $d8
	ld a, $03                                        ; $41b6: $3e $03
	bit 7, [hl]                                      ; $41b8: $cb $7e
	jr nz, jr_009_41bf                               ; $41ba: $20 $03

	xor a                                            ; $41bc: $af
	jr jr_009_41c4                                   ; $41bd: $18 $05

jr_009_41bf:
	push af                                          ; $41bf: $f5
	call Call_009_421d                               ; $41c0: $cd $1d $42
	pop af                                           ; $41c3: $f1

jr_009_41c4:
	ld [$d884], a                                    ; $41c4: $ea $84 $d8
	ret                                              ; $41c7: $c9


	ld b, h                                          ; $41c8: $44
	ret c                                            ; $41c9: $d8

	ld b, e                                          ; $41ca: $43
	ret c                                            ; $41cb: $d8

	ld b, l                                          ; $41cc: $45
	ret c                                            ; $41cd: $d8

Call_009_41ce:
	ld hl, $d84d                                     ; $41ce: $21 $4d $d8
	rst GetHLinHL                                          ; $41d1: $cf
	ld a, h                                          ; $41d2: $7c
	or l                                             ; $41d3: $b5
	jr nz, jr_009_41d9                               ; $41d4: $20 $03

	ld a, $06                                        ; $41d6: $3e $06
	ret                                              ; $41d8: $c9


jr_009_41d9:
	ld a, [$d840]                                    ; $41d9: $fa $40 $d8
	cp $05                                           ; $41dc: $fe $05
	jr z, jr_009_41f6                                ; $41de: $28 $16

	cp $06                                           ; $41e0: $fe $06
	jr z, jr_009_41f6                                ; $41e2: $28 $12

	cp $08                                           ; $41e4: $fe $08
	jr z, jr_009_41f6                                ; $41e6: $28 $0e

	cp $07                                           ; $41e8: $fe $07
	jr z, jr_009_4210                                ; $41ea: $28 $24

	cp $03                                           ; $41ec: $fe $03
	jr z, jr_009_4210                                ; $41ee: $28 $20

	cp $09                                           ; $41f0: $fe $09
	jr z, jr_009_4210                                ; $41f2: $28 $1c

	jr jr_009_421b                                   ; $41f4: $18 $25

jr_009_41f6:
	ld hl, $d853                                     ; $41f6: $21 $53 $d8
	rst GetHLinHL                                          ; $41f9: $cf
	ld a, h                                          ; $41fa: $7c
	or l                                             ; $41fb: $b5
	jr z, jr_009_4218                                ; $41fc: $28 $1a

	ld hl, $d855                                     ; $41fe: $21 $55 $d8
	rst GetHLinHL                                          ; $4201: $cf
	ld a, h                                          ; $4202: $7c
	or l                                             ; $4203: $b5
	jr z, jr_009_4218                                ; $4204: $28 $12

	ld hl, $d857                                     ; $4206: $21 $57 $d8
	rst GetHLinHL                                          ; $4209: $cf
	ld a, h                                          ; $420a: $7c
	or l                                             ; $420b: $b5
	jr z, jr_009_4218                                ; $420c: $28 $0a

	jr jr_009_421b                                   ; $420e: $18 $0b

jr_009_4210:
	ld hl, $d851                                     ; $4210: $21 $51 $d8
	rst GetHLinHL                                          ; $4213: $cf
	ld a, h                                          ; $4214: $7c
	or l                                             ; $4215: $b5
	jr nz, jr_009_421b                               ; $4216: $20 $03

jr_009_4218:
	ld a, $07                                        ; $4218: $3e $07
	ret                                              ; $421a: $c9


jr_009_421b:
	xor a                                            ; $421b: $af
	ret                                              ; $421c: $c9


Call_009_421d:
	dec a                                            ; $421d: $3d
	cp $03                                           ; $421e: $fe $03
	ret nc                                           ; $4220: $d0

	ld hl, $422c                                     ; $4221: $21 $2c $42
	rst AddAOntoHL                                          ; $4224: $ef
	ld b, [hl]                                       ; $4225: $46
	ld c, $cb                                        ; $4226: $0e $cb
	call $3d5d                                       ; $4228: $cd $5d $3d
	ret                                              ; $422b: $c9


	call z, $cecd                                    ; $422c: $cc $cd $ce

Call_009_422f:
Jump_009_422f:
	call Call_009_4419                               ; $422f: $cd $19 $44
	ld hl, $d84d                                     ; $4232: $21 $4d $d8
	jr jr_009_4243                                   ; $4235: $18 $0c

Call_009_4237:
	ld a, [$d841]                                    ; $4237: $fa $41 $d8
	cp $0f                                           ; $423a: $fe $0f
	ret nc                                           ; $423c: $d0

	call Call_009_441e                               ; $423d: $cd $1e $44
	ld hl, $d84f                                     ; $4240: $21 $4f $d8

jr_009_4243:
	rst GetHLinHL                                          ; $4243: $cf
	ld de, $2710                                     ; $4244: $11 $10 $27
	ld a, l                                          ; $4247: $7d
	sub e                                            ; $4248: $93
	ld a, h                                          ; $4249: $7c
	sbc d                                            ; $424a: $9a
	jr c, jr_009_4250                                ; $424b: $38 $03

	ld hl, $270f                                     ; $424d: $21 $0f $27

jr_009_4250:
	ld d, h                                          ; $4250: $54
	ld e, l                                          ; $4251: $5d
	ld a, $84                                        ; $4252: $3e $84
	call $1c16                                       ; $4254: $cd $16 $1c
	ret                                              ; $4257: $c9


Call_009_4258:
	ld a, [$d88e]                                    ; $4258: $fa $8e $d8
	rst JumpTable                                          ; $425b: $c7
	ld h, [hl]                                       ; $425c: $66
	ld b, d                                          ; $425d: $42
	ld a, a                                          ; $425e: $7f
	ld b, d                                          ; $425f: $42
	sub d                                            ; $4260: $92
	ld b, d                                          ; $4261: $42
	jp z, $de42                                      ; $4262: $ca $42 $de

	ld b, d                                          ; $4265: $42
	ld a, [$d88b]                                    ; $4266: $fa $8b $d8
	or a                                             ; $4269: $b7
	jr nz, jr_009_426d                               ; $426a: $20 $01

	ret                                              ; $426c: $c9


jr_009_426d:
	rst FarCall                                          ; $426d: $f7
	nop                                              ; $426e: $00
	ld b, b                                          ; $426f: $40
	ld a, [bc]                                       ; $4270: $0a
	ld a, $01                                        ; $4271: $3e $01
	ld [$d88e], a                                    ; $4273: $ea $8e $d8
	ld [$d8ba], a                                    ; $4276: $ea $ba $d8
	ld a, $08                                        ; $4279: $3e $08
	ld [$d88d], a                                    ; $427b: $ea $8d $d8
	ret                                              ; $427e: $c9


	ld hl, $d88d                                     ; $427f: $21 $8d $d8
	ld a, [hl]                                       ; $4282: $7e
	add $04                                          ; $4283: $c6 $04
	cp $16                                           ; $4285: $fe $16
	jr c, jr_009_4290                                ; $4287: $38 $07

	ld a, $02                                        ; $4289: $3e $02
	ld [$d88e], a                                    ; $428b: $ea $8e $d8
	ld a, $16                                        ; $428e: $3e $16

jr_009_4290:
	ld [hl], a                                       ; $4290: $77
	ret                                              ; $4291: $c9


	ld a, [wButtonsPressed]                                    ; $4292: $fa $25 $c1
	bit 5, a                                         ; $4295: $cb $6f
	jr nz, jr_009_429e                               ; $4297: $20 $05

	ld hl, $d88f                                     ; $4299: $21 $8f $d8
	dec [hl]                                         ; $429c: $35
	ret nz                                           ; $429d: $c0

jr_009_429e:
	ld a, $01                                        ; $429e: $3e $01
	ld [$d8ba], a                                    ; $42a0: $ea $ba $d8
	ld a, [$d88b]                                    ; $42a3: $fa $8b $d8
	or a                                             ; $42a6: $b7
	jr z, jr_009_42c4                                ; $42a7: $28 $1b

	cp $80                                           ; $42a9: $fe $80
	jr z, jr_009_42b6                                ; $42ab: $28 $09

	bit 7, a                                         ; $42ad: $cb $7f
	jr nz, jr_009_42c0                               ; $42af: $20 $0f

	rst FarCall                                          ; $42b1: $f7
	nop                                              ; $42b2: $00
	ld b, b                                          ; $42b3: $40
	ld a, [bc]                                       ; $42b4: $0a
	ret                                              ; $42b5: $c9


jr_009_42b6:
	ld a, $01                                        ; $42b6: $3e $01
	ld [$d88f], a                                    ; $42b8: $ea $8f $d8
	xor a                                            ; $42bb: $af
	ld [$d8ba], a                                    ; $42bc: $ea $ba $d8
	ret                                              ; $42bf: $c9


jr_009_42c0:
	ld a, $04                                        ; $42c0: $3e $04
	jr jr_009_42c6                                   ; $42c2: $18 $02

jr_009_42c4:
	ld a, $03                                        ; $42c4: $3e $03

jr_009_42c6:
	ld [$d88e], a                                    ; $42c6: $ea $8e $d8
	ret                                              ; $42c9: $c9


	ld a, [$d88d]                                    ; $42ca: $fa $8d $d8
	sub $04                                          ; $42cd: $d6 $04
	cp $08                                           ; $42cf: $fe $08
	jr nc, jr_009_42da                               ; $42d1: $30 $07

	xor a                                            ; $42d3: $af
	ld [$d88e], a                                    ; $42d4: $ea $8e $d8
	ld [$d8ba], a                                    ; $42d7: $ea $ba $d8

jr_009_42da:
	ld [$d88d], a                                    ; $42da: $ea $8d $d8
	ret                                              ; $42dd: $c9


	ld a, [$d88d]                                    ; $42de: $fa $8d $d8
	sub $04                                          ; $42e1: $d6 $04
	jr nc, jr_009_42f0                               ; $42e3: $30 $0b

	rst FarCall                                          ; $42e5: $f7
	nop                                              ; $42e6: $00
	ld b, b                                          ; $42e7: $40
	ld a, [bc]                                       ; $42e8: $0a
	ld a, $01                                        ; $42e9: $3e $01
	ld [$d88e], a                                    ; $42eb: $ea $8e $d8
	ld a, $08                                        ; $42ee: $3e $08

jr_009_42f0:
	ld [$d88d], a                                    ; $42f0: $ea $8d $d8
	ret                                              ; $42f3: $c9


Call_009_42f4:
	ld a, [$d892]                                    ; $42f4: $fa $92 $d8
	rst JumpTable                                          ; $42f7: $c7
	nop                                              ; $42f8: $00
	ld b, e                                          ; $42f9: $43
	ld d, $43                                        ; $42fa: $16 $43
	inc h                                            ; $42fc: $24
	ld b, e                                          ; $42fd: $43
	inc sp                                           ; $42fe: $33
	ld b, e                                          ; $42ff: $43
	ld hl, $d890                                     ; $4300: $21 $90 $d8
	bit 2, [hl]                                      ; $4303: $cb $56
	ret z                                            ; $4305: $c8

	ld a, [$d8c1]                                    ; $4306: $fa $c1 $d8
	or a                                             ; $4309: $b7
	ret nz                                           ; $430a: $c0

	ld a, $01                                        ; $430b: $3e $01
	ld [$d892], a                                    ; $430d: $ea $92 $d8
	call Call_009_433d                               ; $4310: $cd $3d $43
	jp Jump_009_43e0                                 ; $4313: $c3 $e0 $43


	ld a, [$d891]                                    ; $4316: $fa $91 $d8
	cp $38                                           ; $4319: $fe $38
	ret c                                            ; $431b: $d8

	ld a, $02                                        ; $431c: $3e $02
	ld [$d892], a                                    ; $431e: $ea $92 $d8
	jp Jump_009_43ba                                 ; $4321: $c3 $ba $43


	call $437f                                       ; $4324: $cd $7f $43
	ld hl, $d890                                     ; $4327: $21 $90 $d8
	bit 2, [hl]                                      ; $432a: $cb $56
	ret nz                                           ; $432c: $c0

	ld a, $03                                        ; $432d: $3e $03
	ld [$d892], a                                    ; $432f: $ea $92 $d8
	ret                                              ; $4332: $c9


	ld a, [$d891]                                    ; $4333: $fa $91 $d8
	or a                                             ; $4336: $b7
	ret nz                                           ; $4337: $c0

	xor a                                            ; $4338: $af
	ld [$d892], a                                    ; $4339: $ea $92 $d8
	ret                                              ; $433c: $c9


Call_009_433d:
	call SafelyExecuteDataCopies                                       ; $433d: $cd $8b $14
	ld hl, $9c8e                                     ; $4340: $21 $8e $9c
	ld a, $03                                        ; $4343: $3e $03
	call EnqueueDataCopyType4FullHeader                                       ; $4345: $cd $83 $16
	ld a, [$d842]                                    ; $4348: $fa $42 $d8
	bit 6, a                                         ; $434b: $cb $77
	ld de, $4379                                     ; $434d: $11 $79 $43
	jr z, jr_009_4355                                ; $4350: $28 $03

	ld de, $4373                                     ; $4352: $11 $73 $43

jr_009_4355:
	ld a, [de]                                       ; $4355: $1a
	ld [hl+], a                                      ; $4356: $22
	inc de                                           ; $4357: $13
	ld a, [de]                                       ; $4358: $1a
	ld [hl+], a                                      ; $4359: $22
	inc de                                           ; $435a: $13
	ld a, [de]                                       ; $435b: $1a
	ld [hl+], a                                      ; $435c: $22
	inc de                                           ; $435d: $13
	push de                                          ; $435e: $d5
	ld hl, $9cae                                     ; $435f: $21 $ae $9c

Call_009_4362:
	ld a, $03                                        ; $4362: $3e $03
	call EnqueueDataCopyType4FullHeader                                       ; $4364: $cd $83 $16
	pop de                                           ; $4367: $d1
	ld a, [de]                                       ; $4368: $1a
	ld [hl+], a                                      ; $4369: $22
	inc de                                           ; $436a: $13
	ld a, [de]                                       ; $436b: $1a
	ld [hl+], a                                      ; $436c: $22
	inc de                                           ; $436d: $13
	ld a, [de]                                       ; $436e: $1a
	ld [hl+], a                                      ; $436f: $22
	jp SafelyExecuteDataCopies                                         ; $4370: $c3 $8b $14


	ld [$0a09], sp                                   ; $4373: $08 $09 $0a
	ld de, $1413                                     ; $4376: $11 $13 $14
	inc c                                            ; $4379: $0c
	inc c                                            ; $437a: $0c
	inc c                                            ; $437b: $0c
	ld b, $06                                        ; $437c: $06 $06
	ld b, $21                                        ; $437e: $06 $21
	sub b                                            ; $4380: $90
	ret c                                            ; $4381: $d8

	ld a, [hl]                                       ; $4382: $7e
	and $03                                          ; $4383: $e6 $03
	ld hl, wButtonsPressed                                     ; $4385: $21 $25 $c1
	bit 2, [hl]                                      ; $4388: $cb $56
	jr nz, jr_009_4391                               ; $438a: $20 $05

	bit 3, [hl]                                      ; $438c: $cb $5e
	jr nz, jr_009_4396                               ; $438e: $20 $06

	ret                                              ; $4390: $c9


jr_009_4391:
	or a                                             ; $4391: $b7
	ret z                                            ; $4392: $c8

	dec a                                            ; $4393: $3d
	jr jr_009_43a3                                   ; $4394: $18 $0d

jr_009_4396:
	ld hl, $d842                                     ; $4396: $21 $42 $d8
	bit 6, [hl]                                      ; $4399: $cb $76
	ld b, $01                                        ; $439b: $06 $01
	jr z, jr_009_43a0                                ; $439d: $28 $01

	inc b                                            ; $439f: $04

jr_009_43a0:
	cp b                                             ; $43a0: $b8
	ret nc                                           ; $43a1: $d0

	inc a                                            ; $43a2: $3c

jr_009_43a3:
	push af                                          ; $43a3: $f5
	call Call_009_43b5                               ; $43a4: $cd $b5 $43
	pop af                                           ; $43a7: $f1
	ld b, a                                          ; $43a8: $47
	ld hl, $d890                                     ; $43a9: $21 $90 $d8
	ld a, [hl]                                       ; $43ac: $7e
	and $fc                                          ; $43ad: $e6 $fc
	or b                                             ; $43af: $b0
	ld [hl], a                                       ; $43b0: $77
	call Call_009_43ba                               ; $43b1: $cd $ba $43
	ret                                              ; $43b4: $c9


Call_009_43b5:
	ld hl, $43f9                                     ; $43b5: $21 $f9 $43
	jr jr_009_43bd                                   ; $43b8: $18 $03

Call_009_43ba:
Jump_009_43ba:
	ld hl, $43ff                                     ; $43ba: $21 $ff $43

jr_009_43bd:
	push hl                                          ; $43bd: $e5
	call SafelyExecuteDataCopies                                       ; $43be: $cd $8b $14
	ld a, [$d890]                                    ; $43c1: $fa $90 $d8
	and $03                                          ; $43c4: $e6 $03
	push af                                          ; $43c6: $f5
	rrca                                             ; $43c7: $0f
	rrca                                             ; $43c8: $0f
	ld hl, $9c12                                     ; $43c9: $21 $12 $9c
	rst AddAOntoHL                                          ; $43cc: $ef
	ld a, $02                                        ; $43cd: $3e $02
	call $1693                                       ; $43cf: $cd $93 $16
	ld d, h                                          ; $43d2: $54
	ld e, l                                          ; $43d3: $5d
	pop af                                           ; $43d4: $f1
	pop hl                                           ; $43d5: $e1
	add a                                            ; $43d6: $87
	rst AddAOntoHL                                          ; $43d7: $ef
	ld a, [hl+]                                      ; $43d8: $2a
	ld [de], a                                       ; $43d9: $12
	inc de                                           ; $43da: $13
	ld a, [hl+]                                      ; $43db: $2a
	ld [de], a                                       ; $43dc: $12
	jp SafelyExecuteDataCopies                                         ; $43dd: $c3 $8b $14


Jump_009_43e0:
	call SafelyExecuteDataCopies                                       ; $43e0: $cd $8b $14
	ld hl, $9c12                                     ; $43e3: $21 $12 $9c
	ld a, $06                                        ; $43e6: $3e $06
	call $1693                                       ; $43e8: $cd $93 $16
	ld de, $43f9                                     ; $43eb: $11 $f9 $43
	ld b, $06                                        ; $43ee: $06 $06

jr_009_43f0:
	ld a, [de]                                       ; $43f0: $1a
	ld [hl+], a                                      ; $43f1: $22
	inc de                                           ; $43f2: $13
	dec b                                            ; $43f3: $05
	jr nz, jr_009_43f0                               ; $43f4: $20 $fa

	jp SafelyExecuteDataCopies                                         ; $43f6: $c3 $8b $14


	dec b                                            ; $43f9: $05
	inc c                                            ; $43fa: $0c
	inc c                                            ; $43fb: $0c
	inc c                                            ; $43fc: $0c
	inc c                                            ; $43fd: $0c
	ld b, $1c                                        ; $43fe: $06 $1c
	dec e                                            ; $4400: $1d
	ld e, $1f                                        ; $4401: $1e $1f
	jr nz, @+$1d                                     ; $4403: $20 $1b

	ld de, $9260                                     ; $4405: $11 $60 $92
	jr jr_009_4421                                   ; $4408: $18 $17

	ld de, $94a0                                     ; $440a: $11 $a0 $94
	jr jr_009_4421                                   ; $440d: $18 $12

	ld de, $9570                                     ; $440f: $11 $70 $95
	jr jr_009_4421                                   ; $4412: $18 $0d

	ld de, $9610                                     ; $4414: $11 $10 $96
	jr jr_009_4421                                   ; $4417: $18 $08

Call_009_4419:
	ld de, $96b0                                     ; $4419: $11 $b0 $96
	jr jr_009_4421                                   ; $441c: $18 $03

Call_009_441e:
	ld de, $9730                                     ; $441e: $11 $30 $97

jr_009_4421:
	ld a, e                                          ; $4421: $7b
	ld [wCharTilesDataDest], a                                    ; $4422: $ea $fc $d7
	ld a, d                                          ; $4425: $7a
	ld [wCharTilesDataDest+1], a                                    ; $4426: $ea $fd $d7
	ld a, $00                                        ; $4429: $3e $00
	ld [$d7f9], a                                    ; $442b: $ea $f9 $d7
	ld [$d7fb], a                                    ; $442e: $ea $fb $d7
	ld a, $02                                        ; $4431: $3e $02
	ld [$d7fa], a                                    ; $4433: $ea $fa $d7
	xor a                                            ; $4436: $af
	ld [wCurrTilePixelIdx], a                                    ; $4437: $ea $fe $d7
	ld [wCurrTextLinePixelIdx], a                                    ; $443a: $ea $00 $d8
	ld a, $20                                        ; $443d: $3e $20
	ld [$d7ff], a                                    ; $443f: $ea $ff $d7
	ret                                              ; $4442: $c9


	xor a                                            ; $4443: $af
	jr jr_009_4478                                   ; $4444: $18 $32

	ld a, $41                                        ; $4446: $3e $41
	jr jr_009_4478                                   ; $4448: $18 $2e

	ld a, $c1                                        ; $444a: $3e $c1
	jr jr_009_4478                                   ; $444c: $18 $2a

	ld a, $42                                        ; $444e: $3e $42
	jr jr_009_4478                                   ; $4450: $18 $26

	ld a, $02                                        ; $4452: $3e $02
	jr jr_009_4478                                   ; $4454: $18 $22

	ld a, $c2                                        ; $4456: $3e $c2
	jr jr_009_4478                                   ; $4458: $18 $1e

	ld a, $03                                        ; $445a: $3e $03
	jr jr_009_4478                                   ; $445c: $18 $1a

	ld a, $04                                        ; $445e: $3e $04
	jr jr_009_4478                                   ; $4460: $18 $16

	ld a, $05                                        ; $4462: $3e $05
	jr jr_009_4478                                   ; $4464: $18 $12

	ld a, $06                                        ; $4466: $3e $06
	jr jr_009_4478                                   ; $4468: $18 $0e

	ld a, $07                                        ; $446a: $3e $07
	jr jr_009_4478                                   ; $446c: $18 $0a

	ld a, $08                                        ; $446e: $3e $08
	jr jr_009_4478                                   ; $4470: $18 $06

	ld a, $09                                        ; $4472: $3e $09
	jr jr_009_4478                                   ; $4474: $18 $02

	ld a, $0a                                        ; $4476: $3e $0a

jr_009_4478:
	ld [$d8ad], a                                    ; $4478: $ea $ad $d8
	ret                                              ; $447b: $c9


	ld a, $01                                        ; $447c: $3e $01
	jr jr_009_448d                                   ; $447e: $18 $0d

	ld a, $02                                        ; $4480: $3e $02
	jr jr_009_448d                                   ; $4482: $18 $09

	ld a, $03                                        ; $4484: $3e $03
	jr jr_009_448d                                   ; $4486: $18 $05

	ld a, $04                                        ; $4488: $3e $04
	jr jr_009_448d                                   ; $448a: $18 $01

	xor a                                            ; $448c: $af

jr_009_448d:
	ld [$d8ae], a                                    ; $448d: $ea $ae $d8
	ret                                              ; $4490: $c9


Call_009_4491:
	ld a, $0f                                        ; $4491: $3e $0f
	jr jr_009_4497                                   ; $4493: $18 $02

	ld a, $04                                        ; $4495: $3e $04

jr_009_4497:
	call Call_000_12fc                                       ; $4497: $cd $fc $12
	cp $01                                           ; $449a: $fe $01
	jr c, jr_009_44a3                                ; $449c: $38 $05

	jr z, jr_009_44a7                                ; $449e: $28 $07

	xor a                                            ; $44a0: $af
	jr jr_009_44a9                                   ; $44a1: $18 $06

jr_009_44a3:
	ld a, $01                                        ; $44a3: $3e $01
	jr jr_009_44a9                                   ; $44a5: $18 $02

jr_009_44a7:
	ld a, $02                                        ; $44a7: $3e $02

jr_009_44a9:
	ld [$d8b0], a                                    ; $44a9: $ea $b0 $d8
	ret                                              ; $44ac: $c9


	push hl                                          ; $44ad: $e5
	ld l, $13                                        ; $44ae: $2e $13
	ld a, e                                          ; $44b0: $7b
	ld [hl+], a                                      ; $44b1: $22
	ld [hl], d                                       ; $44b2: $72
	push de                                          ; $44b3: $d5
	call $3d01                                       ; $44b4: $cd $01 $3d
	ld a, b                                          ; $44b7: $78
	sub d                                            ; $44b8: $92
	jr nc, jr_009_44bd                               ; $44b9: $30 $02

	cpl                                              ; $44bb: $2f
	inc a                                            ; $44bc: $3c

jr_009_44bd:
	ld d, a                                          ; $44bd: $57
	ld a, c                                          ; $44be: $79
	sub e                                            ; $44bf: $93
	ld e, a                                          ; $44c0: $5f
	pop bc                                           ; $44c1: $c1
	bit 7, b                                         ; $44c2: $cb $78
	call nz, $cec0                                   ; $44c4: $c4 $c0 $ce
	ld h, d                                          ; $44c7: $62
	ld l, $00                                        ; $44c8: $2e $00
	push de                                          ; $44ca: $d5
	call BCHLequHLdivModBC                                       ; $44cb: $cd $c1 $12
	ld b, h                                          ; $44ce: $44
	ld c, l                                          ; $44cf: $4d
	pop de                                           ; $44d0: $d1
	bit 7, e                                         ; $44d1: $cb $7b
	jr nz, jr_009_44dd                               ; $44d3: $20 $08

	ld h, e                                          ; $44d5: $63
	ld l, $00                                        ; $44d6: $2e $00
	call BCHLequHLdivModBC                                       ; $44d8: $cd $c1 $12
	jr jr_009_44e9                                   ; $44db: $18 $0c

jr_009_44dd:
	ld a, e                                          ; $44dd: $7b
	cpl                                              ; $44de: $2f
	inc a                                            ; $44df: $3c
	ld h, a                                          ; $44e0: $67
	ld l, $00                                        ; $44e1: $2e $00
	call BCHLequHLdivModBC                                       ; $44e3: $cd $c1 $12
	call $ceca                                       ; $44e6: $cd $ca $ce

jr_009_44e9:
	ld b, h                                          ; $44e9: $44
	ld a, l                                          ; $44ea: $7d
	pop hl                                           ; $44eb: $e1
	ld l, $11                                        ; $44ec: $2e $11
	ld [hl+], a                                      ; $44ee: $22
	ld [hl], b                                       ; $44ef: $70
	ret                                              ; $44f0: $c9


	ld de, $8638                                     ; $44f1: $11 $38 $86
	ld a, $0c                                        ; $44f4: $3e $0c
	call Call_000_12fc                                       ; $44f6: $cd $fc $12
	add d                                            ; $44f9: $82
	ld d, a                                          ; $44fa: $57
	ld a, $10                                        ; $44fb: $3e $10
	call Call_000_12fc                                       ; $44fd: $cd $fc $12
	add e                                            ; $4500: $83
	ld e, a                                          ; $4501: $5f
	ret                                              ; $4502: $c9


Call_009_4503:
	ld a, [$d840]                                    ; $4503: $fa $40 $d8
	cp $05                                           ; $4506: $fe $05
	ret z                                            ; $4508: $c8

	cp $06                                           ; $4509: $fe $06
	ret z                                            ; $450b: $c8

	cp $08                                           ; $450c: $fe $08
	ret                                              ; $450e: $c9


	ld hl, $d8b4                                     ; $450f: $21 $b4 $d8
	ld a, [$d8b0]                                    ; $4512: $fa $b0 $d8
	cp $01                                           ; $4515: $fe $01
	jr z, jr_009_451f                                ; $4517: $28 $06

	jr nc, jr_009_4523                               ; $4519: $30 $08

	res 0, [hl]                                      ; $451b: $cb $86
	jr jr_009_4525                                   ; $451d: $18 $06

jr_009_451f:
	res 1, [hl]                                      ; $451f: $cb $8e
	jr jr_009_4525                                   ; $4521: $18 $02

jr_009_4523:
	res 2, [hl]                                      ; $4523: $cb $96

jr_009_4525:
	jp Jump_009_452f                                 ; $4525: $c3 $2f $45


	xor a                                            ; $4528: $af
	ld [$d8b4], a                                    ; $4529: $ea $b4 $d8
	jp Jump_009_452f                                 ; $452c: $c3 $2f $45


Jump_009_452f:
	ld a, [$d8b3]                                    ; $452f: $fa $b3 $d8
	or a                                             ; $4532: $b7
	jr z, jr_009_4561                                ; $4533: $28 $2c

	call $3c2b                                       ; $4535: $cd $2b $3c
	ld hl, $46f4                                     ; $4538: $21 $f4 $46
	ld a, [$d8b4]                                    ; $453b: $fa $b4 $d8
	bit 0, a                                         ; $453e: $cb $47
	call nz, $3c18                                   ; $4540: $c4 $18 $3c
	ld hl, $46fd                                     ; $4543: $21 $fd $46
	ld a, [$d8b4]                                    ; $4546: $fa $b4 $d8
	bit 1, a                                         ; $4549: $cb $4f
	call nz, $3c18                                   ; $454b: $c4 $18 $3c
	ld hl, $4706                                     ; $454e: $21 $06 $47
	ld a, [$d8b4]                                    ; $4551: $fa $b4 $d8
	bit 2, a                                         ; $4554: $cb $57
	call nz, $3c18                                   ; $4556: $c4 $18 $3c
	call $3cee                                       ; $4559: $cd $ee $3c
	xor a                                            ; $455c: $af
	ld [$d8b3], a                                    ; $455d: $ea $b3 $d8
	ret                                              ; $4560: $c9


jr_009_4561:
	call $3c36                                       ; $4561: $cd $36 $3c
	ld hl, $46f4                                     ; $4564: $21 $f4 $46
	ld a, [$d8b4]                                    ; $4567: $fa $b4 $d8
	bit 0, a                                         ; $456a: $cb $47
	call nz, $3c1d                                   ; $456c: $c4 $1d $3c
	ld hl, $46fd                                     ; $456f: $21 $fd $46
	ld a, [$d8b4]                                    ; $4572: $fa $b4 $d8
	bit 1, a                                         ; $4575: $cb $4f
	call nz, $3c1d                                   ; $4577: $c4 $1d $3c
	ld hl, $4706                                     ; $457a: $21 $06 $47
	ld a, [$d8b4]                                    ; $457d: $fa $b4 $d8
	bit 2, a                                         ; $4580: $cb $57
	call nz, $3c1d                                   ; $4582: $c4 $1d $3c
	call $3cf2                                       ; $4585: $cd $f2 $3c
	ld a, $01                                        ; $4588: $3e $01
	ld [$d8b3], a                                    ; $458a: $ea $b3 $d8
	ret                                              ; $458d: $c9


Call_009_458e:
	ld a, [$d842]                                    ; $458e: $fa $42 $d8
	and $0f                                          ; $4591: $e6 $0f
	cp $02                                           ; $4593: $fe $02
	ret z                                            ; $4595: $c8

	cp $07                                           ; $4596: $fe $07
	ret z                                            ; $4598: $c8

	cp $09                                           ; $4599: $fe $09
	ret                                              ; $459b: $c9


Call_009_459c:
	push hl                                          ; $459c: $e5
	call Call_009_4503                               ; $459d: $cd $03 $45
	jr nz, jr_009_45aa                               ; $45a0: $20 $08

	ld hl, $45c9                                     ; $45a2: $21 $c9 $45
	ld a, [$d8b0]                                    ; $45a5: $fa $b0 $d8
	jr jr_009_45b0                                   ; $45a8: $18 $06

jr_009_45aa:
	ld hl, $45b5                                     ; $45aa: $21 $b5 $45
	ld a, [$d840]                                    ; $45ad: $fa $40 $d8

jr_009_45b0:
	call $3c89                                       ; $45b0: $cd $89 $3c
	pop hl                                           ; $45b3: $e1
	ret                                              ; $45b4: $c9


	ld b, b                                          ; $45b5: $40
	ld a, [hl+]                                      ; $45b6: $2a
	ld c, b                                          ; $45b7: $48
	ld a, [hl+]                                      ; $45b8: $2a
	ld [hl], $2a                                     ; $45b9: $36 $2a
	ld [hl], $26                                     ; $45bb: $36 $26
	ld b, h                                          ; $45bd: $44
	jr nz, @+$3e                                     ; $45be: $20 $3c

	ld e, $3c                                        ; $45c0: $1e $3c
	ld e, $38                                        ; $45c2: $1e $38
	inc h                                            ; $45c4: $24
	inc a                                            ; $45c5: $3c
	ld e, $36                                        ; $45c6: $1e $36
	ld h, $54                                        ; $45c8: $26 $54
	ld [hl], $3c                                     ; $45ca: $36 $3c
	ld e, $5c                                        ; $45cc: $1e $5c
	ld d, $21                                        ; $45ce: $16 $21
	ld sp, hl                                        ; $45d0: $f9
	and d                                            ; $45d1: $a2
	rst GetHLinHL                                          ; $45d2: $cf
	ld de, $012c                                     ; $45d3: $11 $2c $01
	call $3cd4                                       ; $45d6: $cd $d4 $3c
	jr c, jr_009_45de                                ; $45d9: $38 $03

	ld hl, $012c                                     ; $45db: $21 $2c $01

jr_009_45de:
	ld a, $09                                        ; $45de: $3e $09
	call AHLequAtimesHL                                       ; $45e0: $cd $77 $12
	srl h                                            ; $45e3: $cb $3c
	rr l                                             ; $45e5: $cb $1d
	ld d, h                                          ; $45e7: $54
	ld e, l                                          ; $45e8: $5d
	ld a, $64                                        ; $45e9: $3e $64
	ld b, $64                                        ; $45eb: $06 $64
	call $3c95                                       ; $45ed: $cd $95 $3c
	add hl, de                                       ; $45f0: $19
	push hl                                          ; $45f1: $e5
	ld hl, $d8b8                                     ; $45f2: $21 $b8 $d8
	ld a, [hl]                                       ; $45f5: $7e
	or a                                             ; $45f6: $b7
	jr z, jr_009_45fd                                ; $45f7: $28 $04

	xor a                                            ; $45f9: $af
	ld [hl], a                                       ; $45fa: $77
	jr jr_009_4626                                   ; $45fb: $18 $29

jr_009_45fd:
	ld hl, $1000                                     ; $45fd: $21 $00 $10
	call $3cad                                       ; $4600: $cd $ad $3c
	ld a, b                                          ; $4603: $78
	or c                                             ; $4604: $b1
	jr z, jr_009_461a                                ; $4605: $28 $13

	ld h, b                                          ; $4607: $60
	ld l, c                                          ; $4608: $69
	ld de, $0040                                     ; $4609: $11 $40 $00
	call $3cd4                                       ; $460c: $cd $d4 $3c
	jr c, jr_009_4620                                ; $460f: $38 $0f

	ld de, $fef2                                     ; $4611: $11 $f2 $fe
	add hl, de                                       ; $4614: $19
	jr nc, jr_009_4626                               ; $4615: $30 $0f

	pop hl                                           ; $4617: $e1
	jr jr_009_4631                                   ; $4618: $18 $17

jr_009_461a:
	pop hl                                           ; $461a: $e1
	ld hl, $270f                                     ; $461b: $21 $0f $27
	jr jr_009_4631                                   ; $461e: $18 $11

jr_009_4620:
	pop hl                                           ; $4620: $e1
	ld hl, $0000                                     ; $4621: $21 $00 $00
	jr jr_009_4631                                   ; $4624: $18 $0b

jr_009_4626:
	ld hl, $03e8                                     ; $4626: $21 $e8 $03
	ld de, $01f4                                     ; $4629: $11 $f4 $01
	call $3ca1                                       ; $462c: $cd $a1 $3c
	pop de                                           ; $462f: $d1
	add hl, de                                       ; $4630: $19

jr_009_4631:
	call Call_009_4b30                               ; $4631: $cd $30 $4b
	call Call_009_4503                               ; $4634: $cd $03 $45
	jp z, Jump_009_4aeb                              ; $4637: $ca $eb $4a

	call Call_009_4b0f                               ; $463a: $cd $0f $4b
	ld hl, $d86b                                     ; $463d: $21 $6b $d8
	rst GetHLinHL                                          ; $4640: $cf
	ld a, h                                          ; $4641: $7c
	or l                                             ; $4642: $b5
	ret z                                            ; $4643: $c8

	ld a, [$d840]                                    ; $4644: $fa $40 $d8
	cp $07                                           ; $4647: $fe $07
	ret nz                                           ; $4649: $c0

	ld a, [$d842]                                    ; $464a: $fa $42 $d8
	bit 7, a                                         ; $464d: $cb $7f
	ret nz                                           ; $464f: $c0

	ld hl, $d851                                     ; $4650: $21 $51 $d8
	rst GetHLinHL                                          ; $4653: $cf
	ld de, $fa24                                     ; $4654: $11 $24 $fa
	add hl, de                                       ; $4657: $19
	jr c, jr_009_465d                                ; $4658: $38 $03

	ld hl, $0000                                     ; $465a: $21 $00 $00

jr_009_465d:
	ld de, $d851                                     ; $465d: $11 $51 $d8
	call $3cce                                       ; $4660: $cd $ce $3c
	ret                                              ; $4663: $c9


	ld a, [$d842]                                    ; $4664: $fa $42 $d8
	and $0f                                          ; $4667: $e6 $0f
	rst JumpTable                                          ; $4669: $c7
	ld a, [hl]                                       ; $466a: $7e
	ld b, [hl]                                       ; $466b: $46
	sbc d                                            ; $466c: $9a
	ld b, [hl]                                       ; $466d: $46
	and b                                            ; $466e: $a0
	ld b, [hl]                                       ; $466f: $46
	rst JumpTable                                          ; $4670: $c7
	ld b, [hl]                                       ; $4671: $46
	rst SubAFromHL                                          ; $4672: $d7
	ld b, [hl]                                       ; $4673: $46
	pop af                                           ; $4674: $f1
	ld b, [hl]                                       ; $4675: $46
	dec b                                            ; $4676: $05
	ld b, a                                          ; $4677: $47
	dec e                                            ; $4678: $1d
	ld b, a                                          ; $4679: $47
	ld sp, $4547                                     ; $467a: $31 $47 $45
	ld b, a                                          ; $467d: $47
	ld hl, $d878                                     ; $467e: $21 $78 $d8
	rst GetHLinHL                                          ; $4681: $cf
	ld bc, $03e8                                     ; $4682: $01 $e8 $03
	call BCHLequHLdivModBC                                       ; $4685: $cd $c1 $12
	ld a, l                                          ; $4688: $7d
	inc a                                            ; $4689: $3c
	call Call_000_12fc                                       ; $468a: $cd $fc $12
	ld hl, $03e8                                     ; $468d: $21 $e8 $03
	call AHLequAtimesHL                                       ; $4690: $cd $77 $12
	ld de, $1388                                     ; $4693: $11 $88 $13
	add hl, de                                       ; $4696: $19
	jp Jump_009_4783                                 ; $4697: $c3 $83 $47


	ld hl, $270f                                     ; $469a: $21 $0f $27
	jp Jump_009_4783                                 ; $469d: $c3 $83 $47


	call Call_009_4503                               ; $46a0: $cd $03 $45
	jr nz, jr_009_46b2                               ; $46a3: $20 $0d

	ld a, $05                                        ; $46a5: $3e $05
	call Call_000_12fc                                       ; $46a7: $cd $fc $12
	or a                                             ; $46aa: $b7
	jr nz, jr_009_46b2                               ; $46ab: $20 $05

	ld hl, $03e8                                     ; $46ad: $21 $e8 $03
	jr jr_009_46c4                                   ; $46b0: $18 $12

jr_009_46b2:
	ld hl, $d878                                     ; $46b2: $21 $78 $d8
	rst GetHLinHL                                          ; $46b5: $cf
	srl h                                            ; $46b6: $cb $3c
	rr l                                             ; $46b8: $cb $1d
	ld de, $0dac                                     ; $46ba: $11 $ac $0d
	call $3ca1                                       ; $46bd: $cd $a1 $3c
	ld de, $09c4                                     ; $46c0: $11 $c4 $09
	add hl, de                                       ; $46c3: $19

jr_009_46c4:
	jp Jump_009_4783                                 ; $46c4: $c3 $83 $47


	ld hl, $09c4                                     ; $46c7: $21 $c4 $09
	ld de, $03e8                                     ; $46ca: $11 $e8 $03
	call $3ca1                                       ; $46cd: $cd $a1 $3c
	ld de, $0fa0                                     ; $46d0: $11 $a0 $0f
	add hl, de                                       ; $46d3: $19
	jp Jump_009_4783                                 ; $46d4: $c3 $83 $47


	ld a, $32                                        ; $46d7: $3e $32
	call Call_000_12fc                                       ; $46d9: $cd $fc $12
	ld b, a                                          ; $46dc: $47
	ld c, $64                                        ; $46dd: $0e $64
	call BCequBtimesC                                       ; $46df: $cd $5f $12
	ld hl, $07d0                                     ; $46e2: $21 $d0 $07
	call Call_009_4503                               ; $46e5: $cd $03 $45
	jr z, jr_009_46ed                                ; $46e8: $28 $03

	ld hl, $0bb8                                     ; $46ea: $21 $b8 $0b

jr_009_46ed:
	add hl, bc                                       ; $46ed: $09
	jp Jump_009_4783                                 ; $46ee: $c3 $83 $47


	ld hl, $d878                                     ; $46f1: $21 $78 $d8
	rst GetHLinHL                                          ; $46f4: $cf
	push hl                                          ; $46f5: $e5
	ld de, $07d0                                     ; $46f6: $11 $d0 $07
	add hl, de                                       ; $46f9: $19
	pop de                                           ; $46fa: $d1
	call $3ca1                                       ; $46fb: $cd $a1 $3c
	ld de, $03e8                                     ; $46fe: $11 $e8 $03
	add hl, de                                       ; $4701: $19
	jp Jump_009_4783                                 ; $4702: $c3 $83 $47


	ld hl, $d878                                     ; $4705: $21 $78 $d8
	rst GetHLinHL                                          ; $4708: $cf
	ld de, $07d0                                     ; $4709: $11 $d0 $07
	add hl, de                                       ; $470c: $19
	srl h                                            ; $470d: $cb $3c
	rr l                                             ; $470f: $cb $1d
	ld d, h                                          ; $4711: $54
	ld e, l                                          ; $4712: $5d
	call $3ca1                                       ; $4713: $cd $a1 $3c
	ld de, $0fa0                                     ; $4716: $11 $a0 $0f
	add hl, de                                       ; $4719: $19
	jp Jump_009_4783                                 ; $471a: $c3 $83 $47


	ld hl, $d878                                     ; $471d: $21 $78 $d8
	rst GetHLinHL                                          ; $4720: $cf
	srl h                                            ; $4721: $cb $3c
	rr l                                             ; $4723: $cb $1d
	ld d, h                                          ; $4725: $54
	ld e, l                                          ; $4726: $5d
	call $3ca1                                       ; $4727: $cd $a1 $3c
	ld de, $1770                                     ; $472a: $11 $70 $17
	add hl, de                                       ; $472d: $19
	jp Jump_009_4783                                 ; $472e: $c3 $83 $47


	ld hl, $d878                                     ; $4731: $21 $78 $d8
	rst GetHLinHL                                          ; $4734: $cf
	ld d, h                                          ; $4735: $54
	ld e, l                                          ; $4736: $5d
	ld bc, $03e8                                     ; $4737: $01 $e8 $03
	add hl, bc                                       ; $473a: $09
	call $3ca1                                       ; $473b: $cd $a1 $3c
	ld de, $07d0                                     ; $473e: $11 $d0 $07
	add hl, de                                       ; $4741: $19
	jp Jump_009_4783                                 ; $4742: $c3 $83 $47


	ld hl, $d877                                     ; $4745: $21 $77 $d8
	ld a, [hl]                                       ; $4748: $7e
	ld [hl], $00                                     ; $4749: $36 $00
	cp $10                                           ; $474b: $fe $10
	jr nc, jr_009_4765                               ; $474d: $30 $16

	srl a                                            ; $474f: $cb $3f
	cp $04                                           ; $4751: $fe $04
	jr c, jr_009_4757                                ; $4753: $38 $02

	ld a, $04                                        ; $4755: $3e $04

jr_009_4757:
	inc a                                            ; $4757: $3c
	ld hl, $01f4                                     ; $4758: $21 $f4 $01
	call AHLequAtimesHL                                       ; $475b: $cd $77 $12
	ld d, h                                          ; $475e: $54
	ld e, l                                          ; $475f: $5d
	call $3ca1                                       ; $4760: $cd $a1 $3c
	jr jr_009_4780                                   ; $4763: $18 $1b

jr_009_4765:
	call Call_009_4503                               ; $4765: $cd $03 $45
	jr z, jr_009_477d                                ; $4768: $28 $13

	ld hl, $d851                                     ; $476a: $21 $51 $d8
	rst GetHLinHL                                          ; $476d: $cf
	ld de, $8ad0                                     ; $476e: $11 $d0 $8a
	add hl, de                                       ; $4771: $19
	jr c, jr_009_4777                                ; $4772: $38 $03

	ld hl, $0000                                     ; $4774: $21 $00 $00

jr_009_4777:
	ld de, $d851                                     ; $4777: $11 $51 $d8
	call $3cce                                       ; $477a: $cd $ce $3c

jr_009_477d:
	ld hl, $270f                                     ; $477d: $21 $0f $27

jr_009_4780:
	jp Jump_009_4783                                 ; $4780: $c3 $83 $47


Jump_009_4783:
	ld de, $2710                                     ; $4783: $11 $10 $27
	call $3cd4                                       ; $4786: $cd $d4 $3c
	jr c, jr_009_478e                                ; $4789: $38 $03

	ld hl, $270f                                     ; $478b: $21 $0f $27

jr_009_478e:
	call Call_009_4b30                               ; $478e: $cd $30 $4b
	call Call_009_4503                               ; $4791: $cd $03 $45
	jr z, jr_009_4799                                ; $4794: $28 $03

	jp Jump_009_4b0f                                 ; $4796: $c3 $0f $4b


jr_009_4799:
	call Call_009_458e                               ; $4799: $cd $8e $45
	jp z, Jump_009_4aeb                              ; $479c: $ca $eb $4a

	jp Jump_009_4af4                                 ; $479f: $c3 $f4 $4a


	ld a, [$d841]                                    ; $47a2: $fa $41 $d8
	cp $02                                           ; $47a5: $fe $02
	jr z, jr_009_47bc                                ; $47a7: $28 $13

	cp $05                                           ; $47a9: $fe $05
	jr z, jr_009_47cd                                ; $47ab: $28 $20

	cp $03                                           ; $47ad: $fe $03
	jr z, jr_009_47de                                ; $47af: $28 $2d

	cp $04                                           ; $47b1: $fe $04
	jp z, Jump_009_481f                              ; $47b3: $ca $1f $48

	cp $0d                                           ; $47b6: $fe $0d
	jp z, Jump_009_482b                              ; $47b8: $ca $2b $48

	ret                                              ; $47bb: $c9


jr_009_47bc:
	ld hl, $04e2                                     ; $47bc: $21 $e2 $04
	ld de, $02ee                                     ; $47bf: $11 $ee $02
	call $3ca1                                       ; $47c2: $cd $a1 $3c
	inc hl                                           ; $47c5: $23
	call Call_009_4b30                               ; $47c6: $cd $30 $4b
	call Call_009_483c                               ; $47c9: $cd $3c $48
	ret                                              ; $47cc: $c9


jr_009_47cd:
	ld hl, $07d0                                     ; $47cd: $21 $d0 $07
	ld de, $03e8                                     ; $47d0: $11 $e8 $03
	call $3ca1                                       ; $47d3: $cd $a1 $3c
	inc hl                                           ; $47d6: $23
	call Call_009_4b30                               ; $47d7: $cd $30 $4b
	call Call_009_483c                               ; $47da: $cd $3c $48
	ret                                              ; $47dd: $c9


jr_009_47de:
	ld a, [$d840]                                    ; $47de: $fa $40 $d8
	cp $07                                           ; $47e1: $fe $07
	jr nz, jr_009_47ed                               ; $47e3: $20 $08

	ld hl, $03e8                                     ; $47e5: $21 $e8 $03
	ld de, $01f4                                     ; $47e8: $11 $f4 $01
	jr jr_009_47f3                                   ; $47eb: $18 $06

jr_009_47ed:
	ld hl, $0258                                     ; $47ed: $21 $58 $02
	ld de, $012c                                     ; $47f0: $11 $2c $01

jr_009_47f3:
	call $3ca1                                       ; $47f3: $cd $a1 $3c
	inc hl                                           ; $47f6: $23
	call Call_009_4b30                               ; $47f7: $cd $30 $4b
	call Call_009_483c                               ; $47fa: $cd $3c $48
	ld hl, $d84d                                     ; $47fd: $21 $4d $d8
	rst GetHLinHL                                          ; $4800: $cf
	srl h                                            ; $4801: $cb $3c
	rr l                                             ; $4803: $cb $1d
	srl h                                            ; $4805: $cb $3c
	rr l                                             ; $4807: $cb $1d
	ld a, h                                          ; $4809: $7c
	or a                                             ; $480a: $b7
	jr nz, jr_009_4812                               ; $480b: $20 $05

	ld a, l                                          ; $480d: $7d
	cp $64                                           ; $480e: $fe $64
	jr c, jr_009_4814                                ; $4810: $38 $02

jr_009_4812:
	ld a, $64                                        ; $4812: $3e $64

jr_009_4814:
	ld b, a                                          ; $4814: $47
	call $3c95                                       ; $4815: $cd $95 $3c
	ld de, $d871                                     ; $4818: $11 $71 $d8
	call $3cce                                       ; $481b: $cd $ce $3c
	ret                                              ; $481e: $c9


Jump_009_481f:
	ld a, $4b                                        ; $481f: $3e $4b
	ld b, $7d                                        ; $4821: $06 $7d
	call $3c95                                       ; $4823: $cd $95 $3c
	inc hl                                           ; $4826: $23
	call Call_009_4b30                               ; $4827: $cd $30 $4b
	ret                                              ; $482a: $c9


Jump_009_482b:
	ld hl, $04e2                                     ; $482b: $21 $e2 $04
	ld de, $02ee                                     ; $482e: $11 $ee $02
	call $3ca1                                       ; $4831: $cd $a1 $3c
	inc hl                                           ; $4834: $23
	call Call_009_4b30                               ; $4835: $cd $30 $4b
	call Call_009_483c                               ; $4838: $cd $3c $48
	ret                                              ; $483b: $c9


Call_009_483c:
	call Call_009_4503                               ; $483c: $cd $03 $45
	jp z, Jump_009_4aeb                              ; $483f: $ca $eb $4a

	jp Jump_009_4b0f                                 ; $4842: $c3 $0f $4b


	ld a, [$d840]                                    ; $4845: $fa $40 $d8
	rst JumpTable                                          ; $4848: $c7
	ld e, l                                          ; $4849: $5d
	ld c, b                                          ; $484a: $48
	ld e, l                                          ; $484b: $5d
	ld c, b                                          ; $484c: $48
	ld e, l                                          ; $484d: $5d
	ld c, b                                          ; $484e: $48
	adc a                                            ; $484f: $8f
	ld c, b                                          ; $4850: $48
	inc d                                            ; $4851: $14
	ld c, c                                          ; $4852: $49
	ret z                                            ; $4853: $c8

	ld c, c                                          ; $4854: $49
	ret z                                            ; $4855: $c8

	ld c, c                                          ; $4856: $49
	ld d, d                                          ; $4857: $52
	ld c, c                                          ; $4858: $49
	ret z                                            ; $4859: $c8

	ld c, c                                          ; $485a: $49
	jp z, $fa48                                      ; $485b: $ca $48 $fa

	ld b, l                                          ; $485e: $45
	ret c                                            ; $485f: $d8

	and $07                                          ; $4860: $e6 $07
	jr nz, jr_009_4881                               ; $4862: $20 $1d

	ld hl, $d859                                     ; $4864: $21 $59 $d8
	rst GetHLinHL                                          ; $4867: $cf
	ld a, [$d843]                                    ; $4868: $fa $43 $d8
	and $03                                          ; $486b: $e6 $03
	cp $01                                           ; $486d: $fe $01
	ld bc, $000a                                     ; $486f: $01 $0a $00
	jr nz, jr_009_4877                               ; $4872: $20 $03

	ld bc, $0064                                     ; $4874: $01 $64 $00

jr_009_4877:
	call BCHLequHLdivModBC                                       ; $4877: $cd $c1 $12
	ld de, $d86b                                     ; $487a: $11 $6b $d8
	call $3cce                                       ; $487d: $cd $ce $3c
	ret                                              ; $4880: $c9


jr_009_4881:
	ld hl, $d84d                                     ; $4881: $21 $4d $d8
	rst GetHLinHL                                          ; $4884: $cf
	dec hl                                           ; $4885: $2b
	dec hl                                           ; $4886: $2b
	dec hl                                           ; $4887: $2b
	ld de, $d86b                                     ; $4888: $11 $6b $d8
	call $3cce                                       ; $488b: $cd $ce $3c
	ret                                              ; $488e: $c9


	ld a, [$d8c1]                                    ; $488f: $fa $c1 $d8
	or a                                             ; $4892: $b7
	jr z, jr_009_489f                                ; $4893: $28 $0a

	ld hl, $d84d                                     ; $4895: $21 $4d $d8
	rst GetHLinHL                                          ; $4898: $cf
	srl h                                            ; $4899: $cb $3c
	rr l                                             ; $489b: $cb $1d
	jr jr_009_48c3                                   ; $489d: $18 $24

jr_009_489f:
	ld hl, $d84d                                     ; $489f: $21 $4d $d8
	rst GetHLinHL                                          ; $48a2: $cf
	ld a, h                                          ; $48a3: $7c
	or a                                             ; $48a4: $b7
	jr nz, jr_009_48b1                               ; $48a5: $20 $0a

	ld a, l                                          ; $48a7: $7d
	cp $14                                           ; $48a8: $fe $14
	jr nc, jr_009_48b1                               ; $48aa: $30 $05

	ld hl, $0000                                     ; $48ac: $21 $00 $00
	jr jr_009_48c3                                   ; $48af: $18 $12

jr_009_48b1:
	ld a, [$d843]                                    ; $48b1: $fa $43 $d8
	and $03                                          ; $48b4: $e6 $03
	cp $01                                           ; $48b6: $fe $01
	ld bc, $0005                                     ; $48b8: $01 $05 $00
	jr nz, jr_009_48c0                               ; $48bb: $20 $03

	ld bc, $0032                                     ; $48bd: $01 $32 $00

jr_009_48c0:
	call BCHLequHLdivModBC                                       ; $48c0: $cd $c1 $12

jr_009_48c3:
	ld de, $d86b                                     ; $48c3: $11 $6b $d8
	call $3cce                                       ; $48c6: $cd $ce $3c
	ret                                              ; $48c9: $c9


	ld a, [$d8c1]                                    ; $48ca: $fa $c1 $d8
	or a                                             ; $48cd: $b7
	jr z, jr_009_48da                                ; $48ce: $28 $0a

	ld hl, $d84d                                     ; $48d0: $21 $4d $d8
	rst GetHLinHL                                          ; $48d3: $cf
	srl h                                            ; $48d4: $cb $3c
	rr l                                             ; $48d6: $cb $1d
	jr jr_009_48fc                                   ; $48d8: $18 $22

jr_009_48da:
	ld hl, $d859                                     ; $48da: $21 $59 $d8
	rst GetHLinHL                                          ; $48dd: $cf
	ld bc, $000a                                     ; $48de: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $48e1: $cd $c1 $12
	push hl                                          ; $48e4: $e5
	ld hl, $d84d                                     ; $48e5: $21 $4d $d8
	rst GetHLinHL                                          ; $48e8: $cf
	srl h                                            ; $48e9: $cb $3c
	rr l                                             ; $48eb: $cb $1d
	srl h                                            ; $48ed: $cb $3c
	rr l                                             ; $48ef: $cb $1d
	srl h                                            ; $48f1: $cb $3c
	rr l                                             ; $48f3: $cb $1d
	ld d, h                                          ; $48f5: $54
	ld e, l                                          ; $48f6: $5d
	call $3ca1                                       ; $48f7: $cd $a1 $3c
	pop de                                           ; $48fa: $d1
	add hl, de                                       ; $48fb: $19

jr_009_48fc:
	ld a, [$d843]                                    ; $48fc: $fa $43 $d8
	and $03                                          ; $48ff: $e6 $03
	cp $01                                           ; $4901: $fe $01
	jr nz, jr_009_490d                               ; $4903: $20 $08

	srl h                                            ; $4905: $cb $3c
	rr l                                             ; $4907: $cb $1d
	srl h                                            ; $4909: $cb $3c
	rr l                                             ; $490b: $cb $1d

jr_009_490d:
	ld de, $d86b                                     ; $490d: $11 $6b $d8
	call $3cce                                       ; $4910: $cd $ce $3c
	ret                                              ; $4913: $c9


	ld hl, $d859                                     ; $4914: $21 $59 $d8
	rst GetHLinHL                                          ; $4917: $cf
	ld bc, $000a                                     ; $4918: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $491b: $cd $c1 $12
	ld d, h                                          ; $491e: $54
	ld e, l                                          ; $491f: $5d
	srl h                                            ; $4920: $cb $3c
	rr l                                             ; $4922: $cb $1d
	call $3ca1                                       ; $4924: $cd $a1 $3c
	ld de, $0064                                     ; $4927: $11 $64 $00
	add hl, de                                       ; $492a: $19
	ld a, [$d843]                                    ; $492b: $fa $43 $d8
	and $03                                          ; $492e: $e6 $03
	cp $01                                           ; $4930: $fe $01
	jr nz, jr_009_4948                               ; $4932: $20 $14

	srl h                                            ; $4934: $cb $3c
	rr l                                             ; $4936: $cb $1d
	push hl                                          ; $4938: $e5
	ld hl, $d875                                     ; $4939: $21 $75 $d8
	rst GetHLinHL                                          ; $493c: $cf
	ld bc, $0064                                     ; $493d: $01 $64 $00
	add hl, bc                                       ; $4940: $09
	ld de, $d875                                     ; $4941: $11 $75 $d8
	call $3cce                                       ; $4944: $cd $ce $3c
	pop hl                                           ; $4947: $e1

jr_009_4948:
	ld de, $d86b                                     ; $4948: $11 $6b $d8
	call $3cce                                       ; $494b: $cd $ce $3c
	call Call_009_4a30                               ; $494e: $cd $30 $4a
	ret                                              ; $4951: $c9


	ld a, [$d845]                                    ; $4952: $fa $45 $d8
	and $07                                          ; $4955: $e6 $07
	cp $01                                           ; $4957: $fe $01
	jr z, jr_009_4960                                ; $4959: $28 $05

	cp $03                                           ; $495b: $fe $03
	jr z, jr_009_4992                                ; $495d: $28 $33

	ret                                              ; $495f: $c9


jr_009_4960:
	ld hl, $d859                                     ; $4960: $21 $59 $d8
	rst GetHLinHL                                          ; $4963: $cf
	ld de, $f830                                     ; $4964: $11 $30 $f8
	add hl, de                                       ; $4967: $19
	jr c, jr_009_496d                                ; $4968: $38 $03

	ld hl, $0000                                     ; $496a: $21 $00 $00

jr_009_496d:
	srl h                                            ; $496d: $cb $3c
	rr l                                             ; $496f: $cb $1d
	srl h                                            ; $4971: $cb $3c
	rr l                                             ; $4973: $cb $1d
	ld a, h                                          ; $4975: $7c
	or l                                             ; $4976: $b5
	ld bc, $0000                                     ; $4977: $01 $00 $00
	call nz, $3cad                                   ; $497a: $c4 $ad $3c
	ld hl, $01f4                                     ; $497d: $21 $f4 $01
	add hl, bc                                       ; $4980: $09
	ld a, [$d843]                                    ; $4981: $fa $43 $d8
	and $03                                          ; $4984: $e6 $03
	cp $01                                           ; $4986: $fe $01
	jr nz, jr_009_49be                               ; $4988: $20 $34

	ld bc, $0003                                     ; $498a: $01 $03 $00
	call BCHLequHLdivModBC                                       ; $498d: $cd $c1 $12
	jr jr_009_49be                                   ; $4990: $18 $2c

jr_009_4992:
	ld hl, $d859                                     ; $4992: $21 $59 $d8
	rst GetHLinHL                                          ; $4995: $cf
	ld de, $f830                                     ; $4996: $11 $30 $f8
	add hl, de                                       ; $4999: $19
	jr c, jr_009_499f                                ; $499a: $38 $03

	ld hl, $0000                                     ; $499c: $21 $00 $00

jr_009_499f:
	srl h                                            ; $499f: $cb $3c
	rr l                                             ; $49a1: $cb $1d
	ld a, h                                          ; $49a3: $7c
	or l                                             ; $49a4: $b5
	ld bc, $0000                                     ; $49a5: $01 $00 $00
	call nz, $3cad                                   ; $49a8: $c4 $ad $3c
	ld hl, $03e8                                     ; $49ab: $21 $e8 $03
	add hl, bc                                       ; $49ae: $09
	ld a, [$d843]                                    ; $49af: $fa $43 $d8
	and $03                                          ; $49b2: $e6 $03
	cp $01                                           ; $49b4: $fe $01
	jr nz, jr_009_49be                               ; $49b6: $20 $06

	ld bc, $000a                                     ; $49b8: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $49bb: $cd $c1 $12

jr_009_49be:
	ld de, $d86b                                     ; $49be: $11 $6b $d8
	call $3cce                                       ; $49c1: $cd $ce $3c
	call Call_009_4a30                               ; $49c4: $cd $30 $4a
	ret                                              ; $49c7: $c9


	ld a, [$d845]                                    ; $49c8: $fa $45 $d8
	and $07                                          ; $49cb: $e6 $07
	cp $01                                           ; $49cd: $fe $01
	jr z, jr_009_49e3                                ; $49cf: $28 $12

	cp $03                                           ; $49d1: $fe $03
	jr z, jr_009_4a03                                ; $49d3: $28 $2e

	cp $05                                           ; $49d5: $fe $05
	jr z, jr_009_4a10                                ; $49d7: $28 $37

	ld hl, $0000                                     ; $49d9: $21 $00 $00
	ld de, $d86b                                     ; $49dc: $11 $6b $d8
	call $3cce                                       ; $49df: $cd $ce $3c
	ret                                              ; $49e2: $c9


jr_009_49e3:
	ld a, $7d                                        ; $49e3: $3e $7d
	ld b, $4b                                        ; $49e5: $06 $4b
	call $3c95                                       ; $49e7: $cd $95 $3c
	ld a, [$d843]                                    ; $49ea: $fa $43 $d8
	and $03                                          ; $49ed: $e6 $03
	cp $01                                           ; $49ef: $fe $01
	jr nz, jr_009_49f9                               ; $49f1: $20 $06

	ld bc, $000a                                     ; $49f3: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $49f6: $cd $c1 $12

jr_009_49f9:
	ld de, $d86b                                     ; $49f9: $11 $6b $d8
	call $3cce                                       ; $49fc: $cd $ce $3c
	call Call_009_4a30                               ; $49ff: $cd $30 $4a
	ret                                              ; $4a02: $c9


jr_009_4a03:
	ld a, $64                                        ; $4a03: $3e $64
	ld b, a                                          ; $4a05: $47
	call $3c95                                       ; $4a06: $cd $95 $3c
	ld de, $d86b                                     ; $4a09: $11 $6b $d8
	call $3cce                                       ; $4a0c: $cd $ce $3c
	ret                                              ; $4a0f: $c9


jr_009_4a10:
	ld hl, $d84f                                     ; $4a10: $21 $4f $d8
	rst GetHLinHL                                          ; $4a13: $cf
	ld bc, $000a                                     ; $4a14: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $4a17: $cd $c1 $12
	ld a, [$d843]                                    ; $4a1a: $fa $43 $d8
	and $03                                          ; $4a1d: $e6 $03
	cp $01                                           ; $4a1f: $fe $01
	jr nz, jr_009_4a29                               ; $4a21: $20 $06

	ld bc, $000a                                     ; $4a23: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $4a26: $cd $c1 $12

jr_009_4a29:
	ld de, $d86b                                     ; $4a29: $11 $6b $d8
	call $3cce                                       ; $4a2c: $cd $ce $3c
	ret                                              ; $4a2f: $c9


Call_009_4a30:
	ld hl, $a2ff                                     ; $4a30: $21 $ff $a2
	rst GetHLinHL                                          ; $4a33: $cf
	ld a, h                                          ; $4a34: $7c
	or a                                             ; $4a35: $b7
	jr nz, jr_009_4a3d                               ; $4a36: $20 $05

	ld a, l                                          ; $4a38: $7d
	cp $96                                           ; $4a39: $fe $96
	jr c, jr_009_4a3f                                ; $4a3b: $38 $02

jr_009_4a3d:
	ld a, $96                                        ; $4a3d: $3e $96

jr_009_4a3f:
	ld b, a                                          ; $4a3f: $47
	ld a, $e1                                        ; $4a40: $3e $e1
	sub b                                            ; $4a42: $90
	push af                                          ; $4a43: $f5
	cp $96                                           ; $4a44: $fe $96
	jr c, jr_009_4a4a                                ; $4a46: $38 $02

	sub $96                                          ; $4a48: $d6 $96

jr_009_4a4a:
	push af                                          ; $4a4a: $f5
	ld hl, $d86b                                     ; $4a4b: $21 $6b $d8
	rst GetHLinHL                                          ; $4a4e: $cf
	pop af                                           ; $4a4f: $f1
	call AHLequAtimesHL                                       ; $4a50: $cd $77 $12
	ld l, h                                          ; $4a53: $6c
	ld h, a                                          ; $4a54: $67
	push hl                                          ; $4a55: $e5
	ld a, $07                                        ; $4a56: $3e $07
	call AHLequAtimesHL                                       ; $4a58: $cd $77 $12
	ld bc, $000a                                     ; $4a5b: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $4a5e: $cd $c1 $12
	pop de                                           ; $4a61: $d1
	add hl, de                                       ; $4a62: $19
	pop af                                           ; $4a63: $f1
	cp $96                                           ; $4a64: $fe $96
	jr c, jr_009_4a6f                                ; $4a66: $38 $07

	push hl                                          ; $4a68: $e5
	ld hl, $d86b                                     ; $4a69: $21 $6b $d8
	rst GetHLinHL                                          ; $4a6c: $cf
	pop de                                           ; $4a6d: $d1
	add hl, de                                       ; $4a6e: $19

jr_009_4a6f:
	ld de, $d86b                                     ; $4a6f: $11 $6b $d8
	call $3cce                                       ; $4a72: $cd $ce $3c
	ld hl, $d875                                     ; $4a75: $21 $75 $d8
	rst GetHLinHL                                          ; $4a78: $cf
	ld de, $2710                                     ; $4a79: $11 $10 $27
	call $3cd4                                       ; $4a7c: $cd $d4 $3c
	jr c, jr_009_4a8c                                ; $4a7f: $38 $0b

	ld hl, $270f                                     ; $4a81: $21 $0f $27
	push hl                                          ; $4a84: $e5
	ld de, $d875                                     ; $4a85: $11 $75 $d8
	call $3cce                                       ; $4a88: $cd $ce $3c
	pop hl                                           ; $4a8b: $e1

jr_009_4a8c:
	ld bc, $0400                                     ; $4a8c: $01 $00 $04
	call BCHLequHLdivModBC                                       ; $4a8f: $cd $c1 $12
	ld a, l                                          ; $4a92: $7d
	push af                                          ; $4a93: $f5
	ld hl, $d86b                                     ; $4a94: $21 $6b $d8
	rst GetHLinHL                                          ; $4a97: $cf
	ld d, h                                          ; $4a98: $54
	ld e, l                                          ; $4a99: $5d
	call DEBCequBCtimesDE                                       ; $4a9a: $cd $95 $12
	ld a, e                                          ; $4a9d: $7b
	ld e, b                                          ; $4a9e: $58
	ld d, a                                          ; $4a9f: $57
	srl d                                            ; $4aa0: $cb $3a
	rr e                                             ; $4aa2: $cb $1b
	srl d                                            ; $4aa4: $cb $3a
	rr e                                             ; $4aa6: $cb $1b
	ld hl, $d86b                                     ; $4aa8: $21 $6b $d8
	rst GetHLinHL                                          ; $4aab: $cf
	pop af                                           ; $4aac: $f1
	call AHLequAtimesHL                                       ; $4aad: $cd $77 $12
	or a                                             ; $4ab0: $b7
	jr z, jr_009_4ab8                                ; $4ab1: $28 $05

	ld hl, $270f                                     ; $4ab3: $21 $0f $27
	jr jr_009_4ac4                                   ; $4ab6: $18 $0c

jr_009_4ab8:
	add hl, de                                       ; $4ab8: $19
	ld de, $2710                                     ; $4ab9: $11 $10 $27
	call $3cd4                                       ; $4abc: $cd $d4 $3c
	jr c, jr_009_4ac4                                ; $4abf: $38 $03

	ld hl, $270f                                     ; $4ac1: $21 $0f $27

jr_009_4ac4:
	ld de, $d86b                                     ; $4ac4: $11 $6b $d8
	call $3cce                                       ; $4ac7: $cd $ce $3c
	ret                                              ; $4aca: $c9


Call_009_4acb:
	ld hl, $4ad4                                     ; $4acb: $21 $d4 $4a
	ld a, [$d8b0]                                    ; $4ace: $fa $b0 $d8
	jp $3c83                                         ; $4ad1: $c3 $83 $3c


	ld d, e                                          ; $4ad4: $53
	ret c                                            ; $4ad5: $d8

	ld d, l                                          ; $4ad6: $55
	ret c                                            ; $4ad7: $d8

	ld d, a                                          ; $4ad8: $57
	ret c                                            ; $4ad9: $d8

	ld de, $d86b                                     ; $4ada: $11 $6b $d8
	jr jr_009_4ae2                                   ; $4add: $18 $03

	ld de, $d871                                     ; $4adf: $11 $71 $d8

jr_009_4ae2:
	ld hl, $d84d                                     ; $4ae2: $21 $4d $d8
	call Call_009_4b18                               ; $4ae5: $cd $18 $4b
	jp Jump_009_422f                                 ; $4ae8: $c3 $2f $42


Jump_009_4aeb:
	call Call_009_4acb                               ; $4aeb: $cd $cb $4a
	ld de, $d86b                                     ; $4aee: $11 $6b $d8
	jp Jump_009_4b18                                 ; $4af1: $c3 $18 $4b


Jump_009_4af4:
	ld hl, $d853                                     ; $4af4: $21 $53 $d8
	ld de, $d86b                                     ; $4af7: $11 $6b $d8
	call Call_009_4b18                               ; $4afa: $cd $18 $4b
	ld hl, $d855                                     ; $4afd: $21 $55 $d8
	ld de, $d86b                                     ; $4b00: $11 $6b $d8
	call Call_009_4b18                               ; $4b03: $cd $18 $4b
	ld hl, $d857                                     ; $4b06: $21 $57 $d8
	ld de, $d86b                                     ; $4b09: $11 $6b $d8
	jp Jump_009_4b18                                 ; $4b0c: $c3 $18 $4b


Call_009_4b0f:
Jump_009_4b0f:
	ld hl, $d851                                     ; $4b0f: $21 $51 $d8
	ld de, $d86b                                     ; $4b12: $11 $6b $d8
	jp Jump_009_4b18                                 ; $4b15: $c3 $18 $4b


Call_009_4b18:
Jump_009_4b18:
	push hl                                          ; $4b18: $e5
	rst GetHLinHL                                          ; $4b19: $cf
	ld a, [de]                                       ; $4b1a: $1a
	ld b, a                                          ; $4b1b: $47
	inc de                                           ; $4b1c: $13
	ld a, [de]                                       ; $4b1d: $1a
	ld d, a                                          ; $4b1e: $57
	ld e, b                                          ; $4b1f: $58
	ld a, l                                          ; $4b20: $7d
	sub e                                            ; $4b21: $93
	ld l, a                                          ; $4b22: $6f
	ld a, h                                          ; $4b23: $7c
	sbc d                                            ; $4b24: $9a
	ld h, a                                          ; $4b25: $67
	jr nc, jr_009_4b2b                               ; $4b26: $30 $03

	ld hl, $0000                                     ; $4b28: $21 $00 $00

jr_009_4b2b:
	pop de                                           ; $4b2b: $d1
	call $3cce                                       ; $4b2c: $cd $ce $3c
	ret                                              ; $4b2f: $c9


Call_009_4b30:
	ld a, l                                          ; $4b30: $7d
	ld [$d86b], a                                    ; $4b31: $ea $6b $d8
	ld a, h                                          ; $4b34: $7c
	ld [$d86c], a                                    ; $4b35: $ea $6c $d8
	ret                                              ; $4b38: $c9


Call_009_4b39:
	ld hl, $d85b                                     ; $4b39: $21 $5b $d8
	rst GetHLinHL                                          ; $4b3c: $cf
	ld a, $78                                        ; $4b3d: $3e $78
	rst SubAFromHL                                          ; $4b3f: $d7
	ld a, h                                          ; $4b40: $7c
	cp $ff                                           ; $4b41: $fe $ff
	jr z, jr_009_4b5a                                ; $4b43: $28 $15

	ld hl, $d85b                                     ; $4b45: $21 $5b $d8
	xor a                                            ; $4b48: $af
	ld [hl+], a                                      ; $4b49: $22
	ld [hl], a                                       ; $4b4a: $77
	ld hl, $d846                                     ; $4b4b: $21 $46 $d8
	set 6, [hl]                                      ; $4b4e: $cb $f6
	xor a                                            ; $4b50: $af
	ld [$d892], a                                    ; $4b51: $ea $92 $d8
	ld a, $04                                        ; $4b54: $3e $04
	ld [$d890], a                                    ; $4b56: $ea $90 $d8
	ret                                              ; $4b59: $c9


jr_009_4b5a:
	ld a, [$d892]                                    ; $4b5a: $fa $92 $d8
	cp $02                                           ; $4b5d: $fe $02
	ret nz                                           ; $4b5f: $c0

	ld a, [wButtonsPressed]                                    ; $4b60: $fa $25 $c1
	bit 4, a                                         ; $4b63: $cb $67
	ret z                                            ; $4b65: $c8

	ld hl, $d890                                     ; $4b66: $21 $90 $d8
	res 2, [hl]                                      ; $4b69: $cb $96
	ld a, [hl]                                       ; $4b6b: $7e
	and $03                                          ; $4b6c: $e6 $03
	ld hl, $4b7a                                     ; $4b6e: $21 $7a $4b
	rst AddAOntoHL                                          ; $4b71: $ef
	ld a, [hl]                                       ; $4b72: $7e
	ld [$d846], a                                    ; $4b73: $ea $46 $d8
	call Call_009_4b7e                               ; $4b76: $cd $7e $4b
	ret                                              ; $4b79: $c9


	ldh [$e1], a                                     ; $4b7a: $e0 $e1
	ldh [c], a                                       ; $4b7c: $e2
	nop                                              ; $4b7d: $00

Call_009_4b7e:
	ld a, [$d846]                                    ; $4b7e: $fa $46 $d8
	and $03                                          ; $4b81: $e6 $03
	cp $01                                           ; $4b83: $fe $01
	ld hl, $d868                                     ; $4b85: $21 $68 $d8
	jr z, jr_009_4bae                                ; $4b88: $28 $24

	jr nc, jr_009_4bb9                               ; $4b8a: $30 $2d

	ld a, $0f                                        ; $4b8c: $3e $0f
	call Call_000_12fc                                       ; $4b8e: $cd $fc $12
	add [hl]                                         ; $4b91: $86
	add $1e                                          ; $4b92: $c6 $1e
	ld [hl], a                                       ; $4b94: $77
	ld a, [$d840]                                    ; $4b95: $fa $40 $d8
	cp $04                                           ; $4b98: $fe $04
	jr nz, jr_009_4bc7                               ; $4b9a: $20 $2b

	ld hl, $d869                                     ; $4b9c: $21 $69 $d8
	rst GetHLinHL                                          ; $4b9f: $cf
	ld de, $0258                                     ; $4ba0: $11 $58 $02
	add hl, de                                       ; $4ba3: $19
	ld a, l                                          ; $4ba4: $7d
	ld [$d869], a                                    ; $4ba5: $ea $69 $d8
	ld a, h                                          ; $4ba8: $7c
	ld [$d86a], a                                    ; $4ba9: $ea $6a $d8
	jr jr_009_4bc7                                   ; $4bac: $18 $19

jr_009_4bae:
	ld a, $0f                                        ; $4bae: $3e $0f
	call Call_000_12fc                                       ; $4bb0: $cd $fc $12
	add [hl]                                         ; $4bb3: $86
	add $14                                          ; $4bb4: $c6 $14
	ld [hl], a                                       ; $4bb6: $77
	jr jr_009_4bc7                                   ; $4bb7: $18 $0e

jr_009_4bb9:
	ld a, [hl]                                       ; $4bb9: $7e
	sub $64                                          ; $4bba: $d6 $64
	jr nc, jr_009_4bbf                               ; $4bbc: $30 $01

	xor a                                            ; $4bbe: $af

jr_009_4bbf:
	ld [hl], a                                       ; $4bbf: $77
	push hl                                          ; $4bc0: $e5
	ld hl, $d842                                     ; $4bc1: $21 $42 $d8
	res 6, [hl]                                      ; $4bc4: $cb $b6
	pop hl                                           ; $4bc6: $e1

jr_009_4bc7:
	ld hl, $d868                                     ; $4bc7: $21 $68 $d8
	ld a, [hl]                                       ; $4bca: $7e
	cp $aa                                           ; $4bcb: $fe $aa
	jp c, Jump_009_4bd2                              ; $4bcd: $da $d2 $4b

	ld a, $aa                                        ; $4bd0: $3e $aa

Jump_009_4bd2:
	ld [hl], a                                       ; $4bd2: $77
	cp $64                                           ; $4bd3: $fe $64
	ret c                                            ; $4bd5: $d8

	ld hl, $d842                                     ; $4bd6: $21 $42 $d8
	bit 7, [hl]                                      ; $4bd9: $cb $7e
	ret z                                            ; $4bdb: $c8

	set 6, [hl]                                      ; $4bdc: $cb $f6
	ret                                              ; $4bde: $c9


Call_009_4bdf:
	ld a, [$d840]                                    ; $4bdf: $fa $40 $d8
	cp $04                                           ; $4be2: $fe $04
	jr z, jr_009_4bf2                                ; $4be4: $28 $0c

	ld a, $28                                        ; $4be6: $3e $28
	ld b, $1e                                        ; $4be8: $06 $1e
	call $3c95                                       ; $4bea: $cd $95 $3c
	ld a, $3c                                        ; $4bed: $3e $3c
	rst AddAOntoHL                                          ; $4bef: $ef
	jr jr_009_4bfc                                   ; $4bf0: $18 $0a

jr_009_4bf2:
	ld a, $1e                                        ; $4bf2: $3e $1e
	ld b, $1e                                        ; $4bf4: $06 $1e
	call $3c95                                       ; $4bf6: $cd $95 $3c
	ld a, $1e                                        ; $4bf9: $3e $1e
	rst AddAOntoHL                                          ; $4bfb: $ef

jr_009_4bfc:
	ld a, l                                          ; $4bfc: $7d
	ld [$d85b], a                                    ; $4bfd: $ea $5b $d8
	ld a, h                                          ; $4c00: $7c
	ld [$d85c], a                                    ; $4c01: $ea $5c $d8
	ret                                              ; $4c04: $c9


Call_009_4c05:
	ld a, [$d841]                                    ; $4c05: $fa $41 $d8
	cp $0f                                           ; $4c08: $fe $0f
	ret nc                                           ; $4c0a: $d0

	call Call_009_4c45                               ; $4c0b: $cd $45 $4c
	ld hl, $d85d                                     ; $4c0e: $21 $5d $d8
	ld a, [hl+]                                      ; $4c11: $2a
	sub e                                            ; $4c12: $93
	ld a, [hl]                                       ; $4c13: $7e
	sbc d                                            ; $4c14: $9a
	ret c                                            ; $4c15: $d8

	call Call_009_4165                               ; $4c16: $cd $65 $41
	or a                                             ; $4c19: $b7
	ret z                                            ; $4c1a: $c8

	ld hl, $d85d                                     ; $4c1b: $21 $5d $d8
	xor a                                            ; $4c1e: $af
	ld [hl+], a                                      ; $4c1f: $22
	ld [hl], a                                       ; $4c20: $77
	call Call_009_4c87                               ; $4c21: $cd $87 $4c
	and $83                                          ; $4c24: $e6 $83
	ld b, a                                          ; $4c26: $47
	ld a, [$d844]                                    ; $4c27: $fa $44 $d8
	and $7c                                          ; $4c2a: $e6 $7c
	or b                                             ; $4c2c: $b0
	ld [$d847], a                                    ; $4c2d: $ea $47 $d8
	ld hl, $d847                                     ; $4c30: $21 $47 $d8
	bit 7, [hl]                                      ; $4c33: $cb $7e
	ret nz                                           ; $4c35: $c0

	ld a, $64                                        ; $4c36: $3e $64
	ld b, $32                                        ; $4c38: $06 $32
	call $3c95                                       ; $4c3a: $cd $95 $3c
	ld a, l                                          ; $4c3d: $7d
	ld d, h                                          ; $4c3e: $54
	ld hl, $d85d                                     ; $4c3f: $21 $5d $d8
	ld [hl+], a                                      ; $4c42: $22
	ld [hl], d                                       ; $4c43: $72
	ret                                              ; $4c44: $c9


Call_009_4c45:
	ld a, [$d841]                                    ; $4c45: $fa $41 $d8
	cp $0e                                           ; $4c48: $fe $0e
	jr z, jr_009_4c55                                ; $4c4a: $28 $09

	jr nc, jr_009_4c67                               ; $4c4c: $30 $19

	ld hl, $4c6b                                     ; $4c4e: $21 $6b $4c
	call $3c89                                       ; $4c51: $cd $89 $3c
	ret                                              ; $4c54: $c9


jr_009_4c55:
	ld hl, $d84f                                     ; $4c55: $21 $4f $d8
	rst GetHLinHL                                          ; $4c58: $cf
	ld de, $00aa                                     ; $4c59: $11 $aa $00
	ld a, h                                          ; $4c5c: $7c
	or a                                             ; $4c5d: $b7
	ret nz                                           ; $4c5e: $c0

	ld a, l                                          ; $4c5f: $7d
	cp $0a                                           ; $4c60: $fe $0a
	ret nc                                           ; $4c62: $d0

	ld de, $006e                                     ; $4c63: $11 $6e $00
	ret                                              ; $4c66: $c9


jr_009_4c67:
	ld de, rIE                                     ; $4c67: $11 $ff $ff
	ret                                              ; $4c6a: $c9


	ret z                                            ; $4c6b: $c8

	nop                                              ; $4c6c: $00
	ld a, [bc]                                       ; $4c6d: $0a
	nop                                              ; $4c6e: $00
	inc l                                            ; $4c6f: $2c
	ld bc, $012c                                     ; $4c70: $01 $2c $01
	inc l                                            ; $4c73: $2c
	ld bc, $012c                                     ; $4c74: $01 $2c $01
	inc b                                            ; $4c77: $04
	ld bc, $00f0                                     ; $4c78: $01 $f0 $00
	inc b                                            ; $4c7b: $04
	ld bc, $0104                                ; $4c7c: $01 $04 $01
	inc b                                            ; $4c7f: $04
	ld bc, $0104                                ; $4c80: $01 $04 $01
	inc l                                            ; $4c83: $2c
	ld bc, $0104                                ; $4c84: $01 $04 $01

Call_009_4c87:
	ld a, [$d889]                                    ; $4c87: $fa $89 $d8
	ld b, a                                          ; $4c8a: $47
	ld a, [$d88a]                                    ; $4c8b: $fa $8a $d8
	add b                                            ; $4c8e: $80
	cp $14                                           ; $4c8f: $fe $14
	jr nc, jr_009_4ca3                               ; $4c91: $30 $10

	ld a, [$d841]                                    ; $4c93: $fa $41 $d8
	ld hl, $4e62                                     ; $4c96: $21 $62 $4e
	add a                                            ; $4c99: $87
	rst AddAOntoHL                                          ; $4c9a: $ef
	ld a, [hl+]                                      ; $4c9b: $2a
	ld [$d889], a                                    ; $4c9c: $ea $89 $d8
	ld a, [hl]                                       ; $4c9f: $7e
	ld [$d88a], a                                    ; $4ca0: $ea $8a $d8

jr_009_4ca3:
	ld a, [$d841]                                    ; $4ca3: $fa $41 $d8
	rst JumpTable                                          ; $4ca6: $c7
	ret c                                            ; $4ca7: $d8

	ld c, h                                          ; $4ca8: $4c
	rst AddAOntoHL                                          ; $4ca9: $ef
	ld c, h                                          ; $4caa: $4c
	rst JumpTable                                          ; $4cab: $c7
	ld c, h                                          ; $4cac: $4c
	rst JumpTable                                          ; $4cad: $c7
	ld c, h                                          ; $4cae: $4c
	rst JumpTable                                          ; $4caf: $c7
	ld c, h                                          ; $4cb0: $4c
	rst JumpTable                                          ; $4cb1: $c7
	ld c, h                                          ; $4cb2: $4c
	ldh a, [c]                                       ; $4cb3: $f2
	ld c, h                                          ; $4cb4: $4c
	dec e                                            ; $4cb5: $1d
	ld c, l                                          ; $4cb6: $4d
	ld c, d                                          ; $4cb7: $4a
	ld c, l                                          ; $4cb8: $4d
	ld [hl], b                                       ; $4cb9: $70
	ld c, l                                          ; $4cba: $4d
	sub l                                            ; $4cbb: $95
	ld c, l                                          ; $4cbc: $4d
	xor e                                            ; $4cbd: $ab
	ld c, l                                          ; $4cbe: $4d
	rst SubAFromHL                                          ; $4cbf: $d7
	ld c, l                                          ; $4cc0: $4d
	ld [bc], a                                       ; $4cc1: $02
	ld c, [hl]                                       ; $4cc2: $4e
	ld a, [hl+]                                      ; $4cc3: $2a
	ld c, [hl]                                       ; $4cc4: $4e
	ld b, [hl]                                       ; $4cc5: $46
	ld c, [hl]                                       ; $4cc6: $4e
	call Call_009_4e48                               ; $4cc7: $cd $48 $4e
	jr c, jr_009_4cd2                                ; $4cca: $38 $06

	call Call_009_4e55                               ; $4ccc: $cd $55 $4e
	ld a, $00                                        ; $4ccf: $3e $00
	ret                                              ; $4cd1: $c9


jr_009_4cd2:
	call Call_009_4e5a                               ; $4cd2: $cd $5a $4e
	ld a, $80                                        ; $4cd5: $3e $80
	ret                                              ; $4cd7: $c9


	call Call_009_4e48                               ; $4cd8: $cd $48 $4e
	jr c, jr_009_4ce3                                ; $4cdb: $38 $06

	call Call_009_4e55                               ; $4cdd: $cd $55 $4e
	ld a, $00                                        ; $4ce0: $3e $00
	ret                                              ; $4ce2: $c9


jr_009_4ce3:
	call Call_009_4e5a                               ; $4ce3: $cd $5a $4e
	xor a                                            ; $4ce6: $af
	ld hl, $d85f                                     ; $4ce7: $21 $5f $d8
	ld [hl+], a                                      ; $4cea: $22
	ld [hl], a                                       ; $4ceb: $77
	ld a, $80                                        ; $4cec: $3e $80
	ret                                              ; $4cee: $c9


	ld a, $80                                        ; $4cef: $3e $80
	ret                                              ; $4cf1: $c9


	call Call_009_4e48                               ; $4cf2: $cd $48 $4e
	jr c, jr_009_4cfd                                ; $4cf5: $38 $06

	call Call_009_4e55                               ; $4cf7: $cd $55 $4e
	ld a, $00                                        ; $4cfa: $3e $00
	ret                                              ; $4cfc: $c9


jr_009_4cfd:
	call Call_009_4e5a                               ; $4cfd: $cd $5a $4e
	ld hl, $d875                                     ; $4d00: $21 $75 $d8
	rst GetHLinHL                                          ; $4d03: $cf
	ld a, $0a                                        ; $4d04: $3e $0a
	rst AddAOntoHL                                          ; $4d06: $ef
	ld de, $d875                                     ; $4d07: $11 $75 $d8
	call $3cce                                       ; $4d0a: $cd $ce $3c
	ld a, $06                                        ; $4d0d: $3e $06
	rst FarCall                                          ; $4d0f: $f7
	ret nz                                           ; $4d10: $c0

	ld b, e                                          ; $4d11: $43
	inc b                                            ; $4d12: $04
	cp $02                                           ; $4d13: $fe $02
	jr c, jr_009_4d1a                                ; $4d15: $38 $03

	ld a, $80                                        ; $4d17: $3e $80
	ret                                              ; $4d19: $c9


jr_009_4d1a:
	ld a, $81                                        ; $4d1a: $3e $81
	ret                                              ; $4d1c: $c9


	call Call_009_4e48                               ; $4d1d: $cd $48 $4e
	jr c, jr_009_4d28                                ; $4d20: $38 $06

	call Call_009_4e55                               ; $4d22: $cd $55 $4e
	ld a, $00                                        ; $4d25: $3e $00
	ret                                              ; $4d27: $c9


jr_009_4d28:
	call Call_009_4e5a                               ; $4d28: $cd $5a $4e
	call Call_009_4503                               ; $4d2b: $cd $03 $45
	jr nz, jr_009_4d47                               ; $4d2e: $20 $17

	ld a, [$d8b4]                                    ; $4d30: $fa $b4 $d8
	cp $07                                           ; $4d33: $fe $07
	jr nz, jr_009_4d3a                               ; $4d35: $20 $03

	ld a, $00                                        ; $4d37: $3e $00
	ret                                              ; $4d39: $c9


jr_009_4d3a:
	call Call_000_1309                                       ; $4d3a: $cd $09 $13
	and $01                                          ; $4d3d: $e6 $01
	jr nz, jr_009_4d44                               ; $4d3f: $20 $03

	ld a, $80                                        ; $4d41: $3e $80
	ret                                              ; $4d43: $c9


jr_009_4d44:
	ld a, $81                                        ; $4d44: $3e $81
	ret                                              ; $4d46: $c9


jr_009_4d47:
	ld a, $81                                        ; $4d47: $3e $81
	ret                                              ; $4d49: $c9


	ld hl, $d861                                     ; $4d4a: $21 $61 $d8
	ld a, [hl+]                                      ; $4d4d: $2a
	sub $64                                          ; $4d4e: $d6 $64
	ld a, [hl]                                       ; $4d50: $7e
	sbc $00                                          ; $4d51: $de $00
	ld a, $00                                        ; $4d53: $3e $00
	ret nc                                           ; $4d55: $d0

	call Call_009_4e48                               ; $4d56: $cd $48 $4e
	jr c, jr_009_4d61                                ; $4d59: $38 $06

	call Call_009_4e55                               ; $4d5b: $cd $55 $4e
	ld a, $00                                        ; $4d5e: $3e $00
	ret                                              ; $4d60: $c9


jr_009_4d61:
	call Call_009_4e5a                               ; $4d61: $cd $5a $4e
	ld hl, $d861                                     ; $4d64: $21 $61 $d8
	ld de, $0168                                     ; $4d67: $11 $68 $01
	ld [hl], e                                       ; $4d6a: $73
	inc hl                                           ; $4d6b: $23
	ld [hl], d                                       ; $4d6c: $72
	ld a, $80                                        ; $4d6d: $3e $80
	ret                                              ; $4d6f: $c9


	call Call_009_4e48                               ; $4d70: $cd $48 $4e
	jr c, jr_009_4d7b                                ; $4d73: $38 $06

	call Call_009_4e55                               ; $4d75: $cd $55 $4e
	ld a, $00                                        ; $4d78: $3e $00
	ret                                              ; $4d7a: $c9


jr_009_4d7b:
	call Call_009_4e5a                               ; $4d7b: $cd $5a $4e
	ld a, [$d8ab]                                    ; $4d7e: $fa $ab $d8
	or a                                             ; $4d81: $b7
	jr nz, jr_009_4d87                               ; $4d82: $20 $03

	ld a, $80                                        ; $4d84: $3e $80
	ret                                              ; $4d86: $c9


jr_009_4d87:
	ld a, $05                                        ; $4d87: $3e $05
	call Call_000_12fc                                       ; $4d89: $cd $fc $12
	or a                                             ; $4d8c: $b7
	jr nz, jr_009_4d92                               ; $4d8d: $20 $03

	ld a, $81                                        ; $4d8f: $3e $81
	ret                                              ; $4d91: $c9


jr_009_4d92:
	ld a, $82                                        ; $4d92: $3e $82
	ret                                              ; $4d94: $c9


	call Call_009_4e48                               ; $4d95: $cd $48 $4e
	jr c, jr_009_4da0                                ; $4d98: $38 $06

	call Call_009_4e55                               ; $4d9a: $cd $55 $4e
	ld a, $00                                        ; $4d9d: $3e $00
	ret                                              ; $4d9f: $c9


jr_009_4da0:
	call Call_009_4e5a                               ; $4da0: $cd $5a $4e
	ld a, $32                                        ; $4da3: $3e $32
	ld [$d873], a                                    ; $4da5: $ea $73 $d8
	ld a, $81                                        ; $4da8: $3e $81
	ret                                              ; $4daa: $c9


	call Call_009_4e48                               ; $4dab: $cd $48 $4e
	jr c, jr_009_4db6                                ; $4dae: $38 $06

	call Call_009_4e55                               ; $4db0: $cd $55 $4e
	ld a, $00                                        ; $4db3: $3e $00
	ret                                              ; $4db5: $c9


jr_009_4db6:
	call Call_009_4e5a                               ; $4db6: $cd $5a $4e
	ld hl, $d8b5                                     ; $4db9: $21 $b5 $d8
	ld a, [hl]                                       ; $4dbc: $7e
	cp $02                                           ; $4dbd: $fe $02
	jr nc, jr_009_4dd4                               ; $4dbf: $30 $13

	inc [hl]                                         ; $4dc1: $34
	or a                                             ; $4dc2: $b7
	jr z, jr_009_4dd1                                ; $4dc3: $28 $0c

	ld a, $02                                        ; $4dc5: $3e $02
	call Call_000_12fc                                       ; $4dc7: $cd $fc $12
	or a                                             ; $4dca: $b7
	jr nz, jr_009_4dd1                               ; $4dcb: $20 $04

	ld [hl], $02                                     ; $4dcd: $36 $02
	jr jr_009_4dd4                                   ; $4dcf: $18 $03

jr_009_4dd1:
	ld a, $80                                        ; $4dd1: $3e $80
	ret                                              ; $4dd3: $c9


jr_009_4dd4:
	ld a, $81                                        ; $4dd4: $3e $81
	ret                                              ; $4dd6: $c9


	call Call_009_4e48                               ; $4dd7: $cd $48 $4e
	jr c, jr_009_4de2                                ; $4dda: $38 $06

	call Call_009_4e55                               ; $4ddc: $cd $55 $4e
	ld a, $00                                        ; $4ddf: $3e $00
	ret                                              ; $4de1: $c9


jr_009_4de2:
	call Call_009_4e5a                               ; $4de2: $cd $5a $4e
	xor a                                            ; $4de5: $af
	ld hl, $d85f                                     ; $4de6: $21 $5f $d8
	ld [hl+], a                                      ; $4de9: $22
	ld [hl], a                                       ; $4dea: $77
	ld hl, $d859                                     ; $4deb: $21 $59 $d8
	rst GetHLinHL                                          ; $4dee: $cf
	sra h                                            ; $4def: $cb $2c
	rr l                                             ; $4df1: $cb $1d
	ld d, h                                          ; $4df3: $54
	ld e, l                                          ; $4df4: $5d
	ld hl, $d84d                                     ; $4df5: $21 $4d $d8
	rst GetHLinHL                                          ; $4df8: $cf
	call $3cd4                                       ; $4df9: $cd $d4 $3c
	ld a, $80                                        ; $4dfc: $3e $80
	ret nc                                           ; $4dfe: $d0

	ld a, $81                                        ; $4dff: $3e $81
	ret                                              ; $4e01: $c9


	call Call_009_4e48                               ; $4e02: $cd $48 $4e
	jr c, jr_009_4e0d                                ; $4e05: $38 $06

	call Call_009_4e55                               ; $4e07: $cd $55 $4e
	ld a, $00                                        ; $4e0a: $3e $00
	ret                                              ; $4e0c: $c9


jr_009_4e0d:
	call Call_009_4e5a                               ; $4e0d: $cd $5a $4e
	ld hl, $d8b6                                     ; $4e10: $21 $b6 $d8
	ld a, [hl]                                       ; $4e13: $7e
	or a                                             ; $4e14: $b7
	jr nz, jr_009_4e21                               ; $4e15: $20 $0a

	inc [hl]                                         ; $4e17: $34
	call Call_009_4e82                               ; $4e18: $cd $82 $4e
	ld a, $80                                        ; $4e1b: $3e $80
	ret z                                            ; $4e1d: $c8

	ld a, $81                                        ; $4e1e: $3e $81
	ret                                              ; $4e20: $c9


jr_009_4e21:
	call Call_009_4e82                               ; $4e21: $cd $82 $4e
	ld a, $00                                        ; $4e24: $3e $00
	ret z                                            ; $4e26: $c8

	ld a, $82                                        ; $4e27: $3e $82
	ret                                              ; $4e29: $c9


	ld hl, $d84f                                     ; $4e2a: $21 $4f $d8
	ld a, [hl+]                                      ; $4e2d: $2a
	cp $08                                           ; $4e2e: $fe $08
	jr nc, jr_009_4e39                               ; $4e30: $30 $07

	ld a, [hl]                                       ; $4e32: $7e
	or a                                             ; $4e33: $b7
	jr nz, jr_009_4e39                               ; $4e34: $20 $03

	ld a, $82                                        ; $4e36: $3e $82
	ret                                              ; $4e38: $c9


jr_009_4e39:
	call Call_000_1309                                       ; $4e39: $cd $09 $13
	and $01                                          ; $4e3c: $e6 $01
	jr nz, jr_009_4e43                               ; $4e3e: $20 $03

	ld a, $80                                        ; $4e40: $3e $80
	ret                                              ; $4e42: $c9


jr_009_4e43:
	ld a, $81                                        ; $4e43: $3e $81
	ret                                              ; $4e45: $c9


	xor a                                            ; $4e46: $af
	ret                                              ; $4e47: $c9


Call_009_4e48:
	ld hl, $d889                                     ; $4e48: $21 $89 $d8
	ld a, [hl+]                                      ; $4e4b: $2a
	ld b, [hl]                                       ; $4e4c: $46
	call $3c95                                       ; $4e4d: $cd $95 $3c
	ld a, [$d889]                                    ; $4e50: $fa $89 $d8
	cp l                                             ; $4e53: $bd
	ret                                              ; $4e54: $c9


Call_009_4e55:
	ld hl, $d889                                     ; $4e55: $21 $89 $d8
	jr jr_009_4e5d                                   ; $4e58: $18 $03

Call_009_4e5a:
	ld hl, $d88a                                     ; $4e5a: $21 $8a $d8

jr_009_4e5d:
	ld a, [hl]                                       ; $4e5d: $7e
	sub $05                                          ; $4e5e: $d6 $05
	ld [hl], a                                       ; $4e60: $77
	ret                                              ; $4e61: $c9


	ld [hl-], a                                      ; $4e62: $32
	ld [hl-], a                                      ; $4e63: $32
	ld h, h                                          ; $4e64: $64
	ld h, h                                          ; $4e65: $64
	ld [hl-], a                                      ; $4e66: $32
	ld [hl-], a                                      ; $4e67: $32
	ld [hl-], a                                      ; $4e68: $32
	ld [hl-], a                                      ; $4e69: $32
	ld [hl-], a                                      ; $4e6a: $32
	ld [hl-], a                                      ; $4e6b: $32
	ld [hl-], a                                      ; $4e6c: $32
	ld [hl-], a                                      ; $4e6d: $32
	ld [hl-], a                                      ; $4e6e: $32
	ld [hl-], a                                      ; $4e6f: $32
	ld [hl-], a                                      ; $4e70: $32
	ld [hl-], a                                      ; $4e71: $32
	ld [hl-], a                                      ; $4e72: $32
	ld [hl-], a                                      ; $4e73: $32
	ld [hl-], a                                      ; $4e74: $32
	ld [hl-], a                                      ; $4e75: $32
	ld [hl-], a                                      ; $4e76: $32
	ld [hl-], a                                      ; $4e77: $32
	ld [hl-], a                                      ; $4e78: $32
	ld [hl-], a                                      ; $4e79: $32
	ld [hl-], a                                      ; $4e7a: $32
	ld [hl-], a                                      ; $4e7b: $32
	ld [hl-], a                                      ; $4e7c: $32
	ld [hl-], a                                      ; $4e7d: $32
	ld h, h                                          ; $4e7e: $64
	ld h, h                                          ; $4e7f: $64
	ld h, h                                          ; $4e80: $64
	ld h, h                                          ; $4e81: $64

Call_009_4e82:
	ld a, [$d840]                                    ; $4e82: $fa $40 $d8
	cp $08                                           ; $4e85: $fe $08
	ret z                                            ; $4e87: $c8

	cp $09                                           ; $4e88: $fe $09
	ret                                              ; $4e8a: $c9


Call_009_4e8b:
	call Call_009_4eca                               ; $4e8b: $cd $ca $4e
	ld hl, $d85f                                     ; $4e8e: $21 $5f $d8
	ld a, [hl+]                                      ; $4e91: $2a
	sub e                                            ; $4e92: $93
	ld a, [hl]                                       ; $4e93: $7e
	sbc d                                            ; $4e94: $9a
	ret c                                            ; $4e95: $d8

	call Call_009_4165                               ; $4e96: $cd $65 $41
	or a                                             ; $4e99: $b7
	ret z                                            ; $4e9a: $c8

	ld hl, $d85f                                     ; $4e9b: $21 $5f $d8
	xor a                                            ; $4e9e: $af
	ld [hl+], a                                      ; $4e9f: $22
	ld [hl], a                                       ; $4ea0: $77
	ld a, $14                                        ; $4ea1: $3e $14
	ld b, $28                                        ; $4ea3: $06 $28
	call $3c95                                       ; $4ea5: $cd $95 $3c
	ld a, l                                          ; $4ea8: $7d
	ld d, h                                          ; $4ea9: $54
	ld hl, $d861                                     ; $4eaa: $21 $61 $d8
	ld [hl+], a                                      ; $4ead: $22
	ld [hl], d                                       ; $4eae: $72
	call Call_009_4eea                               ; $4eaf: $cd $ea $4e
	ld [$d848], a                                    ; $4eb2: $ea $48 $d8
	ld hl, $d848                                     ; $4eb5: $21 $48 $d8
	bit 7, [hl]                                      ; $4eb8: $cb $7e
	ret nz                                           ; $4eba: $c0

	ld a, $3c                                        ; $4ebb: $3e $3c
	ld b, $5a                                        ; $4ebd: $06 $5a
	call $3c95                                       ; $4ebf: $cd $95 $3c
	ld a, l                                          ; $4ec2: $7d
	ld d, h                                          ; $4ec3: $54
	ld hl, $d85f                                     ; $4ec4: $21 $5f $d8
	ld [hl+], a                                      ; $4ec7: $22
	ld [hl], d                                       ; $4ec8: $72
	ret                                              ; $4ec9: $c9


Call_009_4eca:
	ld a, [$d840]                                    ; $4eca: $fa $40 $d8
	cp $09                                           ; $4ecd: $fe $09
	jr z, jr_009_4ee2                                ; $4ecf: $28 $11

	cp $03                                           ; $4ed1: $fe $03
	jr c, jr_009_4ee6                                ; $4ed3: $38 $11

	jr z, jr_009_4ee2                                ; $4ed5: $28 $0b

	ld hl, $d861                                     ; $4ed7: $21 $61 $d8
	rst GetHLinHL                                          ; $4eda: $cf
	ld de, $0096                                     ; $4edb: $11 $96 $00
	add hl, de                                       ; $4ede: $19
	ld e, l                                          ; $4edf: $5d
	ld d, h                                          ; $4ee0: $54
	ret                                              ; $4ee1: $c9


jr_009_4ee2:
	ld de, $0168                                     ; $4ee2: $11 $68 $01
	ret                                              ; $4ee5: $c9


jr_009_4ee6:
	ld de, $014a                     ; $4ee6: $11 $4a $01
	ret                                              ; $4ee9: $c9


Call_009_4eea:
	ld a, [$d840]                                    ; $4eea: $fa $40 $d8
	rst JumpTable                                          ; $4eed: $c7
	ld [bc], a                                       ; $4eee: $02
	ld c, a                                          ; $4eef: $4f
	ld [bc], a                                       ; $4ef0: $02
	ld c, a                                          ; $4ef1: $4f
	ld [bc], a                                       ; $4ef2: $02
	ld c, a                                          ; $4ef3: $4f
	rrca                                             ; $4ef4: $0f
	ld c, a                                          ; $4ef5: $4f
	dec d                                            ; $4ef6: $15
	ld c, a                                          ; $4ef7: $4f
	ld e, e                                          ; $4ef8: $5b
	ld c, a                                          ; $4ef9: $4f
	ld e, e                                          ; $4efa: $5b
	ld c, a                                          ; $4efb: $4f
	dec d                                            ; $4efc: $15
	ld d, b                                          ; $4efd: $50
	ld e, e                                          ; $4efe: $5b
	ld c, a                                          ; $4eff: $4f
	rrca                                             ; $4f00: $0f
	ld c, a                                          ; $4f01: $4f
	ld hl, $d874                                     ; $4f02: $21 $74 $d8
	inc [hl]                                         ; $4f05: $34
	ld a, [hl]                                       ; $4f06: $7e
	cp $03                                           ; $4f07: $fe $03
	ld a, $80                                        ; $4f09: $3e $80
	ret c                                            ; $4f0b: $d8

	ld a, $81                                        ; $4f0c: $3e $81
	ret                                              ; $4f0e: $c9


	call Call_009_50d5                               ; $4f0f: $cd $d5 $50
	ld a, $80                                        ; $4f12: $3e $80
	ret                                              ; $4f14: $c9


	call Call_009_50ed                               ; $4f15: $cd $ed $50
	cp $06                                           ; $4f18: $fe $06
	jr nc, jr_009_4f2c                               ; $4f1a: $30 $10

	ld hl, $d885                                     ; $4f1c: $21 $85 $d8
	ld [hl], $0f                                     ; $4f1f: $36 $0f
	inc hl                                           ; $4f21: $23
	ld [hl], $05                                     ; $4f22: $36 $05
	inc hl                                           ; $4f24: $23
	ld [hl], $0a                                     ; $4f25: $36 $0a
	inc hl                                           ; $4f27: $23
	ld [hl], $0a                                     ; $4f28: $36 $0a
	ld a, $28                                        ; $4f2a: $3e $28

jr_009_4f2c:
	call Call_000_12fc                                       ; $4f2c: $cd $fc $12
	ld b, a                                          ; $4f2f: $47
	ld hl, $d885                                     ; $4f30: $21 $85 $d8
	ld a, [hl]                                       ; $4f33: $7e
	cp b                                             ; $4f34: $b8
	jr nc, jr_009_4f43                               ; $4f35: $30 $0c

	inc hl                                           ; $4f37: $23
	add [hl]                                         ; $4f38: $86
	cp b                                             ; $4f39: $b8
	jr nc, jr_009_4f49                               ; $4f3a: $30 $0d

	inc hl                                           ; $4f3c: $23
	add [hl]                                         ; $4f3d: $86
	cp b                                             ; $4f3e: $b8
	jr nc, jr_009_4f4f                               ; $4f3f: $30 $0e

	jr jr_009_4f55                                   ; $4f41: $18 $12

jr_009_4f43:
	call Call_009_50ac                               ; $4f43: $cd $ac $50
	ld a, $00                                        ; $4f46: $3e $00
	ret                                              ; $4f48: $c9


jr_009_4f49:
	call Call_009_50b1                               ; $4f49: $cd $b1 $50
	ld a, $80                                        ; $4f4c: $3e $80
	ret                                              ; $4f4e: $c9


jr_009_4f4f:
	call Call_009_50b6                               ; $4f4f: $cd $b6 $50
	ld a, $81                                        ; $4f52: $3e $81
	ret                                              ; $4f54: $c9


jr_009_4f55:
	call Call_009_50bb                               ; $4f55: $cd $bb $50
	ld a, $82                                        ; $4f58: $3e $82
	ret                                              ; $4f5a: $c9


	call Call_009_50f3                               ; $4f5b: $cd $f3 $50
	call Call_009_50ed                               ; $4f5e: $cd $ed $50
	cp $15                                           ; $4f61: $fe $15
	jr nc, jr_009_4f8e                               ; $4f63: $30 $29

	ld a, [$d840]                                    ; $4f65: $fa $40 $d8
	cp $06                                           ; $4f68: $fe $06
	jr nz, jr_009_4f7e                               ; $4f6a: $20 $12

	ld hl, $d885                                     ; $4f6c: $21 $85 $d8
	ld [hl], $0f                                     ; $4f6f: $36 $0f
	inc hl                                           ; $4f71: $23
	ld [hl], $0f                                     ; $4f72: $36 $0f
	inc hl                                           ; $4f74: $23
	ld [hl], $05                                     ; $4f75: $36 $05
	inc hl                                           ; $4f77: $23
	ld [hl], $1e                                     ; $4f78: $36 $1e
	ld a, $28                                        ; $4f7a: $3e $28
	jr jr_009_4f8e                                   ; $4f7c: $18 $10

jr_009_4f7e:
	ld hl, $d885                                     ; $4f7e: $21 $85 $d8
	ld [hl], $0a                                     ; $4f81: $36 $0a
	inc hl                                           ; $4f83: $23
	ld [hl], $0a                                     ; $4f84: $36 $0a
	inc hl                                           ; $4f86: $23
	ld [hl], $00                                     ; $4f87: $36 $00
	inc hl                                           ; $4f89: $23
	ld [hl], $28                                     ; $4f8a: $36 $28
	ld a, $3c                                        ; $4f8c: $3e $3c

jr_009_4f8e:
	ld hl, $d873                                     ; $4f8e: $21 $73 $d8
	add [hl]                                         ; $4f91: $86
	call Call_000_12fc                                       ; $4f92: $cd $fc $12
	ld b, a                                          ; $4f95: $47
	ld hl, $d885                                     ; $4f96: $21 $85 $d8
	ld a, [hl]                                       ; $4f99: $7e
	cp b                                             ; $4f9a: $b8
	jr nc, jr_009_4fad                               ; $4f9b: $30 $10

	inc hl                                           ; $4f9d: $23
	add [hl]                                         ; $4f9e: $86
	cp b                                             ; $4f9f: $b8
	jr nc, jr_009_4fb3                               ; $4fa0: $30 $11

	inc hl                                           ; $4fa2: $23
	add [hl]                                         ; $4fa3: $86
	ld hl, $d873                                     ; $4fa4: $21 $73 $d8
	add [hl]                                         ; $4fa7: $86
	cp b                                             ; $4fa8: $b8
	jr nc, jr_009_4fb9                               ; $4fa9: $30 $0e

	jr jr_009_4fcf                                   ; $4fab: $18 $22

jr_009_4fad:
	call Call_009_50ac                               ; $4fad: $cd $ac $50
	ld a, $80                                        ; $4fb0: $3e $80
	ret                                              ; $4fb2: $c9


jr_009_4fb3:
	call Call_009_50b1                               ; $4fb3: $cd $b1 $50
	ld a, $00                                        ; $4fb6: $3e $00
	ret                                              ; $4fb8: $c9


jr_009_4fb9:
	call Call_009_510b                               ; $4fb9: $cd $0b $51
	ld a, $83                                        ; $4fbc: $3e $83
	ret nz                                           ; $4fbe: $c0

	call Call_009_50b6                               ; $4fbf: $cd $b6 $50
	ld hl, $d873                                     ; $4fc2: $21 $73 $d8
	ld a, [hl]                                       ; $4fc5: $7e
	sub $32                                          ; $4fc6: $d6 $32
	jr nc, jr_009_4fcb                               ; $4fc8: $30 $01

	xor a                                            ; $4fca: $af

jr_009_4fcb:
	ld [hl], a                                       ; $4fcb: $77
	ld a, $82                                        ; $4fcc: $3e $82
	ret                                              ; $4fce: $c9


jr_009_4fcf:
	call Call_009_50bb                               ; $4fcf: $cd $bb $50
	ld a, [$d840]                                    ; $4fd2: $fa $40 $d8
	cp $06                                           ; $4fd5: $fe $06
	jr z, jr_009_4fe6                                ; $4fd7: $28 $0d

	ld hl, $d875                                     ; $4fd9: $21 $75 $d8
	rst GetHLinHL                                          ; $4fdc: $cf
	ld a, $19                                        ; $4fdd: $3e $19
	rst AddAOntoHL                                          ; $4fdf: $ef
	ld de, $d875                                     ; $4fe0: $11 $75 $d8
	call $3cce                                       ; $4fe3: $cd $ce $3c

jr_009_4fe6:
	call Call_009_510b                               ; $4fe6: $cd $0b $51
	ld a, $83                                        ; $4fe9: $3e $83
	ret nz                                           ; $4feb: $c0

	ld a, [$d8ab]                                    ; $4fec: $fa $ab $d8
	or a                                             ; $4fef: $b7
	jr nz, jr_009_500f                               ; $4ff0: $20 $1d

	ld a, [$d8b7]                                    ; $4ff2: $fa $b7 $d8
	cp $02                                           ; $4ff5: $fe $02
	jr z, jr_009_500f                                ; $4ff7: $28 $16

	ld a, [$d841]                                    ; $4ff9: $fa $41 $d8
	cp $0e                                           ; $4ffc: $fe $0e
	jr nc, jr_009_500f                               ; $4ffe: $30 $0f

	ld a, $64                                        ; $5000: $3e $64
	call Call_000_12fc                                       ; $5002: $cd $fc $12
	cp $05                                           ; $5005: $fe $05
	jr nc, jr_009_500f                               ; $5007: $30 $06

	call Call_009_50d5                               ; $5009: $cd $d5 $50
	ld a, $85                                        ; $500c: $3e $85
	ret                                              ; $500e: $c9


jr_009_500f:
	call Call_009_50c6                               ; $500f: $cd $c6 $50
	ld a, $81                                        ; $5012: $3e $81
	ret                                              ; $5014: $c9


	ld a, [$d8af]                                    ; $5015: $fa $af $d8
	or a                                             ; $5018: $b7
	jp nz, Jump_009_5071                             ; $5019: $c2 $71 $50

	ld hl, $d851                                     ; $501c: $21 $51 $d8
	rst GetHLinHL                                          ; $501f: $cf
	ld de, $5555                                     ; $5020: $11 $55 $55
	call $3cd4                                       ; $5023: $cd $d4 $3c
	jr nc, jr_009_5036                               ; $5026: $30 $0e

	ld hl, $d885                                     ; $5028: $21 $85 $d8
	ld [hl], $00                                     ; $502b: $36 $00
	inc hl                                           ; $502d: $23
	ld [hl], $05                                     ; $502e: $36 $05
	inc hl                                           ; $5030: $23
	ld [hl], $0f                                     ; $5031: $36 $0f
	ld a, $82                                        ; $5033: $3e $82
	ret                                              ; $5035: $c9


jr_009_5036:
	call Call_009_50e5                               ; $5036: $cd $e5 $50
	cp $0b                                           ; $5039: $fe $0b
	jr nc, jr_009_504a                               ; $503b: $30 $0d

	ld hl, $d885                                     ; $503d: $21 $85 $d8
	ld [hl], $0f                                     ; $5040: $36 $0f
	inc hl                                           ; $5042: $23
	ld [hl], $05                                     ; $5043: $36 $05
	inc hl                                           ; $5045: $23
	ld [hl], $0a                                     ; $5046: $36 $0a
	ld a, $1e                                        ; $5048: $3e $1e

jr_009_504a:
	call Call_000_12fc                                       ; $504a: $cd $fc $12
	ld b, a                                          ; $504d: $47
	ld hl, $d885                                     ; $504e: $21 $85 $d8
	ld a, [hl]                                       ; $5051: $7e
	cp b                                             ; $5052: $b8
	jr nc, jr_009_505c                               ; $5053: $30 $07

	inc hl                                           ; $5055: $23
	add [hl]                                         ; $5056: $86
	cp b                                             ; $5057: $b8
	jr nc, jr_009_5062                               ; $5058: $30 $08

	jr jr_009_5068                                   ; $505a: $18 $0c

jr_009_505c:
	call Call_009_50ac                               ; $505c: $cd $ac $50
	ld a, $00                                        ; $505f: $3e $00
	ret                                              ; $5061: $c9


jr_009_5062:
	call Call_009_50b1                               ; $5062: $cd $b1 $50
	ld a, $80                                        ; $5065: $3e $80
	ret                                              ; $5067: $c9


jr_009_5068:
	call Call_009_50b6                               ; $5068: $cd $b6 $50
	call Call_009_50d5                               ; $506b: $cd $d5 $50
	ld a, $81                                        ; $506e: $3e $81
	ret                                              ; $5070: $c9


Jump_009_5071:
	call Call_009_50e5                               ; $5071: $cd $e5 $50
	cp $0b                                           ; $5074: $fe $0b
	jr nc, jr_009_5085                               ; $5076: $30 $0d

	ld hl, $d885                                     ; $5078: $21 $85 $d8
	ld [hl], $19                                     ; $507b: $36 $19
	inc hl                                           ; $507d: $23
	ld [hl], $0f                                     ; $507e: $36 $0f
	inc hl                                           ; $5080: $23
	ld [hl], $0f                                     ; $5081: $36 $0f
	ld a, $37                                        ; $5083: $3e $37

jr_009_5085:
	call Call_000_12fc                                       ; $5085: $cd $fc $12
	ld b, a                                          ; $5088: $47
	ld hl, $d885                                     ; $5089: $21 $85 $d8
	ld a, [hl]                                       ; $508c: $7e
	cp b                                             ; $508d: $b8
	jr nc, jr_009_5097                               ; $508e: $30 $07

	inc hl                                           ; $5090: $23
	add [hl]                                         ; $5091: $86
	cp b                                             ; $5092: $b8
	jr nc, jr_009_509d                               ; $5093: $30 $08

	jr jr_009_50a3                                   ; $5095: $18 $0c

jr_009_5097:
	call Call_009_50ac                               ; $5097: $cd $ac $50
	ld a, $00                                        ; $509a: $3e $00
	ret                                              ; $509c: $c9


jr_009_509d:
	call Call_009_50b1                               ; $509d: $cd $b1 $50
	ld a, $80                                        ; $50a0: $3e $80
	ret                                              ; $50a2: $c9


jr_009_50a3:
	call Call_009_50b6                               ; $50a3: $cd $b6 $50
	call Call_009_50d5                               ; $50a6: $cd $d5 $50
	ld a, $83                                        ; $50a9: $3e $83
	ret                                              ; $50ab: $c9


Call_009_50ac:
	ld hl, $d885                                     ; $50ac: $21 $85 $d8
	jr jr_009_50be                                   ; $50af: $18 $0d

Call_009_50b1:
	ld hl, $d886                                     ; $50b1: $21 $86 $d8
	jr jr_009_50be                                   ; $50b4: $18 $08

Call_009_50b6:
	ld hl, $d887                                     ; $50b6: $21 $87 $d8
	jr jr_009_50be                                   ; $50b9: $18 $03

Call_009_50bb:
	ld hl, $d888                                     ; $50bb: $21 $88 $d8

jr_009_50be:
	ld a, [hl]                                       ; $50be: $7e
	sub $05                                          ; $50bf: $d6 $05
	jr nc, jr_009_50c4                               ; $50c1: $30 $01

	xor a                                            ; $50c3: $af

jr_009_50c4:
	ld [hl], a                                       ; $50c4: $77
	ret                                              ; $50c5: $c9


Call_009_50c6:
	push af                                          ; $50c6: $f5
	ld hl, $d877                                     ; $50c7: $21 $77 $d8
	ld a, [hl]                                       ; $50ca: $7e
	inc a                                            ; $50cb: $3c
	cp $80                                           ; $50cc: $fe $80
	jr c, jr_009_50d2                                ; $50ce: $38 $02

	ld a, $80                                        ; $50d0: $3e $80

jr_009_50d2:
	ld [hl], a                                       ; $50d2: $77
	pop af                                           ; $50d3: $f1
	ret                                              ; $50d4: $c9


Call_009_50d5:
	push af                                          ; $50d5: $f5
	ld hl, $d877                                     ; $50d6: $21 $77 $d8
	ld a, [hl]                                       ; $50d9: $7e
	inc a                                            ; $50da: $3c
	inc a                                            ; $50db: $3c
	cp $80                                           ; $50dc: $fe $80
	jr c, jr_009_50e2                                ; $50de: $38 $02

	ld a, $80                                        ; $50e0: $3e $80

jr_009_50e2:
	ld [hl], a                                       ; $50e2: $77
	pop af                                           ; $50e3: $f1
	ret                                              ; $50e4: $c9


Call_009_50e5:
	ld hl, $d885                                     ; $50e5: $21 $85 $d8
	ld a, [hl+]                                      ; $50e8: $2a
	add [hl]                                         ; $50e9: $86
	inc hl                                           ; $50ea: $23
	add [hl]                                         ; $50eb: $86
	ret                                              ; $50ec: $c9


Call_009_50ed:
	call Call_009_50e5                               ; $50ed: $cd $e5 $50
	inc hl                                           ; $50f0: $23
	add [hl]                                         ; $50f1: $86
	ret                                              ; $50f2: $c9


Call_009_50f3:
	ld a, $04                                        ; $50f3: $3e $04
	call Call_000_12fc                                       ; $50f5: $cd $fc $12
	cp $01                                           ; $50f8: $fe $01
	jr c, jr_009_5101                                ; $50fa: $38 $05

	jr z, jr_009_5105                                ; $50fc: $28 $07

	xor a                                            ; $50fe: $af
	jr jr_009_5107                                   ; $50ff: $18 $06

jr_009_5101:
	ld a, $01                                        ; $5101: $3e $01
	jr jr_009_5107                                   ; $5103: $18 $02

jr_009_5105:
	ld a, $02                                        ; $5105: $3e $02

jr_009_5107:
	ld [$d8b1], a                                    ; $5107: $ea $b1 $d8
	ret                                              ; $510a: $c9


Call_009_510b:
	ld hl, $d8b4                                     ; $510b: $21 $b4 $d8
	ld a, [$d8b1]                                    ; $510e: $fa $b1 $d8
	cp $01                                           ; $5111: $fe $01
	jr z, jr_009_511a                                ; $5113: $28 $05

	jr nc, jr_009_511d                               ; $5115: $30 $06

	bit 0, [hl]                                      ; $5117: $cb $46
	ret                                              ; $5119: $c9


jr_009_511a:
	bit 1, [hl]                                      ; $511a: $cb $4e
	ret                                              ; $511c: $c9


jr_009_511d:
	bit 2, [hl]                                      ; $511d: $cb $56
	ret                                              ; $511f: $c9


	rst JumpTable                                          ; $5120: $c7
	dec [hl]                                         ; $5121: $35
	ld d, c                                          ; $5122: $51
	and l                                            ; $5123: $a5
	ld d, c                                          ; $5124: $51
	ld e, e                                          ; $5125: $5b
	ld d, l                                          ; $5126: $55
	ld [hl], d                                       ; $5127: $72
	ld d, [hl]                                       ; $5128: $56
	adc [hl]                                         ; $5129: $8e
	ld d, [hl]                                       ; $512a: $56
	jr jr_009_5184                                   ; $512b: $18 $57

	ld hl, $5457                                     ; $512d: $21 $57 $54
	ld d, e                                          ; $5130: $53
	sbc [hl]                                         ; $5131: $9e
	ld d, e                                          ; $5132: $53
	db $f4                                           ; $5133: $f4
	ld d, h                                          ; $5134: $54
	ld l, $20                                        ; $5135: $2e $20
	ld a, [hl]                                       ; $5137: $7e
	rst JumpTable                                          ; $5138: $c7
	ccf                                              ; $5139: $3f
	ld d, c                                          ; $513a: $51
	ld c, h                                          ; $513b: $4c
	ld d, c                                          ; $513c: $51
	ld h, a                                          ; $513d: $67
	ld d, c                                          ; $513e: $51
	inc [hl]                                         ; $513f: $34
	ld de, $ac48                                     ; $5140: $11 $48 $ac
	ld bc, $4220                                     ; $5143: $01 $20 $42
	ld a, $00                                        ; $5146: $3e $00
	call $3d99                                       ; $5148: $cd $99 $3d
	ret                                              ; $514b: $c9


	ld l, $07                                        ; $514c: $2e $07
	ld a, [hl]                                       ; $514e: $7e
	sub $03                                          ; $514f: $d6 $03
	ld [hl], a                                       ; $5151: $77
	cp $8c                                           ; $5152: $fe $8c
	ret nc                                           ; $5154: $d0

	ld [hl], $8c                                     ; $5155: $36 $8c
	ld l, $20                                        ; $5157: $2e $20
	inc [hl]                                         ; $5159: $34
	ld hl, $5191                                     ; $515a: $21 $91 $51
	ld a, [$d840]                                    ; $515d: $fa $40 $d8
	call $3c8f                                       ; $5160: $cd $8f $3c
	call $3cd9                                       ; $5163: $cd $d9 $3c
	ret                                              ; $5166: $c9


	call $3ce2                                       ; $5167: $cd $e2 $3c
	ret nz                                           ; $516a: $c0

	ld l, $0a                                        ; $516b: $2e $0a
	ld [hl], $01                                     ; $516d: $36 $01
	ld l, $20                                        ; $516f: $2e $20
	xor a                                            ; $5171: $af
	ld [hl], a                                       ; $5172: $77
	ld a, [$d840]                                    ; $5173: $fa $40 $d8
	cp $04                                           ; $5176: $fe $04
	jr z, jr_009_5184                                ; $5178: $28 $0a

	cp $03                                           ; $517a: $fe $03
	jr z, jr_009_5188                                ; $517c: $28 $0a

	cp $09                                           ; $517e: $fe $09
	jr z, jr_009_5188                                ; $5180: $28 $06

	jr jr_009_518c                                   ; $5182: $18 $08

jr_009_5184:
	ld a, $0d                                        ; $5184: $3e $0d
	jr jr_009_518d                                   ; $5186: $18 $05

jr_009_5188:
	ld a, $10                                        ; $5188: $3e $10
	jr jr_009_518d                                   ; $518a: $18 $01

jr_009_518c:
	xor a                                            ; $518c: $af

jr_009_518d:
	ld [$d884], a                                    ; $518d: $ea $84 $d8
	ret                                              ; $5190: $c9


	ld bc, $0104                                ; $5191: $01 $04 $01
	dec b                                            ; $5194: $05
	ld bc, $0103                                     ; $5195: $01 $03 $01
	rlca                                             ; $5198: $07
	ld bc, $0106                                     ; $5199: $01 $06 $01
	ld [$0801], sp                                   ; $519c: $08 $01 $08
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00
	ld bc, $0108                                     ; $51a1: $01 $08 $01
	rlca                                             ; $51a4: $07
	ld a, [$d8ad]                                    ; $51a5: $fa $ad $d8
	and $0f                                          ; $51a8: $e6 $0f
	ld l, $21                                        ; $51aa: $2e $21
	cp [hl]                                          ; $51ac: $be
	ld [hl], a                                       ; $51ad: $77
	jr z, jr_009_51b4                                ; $51ae: $28 $04

	ld l, $20                                        ; $51b0: $2e $20
	ld [hl], $00                                     ; $51b2: $36 $00

jr_009_51b4:
	or a                                             ; $51b4: $b7
	jr z, jr_009_51d3                                ; $51b5: $28 $1c

	cp $0a                                           ; $51b7: $fe $0a
	jr nc, jr_009_51cf                               ; $51b9: $30 $14

	dec a                                            ; $51bb: $3d
	rst JumpTable                                          ; $51bc: $c7
	ld [hl], d                                       ; $51bd: $72
	ld d, d                                          ; $51be: $52
	add hl, sp                                       ; $51bf: $39
	ld d, d                                          ; $51c0: $52
	xor e                                            ; $51c1: $ab
	ld d, d                                          ; $51c2: $52
	call $eb52                                       ; $51c3: $cd $52 $eb
	ld d, d                                          ; $51c6: $52
	dec b                                            ; $51c7: $05
	ld d, e                                          ; $51c8: $53
	add hl, de                                       ; $51c9: $19
	ld d, e                                          ; $51ca: $53
	ld sp, $5153                                     ; $51cb: $31 $53 $51
	ld d, e                                          ; $51ce: $53

jr_009_51cf:
	xor a                                            ; $51cf: $af
	ld [$d8ad], a                                    ; $51d0: $ea $ad $d8

jr_009_51d3:
	ld a, [$d884]                                    ; $51d3: $fa $84 $d8
	cp $06                                           ; $51d6: $fe $06
	jr nc, jr_009_51e0                               ; $51d8: $30 $06

	cp $02                                           ; $51da: $fe $02
	jr z, jr_009_51fa                                ; $51dc: $28 $1c

	jr jr_009_51f8                                   ; $51de: $18 $18

jr_009_51e0:
	jr z, jr_009_51f0                                ; $51e0: $28 $0e

	cp $08                                           ; $51e2: $fe $08
	jr z, jr_009_51f0                                ; $51e4: $28 $0a

	cp $0a                                           ; $51e6: $fe $0a
	jr z, jr_009_51f4                                ; $51e8: $28 $0a

	cp $09                                           ; $51ea: $fe $09
	jr z, jr_009_51f4                                ; $51ec: $28 $06

	jr jr_009_51f8                                   ; $51ee: $18 $08

jr_009_51f0:
	ld a, $09                                        ; $51f0: $3e $09
	jr jr_009_520f                                   ; $51f2: $18 $1b

jr_009_51f4:
	ld a, $08                                        ; $51f4: $3e $08
	jr jr_009_520f                                   ; $51f6: $18 $17

jr_009_51f8:
	jr jr_009_5217                                   ; $51f8: $18 $1d

jr_009_51fa:
	ld a, [$d843]                                    ; $51fa: $fa $43 $d8
	and $03                                          ; $51fd: $e6 $03
	cp $01                                           ; $51ff: $fe $01
	jr c, jr_009_5209                                ; $5201: $38 $06

	jr z, jr_009_520d                                ; $5203: $28 $08

	ld a, $06                                        ; $5205: $3e $06
	jr jr_009_520f                                   ; $5207: $18 $06

jr_009_5209:
	ld a, $02                                        ; $5209: $3e $02
	jr jr_009_520f                                   ; $520b: $18 $02

jr_009_520d:
	ld a, $03                                        ; $520d: $3e $03

jr_009_520f:
	ld l, $0a                                        ; $520f: $2e $0a
	ld [hl], a                                       ; $5211: $77
	ld l, $20                                        ; $5212: $2e $20
	ld [hl], $00                                     ; $5214: $36 $00
	ret                                              ; $5216: $c9


jr_009_5217:
	ld l, $20                                        ; $5217: $2e $20
	ld a, [hl]                                       ; $5219: $7e
	rst JumpTable                                          ; $521a: $c7
	rra                                              ; $521b: $1f
	ld d, d                                          ; $521c: $52
	jr z, jr_009_5271                                ; $521d: $28 $52

	inc [hl]                                         ; $521f: $34
	push hl                                          ; $5220: $e5
	ld hl, $7e96                                     ; $5221: $21 $96 $7e
	call $3c78                                       ; $5224: $cd $78 $3c
	pop hl                                           ; $5227: $e1
	ld de, $8c48                                     ; $5228: $11 $48 $8c
	ld bc, $4220                                     ; $522b: $01 $20 $42
	xor a                                            ; $522e: $af
	call $3d99                                       ; $522f: $cd $99 $3d
	call $3d71                                       ; $5232: $cd $71 $3d
	call $3d53                                       ; $5235: $cd $53 $3d
	ret                                              ; $5238: $c9


	ld l, $20                                        ; $5239: $2e $20
	ld a, [hl]                                       ; $523b: $7e
	rst JumpTable                                          ; $523c: $c7
	ld b, c                                          ; $523d: $41
	ld d, d                                          ; $523e: $52
	ld c, l                                          ; $523f: $4d
	ld d, d                                          ; $5240: $52
	inc [hl]                                         ; $5241: $34
	call $3da5                                       ; $5242: $cd $a5 $3d
	push hl                                          ; $5245: $e5
	ld hl, $7ea4                                     ; $5246: $21 $a4 $7e
	call $3c78                                       ; $5249: $cd $78 $3c
	pop hl                                           ; $524c: $e1
	ld bc, $4268                                     ; $524d: $01 $68 $42
	ld a, $00                                        ; $5250: $3e $00
	call $3d9f                                       ; $5252: $cd $9f $3d
	call $3d71                                       ; $5255: $cd $71 $3d
	ld a, [$d8ad]                                    ; $5258: $fa $ad $d8
	and $80                                          ; $525b: $e6 $80
	jr nz, jr_009_5263                               ; $525d: $20 $04

	call $3d53                                       ; $525f: $cd $53 $3d
	ret                                              ; $5262: $c9


jr_009_5263:
	ld a, [$c120]                                    ; $5263: $fa $20 $c1
	and $01                                          ; $5266: $e6 $01
	jr nz, jr_009_526e                               ; $5268: $20 $04

	call $3d53                                       ; $526a: $cd $53 $3d
	ret                                              ; $526d: $c9


jr_009_526e:
	call $3d58                                       ; $526e: $cd $58 $3d

jr_009_5271:
	ret                                              ; $5271: $c9


	ld l, $20                                        ; $5272: $2e $20
	ld a, [hl]                                       ; $5274: $7e
	rst JumpTable                                          ; $5275: $c7
	ld a, d                                          ; $5276: $7a
	ld d, d                                          ; $5277: $52
	add [hl]                                         ; $5278: $86
	ld d, d                                          ; $5279: $52
	inc [hl]                                         ; $527a: $34
	call $3da5                                       ; $527b: $cd $a5 $3d
	push hl                                          ; $527e: $e5
	ld hl, $7eb7                                     ; $527f: $21 $b7 $7e
	call $3c78                                       ; $5282: $cd $78 $3c
	pop hl                                           ; $5285: $e1
	ld bc, $42c8                                     ; $5286: $01 $c8 $42
	ld a, $00                                        ; $5289: $3e $00
	call $3d9f                                       ; $528b: $cd $9f $3d
	call $3d71                                       ; $528e: $cd $71 $3d
	ld a, [$d8ad]                                    ; $5291: $fa $ad $d8
	and $80                                          ; $5294: $e6 $80
	jr nz, jr_009_529c                               ; $5296: $20 $04

	call $3d53                                       ; $5298: $cd $53 $3d
	ret                                              ; $529b: $c9


jr_009_529c:
	ld a, [$c120]                                    ; $529c: $fa $20 $c1
	and $01                                          ; $529f: $e6 $01
	jr nz, jr_009_52a7                               ; $52a1: $20 $04

	call $3d53                                       ; $52a3: $cd $53 $3d
	ret                                              ; $52a6: $c9


jr_009_52a7:
	call $3d58                                       ; $52a7: $cd $58 $3d
	ret                                              ; $52aa: $c9


	ld l, $20                                        ; $52ab: $2e $20
	ld a, [hl]                                       ; $52ad: $7e
	rst JumpTable                                          ; $52ae: $c7
	or e                                             ; $52af: $b3
	ld d, d                                          ; $52b0: $52
	cp h                                             ; $52b1: $bc
	ld d, d                                          ; $52b2: $52
	inc [hl]                                         ; $52b3: $34
	push hl                                          ; $52b4: $e5
	ld hl, $7ebe                                     ; $52b5: $21 $be $7e
	call $3c78                                       ; $52b8: $cd $78 $3c
	pop hl                                           ; $52bb: $e1
	call $3da5                                       ; $52bc: $cd $a5 $3d
	ld de, $8c48                                     ; $52bf: $11 $48 $8c
	ld bc, $42e0                                     ; $52c2: $01 $e0 $42
	xor a                                            ; $52c5: $af
	call $3d99                                       ; $52c6: $cd $99 $3d
	call $3d71                                       ; $52c9: $cd $71 $3d
	ret                                              ; $52cc: $c9


	ld l, $20                                        ; $52cd: $2e $20
	ld a, [hl]                                       ; $52cf: $7e
	rst JumpTable                                          ; $52d0: $c7
	push de                                          ; $52d1: $d5
	ld d, d                                          ; $52d2: $52
	jp c, $3452                                      ; $52d3: $da $52 $34

	ld l, $30                                        ; $52d6: $2e $30
	ld [hl], $3b                                     ; $52d8: $36 $3b
	ld l, $30                                        ; $52da: $2e $30
	ld a, [hl]                                       ; $52dc: $7e
	or a                                             ; $52dd: $b7
	jr z, jr_009_52e4                                ; $52de: $28 $04

	dec [hl]                                         ; $52e0: $35
	jp $3d4b                                         ; $52e1: $c3 $4b $3d


jr_009_52e4:
	xor a                                            ; $52e4: $af
	ld [$d8ad], a                                    ; $52e5: $ea $ad $d8
	jp $3d53                                         ; $52e8: $c3 $53 $3d


	ld l, $20                                        ; $52eb: $2e $20
	ld a, [hl]                                       ; $52ed: $7e
	rst JumpTable                                          ; $52ee: $c7
	di                                               ; $52ef: $f3
	ld d, d                                          ; $52f0: $52
	ld hl, sp+$52                                    ; $52f1: $f8 $52
	inc [hl]                                         ; $52f3: $34
	ld l, $30                                        ; $52f4: $2e $30
	ld [hl], $3b                                     ; $52f6: $36 $3b
	ld l, $30                                        ; $52f8: $2e $30
	ld a, [hl]                                       ; $52fa: $7e
	or a                                             ; $52fb: $b7
	jr z, jr_009_5302                                ; $52fc: $28 $04

	dec [hl]                                         ; $52fe: $35
	jp $3d4b                                         ; $52ff: $c3 $4b $3d


jr_009_5302:
	jp $3d58                                         ; $5302: $c3 $58 $3d


	ld de, $fe80                                     ; $5305: $11 $80 $fe
	ld bc, $0300                                     ; $5308: $01 $00 $03
	call $3bd6                                       ; $530b: $cd $d6 $3b
	ld a, b                                          ; $530e: $78
	cp $6a                                           ; $530f: $fe $6a
	ret c                                            ; $5311: $d8

	ld de, $7a6a                                     ; $5312: $11 $6a $7a
	call $3bf4                                       ; $5315: $cd $f4 $3b
	ret                                              ; $5318: $c9


	ld de, $0180                                     ; $5319: $11 $80 $01
	ld bc, $fd00                                     ; $531c: $01 $00 $fd
	call $3bd6                                       ; $531f: $cd $d6 $3b
	ld a, b                                          ; $5322: $78
	cp $48                                           ; $5323: $fe $48
	ret nc                                           ; $5325: $d0

	ld de, $8c48                                     ; $5326: $11 $48 $8c
	call $3bf4                                       ; $5329: $cd $f4 $3b
	xor a                                            ; $532c: $af
	ld [$d8ad], a                                    ; $532d: $ea $ad $d8
	ret                                              ; $5330: $c9


	ld l, $20                                        ; $5331: $2e $20
	ld a, [hl]                                       ; $5333: $7e
	rst JumpTable                                          ; $5334: $c7
	add hl, sp                                       ; $5335: $39
	ld d, e                                          ; $5336: $53
	ld b, d                                          ; $5337: $42
	ld d, e                                          ; $5338: $53
	inc [hl]                                         ; $5339: $34
	push hl                                          ; $533a: $e5
	ld hl, $7eab                                     ; $533b: $21 $ab $7e
	call $3c78                                       ; $533e: $cd $78 $3c
	pop hl                                           ; $5341: $e1
	call $3da5                                       ; $5342: $cd $a5 $3d
	ld bc, $42b8                                     ; $5345: $01 $b8 $42
	ld a, $30                                        ; $5348: $3e $30
	call $3d9f                                       ; $534a: $cd $9f $3d
	call $3d71                                       ; $534d: $cd $71 $3d
	ret                                              ; $5350: $c9


	jp $3d4b                                         ; $5351: $c3 $4b $3d


	ld [hl], $01                                     ; $5354: $36 $01
	ld l, $20                                        ; $5356: $2e $20
	xor a                                            ; $5358: $af
	ld [hl], a                                       ; $5359: $77
	ld l, $21                                        ; $535a: $2e $21
	ld [hl], a                                       ; $535c: $77
	call $3d71                                       ; $535d: $cd $71 $3d
	call $3da5                                       ; $5360: $cd $a5 $3d
	ld a, [$d843]                                    ; $5363: $fa $43 $d8
	and $03                                          ; $5366: $e6 $03
	cp $01                                           ; $5368: $fe $01
	jr z, jr_009_5396                                ; $536a: $28 $2a

	cp $02                                           ; $536c: $fe $02
	jr nz, jr_009_5399                               ; $536e: $20 $29

	rst FarCall                                          ; $5370: $f7
	push af                                          ; $5371: $f5
	ld c, l                                          ; $5372: $4d
	ld a, [bc]                                       ; $5373: $0a
	call Call_009_4503                               ; $5374: $cd $03 $45
	jr nz, jr_009_5399                               ; $5377: $20 $20

	ld a, [$d842]                                    ; $5379: $fa $42 $d8
	and $0f                                          ; $537c: $e6 $0f
	cp $02                                           ; $537e: $fe $02
	jr z, jr_009_5390                                ; $5380: $28 $0e

	cp $07                                           ; $5382: $fe $07
	jr z, jr_009_5390                                ; $5384: $28 $0a

	cp $09                                           ; $5386: $fe $09
	jr z, jr_009_5390                                ; $5388: $28 $06

	rst FarCall                                          ; $538a: $f7
	jr z, @+$47                                      ; $538b: $28 $45

	add hl, bc                                       ; $538d: $09
	jr jr_009_5399                                   ; $538e: $18 $09

jr_009_5390:
	rst FarCall                                          ; $5390: $f7
	rrca                                             ; $5391: $0f
	ld b, l                                          ; $5392: $45
	add hl, bc                                       ; $5393: $09
	jr jr_009_5399                                   ; $5394: $18 $03

jr_009_5396:
	call Call_009_4bdf                               ; $5396: $cd $df $4b

jr_009_5399:
	xor a                                            ; $5399: $af
	ld [$d846], a                                    ; $539a: $ea $46 $d8
	ret                                              ; $539d: $c9


	ld l, $20                                        ; $539e: $2e $20
	ld a, [hl]                                       ; $53a0: $7e
	rst JumpTable                                          ; $53a1: $c7
	xor [hl]                                         ; $53a2: $ae
	ld d, e                                          ; $53a3: $53
	call $da53                                       ; $53a4: $cd $53 $da
	ld d, e                                          ; $53a7: $53
	ld de, $9f54                                     ; $53a8: $11 $54 $9f
	ld d, h                                          ; $53ab: $54
	or h                                             ; $53ac: $b4
	ld d, h                                          ; $53ad: $54
	inc [hl]                                         ; $53ae: $34
	ld l, $30                                        ; $53af: $2e $30
	ld [hl], $3c                                     ; $53b1: $36 $3c
	xor a                                            ; $53b3: $af
	ld [$d8ae], a                                    ; $53b4: $ea $ae $d8
	ld de, $8c48                                     ; $53b7: $11 $48 $8c
	ld bc, $4220                                     ; $53ba: $01 $20 $42
	xor a                                            ; $53bd: $af
	call $3d99                                       ; $53be: $cd $99 $3d
	call $3d71                                       ; $53c1: $cd $71 $3d
	call $3d53                                       ; $53c4: $cd $53 $3d
	ld hl, $7e96                                     ; $53c7: $21 $96 $7e
	jp $3c78                                         ; $53ca: $c3 $78 $3c


	ld l, $30                                        ; $53cd: $2e $30
	dec [hl]                                         ; $53cf: $35
	ret nz                                           ; $53d0: $c0

	ld l, $20                                        ; $53d1: $2e $20
	inc [hl]                                         ; $53d3: $34
	ld a, $0a                                        ; $53d4: $3e $0a
	ld [$d884], a                                    ; $53d6: $ea $84 $d8
	ret                                              ; $53d9: $c9


	inc [hl]                                         ; $53da: $34
	ld de, $8c48                                     ; $53db: $11 $48 $8c
	call $3bf4                                       ; $53de: $cd $f4 $3b
	call $3da5                                       ; $53e1: $cd $a5 $3d
	ld bc, $5002                                     ; $53e4: $01 $02 $50
	ld a, $38                                        ; $53e7: $3e $38
	call $3bfc                                       ; $53e9: $cd $fc $3b
	call $3d53                                       ; $53ec: $cd $53 $3d
	call $16d0                                       ; $53ef: $cd $d0 $16
	call Call_009_576d                               ; $53f2: $cd $6d $57
	ld hl, $54cc                                     ; $53f5: $21 $cc $54
	ld a, [$d840]                                    ; $53f8: $fa $40 $d8
	call $3c8f                                       ; $53fb: $cd $8f $3c
	call $3cd9                                       ; $53fe: $cd $d9 $3c
	ld a, $00                                        ; $5401: $3e $00
	call $1e2e                                       ; $5403: $cd $2e $1e
	ld a, $68                                        ; $5406: $3e $68
	call $1e27                                       ; $5408: $cd $27 $1e
	ld hl, $7eab                                     ; $540b: $21 $ab $7e
	jp $3c78                                         ; $540e: $c3 $78 $3c


	call $16d0                                       ; $5411: $cd $d0 $16
	call $3ce2                                       ; $5414: $cd $e2 $3c
	ret nz                                           ; $5417: $c0

	push hl                                          ; $5418: $e5
	ld hl, $d8bf                                     ; $5419: $21 $bf $d8

jr_009_541c:
	ld a, [hl]                                       ; $541c: $7e
	inc [hl]                                         ; $541d: $34
	cp $04                                           ; $541e: $fe $04
	jr z, jr_009_5442                                ; $5420: $28 $20

	jr nc, jr_009_5454                               ; $5422: $30 $30

	ld de, $d8bb                                     ; $5424: $11 $bb $d8
	call $1327                                       ; $5427: $cd $27 $13
	ld a, [de]                                       ; $542a: $1a
	or a                                             ; $542b: $b7
	jr z, jr_009_541c                                ; $542c: $28 $ee

	ld a, [hl]                                       ; $542e: $7e
	dec a                                            ; $542f: $3d
	ld d, a                                          ; $5430: $57
	ld hl, $54e0                                     ; $5431: $21 $e0 $54
	ld a, [$d840]                                    ; $5434: $fa $40 $d8
	call $3c8f                                       ; $5437: $cd $8f $3c
	ld a, d                                          ; $543a: $7a
	add c                                            ; $543b: $81
	ld c, a                                          ; $543c: $4f
	call $3cd9                                       ; $543d: $cd $d9 $3c
	pop hl                                           ; $5440: $e1
	ret                                              ; $5441: $c9


jr_009_5442:
	ld a, [$d840]                                    ; $5442: $fa $40 $d8
	cp $07                                           ; $5445: $fe $07
	ld bc, $0a1d                                     ; $5447: $01 $1d $0a
	jr z, jr_009_544f                                ; $544a: $28 $03

	ld bc, $0000                                     ; $544c: $01 $00 $00

jr_009_544f:
	call $3cd9                                       ; $544f: $cd $d9 $3c
	pop hl                                           ; $5452: $e1
	ret                                              ; $5453: $c9


jr_009_5454:
	pop hl                                           ; $5454: $e1
	ld a, [$d841]                                    ; $5455: $fa $41 $d8
	cp $0d                                           ; $5458: $fe $0d
	jr nz, jr_009_5463                               ; $545a: $20 $07

	ld a, [$d8b7]                                    ; $545c: $fa $b7 $d8
	cp $02                                           ; $545f: $fe $02
	jr z, jr_009_5491                                ; $5461: $28 $2e

jr_009_5463:
	ld a, [$d840]                                    ; $5463: $fa $40 $d8
	cp $04                                           ; $5466: $fe $04
	jr z, jr_009_5474                                ; $5468: $28 $0a

	cp $06                                           ; $546a: $fe $06
	jr z, jr_009_547d                                ; $546c: $28 $0f

	ld a, $ff                                        ; $546e: $3e $ff
	ld [$d884], a                                    ; $5470: $ea $84 $d8
	ret                                              ; $5473: $c9


jr_009_5474:
	ld l, $20                                        ; $5474: $2e $20
	ld [hl], $04                                     ; $5476: $36 $04
	ld l, $30                                        ; $5478: $2e $30
	ld [hl], $3c                                     ; $547a: $36 $3c
	ret                                              ; $547c: $c9


jr_009_547d:
	ld l, $20                                        ; $547d: $2e $20
	ld [hl], $05                                     ; $547f: $36 $05
	ld l, $30                                        ; $5481: $2e $30
	ld [hl], $50                                     ; $5483: $36 $50
	ld bc, $67ae                                     ; $5485: $01 $ae $67
	call $18c4                                       ; $5488: $cd $c4 $18
	ld b, $04                                        ; $548b: $06 $04
	call $0a64                                       ; $548d: $cd $64 $0a
	ret                                              ; $5490: $c9


jr_009_5491:
	ld l, $0a                                        ; $5491: $2e $0a
	ld [hl], $01                                     ; $5493: $36 $01
	ld l, $20                                        ; $5495: $2e $20
	ld [hl], $00                                     ; $5497: $36 $00
	ld a, $11                                        ; $5499: $3e $11
	ld [$d884], a                                    ; $549b: $ea $84 $d8
	ret                                              ; $549e: $c9


	call $16d0                                       ; $549f: $cd $d0 $16
	ld l, $30                                        ; $54a2: $2e $30
	dec [hl]                                         ; $54a4: $35
	ret nz                                           ; $54a5: $c0

	ld l, $0a                                        ; $54a6: $2e $0a
	ld [hl], $01                                     ; $54a8: $36 $01
	ld l, $20                                        ; $54aa: $2e $20
	ld [hl], $00                                     ; $54ac: $36 $00
	ld a, $0e                                        ; $54ae: $3e $0e
	ld [$d884], a                                    ; $54b0: $ea $84 $d8
	ret                                              ; $54b3: $c9


	call $0a7a                                       ; $54b4: $cd $7a $0a
	call $16d0                                       ; $54b7: $cd $d0 $16
	ld l, $30                                        ; $54ba: $2e $30
	dec [hl]                                         ; $54bc: $35
	ret nz                                           ; $54bd: $c0

	ld l, $0a                                        ; $54be: $2e $0a
	ld [hl], $01                                     ; $54c0: $36 $01
	ld l, $20                                        ; $54c2: $2e $20
	ld [hl], $00                                     ; $54c4: $36 $00
	ld a, $0f                                        ; $54c6: $3e $0f
	ld [$d884], a                                    ; $54c8: $ea $84 $d8
	ret                                              ; $54cb: $c9


	add hl, bc                                       ; $54cc: $09
	inc b                                            ; $54cd: $04
	rrca                                             ; $54ce: $0f
	dec b                                            ; $54cf: $05
	inc c                                            ; $54d0: $0c
	inc bc                                           ; $54d1: $03
	nop                                              ; $54d2: $00
	nop                                              ; $54d3: $00
	ld a, [bc]                                       ; $54d4: $0a
	ld b, $0d                                        ; $54d5: $06 $0d
	ld [$080d], sp                                   ; $54d7: $08 $0d $08
	add hl, de                                       ; $54da: $19
	ld a, [bc]                                       ; $54db: $0a
	dec c                                            ; $54dc: $0d
	ld [rRAMG], sp                                   ; $54dd: $08 $00 $00
	ld c, $04                                        ; $54e0: $0e $04
	inc d                                            ; $54e2: $14
	dec b                                            ; $54e3: $05
	ld de, $1103                                     ; $54e4: $11 $03 $11
	ld [$0811], sp                                   ; $54e7: $08 $11 $08
	ld de, $1108                                     ; $54ea: $11 $08 $11
	ld [$0a1e], sp                                   ; $54ed: $08 $1e $0a
	ld de, $1108                                     ; $54f0: $11 $08 $11
	ld [$202e], sp                                   ; $54f3: $08 $2e $20
	ld a, [hl]                                       ; $54f6: $7e
	rst JumpTable                                          ; $54f7: $c7
	cp $54                                           ; $54f8: $fe $54
	inc hl                                           ; $54fa: $23
	ld d, l                                          ; $54fb: $55
	add hl, sp                                       ; $54fc: $39
	ld d, l                                          ; $54fd: $55
	inc [hl]                                         ; $54fe: $34
	ld bc, $42b8                                     ; $54ff: $01 $b8 $42
	ld a, $30                                        ; $5502: $3e $30
	call $3d9f                                       ; $5504: $cd $9f $3d
	ld hl, $5547                                     ; $5507: $21 $47 $55
	ld a, [$d840]                                    ; $550a: $fa $40 $d8
	call $3c8f                                       ; $550d: $cd $8f $3c
	call $3cd9                                       ; $5510: $cd $d9 $3c
	ld a, $00                                        ; $5513: $3e $00
	call $1e2e                                       ; $5515: $cd $2e $1e
	ld a, $69                                        ; $5518: $3e $69
	call $1e27                                       ; $551a: $cd $27 $1e
	ld hl, $7eab                                     ; $551d: $21 $ab $7e
	jp $3c78                                         ; $5520: $c3 $78 $3c


	call $3ce2                                       ; $5523: $cd $e2 $3c
	ret nz                                           ; $5526: $c0

	ld l, $20                                        ; $5527: $2e $20
	inc [hl]                                         ; $5529: $34
	ld a, [$d840]                                    ; $552a: $fa $40 $d8
	cp $09                                           ; $552d: $fe $09
	ld a, $96                                        ; $552f: $3e $96
	jr nz, jr_009_5535                               ; $5531: $20 $02

	ld a, $d2                                        ; $5533: $3e $d2

jr_009_5535:
	ld l, $30                                        ; $5535: $2e $30
	ld [hl], a                                       ; $5537: $77
	ret                                              ; $5538: $c9


	ld l, $30                                        ; $5539: $2e $30
	ld a, [hl]                                       ; $553b: $7e
	or a                                             ; $553c: $b7
	jr z, jr_009_5541                                ; $553d: $28 $02

	dec [hl]                                         ; $553f: $35
	ret                                              ; $5540: $c9


jr_009_5541:
	ld a, $fe                                        ; $5541: $3e $fe
	ld [$d884], a                                    ; $5543: $ea $84 $d8
	ret                                              ; $5546: $c9


	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	nop                                              ; $554e: $00
	rlca                                             ; $554f: $07
	ld b, $08                                        ; $5550: $06 $08
	ld [$0808], sp                                   ; $5552: $08 $08 $08
	inc b                                            ; $5555: $04
	ld a, [bc]                                       ; $5556: $0a
	ld [$0008], sp                                   ; $5557: $08 $08 $00
	nop                                              ; $555a: $00
	ld l, $20                                        ; $555b: $2e $20
	ld a, [hl]                                       ; $555d: $7e
	rst JumpTable                                          ; $555e: $c7
	ld h, a                                          ; $555f: $67
	ld d, l                                          ; $5560: $55
	sub c                                            ; $5561: $91
	ld d, l                                          ; $5562: $55
	inc b                                            ; $5563: $04
	ld d, [hl]                                       ; $5564: $56
	ld e, l                                          ; $5565: $5d
	ld d, [hl]                                       ; $5566: $56
	inc [hl]                                         ; $5567: $34
	ld de, $8c48                                     ; $5568: $11 $48 $8c
	ld bc, $4220                                     ; $556b: $01 $20 $42
	ld a, $00                                        ; $556e: $3e $00
	call $3d99                                       ; $5570: $cd $99 $3d
	call $3d71                                       ; $5573: $cd $71 $3d
	call $3d53                                       ; $5576: $cd $53 $3d
	ld bc, $0102                                     ; $5579: $01 $02 $01
	call $3cd9                                       ; $557c: $cd $d9 $3c
	call Call_009_4491                               ; $557f: $cd $91 $44
	call $45cf                                       ; $5582: $cd $cf $45
	ld bc, $63c6                                     ; $5585: $01 $c6 $63
	call $18c4                                       ; $5588: $cd $c4 $18
	ld hl, $7ec5                                     ; $558b: $21 $c5 $7e
	jp $3c78                                         ; $558e: $c3 $78 $3c


	ld l, $07                                        ; $5591: $2e $07
	dec [hl]                                         ; $5593: $35
	dec [hl]                                         ; $5594: $35
	ld a, [hl]                                       ; $5595: $7e
	cp $78                                           ; $5596: $fe $78
	ret nc                                           ; $5598: $d0

	ld [hl], $78                                     ; $5599: $36 $78
	ld l, $20                                        ; $559b: $2e $20
	inc [hl]                                         ; $559d: $34
	call $3da5                                       ; $559e: $cd $a5 $3d
	ld bc, $5001                                     ; $55a1: $01 $01 $50
	ld a, $30                                        ; $55a4: $3e $30
	call $3bfc                                       ; $55a6: $cd $fc $3b
	call $16d0                                       ; $55a9: $cd $d0 $16
	push hl                                          ; $55ac: $e5
	ld hl, $d86b                                     ; $55ad: $21 $6b $d8
	rst GetHLinHL                                          ; $55b0: $cf
	ld b, $01                                        ; $55b1: $06 $01
	ld de, $00c8                                     ; $55b3: $11 $c8 $00
	call $3cd4                                       ; $55b6: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55b9: $38 $2f

	inc b                                            ; $55bb: $04
	ld de, $01f4                                     ; $55bc: $11 $f4 $01
	call $3cd4                                       ; $55bf: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55c2: $38 $26

	inc b                                            ; $55c4: $04
	ld de, $0320                                     ; $55c5: $11 $20 $03
	call $3cd4                                       ; $55c8: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55cb: $38 $1d

	inc b                                            ; $55cd: $04
	ld de, $044c                                     ; $55ce: $11 $4c $04
	call $3cd4                                       ; $55d1: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55d4: $38 $14

	inc b                                            ; $55d6: $04
	ld de, $0514                                     ; $55d7: $11 $14 $05
	call $3cd4                                       ; $55da: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55dd: $38 $0b

	inc b                                            ; $55df: $04
	ld de, $270f                                     ; $55e0: $11 $0f $27
	call $3cd4                                       ; $55e3: $cd $d4 $3c
	jr c, jr_009_55ea                                ; $55e6: $38 $02

	ld b, $0a                                        ; $55e8: $06 $0a

jr_009_55ea:
	pop hl                                           ; $55ea: $e1
	ld l, $30                                        ; $55eb: $2e $30
	ld [hl], b                                       ; $55ed: $70
	ld l, $31                                        ; $55ee: $2e $31
	ld [hl], $00                                     ; $55f0: $36 $00
	ld hl, $d86b                                     ; $55f2: $21 $6b $d8
	rst GetHLinHL                                          ; $55f5: $cf
	ld a, h                                          ; $55f6: $7c
	or l                                             ; $55f7: $b5
	ret z                                            ; $55f8: $c8

	ld a, $08                                        ; $55f9: $3e $08
	ld [$ca00], a                                    ; $55fb: $ea $00 $ca
	ld a, $61                                        ; $55fe: $3e $61
	call $1e2e                                       ; $5600: $cd $2e $1e
	ret                                              ; $5603: $c9


	call $16d0                                       ; $5604: $cd $d0 $16
	ld l, $0c                                        ; $5607: $2e $0c
	ld a, [hl]                                       ; $5609: $7e
	or a                                             ; $560a: $b7
	ret nz                                           ; $560b: $c0

	push hl                                          ; $560c: $e5
	ld hl, $ca00                                     ; $560d: $21 $00 $ca
	call $2dfc                                       ; $5610: $cd $fc $2d
	pop hl                                           ; $5613: $e1
	ld l, $30                                        ; $5614: $2e $30
	dec [hl]                                         ; $5616: $35
	jr z, jr_009_5630                                ; $5617: $28 $17

	ld l, $0c                                        ; $5619: $2e $0c
	inc [hl]                                         ; $561b: $34
	ld l, $31                                        ; $561c: $2e $31
	inc [hl]                                         ; $561e: $34
	bit 0, [hl]                                      ; $561f: $cb $46
	ld a, $08                                        ; $5621: $3e $08
	jr z, jr_009_5627                                ; $5623: $28 $02

	ld a, $09                                        ; $5625: $3e $09

jr_009_5627:
	ld [$ca00], a                                    ; $5627: $ea $00 $ca
	ld a, $61                                        ; $562a: $3e $61
	call $1e2e                                       ; $562c: $cd $2e $1e
	ret                                              ; $562f: $c9


jr_009_5630:
	ld l, $20                                        ; $5630: $2e $20
	inc [hl]                                         ; $5632: $34
	call $3da5                                       ; $5633: $cd $a5 $3d
	ld bc, $4220                                     ; $5636: $01 $20 $42
	ld a, $00                                        ; $5639: $3e $00
	call $3d9f                                       ; $563b: $cd $9f $3d
	call $3d78                                       ; $563e: $cd $78 $3d
	ld hl, $d86b                                     ; $5641: $21 $6b $d8
	rst GetHLinHL                                          ; $5644: $cf
	ld a, h                                          ; $5645: $7c
	or l                                             ; $5646: $b5
	ld bc, $0105                                     ; $5647: $01 $05 $01
	jr nz, jr_009_564f                               ; $564a: $20 $03

	ld bc, $0103                                     ; $564c: $01 $03 $01

jr_009_564f:
	call $3cd9                                       ; $564f: $cd $d9 $3c
	call Call_009_4503                               ; $5652: $cd $03 $45
	jr z, jr_009_5658                                ; $5655: $28 $01

	ret                                              ; $5657: $c9


jr_009_5658:
	rst FarCall                                          ; $5658: $f7
	rrca                                             ; $5659: $0f
	ld b, l                                          ; $565a: $45
	add hl, bc                                       ; $565b: $09
	ret                                              ; $565c: $c9


	ld l, $07                                        ; $565d: $2e $07
	ld a, [hl]                                       ; $565f: $7e
	cp $8c                                           ; $5660: $fe $8c
	jr nc, jr_009_5666                               ; $5662: $30 $02

	inc [hl]                                         ; $5664: $34
	ret                                              ; $5665: $c9


jr_009_5666:
	call $3d71                                       ; $5666: $cd $71 $3d
	call $3ce2                                       ; $5669: $cd $e2 $3c
	ret nz                                           ; $566c: $c0

	ld l, $0a                                        ; $566d: $2e $0a
	ld [hl], $07                                     ; $566f: $36 $07
	ret                                              ; $5671: $c9


	ld [hl], $04                                     ; $5672: $36 $04
	ld de, $8c48                                     ; $5674: $11 $48 $8c
	ld bc, $4250                                     ; $5677: $01 $50 $42
	ld a, $00                                        ; $567a: $3e $00
	call $3d99                                       ; $567c: $cd $99 $3d
	ld l, $22                                        ; $567f: $2e $22
	ld [hl], $5a                                     ; $5681: $36 $5a
	ld hl, $d846                                     ; $5683: $21 $46 $d8
	res 7, [hl]                                      ; $5686: $cb $be
	ld hl, $7e9d                                     ; $5688: $21 $9d $7e
	jp $3c78                                         ; $568b: $c3 $78 $3c


	ld a, [$d8ad]                                    ; $568e: $fa $ad $d8
	bit 6, a                                         ; $5691: $cb $77
	jr nz, jr_009_56c0                               ; $5693: $20 $2b

	and $0f                                          ; $5695: $e6 $0f
	ld l, $21                                        ; $5697: $2e $21
	cp [hl]                                          ; $5699: $be
	ld [hl], a                                       ; $569a: $77
	jr z, jr_009_56a1                                ; $569b: $28 $04

	ld l, $20                                        ; $569d: $2e $20
	ld [hl], $00                                     ; $569f: $36 $00

jr_009_56a1:
	or a                                             ; $56a1: $b7
	jr z, jr_009_56c0                                ; $56a2: $28 $1c

	cp $0a                                           ; $56a4: $fe $0a
	jr nc, jr_009_56bc                               ; $56a6: $30 $14

	dec a                                            ; $56a8: $3d
	rst JumpTable                                          ; $56a9: $c7
	ld [hl], d                                       ; $56aa: $72
	ld d, d                                          ; $56ab: $52
	add hl, sp                                       ; $56ac: $39
	ld d, d                                          ; $56ad: $52
	xor e                                            ; $56ae: $ab
	ld d, d                                          ; $56af: $52
	call $eb52                                       ; $56b0: $cd $52 $eb
	ld d, d                                          ; $56b3: $52
	dec b                                            ; $56b4: $05
	ld d, e                                          ; $56b5: $53
	add hl, de                                       ; $56b6: $19
	ld d, e                                          ; $56b7: $53
	ld sp, $5153                                     ; $56b8: $31 $53 $51
	ld d, e                                          ; $56bb: $53

jr_009_56bc:
	xor a                                            ; $56bc: $af
	ld [$d8ad], a                                    ; $56bd: $ea $ad $d8

jr_009_56c0:
	ld a, [$d884]                                    ; $56c0: $fa $84 $d8
	cp $06                                           ; $56c3: $fe $06
	jr c, jr_009_56cc                                ; $56c5: $38 $05

	ld l, $0a                                        ; $56c7: $2e $0a
	ld [hl], $07                                     ; $56c9: $36 $07
	ret                                              ; $56cb: $c9


jr_009_56cc:
	or a                                             ; $56cc: $b7
	ret nz                                           ; $56cd: $c0

	ld a, [$d847]                                    ; $56ce: $fa $47 $d8
	bit 7, a                                         ; $56d1: $cb $7f
	ret nz                                           ; $56d3: $c0

	ld a, [$d848]                                    ; $56d4: $fa $48 $d8
	bit 7, a                                         ; $56d7: $cb $7f
	ret nz                                           ; $56d9: $c0

	ld l, $22                                        ; $56da: $2e $22
	dec [hl]                                         ; $56dc: $35
	ret nz                                           ; $56dd: $c0

	ld l, $0a                                        ; $56de: $2e $0a
	ld [hl], $05                                     ; $56e0: $36 $05
	ld bc, $0101                                     ; $56e2: $01 $01 $01
	call $3cd9                                       ; $56e5: $cd $d9 $3c
	ld hl, $d846                                     ; $56e8: $21 $46 $d8
	set 7, [hl]                                      ; $56eb: $cb $fe
	ld hl, $d859                                     ; $56ed: $21 $59 $d8
	rst GetHLinHL                                          ; $56f0: $cf
	push hl                                          ; $56f1: $e5
	ld bc, $0014                                     ; $56f2: $01 $14 $00
	call BCHLequHLdivModBC                                       ; $56f5: $cd $c1 $12
	ld d, h                                          ; $56f8: $54
	ld e, l                                          ; $56f9: $5d
	ld hl, $d84d                                     ; $56fa: $21 $4d $d8
	rst GetHLinHL                                          ; $56fd: $cf
	add hl, de                                       ; $56fe: $19
	pop de                                           ; $56ff: $d1
	ld a, l                                          ; $5700: $7d
	sub e                                            ; $5701: $93
	ld a, h                                          ; $5702: $7c
	sbc d                                            ; $5703: $9a
	jr c, jr_009_5708                                ; $5704: $38 $02

	ld h, d                                          ; $5706: $62
	ld l, e                                          ; $5707: $6b

jr_009_5708:
	ld de, $d84d                                     ; $5708: $11 $4d $d8
	call $3cce                                       ; $570b: $cd $ce $3c
	rst FarCall                                          ; $570e: $f7
	cpl                                              ; $570f: $2f
	ld b, d                                          ; $5710: $42
	add hl, bc                                       ; $5711: $09
	ld a, $2c                                        ; $5712: $3e $2c
	call $1e2e                                       ; $5714: $cd $2e $1e
	ret                                              ; $5717: $c9


	call $3ce2                                       ; $5718: $cd $e2 $3c
	ret nz                                           ; $571b: $c0

	ld l, $0a                                        ; $571c: $2e $0a
	ld [hl], $07                                     ; $571e: $36 $07
	ret                                              ; $5720: $c9


	ld a, [$d842]                                    ; $5721: $fa $42 $d8
	and $0f                                          ; $5724: $e6 $0f
	rst JumpTable                                          ; $5726: $c7
	dec sp                                           ; $5727: $3b
	ld d, a                                          ; $5728: $57
	ld b, b                                          ; $5729: $40
	ld d, a                                          ; $572a: $57
	ld b, l                                          ; $572b: $45
	ld d, a                                          ; $572c: $57
	ld c, d                                          ; $572d: $4a
	ld d, a                                          ; $572e: $57
	ld c, a                                          ; $572f: $4f
	ld d, a                                          ; $5730: $57
	ld d, h                                          ; $5731: $54
	ld d, a                                          ; $5732: $57
	ld e, c                                          ; $5733: $59
	ld d, a                                          ; $5734: $57
	ld e, [hl]                                       ; $5735: $5e
	ld d, a                                          ; $5736: $57
	ld h, e                                          ; $5737: $63
	ld d, a                                          ; $5738: $57
	ld l, b                                          ; $5739: $68
	ld d, a                                          ; $573a: $57
	rst FarCall                                          ; $573b: $f7
	dec h                                            ; $573c: $25
	ld [hl], l                                       ; $573d: $75
	ld a, [bc]                                       ; $573e: $0a
	ret                                              ; $573f: $c9


	rst FarCall                                          ; $5740: $f7
	add b                                            ; $5741: $80
	halt                                             ; $5742: $76
	ld a, [bc]                                       ; $5743: $0a
	ret                                              ; $5744: $c9


	rst FarCall                                          ; $5745: $f7
	adc c                                            ; $5746: $89
	ld a, c                                          ; $5747: $79
	ld a, [bc]                                       ; $5748: $0a
	ret                                              ; $5749: $c9


	rst FarCall                                          ; $574a: $f7
	ld l, [hl]                                       ; $574b: $6e
	ld a, d                                          ; $574c: $7a
	ld a, [bc]                                       ; $574d: $0a
	ret                                              ; $574e: $c9


	rst FarCall                                          ; $574f: $f7
	sub e                                            ; $5750: $93
	ld l, l                                          ; $5751: $6d
	ld a, [bc]                                       ; $5752: $0a
	ret                                              ; $5753: $c9


	rst FarCall                                          ; $5754: $f7
	and d                                            ; $5755: $a2
	ld l, [hl]                                       ; $5756: $6e
	ld a, [bc]                                       ; $5757: $0a
	ret                                              ; $5758: $c9


	rst FarCall                                          ; $5759: $f7
	cp e                                             ; $575a: $bb
	ld l, a                                          ; $575b: $6f
	ld a, [bc]                                       ; $575c: $0a
	ret                                              ; $575d: $c9


	rst FarCall                                          ; $575e: $f7
	dec hl                                           ; $575f: $2b
	ld [hl], c                                       ; $5760: $71
	ld a, [bc]                                       ; $5761: $0a
	ret                                              ; $5762: $c9


	rst FarCall                                          ; $5763: $f7
	ld h, $72                                        ; $5764: $26 $72
	ld a, [bc]                                       ; $5766: $0a
	ret                                              ; $5767: $c9


	rst FarCall                                          ; $5768: $f7
	cp l                                             ; $5769: $bd
	ld a, h                                          ; $576a: $7c
	ld a, [bc]                                       ; $576b: $0a
	ret                                              ; $576c: $c9


Call_009_576d:
	ld a, $04                                        ; $576d: $3e $04
	call Call_000_12fc                                       ; $576f: $cd $fc $12
	ld [$d8c0], a                                    ; $5772: $ea $c0 $d8
	xor a                                            ; $5775: $af
	ld [$d8bf], a                                    ; $5776: $ea $bf $d8
	ld hl, $d8bb                                     ; $5779: $21 $bb $d8
	ld [hl+], a                                      ; $577c: $22
	ld [hl+], a                                      ; $577d: $22
	ld [hl+], a                                      ; $577e: $22
	ld [hl+], a                                      ; $577f: $22
	ld a, [$d840]                                    ; $5780: $fa $40 $d8
	cp $03                                           ; $5783: $fe $03
	jr c, jr_009_57af                                ; $5785: $38 $28

	cp $05                                           ; $5787: $fe $05
	jr c, jr_009_578f                                ; $5789: $38 $04

	cp $09                                           ; $578b: $fe $09
	jr c, jr_009_5790                                ; $578d: $38 $01

jr_009_578f:
	ret                                              ; $578f: $c9


jr_009_5790:
	call Call_009_57c0                               ; $5790: $cd $c0 $57

jr_009_5793:
	ld hl, $d8bb                                     ; $5793: $21 $bb $d8
	ld a, $0a                                        ; $5796: $3e $0a
	call Call_000_12fc                                       ; $5798: $cd $fc $12
	cp $04                                           ; $579b: $fe $04
	jr c, jr_009_57aa                                ; $579d: $38 $0b

	inc hl                                           ; $579f: $23
	cp $07                                           ; $57a0: $fe $07
	jr c, jr_009_57aa                                ; $57a2: $38 $06

	inc hl                                           ; $57a4: $23
	cp $09                                           ; $57a5: $fe $09
	jr c, jr_009_57aa                                ; $57a7: $38 $01

	inc hl                                           ; $57a9: $23

jr_009_57aa:
	inc [hl]                                         ; $57aa: $34
	dec b                                            ; $57ab: $05
	jr nz, jr_009_5793                               ; $57ac: $20 $e5

	ret                                              ; $57ae: $c9


jr_009_57af:
	call Call_009_57c0                               ; $57af: $cd $c0 $57

jr_009_57b2:
	ld a, $04                                        ; $57b2: $3e $04
	call Call_000_12fc                                       ; $57b4: $cd $fc $12
	ld hl, $d8bb                                     ; $57b7: $21 $bb $d8
	rst AddAOntoHL                                          ; $57ba: $ef
	inc [hl]                                         ; $57bb: $34
	dec b                                            ; $57bc: $05
	jr nz, jr_009_57b2                               ; $57bd: $20 $f3

	ret                                              ; $57bf: $c9


Call_009_57c0:
	ld a, $05                                        ; $57c0: $3e $05
	call Call_000_12fc                                       ; $57c2: $cd $fc $12
	or a                                             ; $57c5: $b7
	ld b, $02                                        ; $57c6: $06 $02
	ret nz                                           ; $57c8: $c0

	inc b                                            ; $57c9: $04
	ret                                              ; $57ca: $c9


	ld a, [$d840]                                    ; $57cb: $fa $40 $d8
	cp $04                                           ; $57ce: $fe $04
	jp nz, Jump_009_57d8                             ; $57d0: $c2 $d8 $57

	rst FarCall                                          ; $57d3: $f7
	adc h                                            ; $57d4: $8c
	ld l, e                                          ; $57d5: $6b
	ld a, [bc]                                       ; $57d6: $0a
	ret                                              ; $57d7: $c9


Jump_009_57d8:
	ld a, [$d841]                                    ; $57d8: $fa $41 $d8
	rst JumpTable                                          ; $57db: $c7
	sbc [hl]                                         ; $57dc: $9e
	ld e, h                                          ; $57dd: $5c
	dec de                                           ; $57de: $1b
	ld h, [hl]                                       ; $57df: $66
	inc e                                            ; $57e0: $1c
	ld h, a                                          ; $57e1: $67
	inc sp                                           ; $57e2: $33
	ld l, b                                          ; $57e3: $68
	ld [hl], h                                       ; $57e4: $74
	ld e, l                                          ; $57e5: $5d
	cp a                                             ; $57e6: $bf
	ld e, [hl]                                       ; $57e7: $5e
	ld e, d                                          ; $57e8: $5a
	ld h, b                                          ; $57e9: $60
	add a                                            ; $57ea: $87
	ld l, c                                          ; $57eb: $69
	ld a, [bc]                                       ; $57ec: $0a
	ld l, e                                          ; $57ed: $6b
	ld a, h                                          ; $57ee: $7c
	ld h, c                                          ; $57ef: $61
	ld e, h                                          ; $57f0: $5c
	ld l, h                                          ; $57f1: $6c
	call Call_009_4362                               ; $57f2: $cd $62 $43
	ld h, h                                          ; $57f5: $64
	ld b, e                                          ; $57f6: $43
	ld l, l                                          ; $57f7: $6d
	ld e, e                                          ; $57f8: $5b
	ld [hl], d                                       ; $57f9: $72
	db $fc                                           ; $57fa: $fc
	ld d, a                                          ; $57fb: $57
	jp $2dfc                                         ; $57fc: $c3 $fc $2d


	ld a, [$d840]                                    ; $57ff: $fa $40 $d8
	rst JumpTable                                          ; $5802: $c7
	rla                                              ; $5803: $17
	ld e, b                                          ; $5804: $58
	inc e                                            ; $5805: $1c
	ld e, b                                          ; $5806: $58
	ld hl, $2b58                                     ; $5807: $21 $58 $2b
	ld e, b                                          ; $580a: $58
	jr nc, @+$5a                                     ; $580b: $30 $58

	ld h, $58                                        ; $580d: $26 $58
	ld h, $58                                        ; $580f: $26 $58
	ld h, $58                                        ; $5811: $26 $58
	ld h, $58                                        ; $5813: $26 $58
	dec hl                                           ; $5815: $2b
	ld e, b                                          ; $5816: $58
	rst FarCall                                          ; $5817: $f7
	or a                                             ; $5818: $b7
	ld d, c                                          ; $5819: $51
	ld a, [bc]                                       ; $581a: $0a
	ret                                              ; $581b: $c9


	rst FarCall                                          ; $581c: $f7
	cp a                                             ; $581d: $bf
	ld d, h                                          ; $581e: $54
	ld a, [bc]                                       ; $581f: $0a
	ret                                              ; $5820: $c9


	rst FarCall                                          ; $5821: $f7
	and c                                            ; $5822: $a1
	ld d, a                                          ; $5823: $57
	ld a, [bc]                                       ; $5824: $0a
	ret                                              ; $5825: $c9


	rst FarCall                                          ; $5826: $f7
	call z, $0a5a                                    ; $5827: $cc $5a $0a
	ret                                              ; $582a: $c9


	rst FarCall                                          ; $582b: $f7
	ld [hl], e                                       ; $582c: $73
	ld h, h                                          ; $582d: $64
	ld a, [bc]                                       ; $582e: $0a
	ret                                              ; $582f: $c9


	rst FarCall                                          ; $5830: $f7
	ld d, b                                          ; $5831: $50
	ld l, c                                          ; $5832: $69
	ld a, [bc]                                       ; $5833: $0a
	ret                                              ; $5834: $c9


	rst JumpTable                                          ; $5835: $c7
	ld a, [hl-]                                      ; $5836: $3a
	ld e, b                                          ; $5837: $58
	ld c, h                                          ; $5838: $4c
	ld e, b                                          ; $5839: $58
	inc [hl]                                         ; $583a: $34
	call Call_009_459c                               ; $583b: $cd $9c $45
	call $3bf4                                       ; $583e: $cd $f4 $3b
	ld bc, $5003                                     ; $5841: $01 $03 $50
	ld a, $30                                        ; $5844: $3e $30
	call $3bfc                                       ; $5846: $cd $fc $3b
	call $3d53                                       ; $5849: $cd $53 $3d
	jp $16d0                                         ; $584c: $c3 $d0 $16


	rst JumpTable                                          ; $584f: $c7
	ld d, h                                          ; $5850: $54
	ld e, b                                          ; $5851: $58
	ld h, [hl]                                       ; $5852: $66
	ld e, b                                          ; $5853: $58
	inc [hl]                                         ; $5854: $34
	call Call_009_459c                               ; $5855: $cd $9c $45
	call $3bf4                                       ; $5858: $cd $f4 $3b
	ld bc, $5004                                     ; $585b: $01 $04 $50
	ld a, $30                                        ; $585e: $3e $30
	call $3bfc                                       ; $5860: $cd $fc $3b
	call $3d53                                       ; $5863: $cd $53 $3d
	jp $16d0                                         ; $5866: $c3 $d0 $16


	rst JumpTable                                          ; $5869: $c7
	ld l, [hl]                                       ; $586a: $6e
	ld e, b                                          ; $586b: $58
	add l                                            ; $586c: $85
	ld e, b                                          ; $586d: $58
	inc [hl]                                         ; $586e: $34
	call Call_009_459c                               ; $586f: $cd $9c $45
	ld a, d                                          ; $5872: $7a
	add $fd                                          ; $5873: $c6 $fd
	ld d, a                                          ; $5875: $57
	ld a, e                                          ; $5876: $7b
	add $15                                          ; $5877: $c6 $15
	ld e, a                                          ; $5879: $5f
	ld bc, $44c0                                     ; $587a: $01 $c0 $44
	ld a, $3e                                        ; $587d: $3e $3e
	call $3d99                                       ; $587f: $cd $99 $3d
	call $3d53                                       ; $5882: $cd $53 $3d
	ret                                              ; $5885: $c9


	rst JumpTable                                          ; $5886: $c7
	adc e                                            ; $5887: $8b
	ld e, b                                          ; $5888: $58
	and d                                            ; $5889: $a2
	ld e, b                                          ; $588a: $58
	inc [hl]                                         ; $588b: $34
	call Call_009_459c                               ; $588c: $cd $9c $45
	ld a, d                                          ; $588f: $7a
	add $fd                                          ; $5890: $c6 $fd
	ld d, a                                          ; $5892: $57
	ld a, e                                          ; $5893: $7b
	add $15                                          ; $5894: $c6 $15
	ld e, a                                          ; $5896: $5f
	ld bc, $44cc                                     ; $5897: $01 $cc $44
	ld a, $3e                                        ; $589a: $3e $3e
	call $3d99                                       ; $589c: $cd $99 $3d
	call $3d53                                       ; $589f: $cd $53 $3d
	ret                                              ; $58a2: $c9


	rst JumpTable                                          ; $58a3: $c7
	xor b                                            ; $58a4: $a8
	ld e, b                                          ; $58a5: $58
	cp l                                             ; $58a6: $bd
	ld e, b                                          ; $58a7: $58
	inc [hl]                                         ; $58a8: $34
	ld de, $405e                                     ; $58a9: $11 $5e $40
	call $3bf4                                       ; $58ac: $cd $f4 $3b
	call $3da5                                       ; $58af: $cd $a5 $3d
	ld bc, $5017                                     ; $58b2: $01 $17 $50
	ld a, $30                                        ; $58b5: $3e $30
	call $3bfc                                       ; $58b7: $cd $fc $3b
	call $3d53                                       ; $58ba: $cd $53 $3d
	jp $16d0                                         ; $58bd: $c3 $d0 $16


	rst JumpTable                                          ; $58c0: $c7
	push bc                                          ; $58c1: $c5
	ld e, b                                          ; $58c2: $58
	db $eb                                           ; $58c3: $eb
	ld e, b                                          ; $58c4: $58
	inc [hl]                                         ; $58c5: $34
	ld l, $30                                        ; $58c6: $2e $30
	ld a, [hl]                                       ; $58c8: $7e
	cp $01                                           ; $58c9: $fe $01
	ld bc, $5023                                     ; $58cb: $01 $23 $50
	ld de, $742c                                     ; $58ce: $11 $2c $74
	jr c, jr_009_58e0                                ; $58d1: $38 $0d

	ld de, $746c                                     ; $58d3: $11 $6c $74
	jr nz, jr_009_58e0                               ; $58d6: $20 $08

	ld bc, $5024                                     ; $58d8: $01 $24 $50
	ld de, $744c                                     ; $58db: $11 $4c $74
	ld [hl], $08                                     ; $58de: $36 $08

jr_009_58e0:
	call $3bf4                                       ; $58e0: $cd $f4 $3b
	ld a, $30                                        ; $58e3: $3e $30
	call $3bfc                                       ; $58e5: $cd $fc $3b
	call $3d53                                       ; $58e8: $cd $53 $3d
	call $16d0                                       ; $58eb: $cd $d0 $16
	ld l, $30                                        ; $58ee: $2e $30
	inc [hl]                                         ; $58f0: $34
	ld a, [hl]                                       ; $58f1: $7e
	and $38                                          ; $58f2: $e6 $38
	rrca                                             ; $58f4: $0f
	rrca                                             ; $58f5: $0f
	rrca                                             ; $58f6: $0f
	ld de, $5917                                     ; $58f7: $11 $17 $59
	call $1327                                       ; $58fa: $cd $27 $13
	ld a, [de]                                       ; $58fd: $1a
	ld c, a                                          ; $58fe: $4f
	bit 7, c                                         ; $58ff: $cb $79
	ld b, $00                                        ; $5901: $06 $00
	jr z, jr_009_5907                                ; $5903: $28 $02

	ld b, $ff                                        ; $5905: $06 $ff

jr_009_5907:
	call $3be4                                       ; $5907: $cd $e4 $3b
	ld l, $07                                        ; $590a: $2e $07
	ld a, [hl]                                       ; $590c: $7e
	add $20                                          ; $590d: $c6 $20
	ret z                                            ; $590f: $c8

	ld de, $ffa0                                     ; $5910: $11 $a0 $ff
	call $3bd9                                       ; $5913: $cd $d9 $3b
	ret                                              ; $5916: $c9


	ld a, a                                          ; $5917: $7f
	ld b, b                                          ; $5918: $40
	nop                                              ; $5919: $00
	ret nz                                           ; $591a: $c0

	add c                                            ; $591b: $81
	ret nz                                           ; $591c: $c0

	nop                                              ; $591d: $00
	ld b, b                                          ; $591e: $40
	rst JumpTable                                          ; $591f: $c7
	inc h                                            ; $5920: $24
	ld e, c                                          ; $5921: $59
	ccf                                              ; $5922: $3f
	ld e, c                                          ; $5923: $59
	inc [hl]                                         ; $5924: $34
	ld l, $32                                        ; $5925: $2e $32
	ld a, [hl]                                       ; $5927: $7e
	and $0c                                          ; $5928: $e6 $0c
	rrca                                             ; $592a: $0f
	ld de, $598c                                     ; $592b: $11 $8c $59
	call $1327                                       ; $592e: $cd $27 $13
	ld a, [de]                                       ; $5931: $1a
	ld l, $33                                        ; $5932: $2e $33
	ld [hl+], a                                      ; $5934: $22
	inc de                                           ; $5935: $13
	ld a, [de]                                       ; $5936: $1a
	ld [hl], a                                       ; $5937: $77
	ld l, $02                                        ; $5938: $2e $02
	ld [hl], $30                                     ; $593a: $36 $30
	call $3d53                                       ; $593c: $cd $53 $3d
	ld l, $30                                        ; $593f: $2e $30
	ld a, [hl]                                       ; $5941: $7e
	inc a                                            ; $5942: $3c
	cp $60                                           ; $5943: $fe $60
	jr c, jr_009_5949                                ; $5945: $38 $02

	ld a, $5f                                        ; $5947: $3e $5f

jr_009_5949:
	ld [hl], a                                       ; $5949: $77
	and $03                                          ; $594a: $e6 $03
	ret nz                                           ; $594c: $c0

	ld l, $31                                        ; $594d: $2e $31
	ld a, [hl]                                       ; $594f: $7e
	inc a                                            ; $5950: $3c
	cp $08                                           ; $5951: $fe $08
	jr c, jr_009_5956                                ; $5953: $38 $01

	xor a                                            ; $5955: $af

jr_009_5956:
	ld [hl], a                                       ; $5956: $77
	push hl                                          ; $5957: $e5
	ld hl, $59a4                                     ; $5958: $21 $a4 $59
	call $3c8f                                       ; $595b: $cd $8f $3c
	pop hl                                           ; $595e: $e1
	call $3d3d                                       ; $595f: $cd $3d $3d
	ld l, $31                                        ; $5962: $2e $31
	ld a, [hl]                                       ; $5964: $7e
	ld e, a                                          ; $5965: $5f
	add $0c                                          ; $5966: $c6 $0c
	ld l, $32                                        ; $5968: $2e $32
	add [hl]                                         ; $596a: $86
	and $0f                                          ; $596b: $e6 $0f
	ld bc, $5994                                     ; $596d: $01 $94 $59
	call $132c                                       ; $5970: $cd $2c $13
	ld a, [bc]                                       ; $5973: $0a
	inc l                                            ; $5974: $2c
	add [hl]                                         ; $5975: $86
	ld d, a                                          ; $5976: $57
	ld a, e                                          ; $5977: $7b
	ld l, $32                                        ; $5978: $2e $32
	add [hl]                                         ; $597a: $86
	and $0f                                          ; $597b: $e6 $0f
	ld bc, $5994                                     ; $597d: $01 $94 $59
	call $132c                                       ; $5980: $cd $2c $13
	ld a, [bc]                                       ; $5983: $0a
	inc l                                            ; $5984: $2c
	inc l                                            ; $5985: $2c
	add [hl]                                         ; $5986: $86
	ld e, a                                          ; $5987: $5f
	call $3bf4                                       ; $5988: $cd $f4 $3b
	ret                                              ; $598b: $c9


	halt                                             ; $598c: $76
	ld c, b                                          ; $598d: $48
	ld a, [hl]                                       ; $598e: $7e
	ld d, b                                          ; $598f: $50
	add [hl]                                         ; $5990: $86
	ld c, b                                          ; $5991: $48
	ld a, [hl]                                       ; $5992: $7e
	ld b, b                                          ; $5993: $40
	nop                                              ; $5994: $00
	inc b                                            ; $5995: $04
	ld b, $07                                        ; $5996: $06 $07
	ld [$0607], sp                                   ; $5998: $08 $07 $06
	inc b                                            ; $599b: $04
	nop                                              ; $599c: $00
	db $fc                                           ; $599d: $fc
	ld a, [$f8f9]                                    ; $599e: $fa $f9 $f8
	ld sp, hl                                        ; $59a1: $f9
	ld a, [$64fc]                                    ; $59a2: $fa $fc $64
	ld c, l                                          ; $59a5: $4d
	ld l, h                                          ; $59a6: $6c
	ld c, l                                          ; $59a7: $4d
	ld [hl], h                                       ; $59a8: $74
	ld c, l                                          ; $59a9: $4d
	ld a, h                                          ; $59aa: $7c
	ld c, l                                          ; $59ab: $4d
	add b                                            ; $59ac: $80
	ld c, l                                          ; $59ad: $4d
	add h                                            ; $59ae: $84
	ld c, l                                          ; $59af: $4d
	add h                                            ; $59b0: $84
	ld c, l                                          ; $59b1: $4d
	add h                                            ; $59b2: $84
	ld c, l                                          ; $59b3: $4d
	rst JumpTable                                          ; $59b4: $c7
	cp c                                             ; $59b5: $b9
	ld e, c                                          ; $59b6: $59
	jp c, $3459                                      ; $59b7: $da $59 $34

	ld l, $30                                        ; $59ba: $2e $30
	ld a, [hl]                                       ; $59bc: $7e
	push hl                                          ; $59bd: $e5
	ld hl, $59de                                     ; $59be: $21 $de $59
	rst AddAOntoHL                                          ; $59c1: $ef
	ld e, [hl]                                       ; $59c2: $5e
	pop hl                                           ; $59c3: $e1
	ld a, $18                                        ; $59c4: $3e $18
	call Call_000_12fc                                       ; $59c6: $cd $fc $12
	add $16                                          ; $59c9: $c6 $16
	ld d, a                                          ; $59cb: $57
	call $3bf4                                       ; $59cc: $cd $f4 $3b
	ld bc, $5026                                     ; $59cf: $01 $26 $50
	ld a, $30                                        ; $59d2: $3e $30
	call $3bfc                                       ; $59d4: $cd $fc $3b
	call $3d53                                       ; $59d7: $cd $53 $3d
	call $16d0                                       ; $59da: $cd $d0 $16
	ret                                              ; $59dd: $c9


	ld [hl-], a                                      ; $59de: $32
	ld d, d                                          ; $59df: $52
	inc a                                            ; $59e0: $3c
	ld c, d                                          ; $59e1: $4a
	rst JumpTable                                          ; $59e2: $c7
	rst SubAFromBC                                          ; $59e3: $e7
	ld e, c                                          ; $59e4: $59
	rst $38                                          ; $59e5: $ff
	ld e, c                                          ; $59e6: $59
	inc [hl]                                         ; $59e7: $34
	ld de, $3040                                     ; $59e8: $11 $40 $30
	ld bc, $4b10                                     ; $59eb: $01 $10 $4b
	ld a, $30                                        ; $59ee: $3e $30
	call $3d99                                       ; $59f0: $cd $99 $3d
	call $3d53                                       ; $59f3: $cd $53 $3d
	ld de, $0040                                     ; $59f6: $11 $40 $00
	ld bc, $ffc0                                     ; $59f9: $01 $c0 $ff
	call $3d32                                       ; $59fc: $cd $32 $3d
	call $3d1b                                       ; $59ff: $cd $1b $3d
	call $3d13                                       ; $5a02: $cd $13 $3d
	inc bc                                           ; $5a05: $03
	ld l, $11                                        ; $5a06: $2e $11
	ld a, c                                          ; $5a08: $79
	ld [hl+], a                                      ; $5a09: $22
	ld [hl], b                                       ; $5a0a: $70
	ret                                              ; $5a0b: $c9


	rst JumpTable                                          ; $5a0c: $c7
	ld de, $295a                                     ; $5a0d: $11 $5a $29
	ld e, d                                          ; $5a10: $5a
	inc [hl]                                         ; $5a11: $34
	ld de, $1c58                                     ; $5a12: $11 $58 $1c
	ld bc, $4b20                                     ; $5a15: $01 $20 $4b
	ld a, $30                                        ; $5a18: $3e $30
	call $3d99                                       ; $5a1a: $cd $99 $3d
	call $3d53                                       ; $5a1d: $cd $53 $3d
	ld de, $ffc0                                     ; $5a20: $11 $c0 $ff
	ld bc, $0000                                     ; $5a23: $01 $00 $00
	call $3d32                                       ; $5a26: $cd $32 $3d
	call $3d1b                                       ; $5a29: $cd $1b $3d
	call $3d13                                       ; $5a2c: $cd $13 $3d
	inc bc                                           ; $5a2f: $03
	ld l, $11                                        ; $5a30: $2e $11
	ld a, c                                          ; $5a32: $79
	ld [hl+], a                                      ; $5a33: $22
	ld [hl], b                                       ; $5a34: $70
	ret                                              ; $5a35: $c9


	rst JumpTable                                          ; $5a36: $c7
	dec sp                                           ; $5a37: $3b
	ld e, d                                          ; $5a38: $5a
	ld d, e                                          ; $5a39: $53
	ld e, d                                          ; $5a3a: $5a
	inc [hl]                                         ; $5a3b: $34
	ld de, $3460                                     ; $5a3c: $11 $60 $34
	ld bc, $4b38                                     ; $5a3f: $01 $38 $4b
	ld a, $30                                        ; $5a42: $3e $30
	call $3d99                                       ; $5a44: $cd $99 $3d
	call $3d53                                       ; $5a47: $cd $53 $3d
	ld de, $0040                                     ; $5a4a: $11 $40 $00
	ld bc, $0000                                     ; $5a4d: $01 $00 $00
	call $3d32                                       ; $5a50: $cd $32 $3d
	call $3d1b                                       ; $5a53: $cd $1b $3d
	call $3d13                                       ; $5a56: $cd $13 $3d
	inc bc                                           ; $5a59: $03
	ld l, $11                                        ; $5a5a: $2e $11
	ld a, c                                          ; $5a5c: $79
	ld [hl+], a                                      ; $5a5d: $22
	ld [hl], b                                       ; $5a5e: $70
	ret                                              ; $5a5f: $c9


	rst JumpTable                                          ; $5a60: $c7
	ld h, l                                          ; $5a61: $65
	ld e, d                                          ; $5a62: $5a
	ld [hl], a                                       ; $5a63: $77
	ld e, d                                          ; $5a64: $5a
	inc [hl]                                         ; $5a65: $34
	ld de, $3636                                     ; $5a66: $11 $36 $36
	call $3bf4                                       ; $5a69: $cd $f4 $3b
	ld bc, $5029                                     ; $5a6c: $01 $29 $50
	ld a, $30                                        ; $5a6f: $3e $30
	call $3bfc                                       ; $5a71: $cd $fc $3b
	call $3d53                                       ; $5a74: $cd $53 $3d
	jp $16d0                                         ; $5a77: $c3 $d0 $16


	rst JumpTable                                          ; $5a7a: $c7
	ld a, a                                          ; $5a7b: $7f
	ld e, d                                          ; $5a7c: $5a
	sbc e                                            ; $5a7d: $9b
	ld e, d                                          ; $5a7e: $5a
	inc [hl]                                         ; $5a7f: $34
	ld l, $30                                        ; $5a80: $2e $30
	ld [hl], $6e                                     ; $5a82: $36 $6e
	ld de, $443e                                     ; $5a84: $11 $3e $44
	call $3bf4                                       ; $5a87: $cd $f4 $3b
	ld bc, $502b                                     ; $5a8a: $01 $2b $50
	ld a, $30                                        ; $5a8d: $3e $30
	call $3bfc                                       ; $5a8f: $cd $fc $3b
	ld bc, $ffc0                                     ; $5a92: $01 $c0 $ff
	ld de, $0040                                     ; $5a95: $11 $40 $00
	call $3d32                                       ; $5a98: $cd $32 $3d
	call $16d0                                       ; $5a9b: $cd $d0 $16
	call $3d1b                                       ; $5a9e: $cd $1b $3d
	ld l, $30                                        ; $5aa1: $2e $30
	ld a, [hl]                                       ; $5aa3: $7e
	or a                                             ; $5aa4: $b7
	jr z, jr_009_5aa9                                ; $5aa5: $28 $02

	dec [hl]                                         ; $5aa7: $35
	ret                                              ; $5aa8: $c9


jr_009_5aa9:
	ld bc, $fe40                                     ; $5aa9: $01 $40 $fe
	ld de, $01c0                                     ; $5aac: $11 $c0 $01
	call $3d32                                       ; $5aaf: $cd $32 $3d
	ret                                              ; $5ab2: $c9


	rst JumpTable                                          ; $5ab3: $c7
	cp b                                             ; $5ab4: $b8
	ld e, d                                          ; $5ab5: $5a
	db $dd                                           ; $5ab6: $dd
	ld e, d                                          ; $5ab7: $5a
	inc [hl]                                         ; $5ab8: $34
	ld l, $30                                        ; $5ab9: $2e $30
	ld [hl], $32                                     ; $5abb: $36 $32
	push hl                                          ; $5abd: $e5
	ld hl, $c600                                     ; $5abe: $21 $00 $c6
	ld l, $07                                        ; $5ac1: $2e $07
	ld d, [hl]                                       ; $5ac3: $56
	ld l, $05                                        ; $5ac4: $2e $05
	ld e, [hl]                                       ; $5ac6: $5e
	pop hl                                           ; $5ac7: $e1
	call $3bf4                                       ; $5ac8: $cd $f4 $3b
	ld bc, $502b                                     ; $5acb: $01 $2b $50
	ld a, $30                                        ; $5ace: $3e $30
	call $3bfc                                       ; $5ad0: $cd $fc $3b
	ld bc, $0020                                     ; $5ad3: $01 $20 $00
	ld de, $0040                                     ; $5ad6: $11 $40 $00
	call $3d32                                       ; $5ad9: $cd $32 $3d
	ret                                              ; $5adc: $c9


	call $16d0                                       ; $5add: $cd $d0 $16
	call $3d1b                                       ; $5ae0: $cd $1b $3d
	ld l, $30                                        ; $5ae3: $2e $30
	ld a, [hl]                                       ; $5ae5: $7e
	or a                                             ; $5ae6: $b7
	jr z, jr_009_5af6                                ; $5ae7: $28 $0d

	dec a                                            ; $5ae9: $3d
	ld [hl], a                                       ; $5aea: $77
	cp $1e                                           ; $5aeb: $fe $1e
	ret nc                                           ; $5aed: $d0

	ld bc, $ffc0                                     ; $5aee: $01 $c0 $ff
	ld de, $0040                                     ; $5af1: $11 $40 $00
	jr jr_009_5afc                                   ; $5af4: $18 $06

jr_009_5af6:
	ld bc, $fe40                                     ; $5af6: $01 $40 $fe
	ld de, $01c0                                     ; $5af9: $11 $c0 $01

jr_009_5afc:
	call $3d32                                       ; $5afc: $cd $32 $3d
	ret                                              ; $5aff: $c9


	rst JumpTable                                          ; $5b00: $c7
	dec b                                            ; $5b01: $05
	ld e, e                                          ; $5b02: $5b
	ld a, [hl+]                                      ; $5b03: $2a
	ld e, e                                          ; $5b04: $5b
	inc [hl]                                         ; $5b05: $34
	ld l, $30                                        ; $5b06: $2e $30
	ld [hl], $32                                     ; $5b08: $36 $32
	push hl                                          ; $5b0a: $e5
	ld hl, $c600                                     ; $5b0b: $21 $00 $c6
	ld l, $07                                        ; $5b0e: $2e $07
	ld d, [hl]                                       ; $5b10: $56
	ld l, $05                                        ; $5b11: $2e $05
	ld e, [hl]                                       ; $5b13: $5e
	pop hl                                           ; $5b14: $e1
	call $3bf4                                       ; $5b15: $cd $f4 $3b
	ld bc, $502b                                     ; $5b18: $01 $2b $50
	ld a, $30                                        ; $5b1b: $3e $30
	call $3bfc                                       ; $5b1d: $cd $fc $3b
	ld bc, $ffc0                                     ; $5b20: $01 $c0 $ff
	ld de, $ffe0                                     ; $5b23: $11 $e0 $ff
	call $3d32                                       ; $5b26: $cd $32 $3d
	ret                                              ; $5b29: $c9


	call $16d0                                       ; $5b2a: $cd $d0 $16
	call $3d1b                                       ; $5b2d: $cd $1b $3d
	ld l, $30                                        ; $5b30: $2e $30
	ld a, [hl]                                       ; $5b32: $7e
	or a                                             ; $5b33: $b7
	jr z, jr_009_5b43                                ; $5b34: $28 $0d

	dec a                                            ; $5b36: $3d
	ld [hl], a                                       ; $5b37: $77
	cp $1e                                           ; $5b38: $fe $1e
	ret nc                                           ; $5b3a: $d0

	ld bc, $ffc0                                     ; $5b3b: $01 $c0 $ff
	ld de, $0040                                     ; $5b3e: $11 $40 $00
	jr jr_009_5b49                                   ; $5b41: $18 $06

jr_009_5b43:
	ld bc, $fe40                                     ; $5b43: $01 $40 $fe
	ld de, $01c0                                     ; $5b46: $11 $c0 $01

jr_009_5b49:
	call $3d32                                       ; $5b49: $cd $32 $3d
	ret                                              ; $5b4c: $c9


	rst JumpTable                                          ; $5b4d: $c7
	ld d, h                                          ; $5b4e: $54
	ld e, e                                          ; $5b4f: $5b
	ld a, c                                          ; $5b50: $79
	ld e, e                                          ; $5b51: $5b
	sub b                                            ; $5b52: $90
	ld e, e                                          ; $5b53: $5b
	inc [hl]                                         ; $5b54: $34
	ld l, $30                                        ; $5b55: $2e $30
	ld [hl], $1e                                     ; $5b57: $36 $1e
	push hl                                          ; $5b59: $e5
	ld hl, $c600                                     ; $5b5a: $21 $00 $c6
	ld l, $07                                        ; $5b5d: $2e $07
	ld d, [hl]                                       ; $5b5f: $56
	ld l, $05                                        ; $5b60: $2e $05
	ld e, [hl]                                       ; $5b62: $5e
	pop hl                                           ; $5b63: $e1
	call $3bf4                                       ; $5b64: $cd $f4 $3b
	ld bc, $502b                                     ; $5b67: $01 $2b $50
	ld a, $30                                        ; $5b6a: $3e $30
	call $3bfc                                       ; $5b6c: $cd $fc $3b
	ld bc, $0080                                     ; $5b6f: $01 $80 $00
	ld de, $0040                                     ; $5b72: $11 $40 $00
	call $3d32                                       ; $5b75: $cd $32 $3d
	ret                                              ; $5b78: $c9


	call $16d0                                       ; $5b79: $cd $d0 $16
	call $3d1b                                       ; $5b7c: $cd $1b $3d
	ld l, $30                                        ; $5b7f: $2e $30
	dec [hl]                                         ; $5b81: $35
	ret nz                                           ; $5b82: $c0

	ld l, $0a                                        ; $5b83: $2e $0a
	inc [hl]                                         ; $5b85: $34
	ld bc, $fe40                                     ; $5b86: $01 $40 $fe
	ld de, $01c0                                     ; $5b89: $11 $c0 $01
	call $3d32                                       ; $5b8c: $cd $32 $3d
	ret                                              ; $5b8f: $c9


	call $16d0                                       ; $5b90: $cd $d0 $16
	call $3d1b                                       ; $5b93: $cd $1b $3d
	ret                                              ; $5b96: $c9


	rst JumpTable                                          ; $5b97: $c7
	sbc [hl]                                         ; $5b98: $9e
	ld e, e                                          ; $5b99: $5b
	jp $da5b                                         ; $5b9a: $c3 $5b $da


	ld e, e                                          ; $5b9d: $5b
	inc [hl]                                         ; $5b9e: $34
	ld l, $30                                        ; $5b9f: $2e $30
	ld [hl], $1e                                     ; $5ba1: $36 $1e
	push hl                                          ; $5ba3: $e5
	ld hl, $c600                                     ; $5ba4: $21 $00 $c6
	ld l, $07                                        ; $5ba7: $2e $07
	ld d, [hl]                                       ; $5ba9: $56
	ld l, $05                                        ; $5baa: $2e $05
	ld e, [hl]                                       ; $5bac: $5e
	pop hl                                           ; $5bad: $e1
	call $3bf4                                       ; $5bae: $cd $f4 $3b
	ld bc, $502b                                     ; $5bb1: $01 $2b $50
	ld a, $30                                        ; $5bb4: $3e $30
	call $3bfc                                       ; $5bb6: $cd $fc $3b
	ld bc, $ffc0                                     ; $5bb9: $01 $c0 $ff
	ld de, $ff80                                     ; $5bbc: $11 $80 $ff
	call $3d32                                       ; $5bbf: $cd $32 $3d
	ret                                              ; $5bc2: $c9


	call $16d0                                       ; $5bc3: $cd $d0 $16
	call $3d1b                                       ; $5bc6: $cd $1b $3d
	ld l, $30                                        ; $5bc9: $2e $30
	dec [hl]                                         ; $5bcb: $35
	ret nz                                           ; $5bcc: $c0

	ld l, $0a                                        ; $5bcd: $2e $0a
	inc [hl]                                         ; $5bcf: $34
	ld bc, $fe40                                     ; $5bd0: $01 $40 $fe
	ld de, $01c0                                     ; $5bd3: $11 $c0 $01
	call $3d32                                       ; $5bd6: $cd $32 $3d
	ret                                              ; $5bd9: $c9


	call $16d0                                       ; $5bda: $cd $d0 $16
	call $3d1b                                       ; $5bdd: $cd $1b $3d
	ret                                              ; $5be0: $c9


	rst JumpTable                                          ; $5be1: $c7
	ld [$025b], a                                    ; $5be2: $ea $5b $02
	ld e, h                                          ; $5be5: $5c
	dec sp                                           ; $5be6: $3b
	ld e, h                                          ; $5be7: $5c
	ld l, [hl]                                       ; $5be8: $6e
	ld e, h                                          ; $5be9: $5c
	ld a, [$d8a8]                                    ; $5bea: $fa $a8 $d8
	or a                                             ; $5bed: $b7
	jr nz, jr_009_5bf4                               ; $5bee: $20 $04

	call $2dfc                                       ; $5bf0: $cd $fc $2d
	ret                                              ; $5bf3: $c9


jr_009_5bf4:
	call $3d58                                       ; $5bf4: $cd $58 $3d
	ld a, $03                                        ; $5bf7: $3e $03
	call Call_000_12fc                                       ; $5bf9: $cd $fc $12
	or a                                             ; $5bfc: $b7
	ret nz                                           ; $5bfd: $c0

	ld l, $0a                                        ; $5bfe: $2e $0a
	inc [hl]                                         ; $5c00: $34
	ret                                              ; $5c01: $c9


	inc [hl]                                         ; $5c02: $34
	ld l, $31                                        ; $5c03: $2e $31
	ld a, [hl]                                       ; $5c05: $7e
	or a                                             ; $5c06: $b7
	jr nz, jr_009_5c19                               ; $5c07: $20 $10

	ld de, $7a00                                     ; $5c09: $11 $00 $7a
	ld a, $0c                                        ; $5c0c: $3e $0c
	call Call_000_12fc                                       ; $5c0e: $cd $fc $12
	cp $06                                           ; $5c11: $fe $06
	jr c, jr_009_5c21                                ; $5c13: $38 $0c

	add $18                                          ; $5c15: $c6 $18
	jr jr_009_5c21                                   ; $5c17: $18 $08

jr_009_5c19:
	ld de, $8000                                     ; $5c19: $11 $00 $80
	ld a, $18                                        ; $5c1c: $3e $18
	call Call_000_12fc                                       ; $5c1e: $cd $fc $12

jr_009_5c21:
	add d                                            ; $5c21: $82
	ld d, a                                          ; $5c22: $57
	call $3bf4                                       ; $5c23: $cd $f4 $3b
	call $3da5                                       ; $5c26: $cd $a5 $3d
	ld bc, $502c                                     ; $5c29: $01 $2c $50
	ld a, $30                                        ; $5c2c: $3e $30
	call $3bfc                                       ; $5c2e: $cd $fc $3b
	ld bc, $0400                                     ; $5c31: $01 $00 $04
	ld de, $0000                                     ; $5c34: $11 $00 $00
	call $3d32                                       ; $5c37: $cd $32 $3d
	ret                                              ; $5c3a: $c9


	call $16d0                                       ; $5c3b: $cd $d0 $16
	call $3d1b                                       ; $5c3e: $cd $1b $3d
	ld l, $07                                        ; $5c41: $2e $07
	ld a, [hl]                                       ; $5c43: $7e
	cp $80                                           ; $5c44: $fe $80
	jr c, jr_009_5c54                                ; $5c46: $38 $0c

	cp $98                                           ; $5c48: $fe $98
	jr nc, jr_009_5c54                               ; $5c4a: $30 $08

	ld l, $05                                        ; $5c4c: $2e $05
	ld a, [hl]                                       ; $5c4e: $7e
	cp $2a                                           ; $5c4f: $fe $2a
	ret c                                            ; $5c51: $d8

	jr jr_009_5c5a                                   ; $5c52: $18 $06

jr_009_5c54:
	ld l, $05                                        ; $5c54: $2e $05
	ld a, [hl]                                       ; $5c56: $7e
	cp $48                                           ; $5c57: $fe $48
	ret c                                            ; $5c59: $d8

jr_009_5c5a:
	ld l, $0a                                        ; $5c5a: $2e $0a
	inc [hl]                                         ; $5c5c: $34
	call $3da5                                       ; $5c5d: $cd $a5 $3d
	ld bc, $502d                                     ; $5c60: $01 $2d $50
	ld a, $30                                        ; $5c63: $3e $30
	call $3bfc                                       ; $5c65: $cd $fc $3b
	ld a, $09                                        ; $5c68: $3e $09
	call $1e2e                                       ; $5c6a: $cd $2e $1e
	ret                                              ; $5c6d: $c9


	call $16d0                                       ; $5c6e: $cd $d0 $16
	ld l, $0c                                        ; $5c71: $2e $0c
	ld a, [hl]                                       ; $5c73: $7e
	or a                                             ; $5c74: $b7
	ret nz                                           ; $5c75: $c0

	ld l, $0a                                        ; $5c76: $2e $0a
	xor a                                            ; $5c78: $af
	ld [hl], a                                       ; $5c79: $77
	ret                                              ; $5c7a: $c9


	rst JumpTable                                          ; $5c7b: $c7
	add b                                            ; $5c7c: $80
	ld e, h                                          ; $5c7d: $5c
	sub l                                            ; $5c7e: $95
	ld e, h                                          ; $5c7f: $5c
	inc [hl]                                         ; $5c80: $34
	ld de, $7852                                     ; $5c81: $11 $52 $78
	call $3bf4                                       ; $5c84: $cd $f4 $3b
	call $3da5                                       ; $5c87: $cd $a5 $3d
	ld bc, $5034                                     ; $5c8a: $01 $34 $50
	ld a, $30                                        ; $5c8d: $3e $30
	call $3bfc                                       ; $5c8f: $cd $fc $3b
	call $3d53                                       ; $5c92: $cd $53 $3d
	call $16d0                                       ; $5c95: $cd $d0 $16
	ret                                              ; $5c98: $c9


	rst FarCall                                          ; $5c99: $f7
	dec l                                            ; $5c9a: $2d
	ld a, l                                          ; $5c9b: $7d
	ld a, [bc]                                       ; $5c9c: $0a
	ret                                              ; $5c9d: $c9


	ld a, [hl]                                       ; $5c9e: $7e
	rst JumpTable                                          ; $5c9f: $c7
	or [hl]                                          ; $5ca0: $b6
	ld e, h                                          ; $5ca1: $5c
	cp c                                             ; $5ca2: $b9
	ld e, h                                          ; $5ca3: $5c
	cp h                                             ; $5ca4: $bc
	ld e, h                                          ; $5ca5: $5c
	pop af                                           ; $5ca6: $f1
	ld e, h                                          ; $5ca7: $5c
	db $f4                                           ; $5ca8: $f4
	ld e, h                                          ; $5ca9: $5c
	rst FarCall                                          ; $5caa: $f7
	ld e, h                                          ; $5cab: $5c
	ld a, [$105c]                                    ; $5cac: $fa $5c $10
	ld e, l                                          ; $5caf: $5d
	jr nc, @+$5f                                     ; $5cb0: $30 $5d

	ld c, d                                          ; $5cb2: $4a
	ld e, l                                          ; $5cb3: $5d
	ld h, d                                          ; $5cb4: $62
	ld e, l                                          ; $5cb5: $5d
	jp Jump_009_7408                                 ; $5cb6: $c3 $08 $74


	jp Jump_009_741e                                 ; $5cb9: $c3 $1e $74


	ld a, [$d884]                                    ; $5cbc: $fa $84 $d8
	cp $01                                           ; $5cbf: $fe $01
	jr z, jr_009_5cc9                                ; $5cc1: $28 $06

	cp $0a                                           ; $5cc3: $fe $0a
	jr z, jr_009_5ccd                                ; $5cc5: $28 $06

	jr jr_009_5cd3                                   ; $5cc7: $18 $0a

jr_009_5cc9:
	ld a, $06                                        ; $5cc9: $3e $06
	jr jr_009_5ccf                                   ; $5ccb: $18 $02

jr_009_5ccd:
	ld a, $04                                        ; $5ccd: $3e $04

jr_009_5ccf:
	ld l, $0a                                        ; $5ccf: $2e $0a
	ld [hl], a                                       ; $5cd1: $77
	ret                                              ; $5cd2: $c9


jr_009_5cd3:
	ld a, [$d8ae]                                    ; $5cd3: $fa $ae $d8
	or a                                             ; $5cd6: $b7
	jp nz, Jump_009_74e5                             ; $5cd7: $c2 $e5 $74

	ld l, $30                                        ; $5cda: $2e $30
	xor a                                            ; $5cdc: $af
	ld [hl+], a                                      ; $5cdd: $22
	ld [hl], a                                       ; $5cde: $77
	ld de, $906a                                     ; $5cdf: $11 $6a $90
	ld bc, $4550                                     ; $5ce2: $01 $50 $45
	ld a, $0c                                        ; $5ce5: $3e $0c
	call $3d99                                       ; $5ce7: $cd $99 $3d
	call $3d71                                       ; $5cea: $cd $71 $3d
	call $3d53                                       ; $5ced: $cd $53 $3d
	ret                                              ; $5cf0: $c9


	jp Jump_009_7431                                 ; $5cf1: $c3 $31 $74


	jp Jump_009_743e                                 ; $5cf4: $c3 $3e $74


	jp Jump_009_7468                                 ; $5cf7: $c3 $68 $74


	ld [hl], $07                                     ; $5cfa: $36 $07
	call $3da5                                       ; $5cfc: $cd $a5 $3d
	ld bc, $500a                                     ; $5cff: $01 $0a $50
	ld a, $30                                        ; $5d02: $3e $30
	call $3bfc                                       ; $5d04: $cd $fc $3b
	call $16d0                                       ; $5d07: $cd $d0 $16
	ld hl, $7f03                                     ; $5d0a: $21 $03 $7f
	jp $3c78                                         ; $5d0d: $c3 $78 $3c


	call $16d0                                       ; $5d10: $cd $d0 $16
	ld l, $07                                        ; $5d13: $2e $07
	dec [hl]                                         ; $5d15: $35
	ld a, [hl]                                       ; $5d16: $7e
	cp $7c                                           ; $5d17: $fe $7c
	ret nc                                           ; $5d19: $d0

	ld [hl], $7c                                     ; $5d1a: $36 $7c
	ld l, $0a                                        ; $5d1c: $2e $0a
	ld [hl], $08                                     ; $5d1e: $36 $08
	ld l, $30                                        ; $5d20: $2e $30
	ld [hl], $1e                                     ; $5d22: $36 $1e
	call $3da5                                       ; $5d24: $cd $a5 $3d
	ld bc, $4640                                     ; $5d27: $01 $40 $46
	ld a, $30                                        ; $5d2a: $3e $30
	call $3d9f                                       ; $5d2c: $cd $9f $3d
	ret                                              ; $5d2f: $c9


	ld l, $30                                        ; $5d30: $2e $30
	dec [hl]                                         ; $5d32: $35
	ret nz                                           ; $5d33: $c0

	ld l, $0a                                        ; $5d34: $2e $0a
	ld [hl], $09                                     ; $5d36: $36 $09
	call $3da5                                       ; $5d38: $cd $a5 $3d
	ld bc, $500b                                     ; $5d3b: $01 $0b $50
	ld a, $30                                        ; $5d3e: $3e $30
	call $3bfc                                       ; $5d40: $cd $fc $3b
	ld bc, $0001                                     ; $5d43: $01 $01 $00
	call $3cd9                                       ; $5d46: $cd $d9 $3c
	ret                                              ; $5d49: $c9


	call $3ce2                                       ; $5d4a: $cd $e2 $3c
	jr nz, jr_009_5d5e                               ; $5d4d: $20 $0f

	ld l, $0a                                        ; $5d4f: $2e $0a
	ld [hl], $0a                                     ; $5d51: $36 $0a
	call $3da5                                       ; $5d53: $cd $a5 $3d
	ld bc, $500c                                     ; $5d56: $01 $0c $50
	ld a, $30                                        ; $5d59: $3e $30
	call $3bfc                                       ; $5d5b: $cd $fc $3b

jr_009_5d5e:
	call $16d0                                       ; $5d5e: $cd $d0 $16
	ret                                              ; $5d61: $c9


	ld l, $07                                        ; $5d62: $2e $07
	inc [hl]                                         ; $5d64: $34
	ld a, [hl]                                       ; $5d65: $7e
	cp $90                                           ; $5d66: $fe $90
	jr c, jr_009_5d70                                ; $5d68: $38 $06

	ld [hl], $90                                     ; $5d6a: $36 $90
	ld l, $0a                                        ; $5d6c: $2e $0a
	ld [hl], $03                                     ; $5d6e: $36 $03

jr_009_5d70:
	call $16d0                                       ; $5d70: $cd $d0 $16
	ret                                              ; $5d73: $c9


	ld a, [hl]                                       ; $5d74: $7e
	rst JumpTable                                          ; $5d75: $c7
	adc [hl]                                         ; $5d76: $8e
	ld e, l                                          ; $5d77: $5d
	sub c                                            ; $5d78: $91
	ld e, l                                          ; $5d79: $5d
	sub h                                            ; $5d7a: $94
	ld e, l                                          ; $5d7b: $5d
	ret                                              ; $5d7c: $c9


	ld e, l                                          ; $5d7d: $5d
	call z, $cf5d                                    ; $5d7e: $cc $5d $cf
	ld e, l                                          ; $5d81: $5d
	jp nc, $fc5d                                     ; $5d82: $d2 $5d $fc

	ld e, l                                          ; $5d85: $5d
	rra                                              ; $5d86: $1f
	ld e, [hl]                                       ; $5d87: $5e
	ld b, d                                          ; $5d88: $42
	ld e, [hl]                                       ; $5d89: $5e
	adc d                                            ; $5d8a: $8a
	ld e, [hl]                                       ; $5d8b: $5e
	xor e                                            ; $5d8c: $ab
	ld e, [hl]                                       ; $5d8d: $5e
	jp Jump_009_7408                                 ; $5d8e: $c3 $08 $74


	jp Jump_009_741e                                 ; $5d91: $c3 $1e $74


	ld a, [$d884]                                    ; $5d94: $fa $84 $d8
	cp $01                                           ; $5d97: $fe $01
	jr z, jr_009_5da1                                ; $5d99: $28 $06

	cp $0a                                           ; $5d9b: $fe $0a
	jr z, jr_009_5da5                                ; $5d9d: $28 $06

	jr jr_009_5dab                                   ; $5d9f: $18 $0a

jr_009_5da1:
	ld a, $06                                        ; $5da1: $3e $06
	jr jr_009_5da7                                   ; $5da3: $18 $02

jr_009_5da5:
	ld a, $04                                        ; $5da5: $3e $04

jr_009_5da7:
	ld l, $0a                                        ; $5da7: $2e $0a
	ld [hl], a                                       ; $5da9: $77
	ret                                              ; $5daa: $c9


jr_009_5dab:
	ld a, [$d8ae]                                    ; $5dab: $fa $ae $d8
	or a                                             ; $5dae: $b7
	jp nz, Jump_009_74e5                             ; $5daf: $c2 $e5 $74

	ld l, $30                                        ; $5db2: $2e $30
	xor a                                            ; $5db4: $af
	ld [hl+], a                                      ; $5db5: $22
	ld [hl], a                                       ; $5db6: $77
	ld de, $906a                                     ; $5db7: $11 $6a $90
	ld bc, $5700                                     ; $5dba: $01 $00 $57
	ld a, $0c                                        ; $5dbd: $3e $0c
	call $3d99                                       ; $5dbf: $cd $99 $3d
	call $3d71                                       ; $5dc2: $cd $71 $3d
	call $3d53                                       ; $5dc5: $cd $53 $3d
	ret                                              ; $5dc8: $c9


	jp Jump_009_7431                                 ; $5dc9: $c3 $31 $74


	jp Jump_009_743e                                 ; $5dcc: $c3 $3e $74


	jp Jump_009_7468                                 ; $5dcf: $c3 $68 $74


	ld [hl], $07                                     ; $5dd2: $36 $07
	call $3da5                                       ; $5dd4: $cd $a5 $3d
	ld bc, $5041                                     ; $5dd7: $01 $41 $50
	ld a, $30                                        ; $5dda: $3e $30
	call $3bfc                                       ; $5ddc: $cd $fc $3b
	call $16d0                                       ; $5ddf: $cd $d0 $16
	ld de, $ff00                                     ; $5de2: $11 $00 $ff
	ld bc, $7848                                     ; $5de5: $01 $48 $78
	rst FarCall                                          ; $5de8: $f7
	xor l                                            ; $5de9: $ad
	ld b, h                                          ; $5dea: $44
	add hl, bc                                       ; $5deb: $09
	rst FarCall                                          ; $5dec: $f7
	and d                                            ; $5ded: $a2
	ld b, a                                          ; $5dee: $47
	add hl, bc                                       ; $5def: $09
	ld bc, $63ca                                     ; $5df0: $01 $ca $63
	call $18c4                                       ; $5df3: $cd $c4 $18
	ld hl, $7468                                     ; $5df6: $21 $68 $74
	jp $3c78                                         ; $5df9: $c3 $78 $3c


	call $3d1b                                       ; $5dfc: $cd $1b $3d
	ld l, $07                                        ; $5dff: $2e $07
	ld a, [hl]                                       ; $5e01: $7e
	cp $78                                           ; $5e02: $fe $78
	jr nc, jr_009_5e1b                               ; $5e04: $30 $15

	ld [hl], $78                                     ; $5e06: $36 $78
	ld l, $0a                                        ; $5e08: $2e $0a
	ld [hl], $08                                     ; $5e0a: $36 $08
	ld l, $30                                        ; $5e0c: $2e $30
	ld [hl], $64                                     ; $5e0e: $36 $64
	call $3da5                                       ; $5e10: $cd $a5 $3d
	ld bc, $503f                                     ; $5e13: $01 $3f $50
	ld a, $30                                        ; $5e16: $3e $30
	call $3bfc                                       ; $5e18: $cd $fc $3b

jr_009_5e1b:
	call $16d0                                       ; $5e1b: $cd $d0 $16
	ret                                              ; $5e1e: $c9


	call $16d0                                       ; $5e1f: $cd $d0 $16
	ld l, $30                                        ; $5e22: $2e $30
	dec [hl]                                         ; $5e24: $35
	ret nz                                           ; $5e25: $c0

	ld [hl], $96                                     ; $5e26: $36 $96
	ld l, $0a                                        ; $5e28: $2e $0a
	ld [hl], $09                                     ; $5e2a: $36 $09
	ld a, $1c                                        ; $5e2c: $3e $1c
	ld [$c900], a                                    ; $5e2e: $ea $00 $c9
	ld a, $1d                                        ; $5e31: $3e $1d
	ld [$ca00], a                                    ; $5e33: $ea $00 $ca
	ld bc, $0005                                     ; $5e36: $01 $05 $00
	call $3cd9                                       ; $5e39: $cd $d9 $3c
	ld a, $2d                                        ; $5e3c: $3e $2d
	call $1e2e                                       ; $5e3e: $cd $2e $1e
	ret                                              ; $5e41: $c9


	call $16d0                                       ; $5e42: $cd $d0 $16
	ld l, $30                                        ; $5e45: $2e $30
	dec [hl]                                         ; $5e47: $35
	ret nz                                           ; $5e48: $c0

	ld [hl], $0a                                     ; $5e49: $36 $0a
	ld l, $0a                                        ; $5e4b: $2e $0a
	ld [hl], $0a                                     ; $5e4d: $36 $0a
	ld bc, $0025                                     ; $5e4f: $01 $25 $00
	call $3cd9                                       ; $5e52: $cd $d9 $3c
	ld a, $2c                                        ; $5e55: $3e $2c
	call $1e2e                                       ; $5e57: $cd $2e $1e
	ld hl, $d86b                                     ; $5e5a: $21 $6b $d8
	rst GetHLinHL                                          ; $5e5d: $cf
	ld d, h                                          ; $5e5e: $54
	ld e, l                                          ; $5e5f: $5d
	ld hl, $d84d                                     ; $5e60: $21 $4d $d8
	push hl                                          ; $5e63: $e5
	rst GetHLinHL                                          ; $5e64: $cf
	add hl, de                                       ; $5e65: $19
	push hl                                          ; $5e66: $e5
	ld hl, $d859                                     ; $5e67: $21 $59 $d8
	rst GetHLinHL                                          ; $5e6a: $cf
	ld d, h                                          ; $5e6b: $54
	ld e, l                                          ; $5e6c: $5d
	pop hl                                           ; $5e6d: $e1
	call $3cd4                                       ; $5e6e: $cd $d4 $3c
	jr c, jr_009_5e75                                ; $5e71: $38 $02

	ld h, d                                          ; $5e73: $62
	ld l, e                                          ; $5e74: $6b

jr_009_5e75:
	pop de                                           ; $5e75: $d1
	call $3cce                                       ; $5e76: $cd $ce $3c
	rst FarCall                                          ; $5e79: $f7
	cpl                                              ; $5e7a: $2f
	ld b, d                                          ; $5e7b: $42
	add hl, bc                                       ; $5e7c: $09
	ld hl, $c900                                     ; $5e7d: $21 $00 $c9
	call $2dfc                                       ; $5e80: $cd $fc $2d
	ld hl, $ca00                                     ; $5e83: $21 $00 $ca
	call $2dfc                                       ; $5e86: $cd $fc $2d
	ret                                              ; $5e89: $c9


	call $3ce2                                       ; $5e8a: $cd $e2 $3c
	ret nz                                           ; $5e8d: $c0

	ld l, $0a                                        ; $5e8e: $2e $0a
	ld [hl], $0b                                     ; $5e90: $36 $0b
	call $3da5                                       ; $5e92: $cd $a5 $3d
	ld bc, $5042                                     ; $5e95: $01 $42 $50
	ld a, $30                                        ; $5e98: $3e $30
	call $3bfc                                       ; $5e9a: $cd $fc $3b
	call $16d0                                       ; $5e9d: $cd $d0 $16
	ld de, $0100                                     ; $5ea0: $11 $00 $01
	ld bc, $906a                                     ; $5ea3: $01 $6a $90
	rst FarCall                                          ; $5ea6: $f7
	xor l                                            ; $5ea7: $ad
	ld b, h                                          ; $5ea8: $44
	add hl, bc                                       ; $5ea9: $09
	ret                                              ; $5eaa: $c9


	call $3d1b                                       ; $5eab: $cd $1b $3d
	ld l, $07                                        ; $5eae: $2e $07
	ld a, [hl]                                       ; $5eb0: $7e
	cp $90                                           ; $5eb1: $fe $90
	jr c, jr_009_5ebb                                ; $5eb3: $38 $06

	ld [hl], $90                                     ; $5eb5: $36 $90
	ld l, $0a                                        ; $5eb7: $2e $0a
	ld [hl], $03                                     ; $5eb9: $36 $03

jr_009_5ebb:
	call $16d0                                       ; $5ebb: $cd $d0 $16
	ret                                              ; $5ebe: $c9


	ld a, [hl]                                       ; $5ebf: $7e
	rst JumpTable                                          ; $5ec0: $c7
	rst SubAFromBC                                          ; $5ec1: $e7
	ld e, [hl]                                       ; $5ec2: $5e
	ld [$ed5e], a                                    ; $5ec3: $ea $5e $ed
	ld e, [hl]                                       ; $5ec6: $5e
	ld [hl+], a                                      ; $5ec7: $22
	ld e, a                                          ; $5ec8: $5f
	dec h                                            ; $5ec9: $25
	ld e, a                                          ; $5eca: $5f
	jr z, @+$61                                      ; $5ecb: $28 $5f

	dec hl                                           ; $5ecd: $2b
	ld e, a                                          ; $5ece: $5f
	ld b, a                                          ; $5ecf: $47
	ld e, a                                          ; $5ed0: $5f
	ld d, b                                          ; $5ed1: $50
	ld e, a                                          ; $5ed2: $5f
	ld l, l                                          ; $5ed3: $6d
	ld e, a                                          ; $5ed4: $5f
	adc h                                            ; $5ed5: $8c
	ld e, a                                          ; $5ed6: $5f
	xor c                                            ; $5ed7: $a9
	ld e, a                                          ; $5ed8: $5f
	cp b                                             ; $5ed9: $b8
	ld e, a                                          ; $5eda: $5f
	call nc, $ed5f                                   ; $5edb: $d4 $5f $ed
	ld e, a                                          ; $5ede: $5f
	ld c, $60                                        ; $5edf: $0e $60
	inc hl                                           ; $5ee1: $23
	ld h, b                                          ; $5ee2: $60
	dec a                                            ; $5ee3: $3d
	ld h, b                                          ; $5ee4: $60
	ld c, h                                          ; $5ee5: $4c
	ld h, b                                          ; $5ee6: $60
	jp Jump_009_7408                                 ; $5ee7: $c3 $08 $74


	jp Jump_009_741e                                 ; $5eea: $c3 $1e $74


	ld a, [$d884]                                    ; $5eed: $fa $84 $d8
	cp $01                                           ; $5ef0: $fe $01
	jr z, jr_009_5efa                                ; $5ef2: $28 $06

	cp $0a                                           ; $5ef4: $fe $0a
	jr z, jr_009_5efe                                ; $5ef6: $28 $06

	jr jr_009_5f04                                   ; $5ef8: $18 $0a

jr_009_5efa:
	ld a, $06                                        ; $5efa: $3e $06
	jr jr_009_5f00                                   ; $5efc: $18 $02

jr_009_5efe:
	ld a, $04                                        ; $5efe: $3e $04

jr_009_5f00:
	ld l, $0a                                        ; $5f00: $2e $0a
	ld [hl], a                                       ; $5f02: $77
	ret                                              ; $5f03: $c9


jr_009_5f04:
	ld a, [$d8ae]                                    ; $5f04: $fa $ae $d8
	or a                                             ; $5f07: $b7
	jp nz, Jump_009_74e5                             ; $5f08: $c2 $e5 $74

	ld l, $30                                        ; $5f0b: $2e $30
	xor a                                            ; $5f0d: $af
	ld [hl+], a                                      ; $5f0e: $22
	ld [hl], a                                       ; $5f0f: $77
	ld de, $906a                                     ; $5f10: $11 $6a $90
	ld bc, $5444                                     ; $5f13: $01 $44 $54
	ld a, $0c                                        ; $5f16: $3e $0c
	call $3d99                                       ; $5f18: $cd $99 $3d
	call $3d71                                       ; $5f1b: $cd $71 $3d
	call $3d53                                       ; $5f1e: $cd $53 $3d
	ret                                              ; $5f21: $c9


	jp Jump_009_7431                                 ; $5f22: $c3 $31 $74


	jp Jump_009_743e                                 ; $5f25: $c3 $3e $74


	jp Jump_009_7468                                 ; $5f28: $c3 $68 $74


	ld [hl], $07                                     ; $5f2b: $36 $07
	ld bc, $0007                                     ; $5f2d: $01 $07 $00
	call $3cd9                                       ; $5f30: $cd $d9 $3c
	rst FarCall                                          ; $5f33: $f7
	sub l                                            ; $5f34: $95
	ld b, h                                          ; $5f35: $44
	add hl, bc                                       ; $5f36: $09
	rst FarCall                                          ; $5f37: $f7
	and d                                            ; $5f38: $a2
	ld b, a                                          ; $5f39: $47
	add hl, bc                                       ; $5f3a: $09
	ld bc, $63ce                                     ; $5f3b: $01 $ce $63
	call $18c4                                       ; $5f3e: $cd $c4 $18
	ld hl, $747d                                     ; $5f41: $21 $7d $74
	jp $3c78                                         ; $5f44: $c3 $78 $3c


	call $3ce2                                       ; $5f47: $cd $e2 $3c
	ret nz                                           ; $5f4a: $c0

	ld l, $0a                                        ; $5f4b: $2e $0a
	ld [hl], $08                                     ; $5f4d: $36 $08
	ret                                              ; $5f4f: $c9


	ld l, $07                                        ; $5f50: $2e $07
	dec [hl]                                         ; $5f52: $35
	ld a, [hl]                                       ; $5f53: $7e
	cp $7c                                           ; $5f54: $fe $7c
	ret nc                                           ; $5f56: $d0

	ld [hl], $7c                                     ; $5f57: $36 $7c
	ld l, $0a                                        ; $5f59: $2e $0a
	ld [hl], $09                                     ; $5f5b: $36 $09
	ld l, $30                                        ; $5f5d: $2e $30
	ld [hl], $3c                                     ; $5f5f: $36 $3c
	call $3da5                                       ; $5f61: $cd $a5 $3d
	ld bc, $545c                                     ; $5f64: $01 $5c $54
	ld a, $0c                                        ; $5f67: $3e $0c
	call $3d9f                                       ; $5f69: $cd $9f $3d
	ret                                              ; $5f6c: $c9


	ld l, $30                                        ; $5f6d: $2e $30
	dec [hl]                                         ; $5f6f: $35
	ret nz                                           ; $5f70: $c0

	ld [hl], $78                                     ; $5f71: $36 $78
	ld l, $0a                                        ; $5f73: $2e $0a
	ld [hl], $0a                                     ; $5f75: $36 $0a
	call $3da5                                       ; $5f77: $cd $a5 $3d
	ld bc, $5045                                     ; $5f7a: $01 $45 $50
	ld a, $30                                        ; $5f7d: $3e $30
	call $3bfc                                       ; $5f7f: $cd $fc $3b
	call $16d0                                       ; $5f82: $cd $d0 $16
	ld bc, $0006                                     ; $5f85: $01 $06 $00
	call $3cd9                                       ; $5f88: $cd $d9 $3c
	ret                                              ; $5f8b: $c9


	call $16d0                                       ; $5f8c: $cd $d0 $16
	ld l, $30                                        ; $5f8f: $2e $30
	dec [hl]                                         ; $5f91: $35
	ret nz                                           ; $5f92: $c0

	ld [hl], $3c                                     ; $5f93: $36 $3c
	ld l, $0a                                        ; $5f95: $2e $0a
	ld [hl], $0b                                     ; $5f97: $36 $0b
	call $3da5                                       ; $5f99: $cd $a5 $3d
	ld bc, $545c                                     ; $5f9c: $01 $5c $54
	ld a, $0c                                        ; $5f9f: $3e $0c
	call $3d9f                                       ; $5fa1: $cd $9f $3d
	rst FarCall                                          ; $5fa4: $f7
	ld h, d                                          ; $5fa5: $62
	ld b, h                                          ; $5fa6: $44
	add hl, bc                                       ; $5fa7: $09
	ret                                              ; $5fa8: $c9


	call $3d4b                                       ; $5fa9: $cd $4b $3d
	ld l, $30                                        ; $5fac: $2e $30
	dec [hl]                                         ; $5fae: $35
	ret nz                                           ; $5faf: $c0

	ld l, $0a                                        ; $5fb0: $2e $0a
	ld [hl], $0c                                     ; $5fb2: $36 $0c
	call $3d58                                       ; $5fb4: $cd $58 $3d
	ret                                              ; $5fb7: $c9


	ld [hl], $0d                                     ; $5fb8: $36 $0d
	call $3da5                                       ; $5fba: $cd $a5 $3d
	ld de, $b866                                     ; $5fbd: $11 $66 $b8
	ld bc, $54d4                                     ; $5fc0: $01 $d4 $54
	ld a, $30                                        ; $5fc3: $3e $30
	call $3d99                                       ; $5fc5: $cd $99 $3d
	call $3d53                                       ; $5fc8: $cd $53 $3d
	call $16d0                                       ; $5fcb: $cd $d0 $16
	ld hl, $7484                                     ; $5fce: $21 $84 $74
	jp $3c78                                         ; $5fd1: $c3 $78 $3c


	ld l, $07                                        ; $5fd4: $2e $07
	ld a, [hl]                                       ; $5fd6: $7e
	sub $07                                          ; $5fd7: $d6 $07
	ld [hl], a                                       ; $5fd9: $77
	cp $54                                           ; $5fda: $fe $54
	ret nc                                           ; $5fdc: $d0

	ld [hl], $54                                     ; $5fdd: $36 $54
	ld l, $0a                                        ; $5fdf: $2e $0a
	ld [hl], $0e                                     ; $5fe1: $36 $0e
	ld l, $30                                        ; $5fe3: $2e $30
	ld [hl], $96                                     ; $5fe5: $36 $96
	ld a, $1e                                        ; $5fe7: $3e $1e
	ld [$ca00], a                                    ; $5fe9: $ea $00 $ca
	ret                                              ; $5fec: $c9


	ld l, $30                                        ; $5fed: $2e $30
	ld a, [hl]                                       ; $5fef: $7e
	and $0f                                          ; $5ff0: $e6 $0f
	jr nz, jr_009_5ff9                               ; $5ff2: $20 $05

	ld a, $36                                        ; $5ff4: $3e $36
	call $1e2e                                       ; $5ff6: $cd $2e $1e

jr_009_5ff9:
	dec [hl]                                         ; $5ff9: $35
	ret nz                                           ; $5ffa: $c0

	ld [hl], $3c                                     ; $5ffb: $36 $3c
	ld l, $0a                                        ; $5ffd: $2e $0a
	ld [hl], $0f                                     ; $5fff: $36 $0f
	ld bc, $0105                                     ; $6001: $01 $05 $01
	call $3cd9                                       ; $6004: $cd $d9 $3c
	ld hl, $ca00                                     ; $6007: $21 $00 $ca
	call $2dfc                                       ; $600a: $cd $fc $2d
	ret                                              ; $600d: $c9


	call $3ce2                                       ; $600e: $cd $e2 $3c
	ret nz                                           ; $6011: $c0

	call $3d4b                                       ; $6012: $cd $4b $3d
	ld l, $30                                        ; $6015: $2e $30
	dec [hl]                                         ; $6017: $35
	ret nz                                           ; $6018: $c0

	ld [hl], $3c                                     ; $6019: $36 $3c
	ld l, $0a                                        ; $601b: $2e $0a
	ld [hl], $10                                     ; $601d: $36 $10
	call $3d58                                       ; $601f: $cd $58 $3d
	ret                                              ; $6022: $c9


	ld [hl], $11                                     ; $6023: $36 $11
	call $3da5                                       ; $6025: $cd $a5 $3d
	ld de, $7c6a                                     ; $6028: $11 $6a $7c
	ld bc, $545c                                     ; $602b: $01 $5c $54
	ld a, $0c                                        ; $602e: $3e $0c
	call $3d99                                       ; $6030: $cd $99 $3d
	rst FarCall                                          ; $6033: $f7
	ld e, [hl]                                       ; $6034: $5e
	ld b, h                                          ; $6035: $44
	add hl, bc                                       ; $6036: $09
	ld hl, $747d                                     ; $6037: $21 $7d $74
	jp $3c78                                         ; $603a: $c3 $78 $3c


	call $3d4b                                       ; $603d: $cd $4b $3d
	ld l, $30                                        ; $6040: $2e $30
	dec [hl]                                         ; $6042: $35
	ret nz                                           ; $6043: $c0

	ld l, $0a                                        ; $6044: $2e $0a
	ld [hl], $12                                     ; $6046: $36 $12
	call $3d53                                       ; $6048: $cd $53 $3d
	ret                                              ; $604b: $c9


	ld l, $07                                        ; $604c: $2e $07
	inc [hl]                                         ; $604e: $34
	ld a, [hl]                                       ; $604f: $7e
	cp $90                                           ; $6050: $fe $90
	ret c                                            ; $6052: $d8

	ld [hl], $90                                     ; $6053: $36 $90
	ld l, $0a                                        ; $6055: $2e $0a
	ld [hl], $03                                     ; $6057: $36 $03
	ret                                              ; $6059: $c9


	ld a, [hl]                                       ; $605a: $7e
	rst JumpTable                                          ; $605b: $c7
	halt                                             ; $605c: $76
	ld h, b                                          ; $605d: $60
	ld a, c                                          ; $605e: $79
	ld h, b                                          ; $605f: $60
	ld a, h                                          ; $6060: $7c
	ld h, b                                          ; $6061: $60
	or c                                             ; $6062: $b1
	ld h, b                                          ; $6063: $60
	or h                                             ; $6064: $b4
	ld h, b                                          ; $6065: $60
	or a                                             ; $6066: $b7
	ld h, b                                          ; $6067: $60
	cp d                                             ; $6068: $ba
	ld h, b                                          ; $6069: $60
	call nc, $fa60                                   ; $606a: $d4 $60 $fa
	ld h, b                                          ; $606d: $60
	inc de                                           ; $606e: $13
	ld h, c                                          ; $606f: $61
	ld hl, $5261                                     ; $6070: $21 $61 $52
	ld h, c                                          ; $6073: $61
	ld l, d                                          ; $6074: $6a
	ld h, c                                          ; $6075: $61
	jp Jump_009_7408                                 ; $6076: $c3 $08 $74


	jp Jump_009_741e                                 ; $6079: $c3 $1e $74


	ld a, [$d884]                                    ; $607c: $fa $84 $d8
	cp $01                                           ; $607f: $fe $01
	jr z, jr_009_6089                                ; $6081: $28 $06

	cp $0a                                           ; $6083: $fe $0a
	jr z, jr_009_608d                                ; $6085: $28 $06

	jr jr_009_6093                                   ; $6087: $18 $0a

jr_009_6089:
	ld a, $06                                        ; $6089: $3e $06
	jr jr_009_608f                                   ; $608b: $18 $02

jr_009_608d:
	ld a, $04                                        ; $608d: $3e $04

jr_009_608f:
	ld l, $0a                                        ; $608f: $2e $0a
	ld [hl], a                                       ; $6091: $77
	ret                                              ; $6092: $c9


jr_009_6093:
	ld a, [$d8ae]                                    ; $6093: $fa $ae $d8
	or a                                             ; $6096: $b7
	jp nz, Jump_009_74e5                             ; $6097: $c2 $e5 $74

	ld l, $30                                        ; $609a: $2e $30
	xor a                                            ; $609c: $af
	ld [hl+], a                                      ; $609d: $22
	ld [hl], a                                       ; $609e: $77
	ld de, $906a                                     ; $609f: $11 $6a $90
	ld bc, $58b8                                     ; $60a2: $01 $b8 $58
	ld a, $0c                                        ; $60a5: $3e $0c
	call $3d99                                       ; $60a7: $cd $99 $3d
	call $3d71                                       ; $60aa: $cd $71 $3d
	call $3d53                                       ; $60ad: $cd $53 $3d
	ret                                              ; $60b0: $c9


	jp Jump_009_7431                                 ; $60b1: $c3 $31 $74


	jp Jump_009_743e                                 ; $60b4: $c3 $3e $74


	jp Jump_009_7468                                 ; $60b7: $c3 $68 $74


	ld [hl], $07                                     ; $60ba: $36 $07
	ld l, $30                                        ; $60bc: $2e $30
	ld [hl], $c8                                     ; $60be: $36 $c8
	call $3da5                                       ; $60c0: $cd $a5 $3d
	ld bc, $5048                                     ; $60c3: $01 $48 $50
	ld a, $30                                        ; $60c6: $3e $30
	call $3bfc                                       ; $60c8: $cd $fc $3b
	call $16d0                                       ; $60cb: $cd $d0 $16
	ld hl, $7499                                     ; $60ce: $21 $99 $74
	jp $3c78                                         ; $60d1: $c3 $78 $3c


	call $16d0                                       ; $60d4: $cd $d0 $16
	ld l, $07                                        ; $60d7: $2e $07
	dec [hl]                                         ; $60d9: $35
	ld a, [hl]                                       ; $60da: $7e
	cp $7c                                           ; $60db: $fe $7c
	ret nc                                           ; $60dd: $d0

	ld [hl], $7c                                     ; $60de: $36 $7c
	ld l, $0a                                        ; $60e0: $2e $0a
	ld [hl], $08                                     ; $60e2: $36 $08
	ld l, $30                                        ; $60e4: $2e $30
	ld [hl], $1e                                     ; $60e6: $36 $1e
	call $3da5                                       ; $60e8: $cd $a5 $3d
	ld bc, $5978                                     ; $60eb: $01 $78 $59
	ld a, $30                                        ; $60ee: $3e $30
	call $3d9f                                       ; $60f0: $cd $9f $3d
	ld bc, $0008                                     ; $60f3: $01 $08 $00
	call $3cd9                                       ; $60f6: $cd $d9 $3c
	ret                                              ; $60f9: $c9


	ld l, $30                                        ; $60fa: $2e $30
	dec [hl]                                         ; $60fc: $35
	ret nz                                           ; $60fd: $c0

	ld [hl], $5a                                     ; $60fe: $36 $5a
	ld l, $0a                                        ; $6100: $2e $0a
	ld [hl], $09                                     ; $6102: $36 $09
	call $3da5                                       ; $6104: $cd $a5 $3d
	ld bc, $504a                                     ; $6107: $01 $4a $50
	ld a, $30                                        ; $610a: $3e $30
	call $3bfc                                       ; $610c: $cd $fc $3b
	call $16d0                                       ; $610f: $cd $d0 $16
	ret                                              ; $6112: $c9


	call $16d0                                       ; $6113: $cd $d0 $16
	ld l, $30                                        ; $6116: $2e $30
	dec [hl]                                         ; $6118: $35
	ret nz                                           ; $6119: $c0

	ld [hl], $1e                                     ; $611a: $36 $1e
	ld l, $0a                                        ; $611c: $2e $0a
	ld [hl], $0a                                     ; $611e: $36 $0a
	ret                                              ; $6120: $c9


	ld l, $30                                        ; $6121: $2e $30
	dec [hl]                                         ; $6123: $35
	ret nz                                           ; $6124: $c0

	ld [hl], $b4                                     ; $6125: $36 $b4
	ld l, $0a                                        ; $6127: $2e $0a
	ld [hl], $0b                                     ; $6129: $36 $0b
	ld a, [$d844]                                    ; $612b: $fa $44 $d8
	and $03                                          ; $612e: $e6 $03
	jr nz, jr_009_6139                               ; $6130: $20 $07

	ld bc, $504b                                     ; $6132: $01 $4b $50
	ld a, $0b                                        ; $6135: $3e $0b
	jr jr_009_613e                                   ; $6137: $18 $05

jr_009_6139:
	ld bc, $504c                                     ; $6139: $01 $4c $50
	ld a, $09                                        ; $613c: $3e $09

jr_009_613e:
	push bc                                          ; $613e: $c5
	ld b, $00                                        ; $613f: $06 $00
	ld c, a                                          ; $6141: $4f
	call $3cd9                                       ; $6142: $cd $d9 $3c
	pop bc                                           ; $6145: $c1
	call $3da5                                       ; $6146: $cd $a5 $3d
	ld a, $30                                        ; $6149: $3e $30
	call $3bfc                                       ; $614b: $cd $fc $3b
	call $16d0                                       ; $614e: $cd $d0 $16
	ret                                              ; $6151: $c9


	call $3ce2                                       ; $6152: $cd $e2 $3c
	jr nz, jr_009_6166                               ; $6155: $20 $0f

	ld l, $0a                                        ; $6157: $2e $0a
	ld [hl], $0c                                     ; $6159: $36 $0c
	call $3da5                                       ; $615b: $cd $a5 $3d
	ld bc, $5049                                     ; $615e: $01 $49 $50
	ld a, $30                                        ; $6161: $3e $30
	call $3bfc                                       ; $6163: $cd $fc $3b

jr_009_6166:
	call $16d0                                       ; $6166: $cd $d0 $16
	ret                                              ; $6169: $c9


	ld l, $07                                        ; $616a: $2e $07
	inc [hl]                                         ; $616c: $34
	ld a, [hl]                                       ; $616d: $7e
	cp $90                                           ; $616e: $fe $90
	jr c, jr_009_6178                                ; $6170: $38 $06

	ld [hl], $90                                     ; $6172: $36 $90
	ld l, $0a                                        ; $6174: $2e $0a
	ld [hl], $03                                     ; $6176: $36 $03

jr_009_6178:
	call $16d0                                       ; $6178: $cd $d0 $16
	ret                                              ; $617b: $c9


	ld a, [hl]                                       ; $617c: $7e
	rst JumpTable                                          ; $617d: $c7
	sbc b                                            ; $617e: $98
	ld h, c                                          ; $617f: $61
	sbc e                                            ; $6180: $9b
	ld h, c                                          ; $6181: $61
	sbc [hl]                                         ; $6182: $9e
	ld h, c                                          ; $6183: $61
	db $ed                                           ; $6184: $ed
	ld h, c                                          ; $6185: $61
	ldh a, [$61]                                     ; $6186: $f0 $61
	di                                               ; $6188: $f3
	ld h, c                                          ; $6189: $61
	or $61                                           ; $618a: $f6 $61
	dec c                                            ; $618c: $0d
	ld h, d                                          ; $618d: $62
	ld a, $62                                        ; $618e: $3e $62
	ld d, c                                          ; $6190: $51
	ld h, d                                          ; $6191: $62
	ld e, a                                          ; $6192: $5f
	ld h, d                                          ; $6193: $62
	add c                                            ; $6194: $81
	ld h, d                                          ; $6195: $62
	xor d                                            ; $6196: $aa
	ld h, d                                          ; $6197: $62
	jp Jump_009_7408                                 ; $6198: $c3 $08 $74


	jp Jump_009_741e                                 ; $619b: $c3 $1e $74


	ld a, [$d884]                                    ; $619e: $fa $84 $d8
	cp $01                                           ; $61a1: $fe $01
	jr z, jr_009_61ab                                ; $61a3: $28 $06

	cp $0a                                           ; $61a5: $fe $0a
	jr z, jr_009_61c4                                ; $61a7: $28 $1b

	jr jr_009_61ca                                   ; $61a9: $18 $1f

jr_009_61ab:
	ld a, [$d844]                                    ; $61ab: $fa $44 $d8
	and $03                                          ; $61ae: $e6 $03
	cp $01                                           ; $61b0: $fe $01
	jr c, jr_009_61b8                                ; $61b2: $38 $04

	jr z, jr_009_61bc                                ; $61b4: $28 $06

	jr jr_009_61c0                                   ; $61b6: $18 $08

jr_009_61b8:
	ld a, $06                                        ; $61b8: $3e $06
	jr jr_009_61c6                                   ; $61ba: $18 $0a

jr_009_61bc:
	ld a, $0a                                        ; $61bc: $3e $0a
	jr jr_009_61c6                                   ; $61be: $18 $06

jr_009_61c0:
	ld a, $0a                                        ; $61c0: $3e $0a
	jr jr_009_61c6                                   ; $61c2: $18 $02

jr_009_61c4:
	ld a, $04                                        ; $61c4: $3e $04

jr_009_61c6:
	ld l, $0a                                        ; $61c6: $2e $0a
	ld [hl], a                                       ; $61c8: $77
	ret                                              ; $61c9: $c9


jr_009_61ca:
	ld a, [$d8ab]                                    ; $61ca: $fa $ab $d8
	or a                                             ; $61cd: $b7
	ret nz                                           ; $61ce: $c0

	ld a, [$d8ae]                                    ; $61cf: $fa $ae $d8
	or a                                             ; $61d2: $b7
	jp nz, Jump_009_74e5                             ; $61d3: $c2 $e5 $74

	ld l, $30                                        ; $61d6: $2e $30
	xor a                                            ; $61d8: $af
	ld [hl+], a                                      ; $61d9: $22
	ld [hl], a                                       ; $61da: $77
	ld de, $906a                                     ; $61db: $11 $6a $90
	ld bc, $5598                                     ; $61de: $01 $98 $55
	ld a, $0c                                        ; $61e1: $3e $0c
	call $3d99                                       ; $61e3: $cd $99 $3d
	call $3d71                                       ; $61e6: $cd $71 $3d
	call $3d53                                       ; $61e9: $cd $53 $3d
	ret                                              ; $61ec: $c9


	jp Jump_009_7431                                 ; $61ed: $c3 $31 $74


	jp Jump_009_743e                                 ; $61f0: $c3 $3e $74


	jp Jump_009_7468                                 ; $61f3: $c3 $68 $74


	ld [hl], $07                                     ; $61f6: $36 $07
	call $3da5                                       ; $61f8: $cd $a5 $3d
	ld bc, $503b                                     ; $61fb: $01 $3b $50
	ld a, $30                                        ; $61fe: $3e $30
	call $3bfc                                       ; $6200: $cd $fc $3b
	ld l, $30                                        ; $6203: $2e $30
	ld [hl], $64                                     ; $6205: $36 $64
	ld hl, $7453                                     ; $6207: $21 $53 $74
	jp $3c78                                         ; $620a: $c3 $78 $3c


	ld l, $30                                        ; $620d: $2e $30
	ld a, [hl]                                       ; $620f: $7e
	and $0f                                          ; $6210: $e6 $0f
	jr nz, jr_009_6219                               ; $6212: $20 $05

	ld a, $38                                        ; $6214: $3e $38
	call $1e2e                                       ; $6216: $cd $2e $1e

jr_009_6219:
	dec [hl]                                         ; $6219: $35
	jr nz, jr_009_623a                               ; $621a: $20 $1e

	ld l, $0a                                        ; $621c: $2e $0a
	ld [hl], $08                                     ; $621e: $36 $08
	call $3da5                                       ; $6220: $cd $a5 $3d
	ld bc, $503c                                     ; $6223: $01 $3c $50
	ld a, $30                                        ; $6226: $3e $30
	call $3bfc                                       ; $6228: $cd $fc $3b
	ld de, $0080                                     ; $622b: $11 $80 $00
	ld bc, $0000                                     ; $622e: $01 $00 $00
	call $3d32                                       ; $6231: $cd $32 $3d
	ld bc, $0012                                     ; $6234: $01 $12 $00
	call $3cd9                                       ; $6237: $cd $d9 $3c

jr_009_623a:
	call $16d0                                       ; $623a: $cd $d0 $16
	ret                                              ; $623d: $c9


	call $16d0                                       ; $623e: $cd $d0 $16
	call $3d1b                                       ; $6241: $cd $1b $3d
	ld l, $07                                        ; $6244: $2e $07
	ld a, [hl]                                       ; $6246: $7e
	cp $b8                                           ; $6247: $fe $b8
	ret c                                            ; $6249: $d8

	ld [hl], $b8                                     ; $624a: $36 $b8
	ld l, $0a                                        ; $624c: $2e $0a
	ld [hl], $09                                     ; $624e: $36 $09
	ret                                              ; $6250: $c9


	call $3ce2                                       ; $6251: $cd $e2 $3c
	ret nz                                           ; $6254: $c0

	ld l, $0a                                        ; $6255: $2e $0a
	ld [hl], $03                                     ; $6257: $36 $03
	ld a, $01                                        ; $6259: $3e $01
	ld [$d8ab], a                                    ; $625b: $ea $ab $d8
	ret                                              ; $625e: $c9


	ld [hl], $0b                                     ; $625f: $36 $0b
	ld de, $b86a                                     ; $6261: $11 $6a $b8
	call $3bf4                                       ; $6264: $cd $f4 $3b
	call $3da5                                       ; $6267: $cd $a5 $3d
	ld bc, $503d                                     ; $626a: $01 $3d $50
	ld a, $30                                        ; $626d: $3e $30
	call $3bfc                                       ; $626f: $cd $fc $3b
	ld de, $ff80                                     ; $6272: $11 $80 $ff
	ld bc, $0000                                     ; $6275: $01 $00 $00
	call $3d32                                       ; $6278: $cd $32 $3d
	ld hl, $7453                                     ; $627b: $21 $53 $74
	jp $3c78                                         ; $627e: $c3 $78 $3c


	call $16d0                                       ; $6281: $cd $d0 $16
	call $3d1b                                       ; $6284: $cd $1b $3d
	ld l, $07                                        ; $6287: $2e $07
	ld a, [hl]                                       ; $6289: $7e
	cp $90                                           ; $628a: $fe $90
	ret nc                                           ; $628c: $d0

	ld [hl], $90                                     ; $628d: $36 $90
	ld a, [$d844]                                    ; $628f: $fa $44 $d8
	and $03                                          ; $6292: $e6 $03
	cp $02                                           ; $6294: $fe $02
	jr z, jr_009_62a0                                ; $6296: $28 $08

	xor a                                            ; $6298: $af
	ld [$d8ab], a                                    ; $6299: $ea $ab $d8
	ld a, $03                                        ; $629c: $3e $03
	jr jr_009_62a6                                   ; $629e: $18 $06

jr_009_62a0:
	ld l, $30                                        ; $62a0: $2e $30
	ld [hl], $14                                     ; $62a2: $36 $14
	ld a, $0c                                        ; $62a4: $3e $0c

jr_009_62a6:
	ld l, $0a                                        ; $62a6: $2e $0a
	ld [hl], a                                       ; $62a8: $77
	ret                                              ; $62a9: $c9


	ld l, $30                                        ; $62aa: $2e $30
	dec [hl]                                         ; $62ac: $35
	ret nz                                           ; $62ad: $c0

	ld l, $0a                                        ; $62ae: $2e $0a
	ld [hl], $08                                     ; $62b0: $36 $08
	call $3da5                                       ; $62b2: $cd $a5 $3d
	ld bc, $503c                                     ; $62b5: $01 $3c $50
	ld a, $30                                        ; $62b8: $3e $30
	call $3bfc                                       ; $62ba: $cd $fc $3b
	ld de, $0080                                     ; $62bd: $11 $80 $00
	ld bc, $0000                                     ; $62c0: $01 $00 $00
	call $3d32                                       ; $62c3: $cd $32 $3d
	ld bc, $0013                                     ; $62c6: $01 $13 $00
	call $3cd9                                       ; $62c9: $cd $d9 $3c
	ret                                              ; $62cc: $c9


	ld a, [hl]                                       ; $62cd: $7e
	rst JumpTable                                          ; $62ce: $c7
	db $ed                                           ; $62cf: $ed
	ld h, d                                          ; $62d0: $62
	ldh a, [$62]                                     ; $62d1: $f0 $62
	di                                               ; $62d3: $f3
	ld h, d                                          ; $62d4: $62
	dec [hl]                                         ; $62d5: $35
	ld h, e                                          ; $62d6: $63
	jr c, @+$65                                      ; $62d7: $38 $63

	dec sp                                           ; $62d9: $3b
	ld h, e                                          ; $62da: $63
	ld a, $63                                        ; $62db: $3e $63
	ld e, a                                          ; $62dd: $5f
	ld h, e                                          ; $62de: $63
	adc h                                            ; $62df: $8c
	ld h, e                                          ; $62e0: $63
	sbc a                                            ; $62e1: $9f
	ld h, e                                          ; $62e2: $63
	xor l                                            ; $62e3: $ad
	ld h, e                                          ; $62e4: $63
	call nz, $e863                                   ; $62e5: $c4 $63 $e8
	ld h, e                                          ; $62e8: $63
	add hl, de                                       ; $62e9: $19
	ld h, h                                          ; $62ea: $64
	ld sp, $c364                                     ; $62eb: $31 $64 $c3
	ld [$c374], sp                                   ; $62ee: $08 $74 $c3
	ld e, $74                                        ; $62f1: $1e $74
	ld a, [$d884]                                    ; $62f3: $fa $84 $d8
	cp $01                                           ; $62f6: $fe $01
	jr z, jr_009_6300                                ; $62f8: $28 $06

	cp $0a                                           ; $62fa: $fe $0a
	jr z, jr_009_630d                                ; $62fc: $28 $0f

	jr jr_009_6313                                   ; $62fe: $18 $13

jr_009_6300:
	ld a, [$d844]                                    ; $6300: $fa $44 $d8
	and $03                                          ; $6303: $e6 $03
	ld a, $06                                        ; $6305: $3e $06
	jr z, jr_009_630f                                ; $6307: $28 $06

	ld a, $09                                        ; $6309: $3e $09
	jr jr_009_630f                                   ; $630b: $18 $02

jr_009_630d:
	ld a, $04                                        ; $630d: $3e $04

jr_009_630f:
	ld l, $0a                                        ; $630f: $2e $0a
	ld [hl], a                                       ; $6311: $77
	ret                                              ; $6312: $c9


jr_009_6313:
	ld a, [$d8ae]                                    ; $6313: $fa $ae $d8
	or a                                             ; $6316: $b7
	jr z, jr_009_631e                                ; $6317: $28 $05

	rst FarCall                                          ; $6319: $f7
	push hl                                          ; $631a: $e5
	ld [hl], h                                       ; $631b: $74
	add hl, bc                                       ; $631c: $09
	ret                                              ; $631d: $c9


jr_009_631e:
	ld l, $30                                        ; $631e: $2e $30
	xor a                                            ; $6320: $af
	ld [hl+], a                                      ; $6321: $22
	ld [hl], a                                       ; $6322: $77
	ld de, $906a                                     ; $6323: $11 $6a $90
	ld bc, $5ab0                                     ; $6326: $01 $b0 $5a
	ld a, $0c                                        ; $6329: $3e $0c
	call $3d99                                       ; $632b: $cd $99 $3d
	call $3d71                                       ; $632e: $cd $71 $3d
	call $3d53                                       ; $6331: $cd $53 $3d
	ret                                              ; $6334: $c9


	jp Jump_009_7431                                 ; $6335: $c3 $31 $74


	jp Jump_009_743e                                 ; $6338: $c3 $3e $74


	jp Jump_009_7468                                 ; $633b: $c3 $68 $74


	ld [hl], $07                                     ; $633e: $36 $07
	call $3da5                                       ; $6340: $cd $a5 $3d
	ld bc, $5050                                     ; $6343: $01 $50 $50
	ld a, $30                                        ; $6346: $3e $30
	call $3bfc                                       ; $6348: $cd $fc $3b
	ld de, $ff80                                     ; $634b: $11 $80 $ff
	ld bc, $0000                                     ; $634e: $01 $00 $00
	call $3d32                                       ; $6351: $cd $32 $3d
	ld a, $38                                        ; $6354: $3e $38
	call $1e2e                                       ; $6356: $cd $2e $1e
	ld hl, $74ae                                     ; $6359: $21 $ae $74
	jp $3c78                                         ; $635c: $c3 $78 $3c


	call $3d1b                                       ; $635f: $cd $1b $3d
	ld l, $07                                        ; $6362: $2e $07
	ld a, [hl]                                       ; $6364: $7e
	cp $7c                                           ; $6365: $fe $7c
	jr nc, jr_009_6388                               ; $6367: $30 $1f

	ld [hl], $7c                                     ; $6369: $36 $7c
	ld l, $0a                                        ; $636b: $2e $0a
	ld [hl], $08                                     ; $636d: $36 $08
	call $3da5                                       ; $636f: $cd $a5 $3d
	ld bc, $5051                                     ; $6372: $01 $51 $50
	ld a, $30                                        ; $6375: $3e $30
	call $3bfc                                       ; $6377: $cd $fc $3b
	ld de, $0080                                     ; $637a: $11 $80 $00
	ld bc, $0000                                     ; $637d: $01 $00 $00
	call $3d32                                       ; $6380: $cd $32 $3d
	ld a, $38                                        ; $6383: $3e $38
	call $1e2e                                       ; $6385: $cd $2e $1e

jr_009_6388:
	call $16d0                                       ; $6388: $cd $d0 $16
	ret                                              ; $638b: $c9


	call $16d0                                       ; $638c: $cd $d0 $16
	call $3d1b                                       ; $638f: $cd $1b $3d
	ld l, $07                                        ; $6392: $2e $07
	ld a, [hl]                                       ; $6394: $7e
	cp $90                                           ; $6395: $fe $90
	ret c                                            ; $6397: $d8

	ld [hl], $90                                     ; $6398: $36 $90
	ld l, $0a                                        ; $639a: $2e $0a
	ld [hl], $03                                     ; $639c: $36 $03
	ret                                              ; $639e: $c9


	ld [hl], $0a                                     ; $639f: $36 $0a
	ld bc, $001c                                     ; $63a1: $01 $1c $00
	call $3cd9                                       ; $63a4: $cd $d9 $3c
	ld hl, $74b5                                     ; $63a7: $21 $b5 $74
	jp $3c78                                         ; $63aa: $c3 $78 $3c


	call $3ce2                                       ; $63ad: $cd $e2 $3c
	ret nz                                           ; $63b0: $c0

	ld l, $0a                                        ; $63b1: $2e $0a
	ld [hl], $0b                                     ; $63b3: $36 $0b
	call $3da5                                       ; $63b5: $cd $a5 $3d
	ld bc, $5052                                     ; $63b8: $01 $52 $50
	ld a, $40                                        ; $63bb: $3e $40
	call $3bfc                                       ; $63bd: $cd $fc $3b
	call $16d0                                       ; $63c0: $cd $d0 $16
	ret                                              ; $63c3: $c9


	call $16d0                                       ; $63c4: $cd $d0 $16
	ld l, $0c                                        ; $63c7: $2e $0c
	ld a, [hl]                                       ; $63c9: $7e
	or a                                             ; $63ca: $b7
	ret nz                                           ; $63cb: $c0

	ld l, $0a                                        ; $63cc: $2e $0a
	ld [hl], $0c                                     ; $63ce: $36 $0c
	ld l, $30                                        ; $63d0: $2e $30
	ld [hl], $5a                                     ; $63d2: $36 $5a
	call $3da5                                       ; $63d4: $cd $a5 $3d
	ld bc, $5053                                     ; $63d7: $01 $53 $50
	ld a, $40                                        ; $63da: $3e $40
	call $3bfc                                       ; $63dc: $cd $fc $3b
	call $16d0                                       ; $63df: $cd $d0 $16
	ld a, $53                                        ; $63e2: $3e $53
	call $1e2e                                       ; $63e4: $cd $2e $1e
	ret                                              ; $63e7: $c9


	ld l, $30                                        ; $63e8: $2e $30
	dec [hl]                                         ; $63ea: $35
	jr nz, jr_009_6415                               ; $63eb: $20 $28

	ld l, $0a                                        ; $63ed: $2e $0a
	ld [hl], $0d                                     ; $63ef: $36 $0d
	ld bc, $0027                                     ; $63f1: $01 $27 $00
	call $3cd9                                       ; $63f4: $cd $d9 $3c
	push hl                                          ; $63f7: $e5
	ld hl, $d859                                     ; $63f8: $21 $59 $d8
	rst GetHLinHL                                          ; $63fb: $cf
	ld d, h                                          ; $63fc: $54
	ld e, l                                          ; $63fd: $5d
	ld hl, $d84d                                     ; $63fe: $21 $4d $d8
	rst GetHLinHL                                          ; $6401: $cf
	call wCpHLtoDE                                       ; $6402: $cd $80 $ce
	jr z, jr_009_6414                                ; $6405: $28 $0d

	inc hl                                           ; $6407: $23
	ld a, l                                          ; $6408: $7d
	ld [$d84d], a                                    ; $6409: $ea $4d $d8
	ld a, h                                          ; $640c: $7c
	ld [$d84e], a                                    ; $640d: $ea $4e $d8
	rst FarCall                                          ; $6410: $f7
	cpl                                              ; $6411: $2f
	ld b, d                                          ; $6412: $42
	add hl, bc                                       ; $6413: $09

jr_009_6414:
	pop hl                                           ; $6414: $e1

jr_009_6415:
	call $16d0                                       ; $6415: $cd $d0 $16
	ret                                              ; $6418: $c9


	call $3ce2                                       ; $6419: $cd $e2 $3c
	jr nz, jr_009_642d                               ; $641c: $20 $0f

	ld l, $0a                                        ; $641e: $2e $0a
	ld [hl], $0e                                     ; $6420: $36 $0e
	call $3da5                                       ; $6422: $cd $a5 $3d
	ld bc, $5054                                     ; $6425: $01 $54 $50
	ld a, $40                                        ; $6428: $3e $40
	call $3bfc                                       ; $642a: $cd $fc $3b

jr_009_642d:
	call $16d0                                       ; $642d: $cd $d0 $16
	ret                                              ; $6430: $c9


	call $16d0                                       ; $6431: $cd $d0 $16
	ld l, $0c                                        ; $6434: $2e $0c
	ld a, [hl]                                       ; $6436: $7e
	or a                                             ; $6437: $b7
	ret nz                                           ; $6438: $c0

	ld l, $0a                                        ; $6439: $2e $0a
	ld [hl], $03                                     ; $643b: $36 $03
	ld a, $01                                        ; $643d: $3e $01
	ld [$d8b8], a                                    ; $643f: $ea $b8 $d8
	ret                                              ; $6442: $c9


	ld a, [hl]                                       ; $6443: $7e
	rst JumpTable                                          ; $6444: $c7
	ld e, l                                          ; $6445: $5d
	ld h, h                                          ; $6446: $64
	ld h, b                                          ; $6447: $60
	ld h, h                                          ; $6448: $64
	ld h, e                                          ; $6449: $63
	ld h, h                                          ; $644a: $64
	sbc h                                            ; $644b: $9c
	ld h, h                                          ; $644c: $64
	sbc a                                            ; $644d: $9f
	ld h, h                                          ; $644e: $64
	and d                                            ; $644f: $a2
	ld h, h                                          ; $6450: $64
	and l                                            ; $6451: $a5
	ld h, h                                          ; $6452: $64
	cp e                                             ; $6453: $bb
	ld h, h                                          ; $6454: $64
	db $db                                           ; $6455: $db
	ld h, h                                          ; $6456: $64
	ld d, $65                                        ; $6457: $16 $65
	ld b, e                                          ; $6459: $43
	ld h, l                                          ; $645a: $65
	ld e, d                                          ; $645b: $5a
	ld h, l                                          ; $645c: $65
	jp Jump_009_7408                                 ; $645d: $c3 $08 $74


	jp Jump_009_741e                                 ; $6460: $c3 $1e $74


	ld a, [$d884]                                    ; $6463: $fa $84 $d8
	cp $01                                           ; $6466: $fe $01
	jr z, jr_009_6470                                ; $6468: $28 $06

	cp $0a                                           ; $646a: $fe $0a
	jr z, jr_009_6474                                ; $646c: $28 $06

	jr jr_009_647a                                   ; $646e: $18 $0a

jr_009_6470:
	ld a, $06                                        ; $6470: $3e $06
	jr jr_009_6476                                   ; $6472: $18 $02

jr_009_6474:
	ld a, $04                                        ; $6474: $3e $04

jr_009_6476:
	ld l, $0a                                        ; $6476: $2e $0a
	ld [hl], a                                       ; $6478: $77
	ret                                              ; $6479: $c9


jr_009_647a:
	ld a, [$d8ae]                                    ; $647a: $fa $ae $d8
	or a                                             ; $647d: $b7
	jr z, jr_009_6485                                ; $647e: $28 $05

	rst FarCall                                          ; $6480: $f7
	push hl                                          ; $6481: $e5
	ld [hl], h                                       ; $6482: $74
	add hl, bc                                       ; $6483: $09
	ret                                              ; $6484: $c9


jr_009_6485:
	ld l, $30                                        ; $6485: $2e $30
	xor a                                            ; $6487: $af
	ld [hl+], a                                      ; $6488: $22
	ld [hl], a                                       ; $6489: $77
	ld de, $906a                                     ; $648a: $11 $6a $90
	ld bc, $5c20                                     ; $648d: $01 $20 $5c
	ld a, $0c                                        ; $6490: $3e $0c
	call $3d99                                       ; $6492: $cd $99 $3d
	call $3d71                                       ; $6495: $cd $71 $3d
	call $3d53                                       ; $6498: $cd $53 $3d
	ret                                              ; $649b: $c9


	jp Jump_009_7431                                 ; $649c: $c3 $31 $74


	jp Jump_009_743e                                 ; $649f: $c3 $3e $74


	jp Jump_009_7468                                 ; $64a2: $c3 $68 $74


	ld [hl], $07                                     ; $64a5: $36 $07
	call $3da5                                       ; $64a7: $cd $a5 $3d
	ld bc, $5056                                     ; $64aa: $01 $56 $50
	ld a, $30                                        ; $64ad: $3e $30
	call $3bfc                                       ; $64af: $cd $fc $3b
	call $16d0                                       ; $64b2: $cd $d0 $16
	ld hl, $74cf                                     ; $64b5: $21 $cf $74
	jp $3c78                                         ; $64b8: $c3 $78 $3c


	call $16d0                                       ; $64bb: $cd $d0 $16
	ld l, $07                                        ; $64be: $2e $07
	dec [hl]                                         ; $64c0: $35
	ld a, [hl]                                       ; $64c1: $7e
	cp $7c                                           ; $64c2: $fe $7c
	ret nc                                           ; $64c4: $d0

	ld [hl], $7c                                     ; $64c5: $36 $7c
	ld l, $0a                                        ; $64c7: $2e $0a
	ld [hl], $08                                     ; $64c9: $36 $08
	ld l, $30                                        ; $64cb: $2e $30
	ld [hl], $1e                                     ; $64cd: $36 $1e
	call $3da5                                       ; $64cf: $cd $a5 $3d
	ld bc, $5c38                                     ; $64d2: $01 $38 $5c
	ld a, $30                                        ; $64d5: $3e $30
	call $3d9f                                       ; $64d7: $cd $9f $3d
	ret                                              ; $64da: $c9


	ld l, $30                                        ; $64db: $2e $30
	dec [hl]                                         ; $64dd: $35
	ret nz                                           ; $64de: $c0

	ld l, $0a                                        ; $64df: $2e $0a
	ld [hl], $09                                     ; $64e1: $36 $09
	call $3da5                                       ; $64e3: $cd $a5 $3d
	ld a, [$d844]                                    ; $64e6: $fa $44 $d8
	and $03                                          ; $64e9: $e6 $03
	push af                                          ; $64eb: $f5
	ld bc, $5058                                     ; $64ec: $01 $58 $50
	jr z, jr_009_64f4                                ; $64ef: $28 $03

	ld bc, $5059                                     ; $64f1: $01 $59 $50

jr_009_64f4:
	ld a, $3e                                        ; $64f4: $3e $3e
	call $3bfc                                       ; $64f6: $cd $fc $3b
	call $16d0                                       ; $64f9: $cd $d0 $16
	pop af                                           ; $64fc: $f1
	jr nz, jr_009_6508                               ; $64fd: $20 $09

	ld a, $03                                        ; $64ff: $3e $03
	call Call_000_12fc                                       ; $6501: $cd $fc $12
	add $28                                          ; $6504: $c6 $28
	jr jr_009_650f                                   ; $6506: $18 $07

jr_009_6508:
	ld a, $04                                        ; $6508: $3e $04
	call Call_000_12fc                                       ; $650a: $cd $fc $12
	add $2b                                          ; $650d: $c6 $2b

jr_009_650f:
	ld b, $00                                        ; $650f: $06 $00
	ld c, a                                          ; $6511: $4f
	call $3cd9                                       ; $6512: $cd $d9 $3c
	ret                                              ; $6515: $c9


	call $3ce2                                       ; $6516: $cd $e2 $3c
	jr nz, jr_009_653f                               ; $6519: $20 $24

	ld a, [$d844]                                    ; $651b: $fa $44 $d8
	and $03                                          ; $651e: $e6 $03
	jr z, jr_009_6547                                ; $6520: $28 $25

	ld l, $0a                                        ; $6522: $2e $0a
	ld [hl], $0a                                     ; $6524: $36 $0a
	call $3da5                                       ; $6526: $cd $a5 $3d
	ld bc, $5cc8                                     ; $6529: $01 $c8 $5c
	ld a, $3e                                        ; $652c: $3e $3e
	call $3d9f                                       ; $652e: $cd $9f $3d
	call Call_009_4503                               ; $6531: $cd $03 $45
	ld bc, $002f                                     ; $6534: $01 $2f $00
	jr z, jr_009_653c                                ; $6537: $28 $03

	ld bc, $0032                                     ; $6539: $01 $32 $00

jr_009_653c:
	call $3cd9                                       ; $653c: $cd $d9 $3c

jr_009_653f:
	call $16d0                                       ; $653f: $cd $d0 $16
	ret                                              ; $6542: $c9


	call $3ce2                                       ; $6543: $cd $e2 $3c
	ret nz                                           ; $6546: $c0

jr_009_6547:
	ld l, $0a                                        ; $6547: $2e $0a
	ld [hl], $0b                                     ; $6549: $36 $0b
	call $3da5                                       ; $654b: $cd $a5 $3d
	ld bc, $5057                                     ; $654e: $01 $57 $50
	ld a, $30                                        ; $6551: $3e $30
	call $3bfc                                       ; $6553: $cd $fc $3b
	call $16d0                                       ; $6556: $cd $d0 $16
	ret                                              ; $6559: $c9


	call $16d0                                       ; $655a: $cd $d0 $16
	ld l, $07                                        ; $655d: $2e $07
	inc [hl]                                         ; $655f: $34
	ld a, [hl]                                       ; $6560: $7e
	cp $90                                           ; $6561: $fe $90
	ret c                                            ; $6563: $d8

	ld [hl], $90                                     ; $6564: $36 $90
	ld l, $0a                                        ; $6566: $2e $0a
	ld [hl], $03                                     ; $6568: $36 $03
	ret                                              ; $656a: $c9


	rst JumpTable                                          ; $656b: $c7
	ld [hl], b                                       ; $656c: $70
	ld h, l                                          ; $656d: $65
	sub e                                            ; $656e: $93
	ld h, l                                          ; $656f: $65
	inc [hl]                                         ; $6570: $34
	call $3da5                                       ; $6571: $cd $a5 $3d
	ld a, $10                                        ; $6574: $3e $10
	call Call_000_12fc                                       ; $6576: $cd $fc $12
	add $84                                          ; $6579: $c6 $84
	ld d, a                                          ; $657b: $57
	ld a, $18                                        ; $657c: $3e $18
	call Call_000_12fc                                       ; $657e: $cd $fc $12
	add $2c                                          ; $6581: $c6 $2c
	ld e, a                                          ; $6583: $5f
	call $3bf4                                       ; $6584: $cd $f4 $3b
	ld bc, $5043                                     ; $6587: $01 $43 $50
	ld a, $30                                        ; $658a: $3e $30
	call $3bfc                                       ; $658c: $cd $fc $3b
	call $3d53                                       ; $658f: $cd $53 $3d
	ret                                              ; $6592: $c9


	ld l, $05                                        ; $6593: $2e $05
	inc [hl]                                         ; $6595: $34
	ld a, [hl]                                       ; $6596: $7e
	cp $58                                           ; $6597: $fe $58
	jr c, jr_009_659f                                ; $6599: $38 $04

	ld l, $0a                                        ; $659b: $2e $0a
	ld [hl], $00                                     ; $659d: $36 $00

jr_009_659f:
	call $16d0                                       ; $659f: $cd $d0 $16
	ret                                              ; $65a2: $c9


	rst JumpTable                                          ; $65a3: $c7
	xor b                                            ; $65a4: $a8
	ld h, l                                          ; $65a5: $65
	bit 4, l                                         ; $65a6: $cb $65
	inc [hl]                                         ; $65a8: $34
	call $3da5                                       ; $65a9: $cd $a5 $3d
	ld a, $10                                        ; $65ac: $3e $10
	call Call_000_12fc                                       ; $65ae: $cd $fc $12
	add $84                                          ; $65b1: $c6 $84
	ld d, a                                          ; $65b3: $57
	ld a, $0c                                        ; $65b4: $3e $0c
	call Call_000_12fc                                       ; $65b6: $cd $fc $12
	add $2c                                          ; $65b9: $c6 $2c
	ld e, a                                          ; $65bb: $5f
	call $3bf4                                       ; $65bc: $cd $f4 $3b
	ld bc, $5044                                     ; $65bf: $01 $44 $50
	ld a, $30                                        ; $65c2: $3e $30
	call $3bfc                                       ; $65c4: $cd $fc $3b
	call $3d53                                       ; $65c7: $cd $53 $3d
	ret                                              ; $65ca: $c9


	ld l, $05                                        ; $65cb: $2e $05
	inc [hl]                                         ; $65cd: $34
	ld a, [hl]                                       ; $65ce: $7e
	cp $58                                           ; $65cf: $fe $58
	jr c, jr_009_65d7                                ; $65d1: $38 $04

	ld l, $0a                                        ; $65d3: $2e $0a
	ld [hl], $00                                     ; $65d5: $36 $00

jr_009_65d7:
	call $16d0                                       ; $65d7: $cd $d0 $16
	ret                                              ; $65da: $c9


	rst JumpTable                                          ; $65db: $c7
	ldh [$65], a                                     ; $65dc: $e0 $65
	ld a, [$3465]                                    ; $65de: $fa $65 $34
	call Call_009_459c                               ; $65e1: $cd $9c $45
	ld a, d                                          ; $65e4: $7a
	add $2b                                          ; $65e5: $c6 $2b
	ld d, a                                          ; $65e7: $57
	ld a, e                                          ; $65e8: $7b
	add $26                                          ; $65e9: $c6 $26
	ld e, a                                          ; $65eb: $5f
	call $3bf4                                       ; $65ec: $cd $f4 $3b
	ld bc, $5047                                     ; $65ef: $01 $47 $50
	ld a, $30                                        ; $65f2: $3e $30
	call $3bfc                                       ; $65f4: $cd $fc $3b
	call $3d53                                       ; $65f7: $cd $53 $3d
	jp $16d0                                         ; $65fa: $c3 $d0 $16


	rst FarCall                                          ; $65fd: $f7
	sub d                                            ; $65fe: $92
	ld l, a                                          ; $65ff: $6f
	ld a, [bc]                                       ; $6600: $0a
	ret                                              ; $6601: $c9


	rst FarCall                                          ; $6602: $f7
	inc a                                            ; $6603: $3c
	ld [hl], b                                       ; $6604: $70
	ld a, [bc]                                       ; $6605: $0a
	ret                                              ; $6606: $c9


	rst FarCall                                          ; $6607: $f7
	rst SubAFromBC                                          ; $6608: $e7
	ld [hl], b                                       ; $6609: $70
	ld a, [bc]                                       ; $660a: $0a
	ret                                              ; $660b: $c9


	rst FarCall                                          ; $660c: $f7
	and d                                            ; $660d: $a2
	ld [hl], c                                       ; $660e: $71
	ld a, [bc]                                       ; $660f: $0a
	ret                                              ; $6610: $c9


	rst FarCall                                          ; $6611: $f7
	ret z                                            ; $6612: $c8

	ld [hl], c                                       ; $6613: $71
	ld a, [bc]                                       ; $6614: $0a
	ret                                              ; $6615: $c9


	rst FarCall                                          ; $6616: $f7
	dec b                                            ; $6617: $05
	ld [hl], h                                       ; $6618: $74
	ld a, [bc]                                       ; $6619: $0a
	ret                                              ; $661a: $c9


	ld a, [hl]                                       ; $661b: $7e
	rst JumpTable                                          ; $661c: $c7
	inc sp                                           ; $661d: $33
	ld h, [hl]                                       ; $661e: $66
	ld [hl], $66                                     ; $661f: $36 $66
	add hl, sp                                       ; $6621: $39
	ld h, [hl]                                       ; $6622: $66
	ld [hl], c                                       ; $6623: $71
	ld h, [hl]                                       ; $6624: $66
	ld [hl], h                                       ; $6625: $74
	ld h, [hl]                                       ; $6626: $66
	ld [hl], a                                       ; $6627: $77
	ld h, [hl]                                       ; $6628: $66
	ld a, d                                          ; $6629: $7a
	ld h, [hl]                                       ; $662a: $66
	cp b                                             ; $662b: $b8
	ld h, [hl]                                       ; $662c: $66
	ret c                                            ; $662d: $d8

	ld h, [hl]                                       ; $662e: $66
	ldh a, [$66]                                     ; $662f: $f0 $66
	ld c, $67                                        ; $6631: $0e $67
	jp Jump_009_7408                                 ; $6633: $c3 $08 $74


	jp Jump_009_741e                                 ; $6636: $c3 $1e $74


	ld a, [$d884]                                    ; $6639: $fa $84 $d8
	cp $01                                           ; $663c: $fe $01
	jr z, jr_009_6646                                ; $663e: $28 $06

	cp $0a                                           ; $6640: $fe $0a
	jr z, jr_009_664a                                ; $6642: $28 $06

	jr jr_009_6650                                   ; $6644: $18 $0a

jr_009_6646:
	ld a, $06                                        ; $6646: $3e $06
	jr jr_009_664c                                   ; $6648: $18 $02

jr_009_664a:
	ld a, $04                                        ; $664a: $3e $04

jr_009_664c:
	ld l, $0a                                        ; $664c: $2e $0a
	ld [hl], a                                       ; $664e: $77
	ret                                              ; $664f: $c9


jr_009_6650:
	ld a, [$d8ae]                                    ; $6650: $fa $ae $d8
	or a                                             ; $6653: $b7
	jp nz, Jump_009_74e5                             ; $6654: $c2 $e5 $74

	ld l, $30                                        ; $6657: $2e $30
	xor a                                            ; $6659: $af
	ld [hl+], a                                      ; $665a: $22
	ld [hl], a                                       ; $665b: $77
	call $3da5                                       ; $665c: $cd $a5 $3d
	ld de, $906a                                     ; $665f: $11 $6a $90
	ld bc, $6cac                                     ; $6662: $01 $ac $6c
	ld a, $0c                                        ; $6665: $3e $0c
	call $3d99                                       ; $6667: $cd $99 $3d
	call $3d71                                       ; $666a: $cd $71 $3d
	call $3d53                                       ; $666d: $cd $53 $3d
	ret                                              ; $6670: $c9


	jp Jump_009_7431                                 ; $6671: $c3 $31 $74


	jp Jump_009_743e                                 ; $6674: $c3 $3e $74


	jp Jump_009_7468                                 ; $6677: $c3 $68 $74


	push hl                                          ; $667a: $e5
	ld hl, $d84d                                     ; $667b: $21 $4d $d8
	rst GetHLinHL                                          ; $667e: $cf
	ld d, h                                          ; $667f: $54
	ld e, l                                          ; $6680: $5d
	ld hl, $d859                                     ; $6681: $21 $59 $d8
	rst GetHLinHL                                          ; $6684: $cf
	push hl                                          ; $6685: $e5
	call wHLminusEquDE                                       ; $6686: $cd $9e $ce
	ld d, h                                          ; $6689: $54
	ld e, l                                          ; $668a: $5d
	pop hl                                           ; $668b: $e1
	ld bc, $000a                                     ; $668c: $01 $0a $00
	call BCHLequHLdivModBC                                       ; $668f: $cd $c1 $12
	call wHLminusEquDE                                       ; $6692: $cd $9e $ce
	pop hl                                           ; $6695: $e1
	jr c, jr_009_669b                                ; $6696: $38 $03

	ld [hl], $03                                     ; $6698: $36 $03
	ret                                              ; $669a: $c9


jr_009_669b:
	ld [hl], $07                                     ; $669b: $36 $07
	ld l, $30                                        ; $669d: $2e $30
	ld [hl], $5a                                     ; $669f: $36 $5a
	call $3da5                                       ; $66a1: $cd $a5 $3d
	ld bc, $6d24                                     ; $66a4: $01 $24 $6d
	ld a, $30                                        ; $66a7: $3e $30
	call $3d9f                                       ; $66a9: $cd $9f $3d
	ld bc, $0002                                     ; $66ac: $01 $02 $00
	call $3cd9                                       ; $66af: $cd $d9 $3c
	ld hl, $7beb                                     ; $66b2: $21 $eb $7b
	jp $3c78                                         ; $66b5: $c3 $78 $3c


	ld l, $30                                        ; $66b8: $2e $30
	dec [hl]                                         ; $66ba: $35
	ret nz                                           ; $66bb: $c0

	ld l, $0a                                        ; $66bc: $2e $0a
	ld [hl], $08                                     ; $66be: $36 $08
	ld l, $30                                        ; $66c0: $2e $30
	ld [hl], $b4                                     ; $66c2: $36 $b4
	call $3da5                                       ; $66c4: $cd $a5 $3d
	ld bc, $5073                                     ; $66c7: $01 $73 $50
	ld a, $30                                        ; $66ca: $3e $30
	call $3bfc                                       ; $66cc: $cd $fc $3b
	call $16d0                                       ; $66cf: $cd $d0 $16
	ld a, $3b                                        ; $66d2: $3e $3b
	call $1e2e                                       ; $66d4: $cd $2e $1e
	ret                                              ; $66d7: $c9


	ld l, $30                                        ; $66d8: $2e $30
	dec [hl]                                         ; $66da: $35
	jr nz, jr_009_66ec                               ; $66db: $20 $0f

	ld l, $0a                                        ; $66dd: $2e $0a
	ld [hl], $09                                     ; $66df: $36 $09
	call $3da5                                       ; $66e1: $cd $a5 $3d
	ld bc, $5074                                     ; $66e4: $01 $74 $50
	ld a, $30                                        ; $66e7: $3e $30
	call $3bfc                                       ; $66e9: $cd $fc $3b

jr_009_66ec:
	call $16d0                                       ; $66ec: $cd $d0 $16
	ret                                              ; $66ef: $c9


	call $16d0                                       ; $66f0: $cd $d0 $16
	ld l, $30                                        ; $66f3: $2e $30
	dec [hl]                                         ; $66f5: $35
	ret nz                                           ; $66f6: $c0

	ld [hl], $3c                                     ; $66f7: $36 $3c
	ld l, $0a                                        ; $66f9: $2e $0a
	ld [hl], $0a                                     ; $66fb: $36 $0a
	call $3da5                                       ; $66fd: $cd $a5 $3d
	ld bc, $6cdc                                     ; $6700: $01 $dc $6c
	ld a, $0c                                        ; $6703: $3e $0c
	call $3d9f                                       ; $6705: $cd $9f $3d
	ld hl, $7be4                                     ; $6708: $21 $e4 $7b
	jp $3c78                                         ; $670b: $c3 $78 $3c


	ld l, $30                                        ; $670e: $2e $30
	dec [hl]                                         ; $6710: $35
	ret nz                                           ; $6711: $c0

	ld l, $0a                                        ; $6712: $2e $0a
	ld [hl], $03                                     ; $6714: $36 $03
	ld hl, $d847                                     ; $6716: $21 $47 $d8
	set 6, [hl]                                      ; $6719: $cb $f6
	ret                                              ; $671b: $c9


	ld a, [hl]                                       ; $671c: $7e
	rst JumpTable                                          ; $671d: $c7
	jr c, @+$69                                      ; $671e: $38 $67

	dec sp                                           ; $6720: $3b
	ld h, a                                          ; $6721: $67
	ld a, $67                                        ; $6722: $3e $67
	ld [hl], e                                       ; $6724: $73
	ld h, a                                          ; $6725: $67
	halt                                             ; $6726: $76
	ld h, a                                          ; $6727: $67
	ld a, c                                          ; $6728: $79
	ld h, a                                          ; $6729: $67
	ld a, h                                          ; $672a: $7c
	ld h, a                                          ; $672b: $67
	and b                                            ; $672c: $a0
	ld h, a                                          ; $672d: $67
	call z, $e667                                    ; $672e: $cc $67 $e6
	ld h, a                                          ; $6731: $67
	push af                                          ; $6732: $f5
	ld h, a                                          ; $6733: $67
	ld a, [bc]                                       ; $6734: $0a
	ld l, b                                          ; $6735: $68
	ld hl, $c368                                     ; $6736: $21 $68 $c3
	ld [$c374], sp                                   ; $6739: $08 $74 $c3
	ld e, $74                                        ; $673c: $1e $74
	ld a, [$d884]                                    ; $673e: $fa $84 $d8
	cp $01                                           ; $6741: $fe $01
	jr z, jr_009_674b                                ; $6743: $28 $06

	cp $0a                                           ; $6745: $fe $0a
	jr z, jr_009_674f                                ; $6747: $28 $06

	jr jr_009_6755                                   ; $6749: $18 $0a

jr_009_674b:
	ld a, $06                                        ; $674b: $3e $06
	jr jr_009_6751                                   ; $674d: $18 $02

jr_009_674f:
	ld a, $04                                        ; $674f: $3e $04

jr_009_6751:
	ld l, $0a                                        ; $6751: $2e $0a
	ld [hl], a                                       ; $6753: $77
	ret                                              ; $6754: $c9


jr_009_6755:
	ld a, [$d8ae]                                    ; $6755: $fa $ae $d8
	or a                                             ; $6758: $b7
	jp nz, Jump_009_74e5                             ; $6759: $c2 $e5 $74

	ld l, $30                                        ; $675c: $2e $30
	xor a                                            ; $675e: $af
	ld [hl+], a                                      ; $675f: $22
	ld [hl], a                                       ; $6760: $77
	ld de, $906a                                     ; $6761: $11 $6a $90
	ld bc, $6734                                     ; $6764: $01 $34 $67
	ld a, $0c                                        ; $6767: $3e $0c
	call $3d99                                       ; $6769: $cd $99 $3d
	call $3d71                                       ; $676c: $cd $71 $3d
	call $3d53                                       ; $676f: $cd $53 $3d
	ret                                              ; $6772: $c9


	jp Jump_009_7431                                 ; $6773: $c3 $31 $74


	jp Jump_009_743e                                 ; $6776: $c3 $3e $74


	jp Jump_009_7468                                 ; $6779: $c3 $68 $74


	ld [hl], $07                                     ; $677c: $36 $07
	call $3da5                                       ; $677e: $cd $a5 $3d
	ld bc, $5086                                     ; $6781: $01 $86 $50
	ld a, $30                                        ; $6784: $3e $30
	call $3bfc                                       ; $6786: $cd $fc $3b
	call $16d0                                       ; $6789: $cd $d0 $16
	rst FarCall                                          ; $678c: $f7
	sub l                                            ; $678d: $95
	ld b, h                                          ; $678e: $44
	add hl, bc                                       ; $678f: $09
	rst FarCall                                          ; $6790: $f7
	and d                                            ; $6791: $a2
	ld b, a                                          ; $6792: $47
	add hl, bc                                       ; $6793: $09
	ld bc, $63d2                                     ; $6794: $01 $d2 $63
	call $18c4                                       ; $6797: $cd $c4 $18
	ld hl, $7c3f                                     ; $679a: $21 $3f $7c
	jp $3c78                                         ; $679d: $c3 $78 $3c


	ld l, $07                                        ; $67a0: $2e $07
	dec [hl]                                         ; $67a2: $35
	ld a, [hl]                                       ; $67a3: $7e
	cp $7c                                           ; $67a4: $fe $7c
	jr nc, jr_009_67c8                               ; $67a6: $30 $20

	ld [hl], $7c                                     ; $67a8: $36 $7c
	ld l, $0a                                        ; $67aa: $2e $0a
	ld [hl], $08                                     ; $67ac: $36 $08
	ld l, $30                                        ; $67ae: $2e $30
	ld [hl], $78                                     ; $67b0: $36 $78
	call $3da5                                       ; $67b2: $cd $a5 $3d
	ld bc, $5084                                     ; $67b5: $01 $84 $50
	ld a, $30                                        ; $67b8: $3e $30
	call $3bfc                                       ; $67ba: $cd $fc $3b
	ld a, $26                                        ; $67bd: $3e $26
	ld [$ca00], a                                    ; $67bf: $ea $00 $ca
	ld bc, $0003                                     ; $67c2: $01 $03 $00
	call $3cd9                                       ; $67c5: $cd $d9 $3c

jr_009_67c8:
	call $16d0                                       ; $67c8: $cd $d0 $16
	ret                                              ; $67cb: $c9


	ld l, $30                                        ; $67cc: $2e $30
	dec [hl]                                         ; $67ce: $35
	jr nz, jr_009_67e2                               ; $67cf: $20 $11

	ld [hl], $c8                                     ; $67d1: $36 $c8
	ld l, $0a                                        ; $67d3: $2e $0a
	ld [hl], $09                                     ; $67d5: $36 $09
	call $3da5                                       ; $67d7: $cd $a5 $3d
	ld bc, $5085                                     ; $67da: $01 $85 $50
	ld a, $30                                        ; $67dd: $3e $30
	call $3bfc                                       ; $67df: $cd $fc $3b

jr_009_67e2:
	call $16d0                                       ; $67e2: $cd $d0 $16
	ret                                              ; $67e5: $c9


	ld l, $30                                        ; $67e6: $2e $30
	dec [hl]                                         ; $67e8: $35
	jr nz, jr_009_67f1                               ; $67e9: $20 $06

	ld [hl], $44                                     ; $67eb: $36 $44
	ld l, $0a                                        ; $67ed: $2e $0a
	ld [hl], $0a                                     ; $67ef: $36 $0a

jr_009_67f1:
	call $16d0                                       ; $67f1: $cd $d0 $16
	ret                                              ; $67f4: $c9


	ld l, $30                                        ; $67f5: $2e $30
	dec [hl]                                         ; $67f7: $35
	ret nz                                           ; $67f8: $c0

	ld l, $0a                                        ; $67f9: $2e $0a
	ld [hl], $0b                                     ; $67fb: $36 $0b
	ld bc, $0105                                     ; $67fd: $01 $05 $01
	call $3cd9                                       ; $6800: $cd $d9 $3c
	ld hl, $ca00                                     ; $6803: $21 $00 $ca
	call $2dfc                                       ; $6806: $cd $fc $2d
	ret                                              ; $6809: $c9


	call $3ce2                                       ; $680a: $cd $e2 $3c
	ret nz                                           ; $680d: $c0

	ld l, $0a                                        ; $680e: $2e $0a
	ld [hl], $0c                                     ; $6810: $36 $0c
	call $3da5                                       ; $6812: $cd $a5 $3d
	ld bc, $5087                                     ; $6815: $01 $87 $50
	ld a, $30                                        ; $6818: $3e $30
	call $3bfc                                       ; $681a: $cd $fc $3b
	call $16d0                                       ; $681d: $cd $d0 $16
	ret                                              ; $6820: $c9


	ld l, $07                                        ; $6821: $2e $07
	inc [hl]                                         ; $6823: $34
	ld a, [hl]                                       ; $6824: $7e
	cp $90                                           ; $6825: $fe $90
	jr c, jr_009_682f                                ; $6827: $38 $06

	ld [hl], $90                                     ; $6829: $36 $90
	ld l, $0a                                        ; $682b: $2e $0a
	ld [hl], $03                                     ; $682d: $36 $03

jr_009_682f:
	call $16d0                                       ; $682f: $cd $d0 $16
	ret                                              ; $6832: $c9


	ld a, [hl]                                       ; $6833: $7e
	rst JumpTable                                          ; $6834: $c7
	ld c, a                                          ; $6835: $4f
	ld l, b                                          ; $6836: $68
	ld d, d                                          ; $6837: $52
	ld l, b                                          ; $6838: $68
	ld d, l                                          ; $6839: $55
	ld l, b                                          ; $683a: $68
	adc d                                            ; $683b: $8a
	ld l, b                                          ; $683c: $68
	adc l                                            ; $683d: $8d
	ld l, b                                          ; $683e: $68
	sub b                                            ; $683f: $90
	ld l, b                                          ; $6840: $68
	sub e                                            ; $6841: $93
	ld l, b                                          ; $6842: $68
	or l                                             ; $6843: $b5
	ld l, b                                          ; $6844: $68
	jp $0768                                         ; $6845: $c3 $68 $07


	ld l, c                                          ; $6848: $69
	dec e                                            ; $6849: $1d
	ld l, c                                          ; $684a: $69
	ld c, c                                          ; $684b: $49
	ld l, c                                          ; $684c: $69
	ld e, h                                          ; $684d: $5c
	ld l, c                                          ; $684e: $69
	jp Jump_009_7408                                 ; $684f: $c3 $08 $74


	jp Jump_009_741e                                 ; $6852: $c3 $1e $74


	ld a, [$d884]                                    ; $6855: $fa $84 $d8
	cp $01                                           ; $6858: $fe $01
	jr z, jr_009_6862                                ; $685a: $28 $06

	cp $0a                                           ; $685c: $fe $0a
	jr z, jr_009_6866                                ; $685e: $28 $06

	jr jr_009_686c                                   ; $6860: $18 $0a

jr_009_6862:
	ld a, $06                                        ; $6862: $3e $06
	jr jr_009_6868                                   ; $6864: $18 $02

jr_009_6866:
	ld a, $04                                        ; $6866: $3e $04

jr_009_6868:
	ld l, $0a                                        ; $6868: $2e $0a
	ld [hl], a                                       ; $686a: $77
	ret                                              ; $686b: $c9


jr_009_686c:
	ld a, [$d8ae]                                    ; $686c: $fa $ae $d8
	or a                                             ; $686f: $b7
	jp nz, Jump_009_74e5                             ; $6870: $c2 $e5 $74

	ld l, $30                                        ; $6873: $2e $30
	xor a                                            ; $6875: $af
	ld [hl+], a                                      ; $6876: $22
	ld [hl], a                                       ; $6877: $77
	ld de, $906a                                     ; $6878: $11 $6a $90
	ld bc, $647c                                     ; $687b: $01 $7c $64
	ld a, $0c                                        ; $687e: $3e $0c
	call $3d99                                       ; $6880: $cd $99 $3d
	call $3d71                                       ; $6883: $cd $71 $3d
	call $3d53                                       ; $6886: $cd $53 $3d
	ret                                              ; $6889: $c9


	jp Jump_009_7431                                 ; $688a: $c3 $31 $74


	jp Jump_009_743e                                 ; $688d: $c3 $3e $74


	jp Jump_009_7468                                 ; $6890: $c3 $68 $74


	ld [hl], $07                                     ; $6893: $36 $07
	ld a, $04                                        ; $6895: $3e $04
	call Call_000_12fc                                       ; $6897: $cd $fc $12
	add $03                                          ; $689a: $c6 $03
	ld l, $31                                        ; $689c: $2e $31
	ld [hl+], a                                      ; $689e: $22
	ld [hl], $00                                     ; $689f: $36 $00
	ld bc, $0004                                     ; $68a1: $01 $04 $00
	call $3cd9                                       ; $68a4: $cd $d9 $3c
	rst FarCall                                          ; $68a7: $f7
	sub l                                            ; $68a8: $95
	ld b, h                                          ; $68a9: $44
	add hl, bc                                       ; $68aa: $09
	rst FarCall                                          ; $68ab: $f7
	and d                                            ; $68ac: $a2
	ld b, a                                          ; $68ad: $47
	add hl, bc                                       ; $68ae: $09
	ld hl, $7c15                                     ; $68af: $21 $15 $7c
	jp $3c78                                         ; $68b2: $c3 $78 $3c


	call $3ce2                                       ; $68b5: $cd $e2 $3c
	ret nz                                           ; $68b8: $c0

	ld l, $0a                                        ; $68b9: $2e $0a
	ld [hl], $08                                     ; $68bb: $36 $08
	call Call_009_6965                               ; $68bd: $cd $65 $69
	jp $16d0                                         ; $68c0: $c3 $d0 $16


	call $3d1b                                       ; $68c3: $cd $1b $3d
	ld l, $07                                        ; $68c6: $2e $07
	ld a, [hl]                                       ; $68c8: $7e
	cp $0c                                           ; $68c9: $fe $0c
	jr nc, jr_009_6904                               ; $68cb: $30 $37

	ld [hl], $0c                                     ; $68cd: $36 $0c
	ld l, $32                                        ; $68cf: $2e $32
	ld a, [hl]                                       ; $68d1: $7e
	inc [hl]                                         ; $68d2: $34
	ld l, $31                                        ; $68d3: $2e $31
	cp [hl]                                          ; $68d5: $be
	jr nc, jr_009_68e4                               ; $68d6: $30 $0c

	ld a, $24                                        ; $68d8: $3e $24
	call Call_000_12fc                                       ; $68da: $cd $fc $12
	add $46                                          ; $68dd: $c6 $46
	ld c, a                                          ; $68df: $4f
	ld a, $09                                        ; $68e0: $3e $09
	jr jr_009_68e8                                   ; $68e2: $18 $04

jr_009_68e4:
	ld c, $6a                                        ; $68e4: $0e $6a
	ld a, $0a                                        ; $68e6: $3e $0a

jr_009_68e8:
	ld l, $0a                                        ; $68e8: $2e $0a
	ld [hl], a                                       ; $68ea: $77
	ld b, $90                                        ; $68eb: $06 $90
	ld de, $0300                                     ; $68ed: $11 $00 $03
	rst FarCall                                          ; $68f0: $f7
	xor l                                            ; $68f1: $ad
	ld b, h                                          ; $68f2: $44
	add hl, bc                                       ; $68f3: $09
	call $3da5                                       ; $68f4: $cd $a5 $3d
	ld bc, $507e                                     ; $68f7: $01 $7e $50
	ld a, $30                                        ; $68fa: $3e $30
	call $3bfc                                       ; $68fc: $cd $fc $3b
	ld a, $41                                        ; $68ff: $3e $41
	call $1e2e                                       ; $6901: $cd $2e $1e

jr_009_6904:
	jp $16d0                                         ; $6904: $c3 $d0 $16


	call $3d1b                                       ; $6907: $cd $1b $3d
	ld l, $07                                        ; $690a: $2e $07
	ld a, [hl]                                       ; $690c: $7e
	cp $90                                           ; $690d: $fe $90
	jr c, jr_009_691a                                ; $690f: $38 $09

	ld [hl], $90                                     ; $6911: $36 $90
	ld l, $0a                                        ; $6913: $2e $0a
	ld [hl], $08                                     ; $6915: $36 $08
	call Call_009_6965                               ; $6917: $cd $65 $69

jr_009_691a:
	jp $16d0                                         ; $691a: $c3 $d0 $16


	call $16d0                                       ; $691d: $cd $d0 $16
	call $3d1b                                       ; $6920: $cd $1b $3d
	ld l, $07                                        ; $6923: $2e $07
	ld a, [hl]                                       ; $6925: $7e
	cp $90                                           ; $6926: $fe $90
	ret c                                            ; $6928: $d8

	ld l, $0a                                        ; $6929: $2e $0a
	ld [hl], $0b                                     ; $692b: $36 $0b
	call $3da5                                       ; $692d: $cd $a5 $3d
	ld bc, $647c                                     ; $6930: $01 $7c $64
	ld a, $0c                                        ; $6933: $3e $0c
	call $3d9f                                       ; $6935: $cd $9f $3d
	call Call_009_4503                               ; $6938: $cd $03 $45
	jr z, jr_009_6942                                ; $693b: $28 $05

	ld bc, $0105                                     ; $693d: $01 $05 $01
	jr jr_009_6945                                   ; $6940: $18 $03

jr_009_6942:
	ld bc, $010e                                     ; $6942: $01 $0e $01

jr_009_6945:
	call $3cd9                                       ; $6945: $cd $d9 $3c
	ret                                              ; $6948: $c9


	call $3ce2                                       ; $6949: $cd $e2 $3c
	ret nz                                           ; $694c: $c0

	ld l, $0a                                        ; $694d: $2e $0a
	ld [hl], $0c                                     ; $694f: $36 $0c
	ld bc, $0104                                ; $6951: $01 $04 $01
	call $3cd9                                       ; $6954: $cd $d9 $3c
	rst FarCall                                          ; $6957: $f7
	rst SubAFromDE                                          ; $6958: $df
	ld c, d                                          ; $6959: $4a
	add hl, bc                                       ; $695a: $09
	ret                                              ; $695b: $c9


	call $3ce2                                       ; $695c: $cd $e2 $3c
	ret nz                                           ; $695f: $c0

	ld l, $0a                                        ; $6960: $2e $0a
	ld [hl], $03                                     ; $6962: $36 $03
	ret                                              ; $6964: $c9


Call_009_6965:
	call $3da5                                       ; $6965: $cd $a5 $3d
	ld bc, $507d                                     ; $6968: $01 $7d $50
	ld a, $30                                        ; $696b: $3e $30
	call $3bfc                                       ; $696d: $cd $fc $3b
	ld a, $24                                        ; $6970: $3e $24
	call Call_000_12fc                                       ; $6972: $cd $fc $12
	add $46                                          ; $6975: $c6 $46
	ld b, $0c                                        ; $6977: $06 $0c
	ld c, a                                          ; $6979: $4f
	ld de, $fd00                                     ; $697a: $11 $00 $fd
	rst FarCall                                          ; $697d: $f7
	xor l                                            ; $697e: $ad
	ld b, h                                          ; $697f: $44
	add hl, bc                                       ; $6980: $09
	ld a, $41                                        ; $6981: $3e $41
	call $1e2e                                       ; $6983: $cd $2e $1e
	ret                                              ; $6986: $c9


	ld a, [hl]                                       ; $6987: $7e
	rst JumpTable                                          ; $6988: $c7
	and c                                            ; $6989: $a1
	ld l, c                                          ; $698a: $69
	and h                                            ; $698b: $a4
	ld l, c                                          ; $698c: $69
	and a                                            ; $698d: $a7
	ld l, c                                          ; $698e: $69
	call c, $df69                                    ; $698f: $dc $69 $df
	ld l, c                                          ; $6992: $69
	ldh [c], a                                       ; $6993: $e2
	ld l, c                                          ; $6994: $69
	push hl                                          ; $6995: $e5
	ld l, c                                          ; $6996: $69
	cp $69                                           ; $6997: $fe $69
	rra                                              ; $6999: $1f
	ld l, d                                          ; $699a: $6a
	scf                                              ; $699b: $37
	ld l, d                                          ; $699c: $6a
	adc c                                            ; $699d: $89
	ld l, d                                          ; $699e: $6a
	and c                                            ; $699f: $a1
	ld l, d                                          ; $69a0: $6a
	jp Jump_009_7408                                 ; $69a1: $c3 $08 $74


	jp Jump_009_741e                                 ; $69a4: $c3 $1e $74


	ld a, [$d884]                                    ; $69a7: $fa $84 $d8
	cp $01                                           ; $69aa: $fe $01
	jr z, jr_009_69b4                                ; $69ac: $28 $06

	cp $0a                                           ; $69ae: $fe $0a
	jr z, jr_009_69b8                                ; $69b0: $28 $06

	jr jr_009_69be                                   ; $69b2: $18 $0a

jr_009_69b4:
	ld a, $06                                        ; $69b4: $3e $06
	jr jr_009_69ba                                   ; $69b6: $18 $02

jr_009_69b8:
	ld a, $04                                        ; $69b8: $3e $04

jr_009_69ba:
	ld l, $0a                                        ; $69ba: $2e $0a
	ld [hl], a                                       ; $69bc: $77
	ret                                              ; $69bd: $c9


jr_009_69be:
	ld a, [$d8ae]                                    ; $69be: $fa $ae $d8
	or a                                             ; $69c1: $b7
	jp nz, Jump_009_74e5                             ; $69c2: $c2 $e5 $74

	ld l, $30                                        ; $69c5: $2e $30
	xor a                                            ; $69c7: $af
	ld [hl+], a                                      ; $69c8: $22
	ld [hl], a                                       ; $69c9: $77
	ld de, $906a                                     ; $69ca: $11 $6a $90
	ld bc, $6dcc                                     ; $69cd: $01 $cc $6d
	ld a, $0c                                        ; $69d0: $3e $0c
	call $3d99                                       ; $69d2: $cd $99 $3d
	call $3d71                                       ; $69d5: $cd $71 $3d
	call $3d53                                       ; $69d8: $cd $53 $3d
	ret                                              ; $69db: $c9


	jp Jump_009_7431                                 ; $69dc: $c3 $31 $74


	jp Jump_009_743e                                 ; $69df: $c3 $3e $74


	jp Jump_009_7468                                 ; $69e2: $c3 $68 $74


	ld [hl], $07                                     ; $69e5: $36 $07
	call $3da5                                       ; $69e7: $cd $a5 $3d
	ld bc, $5076                                     ; $69ea: $01 $76 $50
	ld a, $30                                        ; $69ed: $3e $30
	call $3bfc                                       ; $69ef: $cd $fc $3b
	call $16d0                                       ; $69f2: $cd $d0 $16
	call Call_009_6ab3                               ; $69f5: $cd $b3 $6a
	ld hl, $7c00                                     ; $69f8: $21 $00 $7c
	jp $3c78                                         ; $69fb: $c3 $78 $3c


	ld l, $07                                        ; $69fe: $2e $07
	dec [hl]                                         ; $6a00: $35
	ld a, [hl]                                       ; $6a01: $7e
	cp $7c                                           ; $6a02: $fe $7c
	jr nc, jr_009_6a1b                               ; $6a04: $30 $15

	ld [hl], $7c                                     ; $6a06: $36 $7c
	ld l, $0a                                        ; $6a08: $2e $0a
	ld [hl], $08                                     ; $6a0a: $36 $08
	ld l, $30                                        ; $6a0c: $2e $30
	ld [hl], $64                                     ; $6a0e: $36 $64
	call $3da5                                       ; $6a10: $cd $a5 $3d
	ld bc, $5078                                     ; $6a13: $01 $78 $50
	ld a, $30                                        ; $6a16: $3e $30
	call $3bfc                                       ; $6a18: $cd $fc $3b

jr_009_6a1b:
	call $16d0                                       ; $6a1b: $cd $d0 $16
	ret                                              ; $6a1e: $c9


	call $16d0                                       ; $6a1f: $cd $d0 $16
	ld l, $30                                        ; $6a22: $2e $30
	dec [hl]                                         ; $6a24: $35
	ret nz                                           ; $6a25: $c0

	ld [hl], $28                                     ; $6a26: $36 $28
	ld l, $0a                                        ; $6a28: $2e $0a
	ld [hl], $09                                     ; $6a2a: $36 $09
	ld a, $25                                        ; $6a2c: $3e $25
	ld [$ca00], a                                    ; $6a2e: $ea $00 $ca
	ld a, $89                                        ; $6a31: $3e $89
	call $1e2e                                       ; $6a33: $cd $2e $1e
	ret                                              ; $6a36: $c9


	ld l, $30                                        ; $6a37: $2e $30
	ld a, [hl]                                       ; $6a39: $7e
	or a                                             ; $6a3a: $b7
	jr z, jr_009_6a45                                ; $6a3b: $28 $08

	dec [hl]                                         ; $6a3d: $35
	jr nz, jr_009_6a45                               ; $6a3e: $20 $05

	ld a, $24                                        ; $6a40: $3e $24
	call $1e2e                                       ; $6a42: $cd $2e $1e

jr_009_6a45:
	push hl                                          ; $6a45: $e5
	ld hl, $ca00                                     ; $6a46: $21 $00 $ca
	ld l, $31                                        ; $6a49: $2e $31
	ld a, [hl]                                       ; $6a4b: $7e
	pop hl                                           ; $6a4c: $e1
	or a                                             ; $6a4d: $b7
	jr z, jr_009_6a85                                ; $6a4e: $28 $35

	ld l, $0a                                        ; $6a50: $2e $0a
	ld [hl], $0a                                     ; $6a52: $36 $0a
	ld l, $30                                        ; $6a54: $2e $30
	ld [hl], $78                                     ; $6a56: $36 $78
	call $3da5                                       ; $6a58: $cd $a5 $3d
	ld bc, $507a                                     ; $6a5b: $01 $7a $50
	ld a, $30                                        ; $6a5e: $3e $30
	call $3bfc                                       ; $6a60: $cd $fc $3b
	ld a, [$d844]                                    ; $6a63: $fa $44 $d8
	and $03                                          ; $6a66: $e6 $03
	jr nz, jr_009_6a72                               ; $6a68: $20 $08

	call Call_009_6aed                               ; $6a6a: $cd $ed $6a
	ld bc, $000c                                     ; $6a6d: $01 $0c $00
	jr jr_009_6a75                                   ; $6a70: $18 $03

jr_009_6a72:
	ld bc, $000d                                     ; $6a72: $01 $0d $00

jr_009_6a75:
	call $3cd9                                       ; $6a75: $cd $d9 $3c
	push hl                                          ; $6a78: $e5
	ld hl, $ca00                                     ; $6a79: $21 $00 $ca
	call $2dfc                                       ; $6a7c: $cd $fc $2d
	pop hl                                           ; $6a7f: $e1
	ld a, $23                                        ; $6a80: $3e $23
	call $1e2e                                       ; $6a82: $cd $2e $1e

jr_009_6a85:
	call $16d0                                       ; $6a85: $cd $d0 $16
	ret                                              ; $6a88: $c9


	call $3ce2                                       ; $6a89: $cd $e2 $3c
	jr nz, jr_009_6a9d                               ; $6a8c: $20 $0f

	ld l, $0a                                        ; $6a8e: $2e $0a
	ld [hl], $0b                                     ; $6a90: $36 $0b
	call $3da5                                       ; $6a92: $cd $a5 $3d
	ld bc, $5077                                     ; $6a95: $01 $77 $50
	ld a, $30                                        ; $6a98: $3e $30
	call $3bfc                                       ; $6a9a: $cd $fc $3b

jr_009_6a9d:
	call $16d0                                       ; $6a9d: $cd $d0 $16
	ret                                              ; $6aa0: $c9


	ld l, $07                                        ; $6aa1: $2e $07
	inc [hl]                                         ; $6aa3: $34
	ld a, [hl]                                       ; $6aa4: $7e
	cp $90                                           ; $6aa5: $fe $90
	jr c, jr_009_6aaf                                ; $6aa7: $38 $06

	ld [hl], $90                                     ; $6aa9: $36 $90
	ld l, $0a                                        ; $6aab: $2e $0a
	ld [hl], $03                                     ; $6aad: $36 $03

jr_009_6aaf:
	call $16d0                                       ; $6aaf: $cd $d0 $16
	ret                                              ; $6ab2: $c9


Call_009_6ab3:
	ld a, $03                                        ; $6ab3: $3e $03
	call Call_000_12fc                                       ; $6ab5: $cd $fc $12
	ld hl, $d8b4                                     ; $6ab8: $21 $b4 $d8
	cp $01                                           ; $6abb: $fe $01
	jr z, jr_009_6acf                                ; $6abd: $28 $10

	jr nc, jr_009_6add                               ; $6abf: $30 $1c

	ld a, $00                                        ; $6ac1: $3e $00
	bit 0, [hl]                                      ; $6ac3: $cb $46
	jr z, jr_009_6ae9                                ; $6ac5: $28 $22

	inc a                                            ; $6ac7: $3c
	bit 1, [hl]                                      ; $6ac8: $cb $4e
	jr z, jr_009_6ae9                                ; $6aca: $28 $1d

	inc a                                            ; $6acc: $3c
	jr jr_009_6ae9                                   ; $6acd: $18 $1a

jr_009_6acf:
	ld a, $01                                        ; $6acf: $3e $01
	bit 1, [hl]                                      ; $6ad1: $cb $4e
	jr z, jr_009_6ae9                                ; $6ad3: $28 $14

	inc a                                            ; $6ad5: $3c
	bit 2, [hl]                                      ; $6ad6: $cb $56
	jr z, jr_009_6ae9                                ; $6ad8: $28 $0f

	xor a                                            ; $6ada: $af
	jr jr_009_6ae9                                   ; $6adb: $18 $0c

jr_009_6add:
	ld a, $02                                        ; $6add: $3e $02
	bit 2, [hl]                                      ; $6adf: $cb $56
	jr z, jr_009_6ae9                                ; $6ae1: $28 $06

	xor a                                            ; $6ae3: $af
	bit 0, [hl]                                      ; $6ae4: $cb $46
	jr z, jr_009_6ae9                                ; $6ae6: $28 $01

	inc a                                            ; $6ae8: $3c

jr_009_6ae9:
	ld [$d8b0], a                                    ; $6ae9: $ea $b0 $d8
	ret                                              ; $6aec: $c9


Call_009_6aed:
	push hl                                          ; $6aed: $e5
	ld hl, $d8b4                                     ; $6aee: $21 $b4 $d8
	ld a, [$d8b0]                                    ; $6af1: $fa $b0 $d8
	cp $01                                           ; $6af4: $fe $01
	jr z, jr_009_6afe                                ; $6af6: $28 $06

	jr nc, jr_009_6b02                               ; $6af8: $30 $08

	set 0, [hl]                                      ; $6afa: $cb $c6
	jr jr_009_6b04                                   ; $6afc: $18 $06

jr_009_6afe:
	set 1, [hl]                                      ; $6afe: $cb $ce
	jr jr_009_6b04                                   ; $6b00: $18 $02

jr_009_6b02:
	set 2, [hl]                                      ; $6b02: $cb $d6

jr_009_6b04:
	rst FarCall                                          ; $6b04: $f7
	cpl                                              ; $6b05: $2f
	ld b, l                                          ; $6b06: $45
	add hl, bc                                       ; $6b07: $09
	pop hl                                           ; $6b08: $e1
	ret                                              ; $6b09: $c9


	ld a, [hl]                                       ; $6b0a: $7e
	rst JumpTable                                          ; $6b0b: $c7
	ld h, $6b                                        ; $6b0c: $26 $6b
	add hl, hl                                       ; $6b0e: $29
	ld l, e                                          ; $6b0f: $6b
	inc l                                            ; $6b10: $2c
	ld l, e                                          ; $6b11: $6b
	ld h, c                                          ; $6b12: $61
	ld l, e                                          ; $6b13: $6b
	ld h, h                                          ; $6b14: $64
	ld l, e                                          ; $6b15: $6b
	ld h, a                                          ; $6b16: $67
	ld l, e                                          ; $6b17: $6b
	ld l, d                                          ; $6b18: $6a
	ld l, e                                          ; $6b19: $6b
	add h                                            ; $6b1a: $84
	ld l, e                                          ; $6b1b: $6b
	and [hl]                                         ; $6b1c: $a6
	ld l, e                                          ; $6b1d: $6b
	ret                                              ; $6b1e: $c9


	ld l, e                                          ; $6b1f: $6b
	rst SubAFromBC                                          ; $6b20: $e7
	ld l, e                                          ; $6b21: $6b
	db $10                                           ; $6b22: $10
	ld l, h                                          ; $6b23: $6c
	ld c, d                                          ; $6b24: $4a
	ld l, h                                          ; $6b25: $6c
	jp Jump_009_7408                                 ; $6b26: $c3 $08 $74


	jp Jump_009_741e                                 ; $6b29: $c3 $1e $74


	ld a, [$d884]                                    ; $6b2c: $fa $84 $d8
	cp $01                                           ; $6b2f: $fe $01
	jr z, jr_009_6b39                                ; $6b31: $28 $06

	cp $0a                                           ; $6b33: $fe $0a
	jr z, jr_009_6b3d                                ; $6b35: $28 $06

	jr jr_009_6b43                                   ; $6b37: $18 $0a

jr_009_6b39:
	ld a, $06                                        ; $6b39: $3e $06
	jr jr_009_6b3f                                   ; $6b3b: $18 $02

jr_009_6b3d:
	ld a, $04                                        ; $6b3d: $3e $04

jr_009_6b3f:
	ld l, $0a                                        ; $6b3f: $2e $0a
	ld [hl], a                                       ; $6b41: $77
	ret                                              ; $6b42: $c9


jr_009_6b43:
	ld a, [$d8ae]                                    ; $6b43: $fa $ae $d8
	or a                                             ; $6b46: $b7
	jp nz, Jump_009_74e5                             ; $6b47: $c2 $e5 $74

	ld l, $30                                        ; $6b4a: $2e $30
	xor a                                            ; $6b4c: $af
	ld [hl+], a                                      ; $6b4d: $22
	ld [hl], a                                       ; $6b4e: $77
	ld de, $906a                                     ; $6b4f: $11 $6a $90
	ld bc, $6afc                                     ; $6b52: $01 $fc $6a
	ld a, $0c                                        ; $6b55: $3e $0c
	call $3d99                                       ; $6b57: $cd $99 $3d
	call $3d71                                       ; $6b5a: $cd $71 $3d
	call $3d53                                       ; $6b5d: $cd $53 $3d
	ret                                              ; $6b60: $c9


	jp Jump_009_7431                                 ; $6b61: $c3 $31 $74


	jp Jump_009_743e                                 ; $6b64: $c3 $3e $74


	jp Jump_009_7468                                 ; $6b67: $c3 $68 $74


	ld [hl], $07                                     ; $6b6a: $36 $07
	ld l, $30                                        ; $6b6c: $2e $30
	ld [hl], $5a                                     ; $6b6e: $36 $5a
	call $3da5                                       ; $6b70: $cd $a5 $3d
	ld bc, $506c                                     ; $6b73: $01 $6c $50
	ld a, $30                                        ; $6b76: $3e $30
	call $3bfc                                       ; $6b78: $cd $fc $3b
	call $16d0                                       ; $6b7b: $cd $d0 $16
	ld hl, $7bcf                                     ; $6b7e: $21 $cf $7b
	jp $3c78                                         ; $6b81: $c3 $78 $3c


	ld l, $30                                        ; $6b84: $2e $30
	ld a, [hl]                                       ; $6b86: $7e
	cp $4a                                           ; $6b87: $fe $4a
	jr nz, jr_009_6b90                               ; $6b89: $20 $05

	ld a, $74                                        ; $6b8b: $3e $74
	call $1e2e                                       ; $6b8d: $cd $2e $1e

jr_009_6b90:
	dec [hl]                                         ; $6b90: $35
	jr nz, jr_009_6ba2                               ; $6b91: $20 $0f

	ld l, $0a                                        ; $6b93: $2e $0a
	ld [hl], $08                                     ; $6b95: $36 $08
	call $3da5                                       ; $6b97: $cd $a5 $3d
	ld bc, $506f                                     ; $6b9a: $01 $6f $50
	ld a, $30                                        ; $6b9d: $3e $30
	call $3bfc                                       ; $6b9f: $cd $fc $3b

jr_009_6ba2:
	call $16d0                                       ; $6ba2: $cd $d0 $16
	ret                                              ; $6ba5: $c9


	ld l, $07                                        ; $6ba6: $2e $07
	dec [hl]                                         ; $6ba8: $35
	ld a, [hl]                                       ; $6ba9: $7e
	cp $7c                                           ; $6baa: $fe $7c
	jr nc, jr_009_6bc5                               ; $6bac: $30 $17

	ld [hl], $7c                                     ; $6bae: $36 $7c
	ld l, $0a                                        ; $6bb0: $2e $0a
	ld [hl], $09                                     ; $6bb2: $36 $09
	call $3da5                                       ; $6bb4: $cd $a5 $3d
	ld bc, $506e                                     ; $6bb7: $01 $6e $50
	ld a, $30                                        ; $6bba: $3e $30
	call $3bfc                                       ; $6bbc: $cd $fc $3b
	ld bc, $000e                                     ; $6bbf: $01 $0e $00
	call $3cd9                                       ; $6bc2: $cd $d9 $3c

jr_009_6bc5:
	call $16d0                                       ; $6bc5: $cd $d0 $16
	ret                                              ; $6bc8: $c9


	call $3ce2                                       ; $6bc9: $cd $e2 $3c
	jr nz, jr_009_6be3                               ; $6bcc: $20 $15

	ld l, $0a                                        ; $6bce: $2e $0a
	ld [hl], $0a                                     ; $6bd0: $36 $0a
	call $3da5                                       ; $6bd2: $cd $a5 $3d
	ld bc, $5070                                     ; $6bd5: $01 $70 $50
	ld a, $30                                        ; $6bd8: $3e $30
	call $3bfc                                       ; $6bda: $cd $fc $3b
	ld bc, $000f                                     ; $6bdd: $01 $0f $00
	call $3cd9                                       ; $6be0: $cd $d9 $3c

jr_009_6be3:
	call $16d0                                       ; $6be3: $cd $d0 $16
	ret                                              ; $6be6: $c9


	call $16d0                                       ; $6be7: $cd $d0 $16
	call $3ce2                                       ; $6bea: $cd $e2 $3c
	ret nz                                           ; $6bed: $c0

	ld l, $0a                                        ; $6bee: $2e $0a
	ld [hl], $0b                                     ; $6bf0: $36 $0b
	ld l, $30                                        ; $6bf2: $2e $30
	ld [hl], $5a                                     ; $6bf4: $36 $5a
	call $3da5                                       ; $6bf6: $cd $a5 $3d
	ld bc, $6c4c                                     ; $6bf9: $01 $4c $6c
	ld a, $30                                        ; $6bfc: $3e $30
	call $3d9f                                       ; $6bfe: $cd $9f $3d
	call Call_009_4503                               ; $6c01: $cd $03 $45
	ld bc, $0010                                     ; $6c04: $01 $10 $00
	jr z, jr_009_6c0c                                ; $6c07: $28 $03

	ld bc, $0011                                     ; $6c09: $01 $11 $00

jr_009_6c0c:
	call $3cd9                                       ; $6c0c: $cd $d9 $3c
	ret                                              ; $6c0f: $c9


	call Call_009_4503                               ; $6c10: $cd $03 $45
	jr nz, jr_009_6c36                               ; $6c13: $20 $21

	ld l, $30                                        ; $6c15: $2e $30
	ld a, [hl]                                       ; $6c17: $7e
	ld b, $07                                        ; $6c18: $06 $07
	cp $55                                           ; $6c1a: $fe $55
	jr z, jr_009_6c2c                                ; $6c1c: $28 $0e

	cp $41                                           ; $6c1e: $fe $41
	jr z, jr_009_6c2c                                ; $6c20: $28 $0a

	ld b, $00                                        ; $6c22: $06 $00
	cp $4b                                           ; $6c24: $fe $4b
	jr z, jr_009_6c2c                                ; $6c26: $28 $04

	cp $37                                           ; $6c28: $fe $37
	jr nz, jr_009_6c36                               ; $6c2a: $20 $0a

jr_009_6c2c:
	ld a, b                                          ; $6c2c: $78
	ld [$d8b4], a                                    ; $6c2d: $ea $b4 $d8
	push hl                                          ; $6c30: $e5
	rst FarCall                                          ; $6c31: $f7
	cpl                                              ; $6c32: $2f
	ld b, l                                          ; $6c33: $45
	add hl, bc                                       ; $6c34: $09
	pop hl                                           ; $6c35: $e1

jr_009_6c36:
	ld l, $30                                        ; $6c36: $2e $30
	dec [hl]                                         ; $6c38: $35
	ret nz                                           ; $6c39: $c0

	ld l, $0a                                        ; $6c3a: $2e $0a
	ld [hl], $0c                                     ; $6c3c: $36 $0c
	ld bc, $5071                                     ; $6c3e: $01 $71 $50
	ld a, $30                                        ; $6c41: $3e $30
	call $3bfc                                       ; $6c43: $cd $fc $3b
	call $16d0                                       ; $6c46: $cd $d0 $16
	ret                                              ; $6c49: $c9


	ld l, $07                                        ; $6c4a: $2e $07
	inc [hl]                                         ; $6c4c: $34
	ld a, [hl]                                       ; $6c4d: $7e
	cp $90                                           ; $6c4e: $fe $90
	jr c, jr_009_6c58                                ; $6c50: $38 $06

	ld [hl], $90                                     ; $6c52: $36 $90
	ld l, $0a                                        ; $6c54: $2e $0a
	ld [hl], $03                                     ; $6c56: $36 $03

jr_009_6c58:
	call $16d0                                       ; $6c58: $cd $d0 $16
	ret                                              ; $6c5b: $c9


	ld a, [hl]                                       ; $6c5c: $7e
	rst JumpTable                                          ; $6c5d: $c7
	ld [hl], h                                       ; $6c5e: $74
	ld l, h                                          ; $6c5f: $6c
	ld [hl], a                                       ; $6c60: $77
	ld l, h                                          ; $6c61: $6c
	ld a, d                                          ; $6c62: $7a
	ld l, h                                          ; $6c63: $6c
	xor a                                            ; $6c64: $af
	ld l, h                                          ; $6c65: $6c
	or d                                             ; $6c66: $b2
	ld l, h                                          ; $6c67: $6c
	or l                                             ; $6c68: $b5
	ld l, h                                          ; $6c69: $6c
	cp b                                             ; $6c6a: $b8
	ld l, h                                          ; $6c6b: $6c
	jp nc, $f66c                                     ; $6c6c: $d2 $6c $f6

	ld l, h                                          ; $6c6f: $6c
	ld [de], a                                       ; $6c70: $12
	ld l, l                                          ; $6c71: $6d
	inc [hl]                                         ; $6c72: $34
	ld l, l                                          ; $6c73: $6d
	jp Jump_009_7408                                 ; $6c74: $c3 $08 $74


	jp Jump_009_741e                                 ; $6c77: $c3 $1e $74


	ld a, [$d884]                                    ; $6c7a: $fa $84 $d8
	cp $01                                           ; $6c7d: $fe $01
	jr z, jr_009_6c87                                ; $6c7f: $28 $06

	cp $0a                                           ; $6c81: $fe $0a
	jr z, jr_009_6c8b                                ; $6c83: $28 $06

	jr jr_009_6c91                                   ; $6c85: $18 $0a

jr_009_6c87:
	ld a, $06                                        ; $6c87: $3e $06
	jr jr_009_6c8d                                   ; $6c89: $18 $02

jr_009_6c8b:
	ld a, $04                                        ; $6c8b: $3e $04

jr_009_6c8d:
	ld l, $0a                                        ; $6c8d: $2e $0a
	ld [hl], a                                       ; $6c8f: $77
	ret                                              ; $6c90: $c9


jr_009_6c91:
	ld a, [$d8ae]                                    ; $6c91: $fa $ae $d8
	or a                                             ; $6c94: $b7
	jp nz, Jump_009_74e5                             ; $6c95: $c2 $e5 $74

	ld l, $30                                        ; $6c98: $2e $30
	xor a                                            ; $6c9a: $af
	ld [hl+], a                                      ; $6c9b: $22
	ld [hl], a                                       ; $6c9c: $77
	ld de, $906a                                     ; $6c9d: $11 $6a $90
	ld bc, $65cc                                     ; $6ca0: $01 $cc $65
	ld a, $0c                                        ; $6ca3: $3e $0c
	call $3d99                                       ; $6ca5: $cd $99 $3d
	call $3d71                                       ; $6ca8: $cd $71 $3d
	call $3d53                                       ; $6cab: $cd $53 $3d
	ret                                              ; $6cae: $c9


	jp Jump_009_7431                                 ; $6caf: $c3 $31 $74


	jp Jump_009_743e                                 ; $6cb2: $c3 $3e $74


	jp Jump_009_7468                                 ; $6cb5: $c3 $68 $74


	ld [hl], $07                                     ; $6cb8: $36 $07
	ld l, $30                                        ; $6cba: $2e $30
	ld [hl], $1e                                     ; $6cbc: $36 $1e
	call $3da5                                       ; $6cbe: $cd $a5 $3d
	ld de, $906a                                     ; $6cc1: $11 $6a $90
	ld bc, $668c                                     ; $6cc4: $01 $8c $66
	ld a, $30                                        ; $6cc7: $3e $30
	call $3d99                                       ; $6cc9: $cd $99 $3d
	ld hl, $7c2a                                     ; $6ccc: $21 $2a $7c
	jp $3c78                                         ; $6ccf: $c3 $78 $3c


	ld l, $30                                        ; $6cd2: $2e $30
	dec [hl]                                         ; $6cd4: $35
	ret nz                                           ; $6cd5: $c0

	ld [hl], $f0                                     ; $6cd6: $36 $f0
	ld l, $0a                                        ; $6cd8: $2e $0a
	ld [hl], $08                                     ; $6cda: $36 $08
	call $3da5                                       ; $6cdc: $cd $a5 $3d
	ld bc, $5080                                     ; $6cdf: $01 $80 $50
	ld a, $30                                        ; $6ce2: $3e $30
	call $3bfc                                       ; $6ce4: $cd $fc $3b
	call $16d0                                       ; $6ce7: $cd $d0 $16
	ld bc, $0014                                     ; $6cea: $01 $14 $00
	call $3cd9                                       ; $6ced: $cd $d9 $3c
	ld a, $27                                        ; $6cf0: $3e $27
	ld [$ca00], a                                    ; $6cf2: $ea $00 $ca
	ret                                              ; $6cf5: $c9


	call $16d0                                       ; $6cf6: $cd $d0 $16
	ld l, $30                                        ; $6cf9: $2e $30
	dec [hl]                                         ; $6cfb: $35
	ret nz                                           ; $6cfc: $c0

	ld l, $0a                                        ; $6cfd: $2e $0a
	ld [hl], $09                                     ; $6cff: $36 $09
	ld a, [$d840]                                    ; $6d01: $fa $40 $d8
	cp $07                                           ; $6d04: $fe $07
	ld bc, $0016                                     ; $6d06: $01 $16 $00
	jr nz, jr_009_6d0e                               ; $6d09: $20 $03

	ld bc, $0019                                     ; $6d0b: $01 $19 $00

jr_009_6d0e:
	call $3cd9                                       ; $6d0e: $cd $d9 $3c
	ret                                              ; $6d11: $c9


	call $16d0                                       ; $6d12: $cd $d0 $16
	call $3ce2                                       ; $6d15: $cd $e2 $3c
	ret nz                                           ; $6d18: $c0

	ld l, $0a                                        ; $6d19: $2e $0a
	ld [hl], $0a                                     ; $6d1b: $36 $0a
	ld l, $30                                        ; $6d1d: $2e $30
	ld [hl], $24                                     ; $6d1f: $36 $24
	call $3da5                                       ; $6d21: $cd $a5 $3d
	ld bc, $65cc                                     ; $6d24: $01 $cc $65
	ld a, $0c                                        ; $6d27: $3e $0c
	call $3d9f                                       ; $6d29: $cd $9f $3d
	ld hl, $ca00                                     ; $6d2c: $21 $00 $ca
	ld l, $30                                        ; $6d2f: $2e $30
	ld [hl], $01                                     ; $6d31: $36 $01
	ret                                              ; $6d33: $c9


	ld l, $30                                        ; $6d34: $2e $30
	dec [hl]                                         ; $6d36: $35
	ret nz                                           ; $6d37: $c0

	ld l, $0a                                        ; $6d38: $2e $0a
	ld [hl], $03                                     ; $6d3a: $36 $03
	ld hl, $ca00                                     ; $6d3c: $21 $00 $ca
	call $2dfc                                       ; $6d3f: $cd $fc $2d
	ret                                              ; $6d42: $c9


	ld a, [hl]                                       ; $6d43: $7e
	rst JumpTable                                          ; $6d44: $c7
	ld a, e                                          ; $6d45: $7b
	ld l, l                                          ; $6d46: $6d
	ld a, [hl]                                       ; $6d47: $7e
	ld l, l                                          ; $6d48: $6d
	add c                                            ; $6d49: $81
	ld l, l                                          ; $6d4a: $6d
	sbc $6d                                          ; $6d4b: $de $6d
	pop hl                                           ; $6d4d: $e1
	ld l, l                                          ; $6d4e: $6d
	db $f4                                           ; $6d4f: $f4
	ld l, l                                          ; $6d50: $6d
	rst FarCall                                          ; $6d51: $f7
	ld l, l                                          ; $6d52: $6d
	dec b                                            ; $6d53: $05
	ld l, [hl]                                       ; $6d54: $6e
	dec h                                            ; $6d55: $25
	ld l, [hl]                                       ; $6d56: $6e
	inc a                                            ; $6d57: $3c
	ld l, [hl]                                       ; $6d58: $6e
	ld h, c                                          ; $6d59: $61
	ld l, [hl]                                       ; $6d5a: $6e
	ld a, [hl]                                       ; $6d5b: $7e
	ld l, [hl]                                       ; $6d5c: $6e
	and e                                            ; $6d5d: $a3
	ld l, [hl]                                       ; $6d5e: $6e
	cp c                                             ; $6d5f: $b9
	ld l, [hl]                                       ; $6d60: $6e
	rst SubAFromHL                                          ; $6d61: $d7
	ld l, [hl]                                       ; $6d62: $6e
	ld b, $6f                                        ; $6d63: $06 $6f
	daa                                              ; $6d65: $27
	ld l, a                                          ; $6d66: $6f
	ld b, b                                          ; $6d67: $40
	ld l, a                                          ; $6d68: $6f
	ld h, c                                          ; $6d69: $61
	ld l, a                                          ; $6d6a: $6f
	ld a, b                                          ; $6d6b: $78
	ld l, a                                          ; $6d6c: $6f
	sbc l                                            ; $6d6d: $9d
	ld l, a                                          ; $6d6e: $6f
	or l                                             ; $6d6f: $b5
	ld l, a                                          ; $6d70: $6f
	cp [hl]                                          ; $6d71: $be
	ld l, a                                          ; $6d72: $6f
	dec bc                                           ; $6d73: $0b
	ld [hl], b                                       ; $6d74: $70
	inc sp                                           ; $6d75: $33
	ld [hl], b                                       ; $6d76: $70
	ld d, [hl]                                       ; $6d77: $56
	ld [hl], b                                       ; $6d78: $70
	ld [hl], a                                       ; $6d79: $77
	ld [hl], b                                       ; $6d7a: $70
	jp Jump_009_7408                                 ; $6d7b: $c3 $08 $74


	jp Jump_009_741e                                 ; $6d7e: $c3 $1e $74


	ld a, [$d884]                                    ; $6d81: $fa $84 $d8
	cp $01                                           ; $6d84: $fe $01
	jr z, jr_009_6d8e                                ; $6d86: $28 $06

	cp $0a                                           ; $6d88: $fe $0a
	jr z, jr_009_6da7                                ; $6d8a: $28 $1b

	jr jr_009_6dad                                   ; $6d8c: $18 $1f

jr_009_6d8e:
	ld a, [$d844]                                    ; $6d8e: $fa $44 $d8
	and $03                                          ; $6d91: $e6 $03
	cp $01                                           ; $6d93: $fe $01
	jr c, jr_009_6d9b                                ; $6d95: $38 $04

	jr z, jr_009_6d9f                                ; $6d97: $28 $06

	jr jr_009_6da3                                   ; $6d99: $18 $08

jr_009_6d9b:
	ld a, $0d                                        ; $6d9b: $3e $0d
	jr jr_009_6da9                                   ; $6d9d: $18 $0a

jr_009_6d9f:
	ld a, $10                                        ; $6d9f: $3e $10
	jr jr_009_6da9                                   ; $6da1: $18 $06

jr_009_6da3:
	ld a, $15                                        ; $6da3: $3e $15
	jr jr_009_6da9                                   ; $6da5: $18 $02

jr_009_6da7:
	ld a, $04                                        ; $6da7: $3e $04

jr_009_6da9:
	ld l, $0a                                        ; $6da9: $2e $0a
	ld [hl], a                                       ; $6dab: $77
	ret                                              ; $6dac: $c9


jr_009_6dad:
	ld a, [$d8ae]                                    ; $6dad: $fa $ae $d8
	or a                                             ; $6db0: $b7
	jr z, jr_009_6db8                                ; $6db1: $28 $05

	rst FarCall                                          ; $6db3: $f7
	push hl                                          ; $6db4: $e5
	ld [hl], h                                       ; $6db5: $74
	add hl, bc                                       ; $6db6: $09
	ret                                              ; $6db7: $c9


jr_009_6db8:
	ld l, $30                                        ; $6db8: $2e $30
	xor a                                            ; $6dba: $af
	ld [hl+], a                                      ; $6dbb: $22
	ld [hl], a                                       ; $6dbc: $77
	ld de, $906a                                     ; $6dbd: $11 $6a $90
	ld bc, $6fb0                                     ; $6dc0: $01 $b0 $6f
	ld a, [$d8b7]                                    ; $6dc3: $fa $b7 $d8
	cp $01                                           ; $6dc6: $fe $01
	jr c, jr_009_6dd2                                ; $6dc8: $38 $08

	ld bc, $70e4                                     ; $6dca: $01 $e4 $70
	jr z, jr_009_6dd2                                ; $6dcd: $28 $03

	ld bc, $70fc                                     ; $6dcf: $01 $fc $70

jr_009_6dd2:
	ld a, $0c                                        ; $6dd2: $3e $0c
	call $3d99                                       ; $6dd4: $cd $99 $3d
	call $3d71                                       ; $6dd7: $cd $71 $3d
	call $3d53                                       ; $6dda: $cd $53 $3d
	ret                                              ; $6ddd: $c9


	jp Jump_009_7431                                 ; $6dde: $c3 $31 $74


	ld a, [$d8b7]                                    ; $6de1: $fa $b7 $d8
	cp $02                                           ; $6de4: $fe $02
	jp nz, Jump_009_743e                             ; $6de6: $c2 $3e $74

	ld a, [$d884]                                    ; $6de9: $fa $84 $d8
	cp $11                                           ; $6dec: $fe $11
	ret nz                                           ; $6dee: $c0

	ld l, $0a                                        ; $6def: $2e $0a
	ld [hl], $06                                     ; $6df1: $36 $06
	ret                                              ; $6df3: $c9


	jp Jump_009_7468                                 ; $6df4: $c3 $68 $74


	ld [hl], $07                                     ; $6df7: $36 $07
	ld bc, $0035                                     ; $6df9: $01 $35 $00
	call $3cd9                                       ; $6dfc: $cd $d9 $3c
	ld hl, $7c67                                     ; $6dff: $21 $67 $7c
	jp $3c78                                         ; $6e02: $c3 $78 $3c


	call $3ce2                                       ; $6e05: $cd $e2 $3c
	ret nz                                           ; $6e08: $c0

	ld l, $0a                                        ; $6e09: $2e $0a
	ld [hl], $08                                     ; $6e0b: $36 $08
	call $3da5                                       ; $6e0d: $cd $a5 $3d
	ld bc, $508f                                     ; $6e10: $01 $8f $50
	ld a, $30                                        ; $6e13: $3e $30
	call $3bfc                                       ; $6e15: $cd $fc $3b
	ld de, $0180                                     ; $6e18: $11 $80 $01
	ld bc, $0000                                     ; $6e1b: $01 $00 $00
	call $3d32                                       ; $6e1e: $cd $32 $3d
	call $16d0                                       ; $6e21: $cd $d0 $16
	ret                                              ; $6e24: $c9


	call $16d0                                       ; $6e25: $cd $d0 $16
	call $3d1b                                       ; $6e28: $cd $1b $3d
	ld l, $07                                        ; $6e2b: $2e $07
	ld a, [hl]                                       ; $6e2d: $7e
	cp $b8                                           ; $6e2e: $fe $b8
	ret c                                            ; $6e30: $d8

	ld [hl], $b8                                     ; $6e31: $36 $b8
	ld l, $0a                                        ; $6e33: $2e $0a
	ld [hl], $09                                     ; $6e35: $36 $09
	ld l, $30                                        ; $6e37: $2e $30
	ld [hl], $1e                                     ; $6e39: $36 $1e
	ret                                              ; $6e3b: $c9


	ld l, $30                                        ; $6e3c: $2e $30
	dec [hl]                                         ; $6e3e: $35
	ret nz                                           ; $6e3f: $c0

	ld l, $0a                                        ; $6e40: $2e $0a
	ld [hl], $0a                                     ; $6e42: $36 $0a
	call $3da5                                       ; $6e44: $cd $a5 $3d
	ld bc, $508d                                     ; $6e47: $01 $8d $50
	ld a, $3e                                        ; $6e4a: $3e $3e
	call $3bfc                                       ; $6e4c: $cd $fc $3b
	call $16d0                                       ; $6e4f: $cd $d0 $16
	ld de, $fe80                                     ; $6e52: $11 $80 $fe
	ld bc, $0000                                     ; $6e55: $01 $00 $00
	call $3d32                                       ; $6e58: $cd $32 $3d
	ld hl, $7c73                                     ; $6e5b: $21 $73 $7c
	jp $3c78                                         ; $6e5e: $c3 $78 $3c


	call $16d0                                       ; $6e61: $cd $d0 $16
	call $3d1b                                       ; $6e64: $cd $1b $3d
	ld l, $07                                        ; $6e67: $2e $07
	ld a, [hl]                                       ; $6e69: $7e
	cp $90                                           ; $6e6a: $fe $90
	ret nc                                           ; $6e6c: $d0

	ld [hl], $90                                     ; $6e6d: $36 $90
	ld l, $0a                                        ; $6e6f: $2e $0a
	ld [hl], $0b                                     ; $6e71: $36 $0b
	xor a                                            ; $6e73: $af
	ld [$d8b7], a                                    ; $6e74: $ea $b7 $d8
	ld bc, $0036                                     ; $6e77: $01 $36 $00
	call $3cd9                                       ; $6e7a: $cd $d9 $3c
	ret                                              ; $6e7d: $c9


	call $3ce2                                       ; $6e7e: $cd $e2 $3c
	ret nz                                           ; $6e81: $c0

	ld a, [$d840]                                    ; $6e82: $fa $40 $d8
	cp $06                                           ; $6e85: $fe $06
	jr z, jr_009_6e8f                                ; $6e87: $28 $06

	ld a, $ff                                        ; $6e89: $3e $ff
	ld [$d884], a                                    ; $6e8b: $ea $84 $d8
	ret                                              ; $6e8e: $c9


jr_009_6e8f:
	ld l, $0a                                        ; $6e8f: $2e $0a
	ld [hl], $0c                                     ; $6e91: $36 $0c
	ld l, $30                                        ; $6e93: $2e $30
	ld [hl], $50                                     ; $6e95: $36 $50
	ld bc, $67ae                                     ; $6e97: $01 $ae $67
	call $18c4                                       ; $6e9a: $cd $c4 $18
	ld b, $04                                        ; $6e9d: $06 $04
	call $0a64                                       ; $6e9f: $cd $64 $0a
	ret                                              ; $6ea2: $c9


	call $0a7a                                       ; $6ea3: $cd $7a $0a
	ld l, $30                                        ; $6ea6: $2e $30
	dec [hl]                                         ; $6ea8: $35
	ret nz                                           ; $6ea9: $c0

	ld l, $0a                                        ; $6eaa: $2e $0a
	ld [hl], $02                                     ; $6eac: $36 $02
	ld a, $0f                                        ; $6eae: $3e $0f
	ld [$d884], a                                    ; $6eb0: $ea $84 $d8
	ld hl, $7c4d                                     ; $6eb3: $21 $4d $7c
	jp $3c78                                         ; $6eb6: $c3 $78 $3c


	ld [hl], $0e                                     ; $6eb9: $36 $0e
	call $3da5                                       ; $6ebb: $cd $a5 $3d
	ld bc, $5094                                     ; $6ebe: $01 $94 $50
	ld a, $30                                        ; $6ec1: $3e $30
	call $3bfc                                       ; $6ec3: $cd $fc $3b
	ld l, $30                                        ; $6ec6: $2e $30
	ld [hl], $5a                                     ; $6ec8: $36 $5a
	ld bc, $0037                                     ; $6eca: $01 $37 $00
	call $3cd9                                       ; $6ecd: $cd $d9 $3c
	ld hl, $7c73                                     ; $6ed0: $21 $73 $7c
	call $3c78                                       ; $6ed3: $cd $78 $3c
	ret                                              ; $6ed6: $c9


	call $16d0                                       ; $6ed7: $cd $d0 $16
	ld l, $30                                        ; $6eda: $2e $30
	dec [hl]                                         ; $6edc: $35
	ret nz                                           ; $6edd: $c0

	ld l, $0a                                        ; $6ede: $2e $0a
	ld [hl], $0f                                     ; $6ee0: $36 $0f
	call $3da5                                       ; $6ee2: $cd $a5 $3d
	ld bc, $5092                                     ; $6ee5: $01 $92 $50
	ld a, $3e                                        ; $6ee8: $3e $3e
	call $3bfc                                       ; $6eea: $cd $fc $3b
	call $16d0                                       ; $6eed: $cd $d0 $16
	ld l, $30                                        ; $6ef0: $2e $30
	ld [hl], $d2                                     ; $6ef2: $36 $d2
	ld bc, $0038                                     ; $6ef4: $01 $38 $00
	call $3cd9                                       ; $6ef7: $cd $d9 $3c
	ld hl, $7c54                                     ; $6efa: $21 $54 $7c
	call $3c78                                       ; $6efd: $cd $78 $3c
	ld a, $72                                        ; $6f00: $3e $72
	call $1e2e                                       ; $6f02: $cd $2e $1e
	ret                                              ; $6f05: $c9


	call $16d0                                       ; $6f06: $cd $d0 $16
	ld l, $30                                        ; $6f09: $2e $30
	dec [hl]                                         ; $6f0b: $35
	ret nz                                           ; $6f0c: $c0

	ld l, $0a                                        ; $6f0d: $2e $0a
	ld [hl], $03                                     ; $6f0f: $36 $03
	ld de, $906a                                     ; $6f11: $11 $6a $90
	ld bc, $70e4                                     ; $6f14: $01 $e4 $70
	ld a, $0c                                        ; $6f17: $3e $0c
	call $3d99                                       ; $6f19: $cd $99 $3d
	ld a, $01                                        ; $6f1c: $3e $01
	ld [$d8b7], a                                    ; $6f1e: $ea $b7 $d8
	ld hl, $7c60                                     ; $6f21: $21 $60 $7c
	jp $3c78                                         ; $6f24: $c3 $78 $3c


	ld [hl], $11                                     ; $6f27: $36 $11
	call $3da5                                       ; $6f29: $cd $a5 $3d
	ld bc, $5094                                     ; $6f2c: $01 $94 $50
	ld a, $30                                        ; $6f2f: $3e $30
	call $3bfc                                       ; $6f31: $cd $fc $3b
	ld bc, $001e                                     ; $6f34: $01 $1e $00
	call $3cd9                                       ; $6f37: $cd $d9 $3c
	ld hl, $7c73                                     ; $6f3a: $21 $73 $7c
	jp $3c78                                         ; $6f3d: $c3 $78 $3c


	call $3ce2                                       ; $6f40: $cd $e2 $3c
	jr nz, jr_009_6f5d                               ; $6f43: $20 $18

	ld l, $0a                                        ; $6f45: $2e $0a
	ld [hl], $12                                     ; $6f47: $36 $12
	call $3da5                                       ; $6f49: $cd $a5 $3d
	ld bc, $508c                                     ; $6f4c: $01 $8c $50
	ld a, $3e                                        ; $6f4f: $3e $3e
	call $3bfc                                       ; $6f51: $cd $fc $3b
	ld de, $0180                                     ; $6f54: $11 $80 $01
	ld bc, $0000                                     ; $6f57: $01 $00 $00
	call $3d32                                       ; $6f5a: $cd $32 $3d

jr_009_6f5d:
	call $16d0                                       ; $6f5d: $cd $d0 $16
	ret                                              ; $6f60: $c9


	call $16d0                                       ; $6f61: $cd $d0 $16
	call $3d1b                                       ; $6f64: $cd $1b $3d
	ld l, $07                                        ; $6f67: $2e $07
	ld a, [hl]                                       ; $6f69: $7e
	cp $b8                                           ; $6f6a: $fe $b8
	ret c                                            ; $6f6c: $d8

	ld [hl], $b8                                     ; $6f6d: $36 $b8
	ld l, $0a                                        ; $6f6f: $2e $0a
	ld [hl], $13                                     ; $6f71: $36 $13
	ld l, $30                                        ; $6f73: $2e $30
	ld [hl], $1e                                     ; $6f75: $36 $1e
	ret                                              ; $6f77: $c9


	ld l, $30                                        ; $6f78: $2e $30
	dec [hl]                                         ; $6f7a: $35
	ret nz                                           ; $6f7b: $c0

	ld l, $0a                                        ; $6f7c: $2e $0a
	ld [hl], $14                                     ; $6f7e: $36 $14
	call $3da5                                       ; $6f80: $cd $a5 $3d
	ld bc, $508e                                     ; $6f83: $01 $8e $50
	ld a, $30                                        ; $6f86: $3e $30
	call $3bfc                                       ; $6f88: $cd $fc $3b
	call $16d0                                       ; $6f8b: $cd $d0 $16
	ld de, $fe80                                     ; $6f8e: $11 $80 $fe
	ld bc, $0000                                     ; $6f91: $01 $00 $00
	call $3d32                                       ; $6f94: $cd $32 $3d
	ld hl, $7c67                                     ; $6f97: $21 $67 $7c
	jp $3c78                                         ; $6f9a: $c3 $78 $3c


	call $16d0                                       ; $6f9d: $cd $d0 $16
	call $3d1b                                       ; $6fa0: $cd $1b $3d
	ld l, $07                                        ; $6fa3: $2e $07
	ld a, [hl]                                       ; $6fa5: $7e
	cp $90                                           ; $6fa6: $fe $90
	ret nc                                           ; $6fa8: $d0

	ld [hl], $90                                     ; $6fa9: $36 $90
	ld l, $0a                                        ; $6fab: $2e $0a
	ld [hl], $03                                     ; $6fad: $36 $03
	ld a, $02                                        ; $6faf: $3e $02
	ld [$d8b7], a                                    ; $6fb1: $ea $b7 $d8
	ret                                              ; $6fb4: $c9


	ld [hl], $16                                     ; $6fb5: $36 $16
	ld bc, $0034                                     ; $6fb7: $01 $34 $00
	call $3cd9                                       ; $6fba: $cd $d9 $3c
	ret                                              ; $6fbd: $c9


	call $3ce2                                       ; $6fbe: $cd $e2 $3c
	ret nz                                           ; $6fc1: $c0

	ld l, $0a                                        ; $6fc2: $2e $0a
	ld [hl], $17                                     ; $6fc4: $36 $17
	call Call_000_1309                                       ; $6fc6: $cd $09 $13
	and $02                                          ; $6fc9: $e6 $02
	ld [$d8b0], a                                    ; $6fcb: $ea $b0 $d8
	rst FarCall                                          ; $6fce: $f7
	sbc h                                            ; $6fcf: $9c
	ld b, l                                          ; $6fd0: $45
	add hl, bc                                       ; $6fd1: $09
	ld a, d                                          ; $6fd2: $7a
	add $14                                          ; $6fd3: $c6 $14
	ld b, a                                          ; $6fd5: $47
	ld l, $31                                        ; $6fd6: $2e $31
	ld [hl], a                                       ; $6fd8: $77
	ld a, [$d840]                                    ; $6fd9: $fa $40 $d8
	cp $07                                           ; $6fdc: $fe $07
	ld a, $0a                                        ; $6fde: $3e $0a
	jr nz, jr_009_6fe4                               ; $6fe0: $20 $02

	ld a, $1a                                        ; $6fe2: $3e $1a

jr_009_6fe4:
	add e                                            ; $6fe4: $83
	ld c, a                                          ; $6fe5: $4f
	ld de, $fe80                                     ; $6fe6: $11 $80 $fe
	rst FarCall                                          ; $6fe9: $f7
	xor l                                            ; $6fea: $ad
	ld b, h                                          ; $6feb: $44
	add hl, bc                                       ; $6fec: $09
	call $3da5                                       ; $6fed: $cd $a5 $3d
	ld bc, $508e                                     ; $6ff0: $01 $8e $50
	ld a, $30                                        ; $6ff3: $3e $30
	call $3bfc                                       ; $6ff5: $cd $fc $3b
	call $16d0                                       ; $6ff8: $cd $d0 $16
	rst FarCall                                          ; $6ffb: $f7
	and d                                            ; $6ffc: $a2
	ld b, a                                          ; $6ffd: $47
	add hl, bc                                       ; $6ffe: $09
	ld bc, $63d6                                     ; $6fff: $01 $d6 $63
	call $18c4                                       ; $7002: $cd $c4 $18
	ld hl, $7c67                                     ; $7005: $21 $67 $7c
	jp $3c78                                         ; $7008: $c3 $78 $3c


	call $3d1b                                       ; $700b: $cd $1b $3d
	ld l, $31                                        ; $700e: $2e $31
	ld d, [hl]                                       ; $7010: $56
	ld l, $07                                        ; $7011: $2e $07
	ld a, [hl]                                       ; $7013: $7e
	cp d                                             ; $7014: $ba
	jr nc, jr_009_702f                               ; $7015: $30 $18

	ld l, $0a                                        ; $7017: $2e $0a
	ld [hl], $18                                     ; $7019: $36 $18
	ld l, $30                                        ; $701b: $2e $30
	ld [hl], $78                                     ; $701d: $36 $78
	call $3da5                                       ; $701f: $cd $a5 $3d
	ld bc, $5091                                     ; $7022: $01 $91 $50
	ld a, $30                                        ; $7025: $3e $30
	call $3bfc                                       ; $7027: $cd $fc $3b
	ld a, $28                                        ; $702a: $3e $28
	ld [$ca00], a                                    ; $702c: $ea $00 $ca

jr_009_702f:
	call $16d0                                       ; $702f: $cd $d0 $16
	ret                                              ; $7032: $c9


	call $16d0                                       ; $7033: $cd $d0 $16
	ld l, $30                                        ; $7036: $2e $30
	dec [hl]                                         ; $7038: $35
	ret nz                                           ; $7039: $c0

	ld l, $0a                                        ; $703a: $2e $0a
	ld [hl], $19                                     ; $703c: $36 $19
	call $3da5                                       ; $703e: $cd $a5 $3d
	ld bc, $7110                                     ; $7041: $01 $10 $71
	ld a, $30                                        ; $7044: $3e $30
	call $3d9f                                       ; $7046: $cd $9f $3d
	ld bc, $0105                                     ; $7049: $01 $05 $01
	call $3cd9                                       ; $704c: $cd $d9 $3c
	ld hl, $ca00                                     ; $704f: $21 $00 $ca
	call $2dfc                                       ; $7052: $cd $fc $2d
	ret                                              ; $7055: $c9


	call $3ce2                                       ; $7056: $cd $e2 $3c
	ret nz                                           ; $7059: $c0

	ld l, $0a                                        ; $705a: $2e $0a
	ld [hl], $1a                                     ; $705c: $36 $1a
	call $3da5                                       ; $705e: $cd $a5 $3d
	ld bc, $508f                                     ; $7061: $01 $8f $50
	ld a, $30                                        ; $7064: $3e $30
	call $3bfc                                       ; $7066: $cd $fc $3b
	call $16d0                                       ; $7069: $cd $d0 $16
	ld bc, $906a                                     ; $706c: $01 $6a $90
	ld de, $0180                                     ; $706f: $11 $80 $01
	rst FarCall                                          ; $7072: $f7
	xor l                                            ; $7073: $ad
	ld b, h                                          ; $7074: $44
	add hl, bc                                       ; $7075: $09
	ret                                              ; $7076: $c9


	call $16d0                                       ; $7077: $cd $d0 $16
	call $3d1b                                       ; $707a: $cd $1b $3d
	ld l, $07                                        ; $707d: $2e $07
	ld a, [hl]                                       ; $707f: $7e
	cp $90                                           ; $7080: $fe $90
	ret c                                            ; $7082: $d8

	ld [hl], $90                                     ; $7083: $36 $90
	ld l, $0a                                        ; $7085: $2e $0a
	ld [hl], $03                                     ; $7087: $36 $03
	ret                                              ; $7089: $c9


	rst JumpTable                                          ; $708a: $c7
	sub c                                            ; $708b: $91
	ld [hl], b                                       ; $708c: $70
	cp d                                             ; $708d: $ba
	ld [hl], b                                       ; $708e: $70
	ldh a, [c]                                       ; $708f: $f2
	ld [hl], b                                       ; $7090: $70
	inc [hl]                                         ; $7091: $34
	ld de, $7c6a                                     ; $7092: $11 $6a $7c
	call $3bf4                                       ; $7095: $cd $f4 $3b
	ld bc, $507c                                     ; $7098: $01 $7c $50
	ld a, $30                                        ; $709b: $3e $30
	call $3bfc                                       ; $709d: $cd $fc $3b
	call $3d53                                       ; $70a0: $cd $53 $3d
	call Call_009_459c                               ; $70a3: $cd $9c $45
	ld a, d                                          ; $70a6: $7a
	add $0c                                          ; $70a7: $c6 $0c
	ld b, a                                          ; $70a9: $47
	ld a, e                                          ; $70aa: $7b
	add $0c                                          ; $70ab: $c6 $0c
	ld c, a                                          ; $70ad: $4f
	ld de, $ffa0                                     ; $70ae: $11 $a0 $ff
	rst FarCall                                          ; $70b1: $f7
	xor l                                            ; $70b2: $ad
	ld b, h                                          ; $70b3: $44
	add hl, bc                                       ; $70b4: $09
	ld l, $30                                        ; $70b5: $2e $30
	xor a                                            ; $70b7: $af
	ld [hl+], a                                      ; $70b8: $22
	ld [hl], a                                       ; $70b9: $77
	call $16d0                                       ; $70ba: $cd $d0 $16
	call $3d1b                                       ; $70bd: $cd $1b $3d
	ld l, $30                                        ; $70c0: $2e $30
	inc [hl]                                         ; $70c2: $34
	ld a, [hl]                                       ; $70c3: $7e
	and $3c                                          ; $70c4: $e6 $3c
	rrca                                             ; $70c6: $0f
	rrca                                             ; $70c7: $0f
	push hl                                          ; $70c8: $e5
	ld hl, $70fa                                     ; $70c9: $21 $fa $70
	rst AddAOntoHL                                          ; $70cc: $ef
	ld a, [hl]                                       ; $70cd: $7e
	pop hl                                           ; $70ce: $e1
	ld d, a                                          ; $70cf: $57
	ld e, $00                                        ; $70d0: $1e $00
	sra d                                            ; $70d2: $cb $2a
	rr e                                             ; $70d4: $cb $1b
	sra d                                            ; $70d6: $cb $2a
	rr e                                             ; $70d8: $cb $1b
	ld l, $04                                        ; $70da: $2e $04
	ld a, [hl]                                       ; $70dc: $7e
	add e                                            ; $70dd: $83
	ld [hl+], a                                      ; $70de: $22
	ld a, [hl]                                       ; $70df: $7e
	adc d                                            ; $70e0: $8a
	ld [hl], a                                       ; $70e1: $77
	call Call_009_459c                               ; $70e2: $cd $9c $45
	ld a, d                                          ; $70e5: $7a
	add $0c                                          ; $70e6: $c6 $0c
	ld d, a                                          ; $70e8: $57
	ld l, $07                                        ; $70e9: $2e $07
	ld a, [hl]                                       ; $70eb: $7e
	cp d                                             ; $70ec: $ba
	ret nc                                           ; $70ed: $d0

	ld l, $0a                                        ; $70ee: $2e $0a
	inc [hl]                                         ; $70f0: $34
	ret                                              ; $70f1: $c9


	ld l, $31                                        ; $70f2: $2e $31
	ld [hl], $01                                     ; $70f4: $36 $01
	call $16d0                                       ; $70f6: $cd $d0 $16
	ret                                              ; $70f9: $c9


	inc bc                                           ; $70fa: $03
	ld [bc], a                                       ; $70fb: $02
	ld bc, $ff00                                     ; $70fc: $01 $00 $ff
	cp $fd                                           ; $70ff: $fe $fd
	db $fc                                           ; $7101: $fc
	db $fd                                           ; $7102: $fd
	cp $ff                                           ; $7103: $fe $ff
	nop                                              ; $7105: $00
	ld bc, $0302                                     ; $7106: $01 $02 $03
	inc b                                            ; $7109: $04
	rst JumpTable                                          ; $710a: $c7
	rla                                              ; $710b: $17
	ld [hl], c                                       ; $710c: $71
	ld [hl], $71                                     ; $710d: $36 $71
	ld c, a                                          ; $710f: $4f
	ld [hl], c                                       ; $7110: $71
	ld l, h                                          ; $7111: $6c
	ld [hl], c                                       ; $7112: $71
	add e                                            ; $7113: $83
	ld [hl], c                                       ; $7114: $71
	xor [hl]                                         ; $7115: $ae
	ld [hl], c                                       ; $7116: $71
	inc [hl]                                         ; $7117: $34
	ld l, $30                                        ; $7118: $2e $30
	ld [hl], $28                                     ; $711a: $36 $28
	ld de, $6d5e                                     ; $711c: $11 $5e $6d
	call $3bf4                                       ; $711f: $cd $f4 $3b
	call $3da5                                       ; $7122: $cd $a5 $3d
	ld bc, $5089                                     ; $7125: $01 $89 $50
	ld a, $30                                        ; $7128: $3e $30
	call $3bfc                                       ; $712a: $cd $fc $3b
	call $16d0                                       ; $712d: $cd $d0 $16
	ld a, $2e                                        ; $7130: $3e $2e
	call $1e2e                                       ; $7132: $cd $2e $1e
	ret                                              ; $7135: $c9


	ld l, $30                                        ; $7136: $2e $30
	dec [hl]                                         ; $7138: $35
	jr nz, jr_009_714b                               ; $7139: $20 $10

	ld [hl], $78                                     ; $713b: $36 $78
	ld l, $0a                                        ; $713d: $2e $0a
	inc [hl]                                         ; $713f: $34
	call $3da5                                       ; $7140: $cd $a5 $3d
	ld bc, $508a                                     ; $7143: $01 $8a $50
	ld a, $30                                        ; $7146: $3e $30
	call $3bfc                                       ; $7148: $cd $fc $3b

jr_009_714b:
	call $16d0                                       ; $714b: $cd $d0 $16
	ret                                              ; $714e: $c9


	ld l, $30                                        ; $714f: $2e $30
	dec [hl]                                         ; $7151: $35
	jr nz, jr_009_7168                               ; $7152: $20 $14

	ld l, $0a                                        ; $7154: $2e $0a
	inc [hl]                                         ; $7156: $34
	call Call_009_459c                               ; $7157: $cd $9c $45
	ld b, d                                          ; $715a: $42
	ld c, e                                          ; $715b: $4b
	ld de, $fd80                                     ; $715c: $11 $80 $fd
	rst FarCall                                          ; $715f: $f7
	xor l                                            ; $7160: $ad
	ld b, h                                          ; $7161: $44
	add hl, bc                                       ; $7162: $09
	ld a, $75                                        ; $7163: $3e $75
	call $1e2e                                       ; $7165: $cd $2e $1e

jr_009_7168:
	call $16d0                                       ; $7168: $cd $d0 $16
	ret                                              ; $716b: $c9


	call $3d1b                                       ; $716c: $cd $1b $3d
	call Call_009_459c                               ; $716f: $cd $9c $45
	ld l, $07                                        ; $7172: $2e $07
	ld a, [hl]                                       ; $7174: $7e
	cp d                                             ; $7175: $ba
	jr nc, jr_009_717f                               ; $7176: $30 $07

	ld l, $0a                                        ; $7178: $2e $0a
	inc [hl]                                         ; $717a: $34
	ld l, $30                                        ; $717b: $2e $30
	ld [hl], $0a                                     ; $717d: $36 $0a

jr_009_717f:
	call $16d0                                       ; $717f: $cd $d0 $16
	ret                                              ; $7182: $c9


	call $16d0                                       ; $7183: $cd $d0 $16
	ld l, $30                                        ; $7186: $2e $30
	dec [hl]                                         ; $7188: $35
	ret nz                                           ; $7189: $c0

	ld l, $0a                                        ; $718a: $2e $0a
	inc [hl]                                         ; $718c: $34
	call Call_009_4503                               ; $718d: $cd $03 $45
	ld a, $64                                        ; $7190: $3e $64
	ld l, $05                                        ; $7192: $2e $05
	jr nz, jr_009_7199                               ; $7194: $20 $03

	ld a, [hl]                                       ; $7196: $7e
	add $0c                                          ; $7197: $c6 $0c

jr_009_7199:
	ld [hl], a                                       ; $7199: $77
	call $3da5                                       ; $719a: $cd $a5 $3d
	ld bc, $508b                                     ; $719d: $01 $8b $50
	ld a, $30                                        ; $71a0: $3e $30
	call $3bfc                                       ; $71a2: $cd $fc $3b
	call $16d0                                       ; $71a5: $cd $d0 $16
	ld a, $39                                        ; $71a8: $3e $39
	call $1e2e                                       ; $71aa: $cd $2e $1e
	ret                                              ; $71ad: $c9


	call $3d4b                                       ; $71ae: $cd $4b $3d
	call $16d0                                       ; $71b1: $cd $d0 $16
	ret                                              ; $71b4: $c9


	rst JumpTable                                          ; $71b5: $c7
	cp h                                             ; $71b6: $bc
	ld [hl], c                                       ; $71b7: $71
	ret c                                            ; $71b8: $d8

	ld [hl], c                                       ; $71b9: $71
	db $ec                                           ; $71ba: $ec
	ld [hl], c                                       ; $71bb: $71
	inc [hl]                                         ; $71bc: $34
	ld l, $30                                        ; $71bd: $2e $30
	xor a                                            ; $71bf: $af
	ld [hl], a                                       ; $71c0: $77
	ld de, $906a                                     ; $71c1: $11 $6a $90
	call $3bf4                                       ; $71c4: $cd $f4 $3b
	call $3da5                                       ; $71c7: $cd $a5 $3d
	ld bc, $5081                                     ; $71ca: $01 $81 $50
	ld a, $30                                        ; $71cd: $3e $30
	call $3bfc                                       ; $71cf: $cd $fc $3b
	call $3d53                                       ; $71d2: $cd $53 $3d
	jp $16d0                                         ; $71d5: $c3 $d0 $16


	ld l, $30                                        ; $71d8: $2e $30
	ld a, [hl]                                       ; $71da: $7e
	or a                                             ; $71db: $b7
	jr z, jr_009_71ec                                ; $71dc: $28 $0e

	ld l, $0a                                        ; $71de: $2e $0a
	inc [hl]                                         ; $71e0: $34
	call $3da5                                       ; $71e1: $cd $a5 $3d
	ld bc, $5082                                     ; $71e4: $01 $82 $50
	ld a, $30                                        ; $71e7: $3e $30
	call $3bfc                                       ; $71e9: $cd $fc $3b

jr_009_71ec:
	jp $16d0                                         ; $71ec: $c3 $d0 $16


	rst JumpTable                                          ; $71ef: $c7
	db $f4                                           ; $71f0: $f4
	ld [hl], c                                       ; $71f1: $71
	dec bc                                           ; $71f2: $0b
	ld [hl], d                                       ; $71f3: $72
	inc [hl]                                         ; $71f4: $34
	call Call_009_459c                               ; $71f5: $cd $9c $45
	call $3bf4                                       ; $71f8: $cd $f4 $3b
	ld bc, $5090                                     ; $71fb: $01 $90 $50
	ld a, $30                                        ; $71fe: $3e $30
	call $3bfc                                       ; $7200: $cd $fc $3b
	call $3d53                                       ; $7203: $cd $53 $3d
	ld a, $60                                        ; $7206: $3e $60
	call $1e2e                                       ; $7208: $cd $2e $1e
	call $16d0                                       ; $720b: $cd $d0 $16
	ld l, $0c                                        ; $720e: $2e $0c
	ld a, [hl]                                       ; $7210: $7e
	or a                                             ; $7211: $b7
	ret nz                                           ; $7212: $c0

	call Call_009_459c                               ; $7213: $cd $9c $45
	ld a, d                                          ; $7216: $7a
	sub $06                                          ; $7217: $d6 $06
	ld d, a                                          ; $7219: $57
	ld a, e                                          ; $721a: $7b
	sub $08                                          ; $721b: $d6 $08
	ld e, a                                          ; $721d: $5f
	rst FarCall                                          ; $721e: $f7
	db $f4                                           ; $721f: $f4
	ld b, h                                          ; $7220: $44
	add hl, bc                                       ; $7221: $09
	call $3bf4                                       ; $7222: $cd $f4 $3b
	ld l, $0c                                        ; $7225: $2e $0c
	inc [hl]                                         ; $7227: $34
	ld a, $60                                        ; $7228: $3e $60
	call $1e2e                                       ; $722a: $cd $2e $1e
	ret                                              ; $722d: $c9


	rst FarCall                                          ; $722e: $f7
	push bc                                          ; $722f: $c5
	ld [hl], l                                       ; $7230: $75
	ld a, [bc]                                       ; $7231: $0a
	ret                                              ; $7232: $c9


	rst FarCall                                          ; $7233: $f7
	ld [hl], $76                                     ; $7234: $36 $76
	ld a, [bc]                                       ; $7236: $0a
	ret                                              ; $7237: $c9


	rst FarCall                                          ; $7238: $f7
	add e                                            ; $7239: $83
	ld a, b                                          ; $723a: $78
	ld a, [bc]                                       ; $723b: $0a
	ret                                              ; $723c: $c9


	rst FarCall                                          ; $723d: $f7
	db $e3                                           ; $723e: $e3
	ld a, b                                          ; $723f: $78
	ld a, [bc]                                       ; $7240: $0a
	ret                                              ; $7241: $c9


	rst FarCall                                          ; $7242: $f7
	daa                                              ; $7243: $27
	ld a, c                                          ; $7244: $79
	ld a, [bc]                                       ; $7245: $0a
	ret                                              ; $7246: $c9


	rst FarCall                                          ; $7247: $f7
	ld [hl+], a                                      ; $7248: $22
	ld a, d                                          ; $7249: $7a
	ld a, [bc]                                       ; $724a: $0a
	ret                                              ; $724b: $c9


	rst FarCall                                          ; $724c: $f7
	ld c, b                                          ; $724d: $48
	ld a, d                                          ; $724e: $7a
	ld a, [bc]                                       ; $724f: $0a
	ret                                              ; $7250: $c9


	rst FarCall                                          ; $7251: $f7
	ld e, d                                          ; $7252: $5a
	ld a, e                                          ; $7253: $7b
	ld a, [bc]                                       ; $7254: $0a
	ret                                              ; $7255: $c9


	rst FarCall                                          ; $7256: $f7
	sub h                                            ; $7257: $94
	ld a, e                                          ; $7258: $7b
	ld a, [bc]                                       ; $7259: $0a
	ret                                              ; $725a: $c9


	ld a, [hl]                                       ; $725b: $7e
	rst JumpTable                                          ; $725c: $c7
	ld a, c                                          ; $725d: $79
	ld [hl], d                                       ; $725e: $72
	ld a, h                                          ; $725f: $7c
	ld [hl], d                                       ; $7260: $72
	ld a, a                                          ; $7261: $7f
	ld [hl], d                                       ; $7262: $72
	push bc                                          ; $7263: $c5
	ld [hl], d                                       ; $7264: $72
	ret z                                            ; $7265: $c8

	ld [hl], d                                       ; $7266: $72
	bit 6, d                                         ; $7267: $cb $72
	adc $72                                          ; $7269: $ce $72
	dec b                                            ; $726b: $05
	ld [hl], e                                       ; $726c: $73
	ld d, c                                          ; $726d: $51
	ld [hl], e                                       ; $726e: $73
	sbc [hl]                                         ; $726f: $9e
	ld [hl], e                                       ; $7270: $73
	jp nz, $d573                                     ; $7271: $c2 $73 $d5

	ld [hl], e                                       ; $7274: $73
	sbc $73                                          ; $7275: $de $73
	rst $38                                          ; $7277: $ff
	ld [hl], e                                       ; $7278: $73
	jp Jump_009_7408                                 ; $7279: $c3 $08 $74


	jp Jump_009_741e                                 ; $727c: $c3 $1e $74


	ld a, [$d884]                                    ; $727f: $fa $84 $d8
	cp $01                                           ; $7282: $fe $01
	jr z, jr_009_728c                                ; $7284: $28 $06

	cp $0a                                           ; $7286: $fe $0a
	jr z, jr_009_72a1                                ; $7288: $28 $17

	jr jr_009_72a7                                   ; $728a: $18 $1b

jr_009_728c:
	ld a, [$d844]                                    ; $728c: $fa $44 $d8
	and $03                                          ; $728f: $e6 $03
	cp $01                                           ; $7291: $fe $01
	jr c, jr_009_7299                                ; $7293: $38 $04

	jr z, jr_009_7299                                ; $7295: $28 $02

	jr jr_009_729d                                   ; $7297: $18 $04

jr_009_7299:
	ld a, $06                                        ; $7299: $3e $06
	jr jr_009_72a3                                   ; $729b: $18 $06

jr_009_729d:
	ld a, $0b                                        ; $729d: $3e $0b
	jr jr_009_72a3                                   ; $729f: $18 $02

jr_009_72a1:
	ld a, $04                                        ; $72a1: $3e $04

jr_009_72a3:
	ld l, $0a                                        ; $72a3: $2e $0a
	ld [hl], a                                       ; $72a5: $77
	ret                                              ; $72a6: $c9


jr_009_72a7:
	ld a, [$d8ae]                                    ; $72a7: $fa $ae $d8
	or a                                             ; $72aa: $b7
	jp nz, Jump_009_74e5                             ; $72ab: $c2 $e5 $74

	ld l, $30                                        ; $72ae: $2e $30
	xor a                                            ; $72b0: $af
	ld [hl+], a                                      ; $72b1: $22
	ld [hl], a                                       ; $72b2: $77
	ld de, $906a                                     ; $72b3: $11 $6a $90
	ld bc, $44d8                                     ; $72b6: $01 $d8 $44
	ld a, $0c                                        ; $72b9: $3e $0c
	call $3d99                                       ; $72bb: $cd $99 $3d
	call $3d71                                       ; $72be: $cd $71 $3d
	call $3d53                                       ; $72c1: $cd $53 $3d
	ret                                              ; $72c4: $c9


	jp Jump_009_7431                                 ; $72c5: $c3 $31 $74


	jp Jump_009_743e                                 ; $72c8: $c3 $3e $74


	jp Jump_009_7468                                 ; $72cb: $c3 $68 $74


	ld [hl], $07                                     ; $72ce: $36 $07
	ld l, $30                                        ; $72d0: $2e $30
	ld [hl], $5a                                     ; $72d2: $36 $5a
	call $3da5                                       ; $72d4: $cd $a5 $3d
	ld bc, $5005                                     ; $72d7: $01 $05 $50
	ld a, $30                                        ; $72da: $3e $30
	call $3bfc                                       ; $72dc: $cd $fc $3b
	ld a, [$d844]                                    ; $72df: $fa $44 $d8
	and $03                                          ; $72e2: $e6 $03
	ld bc, $001f                                     ; $72e4: $01 $1f $00
	jr z, jr_009_72ec                                ; $72e7: $28 $03

	ld bc, $0021                                     ; $72e9: $01 $21 $00

jr_009_72ec:
	call $3cd9                                       ; $72ec: $cd $d9 $3c
	ld bc, $63c6                                     ; $72ef: $01 $c6 $63
	call $18c4                                       ; $72f2: $cd $c4 $18
	ld a, [$d844]                                    ; $72f5: $fa $44 $d8
	and $03                                          ; $72f8: $e6 $03
	ld hl, $7ed3                                     ; $72fa: $21 $d3 $7e
	jr z, jr_009_7302                                ; $72fd: $28 $03

	ld hl, $7ee4                                     ; $72ff: $21 $e4 $7e

jr_009_7302:
	jp $3c78                                         ; $7302: $c3 $78 $3c


	ld l, $30                                        ; $7305: $2e $30
	dec [hl]                                         ; $7307: $35
	jr nz, jr_009_734e                               ; $7308: $20 $44

	ld l, $0a                                        ; $730a: $2e $0a
	ld [hl], $08                                     ; $730c: $36 $08
	call $3da5                                       ; $730e: $cd $a5 $3d
	ld a, [$d844]                                    ; $7311: $fa $44 $d8
	and $03                                          ; $7314: $e6 $03
	ld bc, $5006                                     ; $7316: $01 $06 $50
	jr z, jr_009_731e                                ; $7319: $28 $03

	ld bc, $5007                                     ; $731b: $01 $07 $50

jr_009_731e:
	ld a, $3e                                        ; $731e: $3e $3e
	call $3bfc                                       ; $7320: $cd $fc $3b
	rst FarCall                                          ; $7323: $f7
	sbc h                                            ; $7324: $9c
	ld b, l                                          ; $7325: $45
	add hl, bc                                       ; $7326: $09
	ld a, d                                          ; $7327: $7a
	add $11                                          ; $7328: $c6 $11
	ld b, a                                          ; $732a: $47
	ld l, $31                                        ; $732b: $2e $31
	ld [hl], a                                       ; $732d: $77
	ld a, e                                          ; $732e: $7b
	add $0d                                          ; $732f: $c6 $0d
	ld c, a                                          ; $7331: $4f
	ld de, $ff80                                     ; $7332: $11 $80 $ff
	rst FarCall                                          ; $7335: $f7
	xor l                                            ; $7336: $ad
	ld b, h                                          ; $7337: $44
	add hl, bc                                       ; $7338: $09
	ld a, [$d844]                                    ; $7339: $fa $44 $d8
	and $03                                          ; $733c: $e6 $03
	ld bc, $0020                                     ; $733e: $01 $20 $00
	jr z, jr_009_7346                                ; $7341: $28 $03

	ld bc, $0022                                     ; $7343: $01 $22 $00

jr_009_7346:
	call $3cd9                                       ; $7346: $cd $d9 $3c
	ld a, $8a                                        ; $7349: $3e $8a
	call $1e2e                                       ; $734b: $cd $2e $1e

jr_009_734e:
	jp $16d0                                         ; $734e: $c3 $d0 $16


	call $16d0                                       ; $7351: $cd $d0 $16
	call $3d1b                                       ; $7354: $cd $1b $3d
	ld l, $31                                        ; $7357: $2e $31
	ld d, [hl]                                       ; $7359: $56
	ld l, $07                                        ; $735a: $2e $07
	ld a, [hl]                                       ; $735c: $7e
	cp d                                             ; $735d: $ba
	ret nc                                           ; $735e: $d0

	ld l, $0a                                        ; $735f: $2e $0a
	ld [hl], $09                                     ; $7361: $36 $09
	ld l, $30                                        ; $7363: $2e $30
	ld [hl], $78                                     ; $7365: $36 $78
	call $3da5                                       ; $7367: $cd $a5 $3d
	ld a, [$d844]                                    ; $736a: $fa $44 $d8
	and $03                                          ; $736d: $e6 $03
	ld bc, $4490                                     ; $736f: $01 $90 $44
	ld a, $0a                                        ; $7372: $3e $0a
	jr z, jr_009_737b                                ; $7374: $28 $05

	ld bc, $44a8                                     ; $7376: $01 $a8 $44
	ld a, $0b                                        ; $7379: $3e $0b

jr_009_737b:
	push af                                          ; $737b: $f5
	ld a, $3e                                        ; $737c: $3e $3e
	call $3d9f                                       ; $737e: $cd $9f $3d
	pop af                                           ; $7381: $f1
	ld [$ca00], a                                    ; $7382: $ea $00 $ca
	ld bc, $0000                                     ; $7385: $01 $00 $00
	call $3cd9                                       ; $7388: $cd $d9 $3c
	ld hl, $d84f                                     ; $738b: $21 $4f $d8
	ld de, $0003                                     ; $738e: $11 $03 $00
	ld a, e                                          ; $7391: $7b
	ld [hl+], a                                      ; $7392: $22
	ld [hl], d                                       ; $7393: $72
	rst FarCall                                          ; $7394: $f7
	scf                                              ; $7395: $37
	ld b, d                                          ; $7396: $42
	add hl, bc                                       ; $7397: $09
	ld a, $28                                        ; $7398: $3e $28
	call $1e2e                                       ; $739a: $cd $2e $1e
	ret                                              ; $739d: $c9


	ld l, $30                                        ; $739e: $2e $30
	dec [hl]                                         ; $73a0: $35
	ret nz                                           ; $73a1: $c0

	ld l, $0a                                        ; $73a2: $2e $0a
	ld [hl], $0a                                     ; $73a4: $36 $0a
	call $3da5                                       ; $73a6: $cd $a5 $3d
	ld bc, $5009                                     ; $73a9: $01 $09 $50
	ld a, $6a                                        ; $73ac: $3e $6a
	call $3bfc                                       ; $73ae: $cd $fc $3b
	ld bc, $906a                                     ; $73b1: $01 $6a $90
	ld de, $0180                                     ; $73b4: $11 $80 $01
	rst FarCall                                          ; $73b7: $f7
	xor l                                            ; $73b8: $ad
	ld b, h                                          ; $73b9: $44
	add hl, bc                                       ; $73ba: $09
	ld hl, $ca00                                     ; $73bb: $21 $00 $ca
	call $2dfc                                       ; $73be: $cd $fc $2d
	ret                                              ; $73c1: $c9


	call $16d0                                       ; $73c2: $cd $d0 $16
	call $3d1b                                       ; $73c5: $cd $1b $3d
	ld l, $07                                        ; $73c8: $2e $07
	ld a, [hl]                                       ; $73ca: $7e
	cp $90                                           ; $73cb: $fe $90
	ret c                                            ; $73cd: $d8

	ld [hl], $90                                     ; $73ce: $36 $90
	ld l, $0a                                        ; $73d0: $2e $0a
	ld [hl], $03                                     ; $73d2: $36 $03
	ret                                              ; $73d4: $c9


	ld [hl], $0c                                     ; $73d5: $36 $0c
	ld bc, $0023                                     ; $73d7: $01 $23 $00
	call $3cd9                                       ; $73da: $cd $d9 $3c
	ret                                              ; $73dd: $c9


	call $3ce2                                       ; $73de: $cd $e2 $3c
	ret nz                                           ; $73e1: $c0

	ld l, $0a                                        ; $73e2: $2e $0a
	ld [hl], $0d                                     ; $73e4: $36 $0d
	ld bc, $0024                                     ; $73e6: $01 $24 $00
	call $3cd9                                       ; $73e9: $cd $d9 $3c
	ld hl, $d84f                                     ; $73ec: $21 $4f $d8
	ld de, $023d                                     ; $73ef: $11 $3d $02
	ld a, e                                          ; $73f2: $7b
	ld [hl+], a                                      ; $73f3: $22
	ld [hl], d                                       ; $73f4: $72
	rst FarCall                                          ; $73f5: $f7
	scf                                              ; $73f6: $37
	ld b, d                                          ; $73f7: $42
	add hl, bc                                       ; $73f8: $09
	ld a, $2c                                        ; $73f9: $3e $2c
	call $1e2e                                       ; $73fb: $cd $2e $1e
	ret                                              ; $73fe: $c9


	call $3ce2                                       ; $73ff: $cd $e2 $3c
	ret nz                                           ; $7402: $c0

	ld l, $0a                                        ; $7403: $2e $0a
	ld [hl], $03                                     ; $7405: $36 $03
	ret                                              ; $7407: $c9


Jump_009_7408:
	ld [hl], $01                                     ; $7408: $36 $01
	push hl                                          ; $740a: $e5
	ld hl, $7485                                     ; $740b: $21 $85 $74
	ld a, [$d841]                                    ; $740e: $fa $41 $d8
	call $3c8f                                       ; $7411: $cd $8f $3c
	pop hl                                           ; $7414: $e1
	ld de, $b06a                                     ; $7415: $11 $6a $b0
	ld a, $0c                                        ; $7418: $3e $0c
	call $3d99                                       ; $741a: $cd $99 $3d
	ret                                              ; $741d: $c9


Jump_009_741e:
	ld l, $07                                        ; $741e: $2e $07
	ld a, [hl]                                       ; $7420: $7e
	sub $03                                          ; $7421: $d6 $03
	cp $90                                           ; $7423: $fe $90
	jr nc, jr_009_742f                               ; $7425: $30 $08

	ld l, $0a                                        ; $7427: $2e $0a
	ld [hl], $02                                     ; $7429: $36 $02
	ld a, $90                                        ; $742b: $3e $90
	ld l, $07                                        ; $742d: $2e $07

jr_009_742f:
	ld [hl], a                                       ; $742f: $77
	ret                                              ; $7430: $c9


Jump_009_7431:
	ld a, [$d847]                                    ; $7431: $fa $47 $d8
	and $40                                          ; $7434: $e6 $40
	ld [$d847], a                                    ; $7436: $ea $47 $d8
	ld l, $0a                                        ; $7439: $2e $0a
	ld [hl], $02                                     ; $743b: $36 $02
	ret                                              ; $743d: $c9


Jump_009_743e:
	ld l, $0a                                        ; $743e: $2e $0a
	ld [hl], $05                                     ; $7440: $36 $05
	push hl                                          ; $7442: $e5
	ld hl, $74a5                                     ; $7443: $21 $a5 $74
	ld a, [$d841]                                    ; $7446: $fa $41 $d8
	call $3c83                                       ; $7449: $cd $83 $3c
	call $3c78                                       ; $744c: $cd $78 $3c
	ld hl, $74c5                                     ; $744f: $21 $c5 $74
	ld a, [$d841]                                    ; $7452: $fa $41 $d8
	call $3c8f                                       ; $7455: $cd $8f $3c
	pop hl                                           ; $7458: $e1
	call $3da5                                       ; $7459: $cd $a5 $3d
	ld a, $50                                        ; $745c: $3e $50
	call $3bfc                                       ; $745e: $cd $fc $3b
	call $3d53                                       ; $7461: $cd $53 $3d
	call $16d0                                       ; $7464: $cd $d0 $16
	ret                                              ; $7467: $c9


Jump_009_7468:
	ld a, [$d884]                                    ; $7468: $fa $84 $d8
	cp $0f                                           ; $746b: $fe $0f
	jp nz, $16d0                                     ; $746d: $c2 $d0 $16

	ld l, $0a                                        ; $7470: $2e $0a
	ld [hl], $02                                     ; $7472: $36 $02
	xor a                                            ; $7474: $af
	ld [$d8ab], a                                    ; $7475: $ea $ab $d8
	ld a, [$d841]                                    ; $7478: $fa $41 $d8
	cp $01                                           ; $747b: $fe $01
	ret nz                                           ; $747d: $c0

	ld hl, $7bdd                                     ; $747e: $21 $dd $7b
	call $3c78                                       ; $7481: $cd $78 $3c
	ret                                              ; $7484: $c9


	ld d, b                                          ; $7485: $50
	ld b, l                                          ; $7486: $45
	xor h                                            ; $7487: $ac
	ld l, h                                          ; $7488: $6c
	inc [hl]                                         ; $7489: $34
	ld h, a                                          ; $748a: $67
	ld a, h                                          ; $748b: $7c
	ld h, h                                          ; $748c: $64
	nop                                              ; $748d: $00
	ld d, a                                          ; $748e: $57
	ld b, h                                          ; $748f: $44
	ld d, h                                          ; $7490: $54
	cp b                                             ; $7491: $b8
	ld e, b                                          ; $7492: $58
	call z, $fc6d                                    ; $7493: $cc $6d $fc
	ld l, d                                          ; $7496: $6a
	sbc b                                            ; $7497: $98
	ld d, l                                          ; $7498: $55
	call z, $b065                                    ; $7499: $cc $65 $b0
	ld e, d                                          ; $749c: $5a
	jr nz, jr_009_74fb                               ; $749d: $20 $5c

	or b                                             ; $749f: $b0
	ld l, a                                          ; $74a0: $6f
	ret c                                            ; $74a1: $d8

	ld b, h                                          ; $74a2: $44
	ld d, b                                          ; $74a3: $50
	ld b, l                                          ; $74a4: $45
	ld a, [bc]                                       ; $74a5: $0a
	ld a, a                                          ; $74a6: $7f
	ldh a, [c]                                       ; $74a7: $f2
	ld a, e                                          ; $74a8: $7b
	ld b, [hl]                                       ; $74a9: $46
	ld a, h                                          ; $74aa: $7c
	inc e                                            ; $74ab: $1c
	ld a, h                                          ; $74ac: $7c
	ld l, a                                          ; $74ad: $6f
	ld [hl], h                                       ; $74ae: $74
	adc e                                            ; $74af: $8b
	ld [hl], h                                       ; $74b0: $74
	and b                                            ; $74b1: $a0
	ld [hl], h                                       ; $74b2: $74
	rlca                                             ; $74b3: $07
	ld a, h                                          ; $74b4: $7c
	sub $7b                                          ; $74b5: $d6 $7b
	ld e, d                                          ; $74b7: $5a
	ld [hl], h                                       ; $74b8: $74
	ld sp, $c17c                                     ; $74b9: $31 $7c $c1
	ld [hl], h                                       ; $74bc: $74
	db $db                                           ; $74bd: $db
	ld [hl], h                                       ; $74be: $74
	ld a, a                                          ; $74bf: $7f
	ld a, h                                          ; $74c0: $7c
	push af                                          ; $74c1: $f5
	ld a, [hl]                                       ; $74c2: $7e
	ld a, [bc]                                       ; $74c3: $0a
	ld a, a                                          ; $74c4: $7f
	dec c                                            ; $74c5: $0d
	ld d, b                                          ; $74c6: $50
	ld [hl], l                                       ; $74c7: $75
	ld d, b                                          ; $74c8: $50
	adc b                                            ; $74c9: $88
	ld d, b                                          ; $74ca: $50
	ld a, a                                          ; $74cb: $7f
	ld d, b                                          ; $74cc: $50
	ld b, b                                          ; $74cd: $40
	ld d, b                                          ; $74ce: $50
	ld b, [hl]                                       ; $74cf: $46
	ld d, b                                          ; $74d0: $50
	ld c, l                                          ; $74d1: $4d
	ld d, b                                          ; $74d2: $50
	ld a, e                                          ; $74d3: $7b
	ld d, b                                          ; $74d4: $50
	ld [hl], d                                       ; $74d5: $72
	ld d, b                                          ; $74d6: $50
	ld a, $50                                        ; $74d7: $3e $50
	add e                                            ; $74d9: $83
	ld d, b                                          ; $74da: $50
	ld d, l                                          ; $74db: $55
	ld d, b                                          ; $74dc: $50
	ld e, d                                          ; $74dd: $5a
	ld d, b                                          ; $74de: $50
	sub e                                            ; $74df: $93
	ld d, b                                          ; $74e0: $50
	ld [$0d50], sp                                   ; $74e1: $08 $50 $0d
	ld d, b                                          ; $74e4: $50

Jump_009_74e5:
	ld a, [$d8ae]                                    ; $74e5: $fa $ae $d8
	cp $01                                           ; $74e8: $fe $01
	ret c                                            ; $74ea: $d8

	jr z, jr_009_74fc                                ; $74eb: $28 $0f

	cp $03                                           ; $74ed: $fe $03
	jr c, jr_009_750f                                ; $74ef: $38 $1e

	jr z, jr_009_751e                                ; $74f1: $28 $2b

	cp $05                                           ; $74f3: $fe $05
	jr c, jr_009_7532                                ; $74f5: $38 $3b

	xor a                                            ; $74f7: $af
	ld [$d8ae], a                                    ; $74f8: $ea $ae $d8

jr_009_74fb:
	ret                                              ; $74fb: $c9


jr_009_74fc:
	ld l, $07                                        ; $74fc: $2e $07
	ld a, [hl]                                       ; $74fe: $7e
	sub $03                                          ; $74ff: $d6 $03
	cp $90                                           ; $7501: $fe $90
	jr nc, jr_009_750d                               ; $7503: $30 $08

	xor a                                            ; $7505: $af
	ld [$d8ae], a                                    ; $7506: $ea $ae $d8
	ld a, $90                                        ; $7509: $3e $90
	ld l, $07                                        ; $750b: $2e $07

jr_009_750d:
	ld [hl], a                                       ; $750d: $77
	ret                                              ; $750e: $c9


jr_009_750f:
	ld l, $07                                        ; $750f: $2e $07
	ld a, [hl]                                       ; $7511: $7e
	add $03                                          ; $7512: $c6 $03
	cp $b0                                           ; $7514: $fe $b0
	jr c, jr_009_751c                                ; $7516: $38 $04

	ld a, $b0                                        ; $7518: $3e $b0
	ld l, $07                                        ; $751a: $2e $07

jr_009_751c:
	ld [hl], a                                       ; $751c: $77
	ret                                              ; $751d: $c9


jr_009_751e:
	ld l, $30                                        ; $751e: $2e $30
	ld a, [hl]                                       ; $7520: $7e
	cp $3a                                           ; $7521: $fe $3a
	jr nc, jr_009_752a                               ; $7523: $30 $05

	inc [hl]                                         ; $7525: $34
	call $3d4b                                       ; $7526: $cd $4b $3d
	ret                                              ; $7529: $c9


jr_009_752a:
	call $3d53                                       ; $752a: $cd $53 $3d
	xor a                                            ; $752d: $af
	ld [$d8ae], a                                    ; $752e: $ea $ae $d8
	ret                                              ; $7531: $c9


jr_009_7532:
	ld l, $31                                        ; $7532: $2e $31
	ld a, [hl]                                       ; $7534: $7e
	cp $3a                                           ; $7535: $fe $3a
	jr nc, jr_009_753e                               ; $7537: $30 $05

	inc [hl]                                         ; $7539: $34
	call $3d4b                                       ; $753a: $cd $4b $3d
	ret                                              ; $753d: $c9


jr_009_753e:
	call $3d58                                       ; $753e: $cd $58 $3d
	ret                                              ; $7541: $c9


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
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
