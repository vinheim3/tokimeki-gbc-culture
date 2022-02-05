; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Func_01_4000::
	ldh [$8e], a                                     ; $4000: $e0 $8e
	ldh a, [hDisp0_LCDC]                                     ; $4002: $f0 $82
	or $80                                           ; $4004: $f6 $80
	res 4, a                                         ; $4006: $cb $a7
	ldh [$8d], a                                     ; $4008: $e0 $8d
	ld hl, rSTAT                                     ; $400a: $21 $41 $ff
	bit 6, [hl]                                      ; $400d: $cb $76
	ret nz                                           ; $400f: $c0

	set 6, [hl]                                      ; $4010: $cb $f6
	ret                                              ; $4012: $c9


Func_01_4013::
	ld a, [$c110]                                    ; $4013: $fa $10 $c1
	dec a                                            ; $4016: $3d
	ld hl, hDisp1                                     ; $4017: $21 $8f $ff
	jr nz, Func_01_4045                               ; $401a: $20 $29

	ld [$c110], a                                    ; $401c: $ea $10 $c1
	call Call_001_4042                               ; $401f: $cd $42 $40

; Jump if not GBC/GBA
	ld a, [wInitialA]                                    ; $4022: $fa $00 $c1
	cp $11                                           ; $4025: $fe $11
	jr nz, .cont_4034                               ; $4027: $20 $0b

	ld a, [$c10f]                                    ; $4029: $fa $0f $c1
	ld b, a                                          ; $402c: $47
	ld a, [$c10e]                                    ; $402d: $fa $0e $c1
	or b                                             ; $4030: $b0
	call nz, Call_000_1858                                   ; $4031: $c4 $58 $18

.cont_4034:
	xor a                                            ; $4034: $af
	call SetWramBankAStoringCurrInHighByteInStackAfterReturn                                       ; $4035: $cd $05 $08
	call hOamDmaFunc                                       ; $4038: $cd $e0 $ff
	call _SetWramBankToHighByteInStackAfterReturn                                       ; $403b: $cd $48 $08
	ei                                               ; $403e: $fb
	jp Call_000_2d40                                         ; $403f: $c3 $40 $2d


Call_001_4042::
	ld hl, hDisp0                                     ; $4042: $21 $82 $ff

; HL - ??? ff82 or ff8f
Func_01_4045:
; Update shadow LCDC, and store in C
	ld a, [hl+]                                      ; $4045: $2a
	ldh [hDisp1_LCDC], a                                     ; $4046: $e0 $8f
	ld c, a                                          ; $4048: $4f

; Push shadow SCY reg, and clear LCDC int handler
	push hl                                          ; $4049: $e5

	xor a                                            ; $404a: $af
	ldh [hLCDCIntHandlerIdx], a                                     ; $404b: $e0 $81

;
	ld hl, $c10b                                     ; $404d: $21 $0b $c1
	ld a, [hl]                                       ; $4050: $7e
	and a                                            ; $4051: $a7
	ld a, c                                          ; $4052: $79
	jr z, .cont_405a                                ; $4053: $28 $05

	dec [hl]                                         ; $4055: $35
	jr z, .cont_405a                                ; $4056: $28 $02

	and $ff-(LCDCF_WINON|LCDCF_OBJON|LCDCF_BGON)                                          ; $4058: $e6 $dc

.cont_405a:
; Pop shadow SCY, and set LCDC
	pop hl                                           ; $405a: $e1
	ldh [rLCDC], a                                   ; $405b: $e0 $40

; Update from orig HL+1 (shadow SCY)
	ld bc, hDisp1+1                                     ; $405d: $01 $90 $ff
	ld a, [hl+]                                      ; $4060: $2a
	ld [bc], a                                       ; $4061: $02
	ldh [rSCY], a                                    ; $4062: $e0 $42
	inc bc                                           ; $4064: $03

	ld a, [hl+]                                      ; $4065: $2a
	ld [bc], a                                       ; $4066: $02
	ldh [rSCX], a                                    ; $4067: $e0 $43
	inc bc                                           ; $4069: $03

	ld a, [hl+]                                      ; $406a: $2a
	ld [bc], a                                       ; $406b: $02
	ldh [rBGP], a                                    ; $406c: $e0 $47
	inc bc                                           ; $406e: $03

	ld a, [hl+]                                      ; $406f: $2a
	ld [bc], a                                       ; $4070: $02
	ldh [rOBP0], a                                   ; $4071: $e0 $48
	inc bc                                           ; $4073: $03

	ld a, [hl+]                                      ; $4074: $2a
	ld [bc], a                                       ; $4075: $02
	ldh [rOBP1], a                                   ; $4076: $e0 $49
	inc bc                                           ; $4078: $03

	ld a, [hl+]                                      ; $4079: $2a
	ld [bc], a                                       ; $407a: $02
	ldh [rWY], a                                     ; $407b: $e0 $4a
	inc bc                                           ; $407d: $03

	ld a, [hl+]                                      ; $407e: $2a
	ld [bc], a                                       ; $407f: $02
	ldh [rWX], a                                     ; $4080: $e0 $4b
	inc bc                                           ; $4082: $03

rept 4
	ld a, [hl+]                                      ; $4083: $2a
	ld [bc], a                                       ; $4084: $02
	inc bc                                           ; $4085: $03
endr

	ld a, [hl]                                       ; $408f: $7e
	ld [bc], a                                       ; $4090: $02

; A -
Jump_001_4091:
; Clear LCDC int flag, and disable it
	ld hl, rIF                                     ; $4091: $21 $0f $ff
	res 1, [hl]                                      ; $4094: $cb $8e
	ld hl, rIE                                     ; $4096: $21 $ff $ff
	res 1, [hl]                                      ; $4099: $cb $8e

;
	add a                                            ; $409b: $87
	ret z                                            ; $409c: $c8

	set 1, [hl]                                      ; $409d: $cb $ce

;
	ld e, a                                          ; $409f: $5f
	ld d, $00                                        ; $40a0: $16 $00
	ld hl, .table-2                                     ; $40a2: $21 $a9 $40
	add hl, de                                       ; $40a5: $19
	ld a, [hl+]                                      ; $40a6: $2a
	ld d, [hl]                                       ; $40a7: $56
	ld e, a                                          ; $40a8: $5f
	push de                                          ; $40a9: $d5
	ret                                              ; $40aa: $c9

.table:
	dw Func_01_40d1
	dw Func_01_40ff
	dw Func_01_4172
	dw Func_01_4182
	dw Func_01_4193
	dw Func_01_41a3
	dw Func_01_4219
	dw Func_01_4226
	dw Func_01_422c
	dw Func_01_4232
	dw Func_01_423b
	dw Func_01_4241
	dw Func_01_424b
	dw Func_01_4265
	dw Func_01_4359
	dw Func_01_4387
	dw Func_01_4396
	dw Func_01_43a6
	dw Func_01_43b9


Func_01_40d1:
	ldh a, [$8b]                                     ; $40d1: $f0 $8b
	ldh [$98], a                                     ; $40d3: $e0 $98
	ldh a, [$8a]                                     ; $40d5: $f0 $8a
	ldh [$97], a                                     ; $40d7: $e0 $97
	ld a, [wInitialA]                                    ; $40d9: $fa $00 $c1
	cp $11                                           ; $40dc: $fe $11
	jr nz, jr_001_40f7                               ; $40de: $20 $17

	ldh a, [$99]                                     ; $40e0: $f0 $99
	and a                                            ; $40e2: $a7
	jr z, jr_001_40ef                                ; $40e3: $28 $0a

	ld a, $04                                        ; $40e5: $3e $04
	ldh [rLYC], a                                    ; $40e7: $e0 $45
	ld a, $01                                        ; $40e9: $3e $01
	ldh [hLCDCIntHandlerIdx], a                                     ; $40eb: $e0 $81
	jr jr_001_411c                                   ; $40ed: $18 $2d

jr_001_40ef:
	xor a                                            ; $40ef: $af
	ldh [$99], a                                     ; $40f0: $e0 $99
	ld a, $3f                                        ; $40f2: $3e $3f
	jp Jump_001_4112                                 ; $40f4: $c3 $12 $41


jr_001_40f7:
	xor a                                            ; $40f7: $af
	ldh [$99], a                                     ; $40f8: $e0 $99
	ld a, $3e                                        ; $40fa: $3e $3e
	jp Jump_001_4112                                 ; $40fc: $c3 $12 $41


Func_01_40ff:
	ldh a, [hDisp1_LCDC]                                     ; $40ff: $f0 $8f
	ldh [$9a], a                                     ; $4101: $e0 $9a
	ldh a, [$8b]                                     ; $4103: $f0 $8b
	ldh [$98], a                                     ; $4105: $e0 $98
	ldh a, [$8a]                                     ; $4107: $f0 $8a
	ldh [$97], a                                     ; $4109: $e0 $97
	and a                                            ; $410b: $a7
	jr z, jr_001_4118                                ; $410c: $28 $0a

	ldh a, [$98]                                     ; $410e: $f0 $98
	sub $08                                          ; $4110: $d6 $08

Jump_001_4112:
	rst FarCall                                          ; $4112: $f7
	db $db                                           ; $4113: $db
	ld [bc], a                                       ; $4114: $02
	nop                                              ; $4115: $00
	jr jr_001_411c                                   ; $4116: $18 $04

jr_001_4118:
	rst FarCall                                          ; $4118: $f7
	add hl, bc                                       ; $4119: $09
	inc bc                                           ; $411a: $03
	nop                                              ; $411b: $00

jr_001_411c:
	ldh a, [hDisp0_BGP]                                     ; $411c: $f0 $85
	ldh [$9c], a                                     ; $411e: $e0 $9c
	ldh a, [$97]                                     ; $4120: $f0 $97
	and a                                            ; $4122: $a7
	ret z                                            ; $4123: $c8

	ld a, $e4                                        ; $4124: $3e $e4
	ldh [$9c], a                                     ; $4126: $e0 $9c
	ld a, [wInitialA]                                    ; $4128: $fa $00 $c1
	cp $11                                           ; $412b: $fe $11
	ret nz                                           ; $412d: $c0

	ld a, [wWramBank]                                    ; $412e: $fa $04 $c1
	ld d, a                                          ; $4131: $57
	ld a, $02                                        ; $4132: $3e $02
	ld [wWramBank], a                                    ; $4134: $ea $04 $c1
	ldh [rSVBK], a                                   ; $4137: $e0 $70
	ld a, $80                                        ; $4139: $3e $80
	ldh [rBCPS], a                                   ; $413b: $e0 $68
	ld hl, $d500                                     ; $413d: $21 $00 $d5
	ld bc, $ff69                                     ; $4140: $01 $69 $ff
	ld a, [hl+]                                      ; $4143: $2a
	ld [bc], a                                       ; $4144: $02
	ld a, [hl+]                                      ; $4145: $2a
	ld [bc], a                                       ; $4146: $02
	ld a, [hl+]                                      ; $4147: $2a
	ld [bc], a                                       ; $4148: $02
	ld a, [hl+]                                      ; $4149: $2a
	ld [bc], a                                       ; $414a: $02
	ld a, [hl+]                                      ; $414b: $2a
	ld [bc], a                                       ; $414c: $02
	ld a, [hl+]                                      ; $414d: $2a
	ld [bc], a                                       ; $414e: $02
	ld a, [hl+]                                      ; $414f: $2a
	ld [bc], a                                       ; $4150: $02
	ld a, [hl+]                                      ; $4151: $2a
	ld [bc], a                                       ; $4152: $02
	ld a, [hl+]                                      ; $4153: $2a
	ld [bc], a                                       ; $4154: $02
	ld a, [hl+]                                      ; $4155: $2a
	ld [bc], a                                       ; $4156: $02
	ld a, [hl+]                                      ; $4157: $2a
	ld [bc], a                                       ; $4158: $02
	ld a, [hl+]                                      ; $4159: $2a
	ld [bc], a                                       ; $415a: $02
	ld a, [hl+]                                      ; $415b: $2a
	ld [bc], a                                       ; $415c: $02
	ld a, [hl+]                                      ; $415d: $2a
	ld [bc], a                                       ; $415e: $02
	ld a, [hl+]                                      ; $415f: $2a
	ld [bc], a                                       ; $4160: $02
	ld a, [hl+]                                      ; $4161: $2a

Jump_001_4162:
	ld [bc], a                                       ; $4162: $02
	ld a, d                                          ; $4163: $7a
	ld [wWramBank], a                                    ; $4164: $ea $04 $c1
	ldh [rSVBK], a                                   ; $4167: $e0 $70
	ld a, [$c10e]                                    ; $4169: $fa $0e $c1
	and $fc                                          ; $416c: $e6 $fc
	ld [$c10e], a                                    ; $416e: $ea $0e $c1
	ret                                              ; $4171: $c9


Func_01_4172:
	ld a, [$c150]                                    ; $4172: $fa $50 $c1
	and a                                            ; $4175: $a7
	jp z, Jump_001_4091                              ; $4176: $ca $91 $40

	ld a, $67                                        ; $4179: $3e $67
	ldh [rLYC], a                                    ; $417b: $e0 $45
	ld a, $0a                                        ; $417d: $3e $0a
	ldh [hLCDCIntHandlerIdx], a                                     ; $417f: $e0 $81
	ret                                              ; $4181: $c9


Func_01_4182:
	ldh a, [hDisp0_LCDC]                                     ; $4182: $f0 $82
	or $10                                           ; $4184: $f6 $10
	and $b1                                          ; $4186: $e6 $b1
	ldh [rLCDC], a                                   ; $4188: $e0 $40
	ld a, $07                                        ; $418a: $3e $07
	ldh [rLYC], a                                    ; $418c: $e0 $45
	ld a, $08                                        ; $418e: $3e $08
	ldh [hLCDCIntHandlerIdx], a                                     ; $4190: $e0 $81
	ret                                              ; $4192: $c9


Func_01_4193:
	ldh a, [hDisp0_LCDC]                                     ; $4193: $f0 $82
	and $e3                                          ; $4195: $e6 $e3
	ldh [rLCDC], a                                   ; $4197: $e0 $40
	ld a, $16                                        ; $4199: $3e $16
	ldh [rLYC], a                                    ; $419b: $e0 $45
	ld a, $0c                                        ; $419d: $3e $0c
	ldh [hLCDCIntHandlerIdx], a                                     ; $419f: $e0 $81
	ret                                              ; $41a1: $c9


	ret                                              ; $41a2: $c9


Func_01_41a3:
	ld a, $00                                        ; $41a3: $3e $00
	call SetWramBankAStoringCurrInHighByteInStackAfterReturn                                       ; $41a5: $cd $05 $08
	ld hl, $d891                                     ; $41a8: $21 $91 $d8
	ld a, [$d892]                                    ; $41ab: $fa $92 $d8
	cp $01                                           ; $41ae: $fe $01
	jr z, jr_001_41b9                                ; $41b0: $28 $07

	cp $03                                           ; $41b2: $fe $03
	jr z, jr_001_41c4                                ; $41b4: $28 $0e

	ld a, [hl]                                       ; $41b6: $7e
	jr jr_001_41cd                                   ; $41b7: $18 $14

jr_001_41b9:
	ld a, [hl]                                       ; $41b9: $7e
	add $04                                          ; $41ba: $c6 $04
	cp $38                                           ; $41bc: $fe $38
	jr c, jr_001_41cc                                ; $41be: $38 $0c

	ld a, $38                                        ; $41c0: $3e $38
	jr jr_001_41cc                                   ; $41c2: $18 $08

jr_001_41c4:
	ld a, [hl]                                       ; $41c4: $7e
	sub $04                                          ; $41c5: $d6 $04
	cp $38                                           ; $41c7: $fe $38
	jr c, jr_001_41cc                                ; $41c9: $38 $01

	xor a                                            ; $41cb: $af

jr_001_41cc:
	ld [hl], a                                       ; $41cc: $77

jr_001_41cd:
	ld b, a                                          ; $41cd: $47
	ld a, $3f                                        ; $41ce: $3e $3f
	sub b                                            ; $41d0: $90
	ldh [rWX], a                                     ; $41d1: $e0 $4b
	ldh [hDisp0_WX], a                                     ; $41d3: $e0 $89
	ld a, [$d8a9]                                    ; $41d5: $fa $a9 $d8
	ld [$c153], a                                    ; $41d8: $ea $53 $c1
	or a                                             ; $41db: $b7
	jr nz, jr_001_4206                               ; $41dc: $20 $28

	ld a, [$d88d]                                    ; $41de: $fa $8d $d8
	cp $08                                           ; $41e1: $fe $08
	jr nc, jr_001_41e7                               ; $41e3: $30 $02

	jr jr_001_4200                                   ; $41e5: $18 $19

jr_001_41e7:
	ld a, $ed                                        ; $41e7: $3e $ed
	ldh [rLCDC], a                                   ; $41e9: $e0 $40
	xor a                                            ; $41eb: $af
	ldh [rSCX], a                                    ; $41ec: $e0 $43
	ld a, [$d88d]                                    ; $41ee: $fa $8d $d8
	ld [$c154], a                                    ; $41f1: $ea $54 $c1
	ld b, a                                          ; $41f4: $47
	ld a, $53                                        ; $41f5: $3e $53
	sub b                                            ; $41f7: $90
	ldh [rSCY], a                                    ; $41f8: $e0 $42
	dec b                                            ; $41fa: $05
	dec b                                            ; $41fb: $05
	ld a, $0d                                        ; $41fc: $3e $0d
	jr jr_001_4211                                   ; $41fe: $18 $11

jr_001_4200:
	ld a, $0e                                        ; $4200: $3e $0e
	ld b, $5e                                        ; $4202: $06 $5e
	jr jr_001_4211                                   ; $4204: $18 $0b

jr_001_4206:
	xor a                                            ; $4206: $af
	ldh [rSCX], a                                    ; $4207: $e0 $43
	ld a, $98                                        ; $4209: $3e $98
	ldh [rSCY], a                                    ; $420b: $e0 $42
	ld a, $0f                                        ; $420d: $3e $0f
	ld b, $2e                                        ; $420f: $06 $2e

jr_001_4211:
	ldh [hLCDCIntHandlerIdx], a                                     ; $4211: $e0 $81
	ld a, b                                          ; $4213: $78
	ldh [rLYC], a                                    ; $4214: $e0 $45
	jp SetWramBankToHighByteInStackAfterReturn                                         ; $4216: $c3 $7f $07


Func_01_4219:
	ld hl, $1000                                     ; $4219: $21 $00 $10
	call SetLCDCIntHandlerIdxToH_LYCtoL                               ; $421c: $cd $44 $42
	ld hl, $c15c                                     ; $421f: $21 $5c $c1
	xor a                                            ; $4222: $af
	ld [hl+], a                                      ; $4223: $22
	inc [hl]                                         ; $4224: $34
	ret                                              ; $4225: $c9


Func_01_4226:
	ld hl, $113f                                     ; $4226: $21 $3f $11
	jp SetLCDCIntHandlerIdxToH_LYCtoL                                 ; $4229: $c3 $44 $42


Func_01_422c:
	ld hl, $124f                                     ; $422c: $21 $4f $12
	jp SetLCDCIntHandlerIdxToH_LYCtoL                                 ; $422f: $c3 $44 $42


Func_01_4232:
	ld h, $14                                        ; $4232: $26 $14
	ld a, [$c175]                                    ; $4234: $fa $75 $c1
	ld l, a                                          ; $4237: $6f
	jp SetLCDCIntHandlerIdxToH_LYCtoL                                 ; $4238: $c3 $44 $42


Func_01_423b:
	ld hl, $156f                                     ; $423b: $21 $6f $15
	jp SetLCDCIntHandlerIdxToH_LYCtoL                                 ; $423e: $c3 $44 $42


Func_01_4241:
	ld hl, $171f                                     ; $4241: $21 $1f $17

SetLCDCIntHandlerIdxToH_LYCtoL:
	ld a, h                                          ; $4244: $7c
	ldh [hLCDCIntHandlerIdx], a                                     ; $4245: $e0 $81
	ld a, l                                          ; $4247: $7d
	ldh [rLYC], a                                    ; $4248: $e0 $45
	ret                                              ; $424a: $c9


Func_01_424b:
	ldh a, [hDisp0_LCDC]                                     ; $424b: $f0 $82
	or $10                                           ; $424d: $f6 $10
	ldh [rLCDC], a                                   ; $424f: $e0 $40
	ld a, [$c17a]                                    ; $4251: $fa $7a $c1
	or a                                             ; $4254: $b7
	jr z, jr_001_425b                                ; $4255: $28 $04

	ld a, $e8                                        ; $4257: $3e $e8
	ldh [rSCY], a                                    ; $4259: $e0 $42

jr_001_425b:
	ld a, [$c179]                                    ; $425b: $fa $79 $c1
	ldh [rLYC], a                                    ; $425e: $e0 $45
	ld a, $19                                        ; $4260: $3e $19
	ldh [hLCDCIntHandlerIdx], a                                     ; $4262: $e0 $81
	ret                                              ; $4264: $c9


Func_01_4265:
	ld a, [wInitialA]                                    ; $4265: $fa $00 $c1
	cp $11                                           ; $4268: $fe $11
	jp nz, Jump_001_42b3                             ; $426a: $c2 $b3 $42

	ldh a, [hDisp0_SCY]                                     ; $426d: $f0 $83
	ld [$c178], a                                    ; $426f: $ea $78 $c1
	ld a, [$c17b]                                    ; $4272: $fa $7b $c1
	inc a                                            ; $4275: $3c
	ldh [rWY], a                                     ; $4276: $e0 $4a
	ld a, [$c17a]                                    ; $4278: $fa $7a $c1
	or a                                             ; $427b: $b7
	jr z, jr_001_4287                                ; $427c: $28 $09

	ld a, $e8                                        ; $427e: $3e $e8
	ldh [rSCY], a                                    ; $4280: $e0 $42
	ld a, [$c17a]                                    ; $4282: $fa $7a $c1
	jr jr_001_42ab                                   ; $4285: $18 $24

jr_001_4287:
	ldh a, [hDisp0_SCY]                                     ; $4287: $f0 $83
	ldh [rSCY], a                                    ; $4289: $e0 $42
	ld b, a                                          ; $428b: $47
	cp $40                                           ; $428c: $fe $40
	jr c, jr_001_429f                                ; $428e: $38 $0f

	ldh a, [hDisp0_LCDC]                                     ; $4290: $f0 $82
	and $ef                                          ; $4292: $e6 $ef
	ldh [rLCDC], a                                   ; $4294: $e0 $40
	xor a                                            ; $4296: $af
	ld [$c178], a                                    ; $4297: $ea $78 $c1
	ld a, $98                                        ; $429a: $3e $98
	sub b                                            ; $429c: $90
	jr jr_001_42ab                                   ; $429d: $18 $0c

jr_001_429f:
	ldh a, [hDisp0_LCDC]                                     ; $429f: $f0 $82
	or $10                                           ; $42a1: $f6 $10
	ldh [rLCDC], a                                   ; $42a3: $e0 $40
	ld a, $40                                        ; $42a5: $3e $40
	ld [$c178], a                                    ; $42a7: $ea $78 $c1
	sub b                                            ; $42aa: $90

jr_001_42ab:
	dec a                                            ; $42ab: $3d
	ldh [rLYC], a                                    ; $42ac: $e0 $45
	ld a, $1a                                        ; $42ae: $3e $1a
	ldh [hLCDCIntHandlerIdx], a                                     ; $42b0: $e0 $81
	ret                                              ; $42b2: $c9


Jump_001_42b3:
	xor a                                            ; $42b3: $af
	ld hl, $df00                                     ; $42b4: $21 $00 $df
	ld [hl+], a                                      ; $42b7: $22
	ld [hl+], a                                      ; $42b8: $22
	ld [hl+], a                                      ; $42b9: $22
	ldh a, [hDisp0_SCY]                                     ; $42ba: $f0 $83
	ld d, a                                          ; $42bc: $57
	ld hl, $df20                                     ; $42bd: $21 $20 $df
	ld a, [$c17b]                                    ; $42c0: $fa $7b $c1
	inc a                                            ; $42c3: $3c
	ldh [rWY], a                                     ; $42c4: $e0 $4a
	ld a, [$c17a]                                    ; $42c6: $fa $7a $c1
	ld b, a                                          ; $42c9: $47
	or a                                             ; $42ca: $b7
	jr z, jr_001_42df                                ; $42cb: $28 $12

	ld a, [$df00]                                    ; $42cd: $fa $00 $df
	add b                                            ; $42d0: $80
	ld [$df00], a                                    ; $42d1: $ea $00 $df
	ld a, $10                                        ; $42d4: $3e $10
	ld [$df02], a                                    ; $42d6: $ea $02 $df
	ld a, $e8                                        ; $42d9: $3e $e8
	ld [hl+], a                                      ; $42db: $22
	ld a, b                                          ; $42dc: $78
	dec a                                            ; $42dd: $3d
	ld [hl+], a                                      ; $42de: $22

jr_001_42df:
	ld a, [$df00]                                    ; $42df: $fa $00 $df
	cpl                                              ; $42e2: $2f
	inc a                                            ; $42e3: $3c
	add d                                            ; $42e4: $82
	ld [hl+], a                                      ; $42e5: $22
	ld a, d                                          ; $42e6: $7a
	ld bc, $4001                                     ; $42e7: $01 $01 $40
	cp $40                                           ; $42ea: $fe $40
	jr c, jr_001_42f1                                ; $42ec: $38 $03

	ld bc, $9802                                     ; $42ee: $01 $02 $98

jr_001_42f1:
	ld a, [$df01]                                    ; $42f1: $fa $01 $df
	or a                                             ; $42f4: $b7
	jr nz, jr_001_42fb                               ; $42f5: $20 $04

	ld a, c                                          ; $42f7: $79
	ld [$df01], a                                    ; $42f8: $ea $01 $df

jr_001_42fb:
	ld a, b                                          ; $42fb: $78
	sub d                                            ; $42fc: $92
	ld b, a                                          ; $42fd: $47
	ld a, [$df00]                                    ; $42fe: $fa $00 $df
	add b                                            ; $4301: $80
	ld [$df00], a                                    ; $4302: $ea $00 $df
	dec a                                            ; $4305: $3d
	cp $90                                           ; $4306: $fe $90
	jr nc, jr_001_4316                               ; $4308: $30 $0c

	ld [hl+], a                                      ; $430a: $22
	dec c                                            ; $430b: $0d
	jr nz, jr_001_4312                               ; $430c: $20 $04

	ld d, $40                                        ; $430e: $16 $40
	jr jr_001_42df                                   ; $4310: $18 $cd

jr_001_4312:
	ld d, $00                                        ; $4312: $16 $00
	jr jr_001_42df                                   ; $4314: $18 $c9

jr_001_4316:
	ld a, $ff                                        ; $4316: $3e $ff
	ld [hl], a                                       ; $4318: $77
	ld hl, $df10                                     ; $4319: $21 $10 $df
	ld de, $df20                                     ; $431c: $11 $20 $df

jr_001_431f:
	ld a, [de]                                       ; $431f: $1a
	inc de                                           ; $4320: $13
	ld [hl+], a                                      ; $4321: $22
	ld a, [de]                                       ; $4322: $1a
	inc de                                           ; $4323: $13
	ld [hl+], a                                      ; $4324: $22
	inc a                                            ; $4325: $3c
	jr nz, jr_001_431f                               ; $4326: $20 $f7

	ld hl, $df01                                     ; $4328: $21 $01 $df
	ld a, [hl+]                                      ; $432b: $2a
	dec a                                            ; $432c: $3d
	ldh a, [hDisp0_LCDC]                                     ; $432d: $f0 $82
	jr nz, jr_001_4337                               ; $432f: $20 $06

	or $10                                           ; $4331: $f6 $10
	and $f7                                          ; $4333: $e6 $f7
	jr jr_001_4339                                   ; $4335: $18 $02

jr_001_4337:
	and $e7                                          ; $4337: $e6 $e7

jr_001_4339:
	xor [hl]                                         ; $4339: $ae
	ldh [rLCDC], a                                   ; $433a: $e0 $40
	ld hl, $df10                                     ; $433c: $21 $10 $df
	ld a, [hl+]                                      ; $433f: $2a
	ldh [rSCY], a                                    ; $4340: $e0 $42
	ld a, [hl+]                                      ; $4342: $2a
	ld [$df03], a                                    ; $4343: $ea $03 $df
	or a                                             ; $4346: $b7
	jr z, jr_001_434a                                ; $4347: $28 $01

	dec a                                            ; $4349: $3d

jr_001_434a:
	ldh [rLYC], a                                    ; $434a: $e0 $45
	ld a, l                                          ; $434c: $7d
	ld [$df04], a                                    ; $434d: $ea $04 $df
	ld a, h                                          ; $4350: $7c
	ld [$df05], a                                    ; $4351: $ea $05 $df
	ld a, $1b                                        ; $4354: $3e $1b
	ldh [hLCDCIntHandlerIdx], a                                     ; $4356: $e0 $81
	ret                                              ; $4358: $c9


Func_01_4359:
	ldh a, [hDisp0_LCDC]                                     ; $4359: $f0 $82
	or $12                                           ; $435b: $f6 $12
	and $f7                                          ; $435d: $e6 $f7
	ld b, a                                          ; $435f: $47
	ld a, [$c17c]                                    ; $4360: $fa $7c $c1
	ld c, a                                          ; $4363: $4f
	or a                                             ; $4364: $b7
	jr nz, jr_001_436d                               ; $4365: $20 $06

	ld a, b                                          ; $4367: $78
	or $08                                           ; $4368: $f6 $08
	and $fd                                          ; $436a: $e6 $fd
	ld b, a                                          ; $436c: $47

jr_001_436d:
	ld a, b                                          ; $436d: $78
	ldh [rLCDC], a                                   ; $436e: $e0 $40
	ld a, c                                          ; $4370: $79
	cp $48                                           ; $4371: $fe $48
	jr z, jr_001_437d                                ; $4373: $28 $08

	or a                                             ; $4375: $b7
	jr z, jr_001_437d                                ; $4376: $28 $05

	dec a                                            ; $4378: $3d
	ld b, $1c                                        ; $4379: $06 $1c
	jr jr_001_4381                                   ; $437b: $18 $04

jr_001_437d:
	ld a, $47                                        ; $437d: $3e $47
	ld b, $1d                                        ; $437f: $06 $1d

jr_001_4381:
	ldh [rLYC], a                                    ; $4381: $e0 $45
	ld a, b                                          ; $4383: $78
	ldh [hLCDCIntHandlerIdx], a                                     ; $4384: $e0 $81
	ret                                              ; $4386: $c9


Func_01_4387:
	ldh a, [hDisp0_LCDC]                                     ; $4387: $f0 $82
	or $02                                           ; $4389: $f6 $02
	ldh [rLCDC], a                                   ; $438b: $e0 $40
	ld a, $77                                        ; $438d: $3e $77
	ldh [rLYC], a                                    ; $438f: $e0 $45
	ld a, $1f                                        ; $4391: $3e $1f
	ldh [hLCDCIntHandlerIdx], a                                     ; $4393: $e0 $81
	ret                                              ; $4395: $c9


Func_01_4396:
	ldh a, [hDisp0_LCDC]                                     ; $4396: $f0 $82

Call_001_4398:
	and $ef                                          ; $4398: $e6 $ef
	ldh [rLCDC], a                                   ; $439a: $e0 $40
	ld a, [$d84a]                                    ; $439c: $fa $4a $d8
	ldh [rLYC], a                                    ; $439f: $e0 $45
	ld a, $21                                        ; $43a1: $3e $21
	ldh [hLCDCIntHandlerIdx], a                                     ; $43a3: $e0 $81
	ret                                              ; $43a5: $c9


Func_01_43a6:
	ldh a, [hDisp0_LCDC]                                     ; $43a6: $f0 $82
	and $ef                                          ; $43a8: $e6 $ef
	ldh [rLCDC], a                                   ; $43aa: $e0 $40
	ld a, $e8                                        ; $43ac: $3e $e8
	ldh [rSCY], a                                    ; $43ae: $e0 $42
	ld a, $16                                        ; $43b0: $3e $16
	ldh [rLYC], a                                    ; $43b2: $e0 $45
	ld a, $22                                        ; $43b4: $3e $22
	ldh [hLCDCIntHandlerIdx], a                                     ; $43b6: $e0 $81
	ret                                              ; $43b8: $c9


Func_01_43b9:
	ld a, $57                                        ; $43b9: $3e $57
	ldh [rLYC], a                                    ; $43bb: $e0 $45
	ld a, $24                                        ; $43bd: $3e $24
	ldh [hLCDCIntHandlerIdx], a                                     ; $43bf: $e0 $81
	ret                                              ; $43c1: $c9


	ld b, b                                          ; $43c2: $40
	sbc b                                            ; $43c3: $98
	jr nz, @+$22                                     ; $43c4: $20 $20

	ld b, a                                          ; $43c6: $47
	ld b, c                                          ; $43c7: $41
	ld c, l                                          ; $43c8: $4d
	ld b, l                                          ; $43c9: $45
	jr nz, jr_001_4420                               ; $43ca: $20 $54

	ld e, c                                          ; $43cc: $59
	ld d, b                                          ; $43cd: $50
	ld b, l                                          ; $43ce: $45
	jr nz, @+$55                                     ; $43cf: $20 $53

	ld b, l                                          ; $43d1: $45
	ld c, h                                          ; $43d2: $4c
	ld b, l                                          ; $43d3: $45
	ld b, e                                          ; $43d4: $43
	ld d, h                                          ; $43d5: $54
	jr nz, jr_001_43f8                               ; $43d6: $20 $20

	cp $a4                                           ; $43d8: $fe $a4
	sbc b                                            ; $43da: $98
	ld c, [hl]                                       ; $43db: $4e
	ld b, c                                          ; $43dc: $41
	ld c, l                                          ; $43dd: $4d
	ld b, l                                          ; $43de: $45
	jr nz, jr_001_4426                               ; $43df: $20 $45

	ld c, [hl]                                       ; $43e1: $4e
	ld d, h                                          ; $43e2: $54
	ld d, d                                          ; $43e3: $52
	ld e, c                                          ; $43e4: $59
	cp $c4                                           ; $43e5: $fe $c4
	sbc b                                            ; $43e7: $98
	ld d, h                                          ; $43e8: $54
	ld b, l                                          ; $43e9: $45
	ld c, h                                          ; $43ea: $4c
	jr nz, jr_001_4441                               ; $43eb: $20 $54

	ld b, l                                          ; $43ed: $45
	ld d, e                                          ; $43ee: $53
	ld d, h                                          ; $43ef: $54
	cp $e4                                           ; $43f0: $fe $e4
	sbc b                                            ; $43f2: $98
	ld d, e                                          ; $43f3: $53
	ld c, c                                          ; $43f4: $49
	ld c, e                                          ; $43f5: $4b
	ld b, l                                          ; $43f6: $45
	ld c, [hl]                                       ; $43f7: $4e

jr_001_43f8:
	jr nz, jr_001_444a                               ; $43f8: $20 $50

	ld d, d                                          ; $43fa: $52
	ld c, c                                          ; $43fb: $49
	ld c, [hl]                                       ; $43fc: $4e
	ld d, h                                          ; $43fd: $54
	cp $04                                           ; $43fe: $fe $04
	sbc c                                            ; $4400: $99
	ld b, l                                          ; $4401: $45
	ld c, [hl]                                       ; $4402: $4e
	ld b, h                                          ; $4403: $44
	ld c, c                                          ; $4404: $49
	ld c, [hl]                                       ; $4405: $4e
	ld b, a                                          ; $4406: $47
	cp $24                                           ; $4407: $fe $24
	sbc c                                            ; $4409: $99
	ld b, d                                          ; $440a: $42
	ld b, c                                          ; $440b: $41
	ld d, h                                          ; $440c: $54
	ld d, h                                          ; $440d: $54
	ld c, h                                          ; $440e: $4c
	ld b, l                                          ; $440f: $45
	jr nz, @+$56                                     ; $4410: $20 $54

	ld b, l                                          ; $4412: $45
	ld d, e                                          ; $4413: $53
	ld d, h                                          ; $4414: $54
	cp $44                                           ; $4415: $fe $44
	sbc c                                            ; $4417: $99
	ld b, a                                          ; $4418: $47
	ld b, c                                          ; $4419: $41
	ld c, l                                          ; $441a: $4d
	ld b, l                                          ; $441b: $45
	jr nz, @+$56                                     ; $441c: $20 $54

	ld e, c                                          ; $441e: $59
	ld d, b                                          ; $441f: $50

jr_001_4420:
	ld b, l                                          ; $4420: $45
	jr nz, jr_001_4458                               ; $4421: $20 $35

	cp $64                                           ; $4423: $fe $64
	sbc c                                            ; $4425: $99

jr_001_4426:
	ld b, d                                          ; $4426: $42
	ld b, l                                          ; $4427: $45
	ld b, c                                          ; $4428: $41
	ld d, h                                          ; $4429: $54
	jr nz, @+$4f                                     ; $442a: $20 $4d

	ld b, c                                          ; $442c: $41
	ld c, [hl]                                       ; $442d: $4e
	ld c, c                                          ; $442e: $49
	ld b, c                                          ; $442f: $41
	cp $84                                           ; $4430: $fe $84
	sbc c                                            ; $4432: $99
	ld c, a                                          ; $4433: $4f
	ld d, b                                          ; $4434: $50
	ld d, h                                          ; $4435: $54
	ld c, c                                          ; $4436: $49
	ld c, a                                          ; $4437: $4f
	ld c, [hl]                                       ; $4438: $4e
	cp $a4                                           ; $4439: $fe $a4
	sbc c                                            ; $443b: $99
	ld d, b                                          ; $443c: $50
	ld c, c                                          ; $443d: $49
	ld b, e                                          ; $443e: $43
	jr nz, jr_001_4495                               ; $443f: $20 $54

jr_001_4441:
	ld b, l                                          ; $4441: $45
	ld d, e                                          ; $4442: $53
	ld d, h                                          ; $4443: $54
	cp $c4                                           ; $4444: $fe $c4
	sbc c                                            ; $4446: $99
	ld c, c                                          ; $4447: $49
	ld c, l                                          ; $4448: $4d
	ld b, c                                          ; $4449: $41

jr_001_444a:
	ld b, a                                          ; $444a: $47
	jr nz, jr_001_44a1                               ; $444b: $20 $54

	ld b, l                                          ; $444d: $45
	ld d, e                                          ; $444e: $53
	ld d, h                                          ; $444f: $54
	rst $38                                          ; $4450: $ff
	jr nc, @+$01                                     ; $4451: $30 $ff

	call nz, Call_001_5098                           ; $4453: $c4 $98 $50
	ld c, h                                          ; $4456: $4c
	ld b, c                                          ; $4457: $41

jr_001_4458:
	ld e, c                                          ; $4458: $59
	ld b, l                                          ; $4459: $45
	ld d, d                                          ; $445a: $52
	jr nz, @+$50                                     ; $445b: $20 $4e

	ld c, a                                          ; $445d: $4f
	ld a, [hl-]                                      ; $445e: $3a
	rst $38                                          ; $445f: $ff
	call nz, $4d98                                   ; $4460: $c4 $98 $4d
	ld b, c                                          ; $4463: $41
	ld d, b                                          ; $4464: $50
	jr nz, @+$50                                     ; $4465: $20 $4e

	ld c, a                                          ; $4467: $4f
	ld a, [hl-]                                      ; $4468: $3a
	rst $38                                          ; $4469: $ff
	ld a, [wButtonsHeld]                                    ; $446a: $fa $23 $c1
	and $c0                                          ; $446d: $e6 $c0
	cp $c0                                           ; $446f: $fe $c0
	jp z, $2983                                      ; $4471: $ca $83 $29

	ld a, [$c102]                                    ; $4474: $fa $02 $c1
	call wJumpTable                                       ; $4477: $cd $80 $cf
	adc h                                            ; $447a: $8c
	ld b, h                                          ; $447b: $44
	or h                                             ; $447c: $b4
	ld b, h                                          ; $447d: $44
	ld a, [bc]                                       ; $447e: $0a
	ld b, l                                          ; $447f: $45
	ld [hl], $45                                     ; $4480: $36 $45
	ld a, [hl]                                       ; $4482: $7e
	ld b, l                                          ; $4483: $45
	and h                                            ; $4484: $a4
	ld b, l                                          ; $4485: $45
	cp c                                             ; $4486: $b9
	ld b, l                                          ; $4487: $45
	reti                                             ; $4488: $d9


	ld b, l                                          ; $4489: $45
	add sp, $45                                      ; $448a: $e8 $45
	call $09bb                                       ; $448c: $cd $bb $09
	call $0911                                       ; $448f: $cd $11 $09
	call $0963                                       ; $4492: $cd $63 $09

jr_001_4495:
	call $0986                                       ; $4495: $cd $86 $09
	ld hl, $29da                                     ; $4498: $21 $da $29
	call $0ab5                                       ; $449b: $cd $b5 $0a
	ld hl, $43c2                                     ; $449e: $21 $c2 $43

jr_001_44a1:
	call $0a0d                                       ; $44a1: $cd $0d $0a
	call $096e                                       ; $44a4: $cd $6e $09
	xor a                                            ; $44a7: $af
	ld b, a                                          ; $44a8: $47
	call Call_001_44e0                               ; $44a9: $cd $e0 $44
	ld a, $5d                                        ; $44ac: $3e $5d
	call Jump_000_1af7                                       ; $44ae: $cd $f7 $1a
	jp $2929                                         ; $44b1: $c3 $29 $29


	ld hl, wButtonsPressed                                     ; $44b4: $21 $25 $c1
	bit 4, [hl]                                      ; $44b7: $cb $66
	jp nz, $2929                                     ; $44b9: $c2 $29 $29

	bit 7, [hl]                                      ; $44bc: $cb $7e
	jp nz, $2929                                     ; $44be: $c2 $29 $29

	bit 5, [hl]                                      ; $44c1: $cb $6e
	jp nz, $2983                                     ; $44c3: $c2 $83 $29

	ld a, [$c183]                                    ; $44c6: $fa $83 $c1
	ld b, a                                          ; $44c9: $47
	bit 2, [hl]                                      ; $44ca: $cb $56
	jr nz, jr_001_44d9                               ; $44cc: $20 $0b

	bit 3, [hl]                                      ; $44ce: $cb $5e
	ret z                                            ; $44d0: $c8

	inc a                                            ; $44d1: $3c
	cp $0a                                           ; $44d2: $fe $0a
	jr c, jr_001_44e0                                ; $44d4: $38 $0a

	xor a                                            ; $44d6: $af
	jr jr_001_44e0                                   ; $44d7: $18 $07

jr_001_44d9:
	dec a                                            ; $44d9: $3d
	cp $0a                                           ; $44da: $fe $0a
	jr c, jr_001_44e0                                ; $44dc: $38 $02

	ld a, $09                                        ; $44de: $3e $09

Call_001_44e0:
jr_001_44e0:
	push af                                          ; $44e0: $f5
	xor a                                            ; $44e1: $af
	ld [$c140], a                                    ; $44e2: $ea $40 $c1
	ld a, b                                          ; $44e5: $78
	call Call_001_44f2                               ; $44e6: $cd $f2 $44
	ld a, $ff                                        ; $44e9: $3e $ff
	ld [$c140], a                                    ; $44eb: $ea $40 $c1
	pop af                                           ; $44ee: $f1
	ld [$c183], a                                    ; $44ef: $ea $83 $c1

Call_001_44f2:
	add $05                                          ; $44f2: $c6 $05
	swap a                                           ; $44f4: $cb $37
	and $f0                                          ; $44f6: $e6 $f0
	ld l, a                                          ; $44f8: $6f
	ld h, $00                                        ; $44f9: $26 $00
	add hl, hl                                       ; $44fb: $29
	ld de, $9803                                     ; $44fc: $11 $03 $98
	add hl, de                                       ; $44ff: $19
	ld e, l                                          ; $4500: $5d
	ld d, h                                          ; $4501: $54
	ld c, $ff                                        ; $4502: $0e $ff
	ld hl, $4451                                     ; $4504: $21 $51 $44
	jp $0a18                                         ; $4507: $c3 $18 $0a


	ld hl, $4453                                     ; $450a: $21 $53 $44
	call Call_001_451f                               ; $450d: $cd $1f $45
	call Call_001_456b                               ; $4510: $cd $6b $45
	ld a, [$c180]                                    ; $4513: $fa $80 $c1
	call Call_001_455e                               ; $4516: $cd $5e $45

Jump_001_4519:
	call $096e                                       ; $4519: $cd $6e $09
	jp $2929                                         ; $451c: $c3 $29 $29


Call_001_451f:
	push hl                                          ; $451f: $e5
	call $09bb                                       ; $4520: $cd $bb $09
	call $0911                                       ; $4523: $cd $11 $09
	call $0963                                       ; $4526: $cd $63 $09
	call $0986                                       ; $4529: $cd $86 $09
	ld hl, $29da                                     ; $452c: $21 $da $29
	call $0ab5                                       ; $452f: $cd $b5 $0a
	pop hl                                           ; $4532: $e1
	jp $0a0d                                         ; $4533: $c3 $0d $0a


	call Call_001_456b                               ; $4536: $cd $6b $45
	ld b, $01                                        ; $4539: $06 $01
	bit 1, [hl]                                      ; $453b: $cb $4e
	jp nz, $2929                                     ; $453d: $c2 $29 $29

Jump_001_4540:
	bit 5, [hl]                                      ; $4540: $cb $6e
	jr nz, jr_001_4596                               ; $4542: $20 $52

	bit 6, [hl]                                      ; $4544: $cb $76
	jr nz, jr_001_4596                               ; $4546: $20 $4e

	bit 4, [hl]                                      ; $4548: $cb $66
	jr nz, jr_001_458d                               ; $454a: $20 $41

	bit 7, [hl]                                      ; $454c: $cb $7e
	jr nz, jr_001_458d                               ; $454e: $20 $3d

	ld a, b                                          ; $4550: $78
	bit 2, [hl]                                      ; $4551: $cb $56
	jr nz, jr_001_455a                               ; $4553: $20 $05

	cpl                                              ; $4555: $2f
	inc a                                            ; $4556: $3c
	bit 3, [hl]                                      ; $4557: $cb $5e
	ret z                                            ; $4559: $c8

jr_001_455a:
	ld l, e                                          ; $455a: $6b
	ld h, d                                          ; $455b: $62
	add [hl]                                         ; $455c: $86
	ld [hl], a                                       ; $455d: $77

Call_001_455e:
	push af                                          ; $455e: $f5
	ld a, [$c0d0]                                    ; $455f: $fa $d0 $c0
	ld l, a                                          ; $4562: $6f
	ld a, [$c0d1]                                    ; $4563: $fa $d1 $c0
	ld h, a                                          ; $4566: $67
	pop af                                           ; $4567: $f1
	jp $0a33                                         ; $4568: $c3 $33 $0a


Call_001_456b:
	ld a, $cf                                        ; $456b: $3e $cf
	ld [$c0d0], a                                    ; $456d: $ea $d0 $c0
	ld a, $98                                        ; $4570: $3e $98
	ld [$c0d1], a                                    ; $4572: $ea $d1 $c0
	ld de, $c180                                     ; $4575: $11 $80 $c1
	ld hl, wButtonsPressed                                     ; $4578: $21 $25 $c1
	ld c, $fd                                        ; $457b: $0e $fd
	ret                                              ; $457d: $c9


	call Call_001_456b                               ; $457e: $cd $6b $45
	ld b, $10                                        ; $4581: $06 $10
	bit 0, [hl]                                      ; $4583: $cb $46
	jp z, Jump_001_4540                              ; $4585: $ca $40 $45

	ld hl, $c102                                     ; $4588: $21 $02 $c1
	dec [hl]                                         ; $458b: $35
	ret                                              ; $458c: $c9


jr_001_458d:
	ld a, b                                          ; $458d: $78
	cp $01                                           ; $458e: $fe $01
	call z, $2929                                    ; $4590: $cc $29 $29
	jp $2929                                         ; $4593: $c3 $29 $29


jr_001_4596:
	ld a, b                                          ; $4596: $78
	cp $01                                           ; $4597: $fe $01
	call nz, $2931                                   ; $4599: $c4 $31 $29
	ld hl, $c102                                     ; $459c: $21 $02 $c1
	ld a, c                                          ; $459f: $79
	add [hl]                                         ; $45a0: $86
	jp $292d                                         ; $45a1: $c3 $2d $29


	ld hl, $4460                                     ; $45a4: $21 $60 $44
	ld a, [$c189]                                    ; $45a7: $fa $89 $c1
	call Call_001_451f                               ; $45aa: $cd $1f $45
	call Call_001_45c6                               ; $45ad: $cd $c6 $45
	ld a, [$c189]                                    ; $45b0: $fa $89 $c1
	call Call_001_455e                               ; $45b3: $cd $5e $45
	jp Jump_001_4519                                 ; $45b6: $c3 $19 $45


	call Call_001_45c6                               ; $45b9: $cd $c6 $45
	ld b, $01                                        ; $45bc: $06 $01
	bit 1, [hl]                                      ; $45be: $cb $4e
	jp nz, $2929                                     ; $45c0: $c2 $29 $29

	jp Jump_001_4540                                 ; $45c3: $c3 $40 $45


Call_001_45c6:
	ld a, $cc                                        ; $45c6: $3e $cc
	ld [$c0d0], a                                    ; $45c8: $ea $d0 $c0
	ld a, $98                                        ; $45cb: $3e $98
	ld [$c0d1], a                                    ; $45cd: $ea $d1 $c0
	ld de, $c189                                     ; $45d0: $11 $89 $c1
	ld hl, wButtonsPressed                                     ; $45d3: $21 $25 $c1
	ld c, $fc                                        ; $45d6: $0e $fc
	ret                                              ; $45d8: $c9


	call Call_001_45c6                               ; $45d9: $cd $c6 $45
	ld b, $10                                        ; $45dc: $06 $10
	bit 0, [hl]                                      ; $45de: $cb $46
	jp z, Jump_001_4540                              ; $45e0: $ca $40 $45

	ld hl, $c102                                     ; $45e3: $21 $02 $c1
	dec [hl]                                         ; $45e6: $35
	ret                                              ; $45e7: $c9


	jp $2917                                         ; $45e8: $c3 $17 $29


	call Call_001_4639                               ; $45eb: $cd $39 $46
	ld a, [$c102]                                    ; $45ee: $fa $02 $c1
	call wJumpTable                                       ; $45f1: $cd $80 $cf
	ld a, [$2d45]                                    ; $45f4: $fa $45 $2d
	ld b, [hl]                                       ; $45f7: $46
	jr c, @+$48                                      ; $45f8: $38 $46

	ld a, $12                                        ; $45fa: $3e $12
	ld [$d3c8], a                                    ; $45fc: $ea $c8 $d3
	call $09bb                                       ; $45ff: $cd $bb $09
	call $0911                                       ; $4602: $cd $11 $09
	call $0963                                       ; $4605: $cd $63 $09
	call $0986                                       ; $4608: $cd $86 $09
	ld hl, $29da                                     ; $460b: $21 $da $29
	call $0ab5                                       ; $460e: $cd $b5 $0a
	ld hl, $57ff                                     ; $4611: $21 $ff $57
	call $0a0d                                       ; $4614: $cd $0d $0a
	call $096e                                       ; $4617: $cd $6e $09
	ld a, $01                                        ; $461a: $3e $01
	ld [$d811], a                                    ; $461c: $ea $11 $d8
	ld hl, $0000                                     ; $461f: $21 $00 $00
	ld de, $0000                                     ; $4622: $11 $00 $00
	ld a, $82                                        ; $4625: $3e $82
	call $1c16                                       ; $4627: $cd $16 $1c
	jp $2929                                         ; $462a: $c3 $29 $29


	ld hl, $d3c8                                     ; $462d: $21 $c8 $d3
	inc [hl]                                         ; $4630: $34
	ld a, [hl]                                       ; $4631: $7e
	ld [$9800], a                                    ; $4632: $ea $00 $98
	jp Call_000_1bce                                         ; $4635: $c3 $ce $1b


	ret                                              ; $4638: $c9


Call_001_4639:
	ld hl, wButtonsPressed                                     ; $4639: $21 $25 $c1
	bit 6, [hl]                                      ; $463c: $cb $76
	ret z                                            ; $463e: $c8

	ld a, $05                                        ; $463f: $3e $05
	ld [$c183], a                                    ; $4641: $ea $83 $c1
	xor a                                            ; $4644: $af
	ld hl, $d3ca                                     ; $4645: $21 $ca $d3
	ld [hl+], a                                      ; $4648: $22
	ld [hl+], a                                      ; $4649: $22
	ld [hl+], a                                      ; $464a: $22
	ld [hl+], a                                      ; $464b: $22
	ld [hl+], a                                      ; $464c: $22
	ld [hl+], a                                      ; $464d: $22
	ld [hl+], a                                      ; $464e: $22
	ld [hl+], a                                      ; $464f: $22
	ret                                              ; $4650: $c9


	ld a, [$c102]                                    ; $4651: $fa $02 $c1
	call wJumpTable                                       ; $4654: $cd $80 $cf
	ld e, l                                          ; $4657: $5d
	ld b, [hl]                                       ; $4658: $46
	ld [hl], l                                       ; $4659: $75
	ld b, [hl]                                       ; $465a: $46
	cp h                                             ; $465b: $bc
	ld b, [hl]                                       ; $465c: $46
	xor a                                            ; $465d: $af
	ld [$d3ca], a                                    ; $465e: $ea $ca $d3
	ld a, $00                                        ; $4661: $3e $00
	ld [$d3cb], a                                    ; $4663: $ea $cb $d3
	ldh a, [hDisp0_LCDC]                                     ; $4666: $f0 $82
	or $70                                           ; $4668: $f6 $70
	ldh [hDisp0_LCDC], a                                     ; $466a: $e0 $82
	ld hl, $2020                                     ; $466c: $21 $20 $20
	call $095c                                       ; $466f: $cd $5c $09
	jp $2929                                         ; $4672: $c3 $29 $29


	ld a, [$d3cb]                                    ; $4675: $fa $cb $d3
	ld [$d3ce], a                                    ; $4678: $ea $ce $d3
	ld b, $00                                        ; $467b: $06 $00
	ld c, a                                          ; $467d: $4f
	sla c                                            ; $467e: $cb $21
	rl b                                             ; $4680: $cb $10
	ld a, c                                          ; $4682: $79
	and $e0                                          ; $4683: $e6 $e0
	ld c, a                                          ; $4685: $4f
	ld a, [$d3cb]                                    ; $4686: $fa $cb $d3
	and $0f                                          ; $4689: $e6 $0f
	or c                                             ; $468b: $b1
	ld [$d3cc], a                                    ; $468c: $ea $cc $d3
	ld a, b                                          ; $468f: $78
	add $9c                                          ; $4690: $c6 $9c
	ld [$d3cd], a                                    ; $4692: $ea $cd $d3
	ld a, [$d3cb]                                    ; $4695: $fa $cb $d3
	cp $fe                                           ; $4698: $fe $fe
	jr z, jr_001_46a0                                ; $469a: $28 $04

	cp $ff                                           ; $469c: $fe $ff
	jr nz, jr_001_46a1                               ; $469e: $20 $01

jr_001_46a0:
	xor a                                            ; $46a0: $af

jr_001_46a1:
	ld [$d3ce], a                                    ; $46a1: $ea $ce $d3
	ld a, $ff                                        ; $46a4: $3e $ff
	ld [$d3cf], a                                    ; $46a6: $ea $cf $d3
	ld hl, $d3cc                                     ; $46a9: $21 $cc $d3
	call $0a0d                                       ; $46ac: $cd $0d $0a
	ld a, [$d3cb]                                    ; $46af: $fa $cb $d3
	inc a                                            ; $46b2: $3c
	ld [$d3cb], a                                    ; $46b3: $ea $cb $d3
	cp $00                                           ; $46b6: $fe $00
	ret nz                                           ; $46b8: $c0

	jp $2929                                         ; $46b9: $c3 $29 $29


	or $14                                           ; $46bc: $f6 $14
	ld hl, wButtonsHeld                                     ; $46be: $21 $23 $c1
	bit 2, [hl]                                      ; $46c1: $cb $56
	jp z, Jump_001_46ca                              ; $46c3: $ca $ca $46

	ld hl, $ff88                                     ; $46c6: $21 $88 $ff
	dec [hl]                                         ; $46c9: $35

Jump_001_46ca:
	ld hl, wButtonsHeld                                     ; $46ca: $21 $23 $c1
	bit 3, [hl]                                      ; $46cd: $cb $5e
	jp z, Jump_001_46d6                              ; $46cf: $ca $d6 $46

	ld hl, $ff88                                     ; $46d2: $21 $88 $ff
	inc [hl]                                         ; $46d5: $34

Jump_001_46d6:
	ld hl, wButtonsHeld                                     ; $46d6: $21 $23 $c1
	bit 1, [hl]                                      ; $46d9: $cb $4e
	jp z, Jump_001_46e2                              ; $46db: $ca $e2 $46

	ld hl, $ff89                                     ; $46de: $21 $89 $ff
	dec [hl]                                         ; $46e1: $35

Jump_001_46e2:
jr_001_46e2:
	ld hl, wButtonsHeld                                     ; $46e2: $21 $23 $c1
	bit 0, [hl]                                      ; $46e5: $cb $46
	jp z, Jump_001_46ee                              ; $46e7: $ca $ee $46

	ld hl, $ff89                                     ; $46ea: $21 $89 $ff
	inc [hl]                                         ; $46ed: $34

Jump_001_46ee:
	nop                                              ; $46ee: $00
	ret                                              ; $46ef: $c9


	ld hl, wButtonsHeld                                     ; $46f0: $21 $23 $c1
	bit 6, [hl]                                      ; $46f3: $cb $76
	jr z, jr_001_46fe                                ; $46f5: $28 $07

	ldh a, [hDisp0_LCDC]                                     ; $46f7: $f0 $82
	or $08                                           ; $46f9: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $46fb: $e0 $82
	ret                                              ; $46fd: $c9


jr_001_46fe:
	ldh a, [hDisp0_LCDC]                                     ; $46fe: $f0 $82
	and $f7                                          ; $4700: $e6 $f7
	ldh [hDisp0_LCDC], a                                     ; $4702: $e0 $82
	ret                                              ; $4704: $c9


	call nz, Call_001_5998                           ; $4705: $c4 $98 $59
	ld c, a                                          ; $4708: $4f
	jr nz, jr_001_475f                               ; $4709: $20 $54

	ld b, l                                          ; $470b: $45
	ld d, e                                          ; $470c: $53
	ld d, h                                          ; $470d: $54
	rst $38                                          ; $470e: $ff
	ld sp, hl                                        ; $470f: $f9
	add hl, de                                       ; $4710: $19
	ld h, $4c                                        ; $4711: $26 $4c
	ld b, b                                          ; $4713: $40
	adc d                                            ; $4714: $8a
	add hl, de                                       ; $4715: $19
	ld h, d                                          ; $4716: $62
	ld c, h                                          ; $4717: $4c
	ld b, b                                          ; $4718: $40
	adc e                                            ; $4719: $8b
	rst $38                                          ; $471a: $ff
	ld sp, hl                                        ; $471b: $f9
	add hl, de                                       ; $471c: $19
	ld h, $4c                                        ; $471d: $26 $4c
	ld b, b                                          ; $471f: $40
	adc b                                            ; $4720: $88
	add hl, de                                       ; $4721: $19
	ld h, d                                          ; $4722: $62
	ld c, h                                          ; $4723: $4c
	ld b, b                                          ; $4724: $40
	adc c                                            ; $4725: $89
	rst $38                                          ; $4726: $ff
	ld sp, hl                                        ; $4727: $f9
	add hl, de                                       ; $4728: $19
	or [hl]                                          ; $4729: $b6
	ld c, e                                          ; $472a: $4b
	ld b, b                                          ; $472b: $40
	adc d                                            ; $472c: $8a
	add hl, de                                       ; $472d: $19
	add sp, $4b                                      ; $472e: $e8 $4b
	ld b, b                                          ; $4730: $40
	adc e                                            ; $4731: $8b
	rst $38                                          ; $4732: $ff
	ld sp, hl                                        ; $4733: $f9
	add hl, de                                       ; $4734: $19
	add sp, $4b                                      ; $4735: $e8 $4b
	ld b, b                                          ; $4737: $40
	adc e                                            ; $4738: $8b
	rst $38                                          ; $4739: $ff
	ld sp, hl                                        ; $473a: $f9
	add hl, de                                       ; $473b: $19
	ld c, c                                          ; $473c: $49
	ld b, c                                          ; $473d: $41
	add b                                            ; $473e: $80
	add l                                            ; $473f: $85
	add hl, de                                       ; $4740: $19
	ld a, [hl]                                       ; $4741: $7e
	ld b, d                                          ; $4742: $42
	add b                                            ; $4743: $80
	adc c                                            ; $4744: $89
	add hl, de                                       ; $4745: $19
	ld b, b                                          ; $4746: $40
	ld b, e                                          ; $4747: $43
	nop                                              ; $4748: $00
	adc b                                            ; $4749: $88
	add hl, de                                       ; $474a: $19
	ld h, e                                          ; $474b: $63
	ld b, e                                          ; $474c: $43
	nop                                              ; $474d: $00
	adc c                                            ; $474e: $89
	add hl, de                                       ; $474f: $19
	add a                                            ; $4750: $87
	ld b, e                                          ; $4751: $43
	jr nz, @-$76                                     ; $4752: $20 $88

	add hl, de                                       ; $4754: $19
	and c                                            ; $4755: $a1
	ld b, e                                          ; $4756: $43
	jr nz, jr_001_46e2                               ; $4757: $20 $89

	add hl, de                                       ; $4759: $19
	jp $4043                                         ; $475a: $c3 $43 $40


	adc b                                            ; $475d: $88
	add hl, de                                       ; $475e: $19

jr_001_475f:
	call c, $4043                                    ; $475f: $dc $43 $40
	adc c                                            ; $4762: $89
	add hl, de                                       ; $4763: $19
	ld a, [$6043]                                    ; $4764: $fa $43 $60
	adc b                                            ; $4767: $88
	add hl, de                                       ; $4768: $19
	dec e                                            ; $4769: $1d
	ld b, h                                          ; $476a: $44
	ld h, b                                          ; $476b: $60
	adc c                                            ; $476c: $89
	add hl, de                                       ; $476d: $19
	ccf                                              ; $476e: $3f
	ld b, h                                          ; $476f: $44
	add b                                            ; $4770: $80
	add a                                            ; $4771: $87
	add hl, de                                       ; $4772: $19
	ld d, a                                          ; $4773: $57
	ld b, h                                          ; $4774: $44
	add b                                            ; $4775: $80
	adc b                                            ; $4776: $88
	add hl, de                                       ; $4777: $19
	ld l, a                                          ; $4778: $6f
	ld b, h                                          ; $4779: $44
	and b                                            ; $477a: $a0
	add a                                            ; $477b: $87
	add hl, de                                       ; $477c: $19
	adc c                                            ; $477d: $89
	ld b, h                                          ; $477e: $44
	and b                                            ; $477f: $a0
	adc b                                            ; $4780: $88
	add hl, de                                       ; $4781: $19
	xor c                                            ; $4782: $a9
	ld b, h                                          ; $4783: $44
	ret nz                                           ; $4784: $c0

	add a                                            ; $4785: $87
	add hl, de                                       ; $4786: $19
	add $44                                          ; $4787: $c6 $44
	ret nz                                           ; $4789: $c0

	adc b                                            ; $478a: $88
	add hl, de                                       ; $478b: $19
	add sp, $44                                      ; $478c: $e8 $44
	ldh [hDisp0_OBP1], a                                     ; $478e: $e0 $87
	add hl, de                                       ; $4790: $19
	add hl, bc                                       ; $4791: $09
	ld b, l                                          ; $4792: $45
	ldh [hDisp0_WY], a                                     ; $4793: $e0 $88
	add hl, de                                       ; $4795: $19
	dec l                                            ; $4796: $2d
	ld b, l                                          ; $4797: $45
	nop                                              ; $4798: $00
	adc e                                            ; $4799: $8b
	add hl, de                                       ; $479a: $19
	dec l                                            ; $479b: $2d
	ld b, a                                          ; $479c: $47
	ld b, b                                          ; $479d: $40
	adc d                                            ; $479e: $8a
	add hl, de                                       ; $479f: $19
	ld l, a                                          ; $47a0: $6f
	ld b, a                                          ; $47a1: $47
	ld b, b                                          ; $47a2: $40
	adc e                                            ; $47a3: $8b
	add hl, de                                       ; $47a4: $19
	xor l                                            ; $47a5: $ad
	ld b, a                                          ; $47a6: $47
	nop                                              ; $47a7: $00
	adc d                                            ; $47a8: $8a
	rst $38                                          ; $47a9: $ff
	db $fc                                           ; $47aa: $fc
	add hl, de                                       ; $47ab: $19
	nop                                              ; $47ac: $00
	ld b, b                                          ; $47ad: $40
	db $d3                                           ; $47ae: $d3
	call nc, $f9ff                                   ; $47af: $d4 $ff $f9
	add hl, de                                       ; $47b2: $19
	ld h, h                                          ; $47b3: $64
	ld c, b                                          ; $47b4: $48
	nop                                              ; $47b5: $00
	adc h                                            ; $47b6: $8c
	add hl, de                                       ; $47b7: $19
	add d                                            ; $47b8: $82
	ld c, b                                          ; $47b9: $48
	ld b, b                                          ; $47ba: $40
	adc h                                            ; $47bb: $8c
	add hl, de                                       ; $47bc: $19
	sbc b                                            ; $47bd: $98
	ld c, b                                          ; $47be: $48
	add b                                            ; $47bf: $80
	adc h                                            ; $47c0: $8c
	add hl, de                                       ; $47c1: $19
	xor l                                            ; $47c2: $ad
	ld b, a                                          ; $47c3: $47
	nop                                              ; $47c4: $00
	adc d                                            ; $47c5: $8a
	rst $38                                          ; $47c6: $ff
	ld sp, hl                                        ; $47c7: $f9
	add hl, de                                       ; $47c8: $19
	ld l, d                                          ; $47c9: $6a
	ld b, b                                          ; $47ca: $40
	add b                                            ; $47cb: $80
	add e                                            ; $47cc: $83
	add hl, de                                       ; $47cd: $19
	ld c, c                                          ; $47ce: $49
	ld b, c                                          ; $47cf: $41
	add b                                            ; $47d0: $80
	add l                                            ; $47d1: $85
	db $fc                                           ; $47d2: $fc
	add hl, de                                       ; $47d3: $19
	nop                                              ; $47d4: $00
	ld b, b                                          ; $47d5: $40
	db $d3                                           ; $47d6: $d3
	call nc, $19ff                                   ; $47d7: $d4 $ff $19
	nop                                              ; $47da: $00
	ld c, d                                          ; $47db: $4a
	add hl, de                                       ; $47dc: $19
	inc c                                            ; $47dd: $0c
	ld c, d                                          ; $47de: $4a
	add hl, de                                       ; $47df: $19
	inc d                                            ; $47e0: $14
	ld c, d                                          ; $47e1: $4a
	add hl, de                                       ; $47e2: $19
	ld h, $4a                                        ; $47e3: $26 $4a
	add hl, de                                       ; $47e5: $19
	jr c, jr_001_4832                                ; $47e6: $38 $4a

	add hl, de                                       ; $47e8: $19
	ld c, d                                          ; $47e9: $4a
	ld c, d                                          ; $47ea: $4a
	add hl, de                                       ; $47eb: $19
	ld e, d                                          ; $47ec: $5a
	ld c, d                                          ; $47ed: $4a
	add hl, de                                       ; $47ee: $19
	ld l, d                                          ; $47ef: $6a
	ld c, d                                          ; $47f0: $4a
	add hl, de                                       ; $47f1: $19
	ld [hl], h                                       ; $47f2: $74
	ld c, d                                          ; $47f3: $4a
	add hl, de                                       ; $47f4: $19
	add h                                            ; $47f5: $84
	ld c, d                                          ; $47f6: $4a
	add hl, de                                       ; $47f7: $19
	sub b                                            ; $47f8: $90
	ld c, d                                          ; $47f9: $4a
	add hl, de                                       ; $47fa: $19
	and b                                            ; $47fb: $a0
	ld c, d                                          ; $47fc: $4a
	add hl, de                                       ; $47fd: $19
	xor [hl]                                         ; $47fe: $ae
	ld c, d                                          ; $47ff: $4a
	add hl, de                                       ; $4800: $19
	cp h                                             ; $4801: $bc
	ld c, d                                          ; $4802: $4a
	add hl, de                                       ; $4803: $19
	jp z, $194a                                      ; $4804: $ca $4a $19

	call c, $194a                                    ; $4807: $dc $4a $19
	db $ec                                           ; $480a: $ec
	ld c, d                                          ; $480b: $4a
	add hl, de                                       ; $480c: $19
	ld a, [$194a]                                    ; $480d: $fa $4a $19
	ld a, [bc]                                       ; $4810: $0a
	ld c, e                                          ; $4811: $4b
	add hl, de                                       ; $4812: $19
	jp z, $1947                                      ; $4813: $ca $47 $19

	ld a, [bc]                                       ; $4816: $0a
	ld c, e                                          ; $4817: $4b
	add hl, de                                       ; $4818: $19
	call nc, $1947                                   ; $4819: $d4 $47 $19
	ld a, [bc]                                       ; $481c: $0a
	ld c, e                                          ; $481d: $4b
	add hl, de                                       ; $481e: $19
	ldh [rBGP], a                                    ; $481f: $e0 $47
	add hl, de                                       ; $4821: $19
	ld a, [bc]                                       ; $4822: $0a
	ld c, e                                          ; $4823: $4b
	add hl, de                                       ; $4824: $19
	ldh a, [c]                                       ; $4825: $f2
	ld b, a                                          ; $4826: $47
	add hl, de                                       ; $4827: $19
	ld a, [bc]                                       ; $4828: $0a
	ld c, e                                          ; $4829: $4b
	add hl, de                                       ; $482a: $19
	inc b                                            ; $482b: $04
	ld c, b                                          ; $482c: $48
	add hl, de                                       ; $482d: $19
	ld a, [bc]                                       ; $482e: $0a
	ld c, e                                          ; $482f: $4b
	add hl, de                                       ; $4830: $19
	inc d                                            ; $4831: $14

jr_001_4832:
	ld c, b                                          ; $4832: $48
	add hl, de                                       ; $4833: $19
	ld a, [bc]                                       ; $4834: $0a
	ld c, e                                          ; $4835: $4b
	add hl, de                                       ; $4836: $19
	inc h                                            ; $4837: $24
	ld c, b                                          ; $4838: $48
	add hl, de                                       ; $4839: $19
	ld a, [bc]                                       ; $483a: $0a
	ld c, e                                          ; $483b: $4b
	add hl, de                                       ; $483c: $19
	inc [hl]                                         ; $483d: $34
	ld c, b                                          ; $483e: $48
	add hl, de                                       ; $483f: $19
	ld a, [bc]                                       ; $4840: $0a
	ld c, e                                          ; $4841: $4b
	add hl, de                                       ; $4842: $19
	ld b, d                                          ; $4843: $42
	ld c, b                                          ; $4844: $48
	add hl, de                                       ; $4845: $19
	ld a, [bc]                                       ; $4846: $0a
	ld c, e                                          ; $4847: $4b
	add hl, de                                       ; $4848: $19
	ld d, h                                          ; $4849: $54
	ld c, b                                          ; $484a: $48
	add hl, de                                       ; $484b: $19
	ld d, $4b                                        ; $484c: $16 $4b
	add hl, de                                       ; $484e: $19
	jp z, $1947                                      ; $484f: $ca $47 $19

	ld d, $4b                                        ; $4852: $16 $4b
	add hl, de                                       ; $4854: $19
	call nc, $1947                                   ; $4855: $d4 $47 $19
	ld d, $4b                                        ; $4858: $16 $4b
	add hl, de                                       ; $485a: $19
	ldh [rBGP], a                                    ; $485b: $e0 $47
	add hl, de                                       ; $485d: $19
	ld d, $4b                                        ; $485e: $16 $4b
	add hl, de                                       ; $4860: $19
	ldh a, [c]                                       ; $4861: $f2
	ld b, a                                          ; $4862: $47
	add hl, de                                       ; $4863: $19
	ld d, $4b                                        ; $4864: $16 $4b
	add hl, de                                       ; $4866: $19
	inc b                                            ; $4867: $04
	ld c, b                                          ; $4868: $48
	add hl, de                                       ; $4869: $19
	ld d, $4b                                        ; $486a: $16 $4b
	add hl, de                                       ; $486c: $19
	inc d                                            ; $486d: $14
	ld c, b                                          ; $486e: $48
	add hl, de                                       ; $486f: $19
	ld d, $4b                                        ; $4870: $16 $4b
	add hl, de                                       ; $4872: $19
	inc h                                            ; $4873: $24
	ld c, b                                          ; $4874: $48
	add hl, de                                       ; $4875: $19
	ld d, $4b                                        ; $4876: $16 $4b
	add hl, de                                       ; $4878: $19
	inc [hl]                                         ; $4879: $34
	ld c, b                                          ; $487a: $48
	add hl, de                                       ; $487b: $19
	ld d, $4b                                        ; $487c: $16 $4b
	add hl, de                                       ; $487e: $19
	ld b, d                                          ; $487f: $42
	ld c, b                                          ; $4880: $48
	add hl, de                                       ; $4881: $19
	ld d, $4b                                        ; $4882: $16 $4b
	add hl, de                                       ; $4884: $19
	ld d, h                                          ; $4885: $54
	ld c, b                                          ; $4886: $48
	add hl, de                                       ; $4887: $19
	jr z, jr_001_48d5                                ; $4888: $28 $4b

	add hl, de                                       ; $488a: $19
	jp z, $1947                                      ; $488b: $ca $47 $19

	jr z, jr_001_48db                                ; $488e: $28 $4b

	add hl, de                                       ; $4890: $19
	call nc, $1947                                   ; $4891: $d4 $47 $19
	xor d                                            ; $4894: $aa
	ld c, b                                          ; $4895: $48
	add hl, de                                       ; $4896: $19
	call z, $1948                                    ; $4897: $cc $48 $19
	xor $48                                          ; $489a: $ee $48
	add hl, de                                       ; $489c: $19
	db $10                                           ; $489d: $10
	ld c, c                                          ; $489e: $49
	add hl, de                                       ; $489f: $19
	ld [hl-], a                                      ; $48a0: $32
	ld c, c                                          ; $48a1: $49
	add hl, de                                       ; $48a2: $19
	ld d, h                                          ; $48a3: $54
	ld c, c                                          ; $48a4: $49
	add hl, de                                       ; $48a5: $19
	halt                                             ; $48a6: $76
	ld c, c                                          ; $48a7: $49
	add hl, de                                       ; $48a8: $19
	sub h                                            ; $48a9: $94
	ld c, c                                          ; $48aa: $49
	add hl, de                                       ; $48ab: $19
	or b                                             ; $48ac: $b0
	ld c, c                                          ; $48ad: $49
	add hl, de                                       ; $48ae: $19
	ret nc                                           ; $48af: $d0

	ld c, c                                          ; $48b0: $49
	add hl, de                                       ; $48b1: $19
	xor $49                                          ; $48b2: $ee $49
	sbc c                                            ; $48b4: $99
	sbc d                                            ; $48b5: $9a
	sbc d                                            ; $48b6: $9a
	sbc d                                            ; $48b7: $9a
	sbc d                                            ; $48b8: $9a
	sbc d                                            ; $48b9: $9a
	sbc d                                            ; $48ba: $9a
	sbc d                                            ; $48bb: $9a
	sbc d                                            ; $48bc: $9a
	rst $38                                          ; $48bd: $ff
	sbc d                                            ; $48be: $9a
	sbc d                                            ; $48bf: $9a
	sbc d                                            ; $48c0: $9a
	sbc d                                            ; $48c1: $9a
	sbc d                                            ; $48c2: $9a
	sbc d                                            ; $48c3: $9a
	sbc d                                            ; $48c4: $9a
	sbc d                                            ; $48c5: $9a
	sbc e                                            ; $48c6: $9b
	rst $38                                          ; $48c7: $ff
	ld bc, $0020                                     ; $48c8: $01 $20 $00
	sbc b                                            ; $48cb: $98
	sbc b                                            ; $48cc: $98
	sbc l                                            ; $48cd: $9d
	sbc l                                            ; $48ce: $9d
	sbc l                                            ; $48cf: $9d
	sbc l                                            ; $48d0: $9d
	sbc l                                            ; $48d1: $9d
	sbc l                                            ; $48d2: $9d
	sbc [hl]                                         ; $48d3: $9e
	rst $38                                          ; $48d4: $ff

jr_001_48d5:
	ld bc, $1320                                     ; $48d5: $01 $20 $13
	sbc b                                            ; $48d8: $98
	sbc h                                            ; $48d9: $9c
	sbc l                                            ; $48da: $9d

jr_001_48db:
	sbc l                                            ; $48db: $9d
	sbc l                                            ; $48dc: $9d
	sbc l                                            ; $48dd: $9d
	sbc l                                            ; $48de: $9d
	sbc l                                            ; $48df: $9d
	sbc a                                            ; $48e0: $9f
	rst $38                                          ; $48e1: $ff
	nop                                              ; $48e2: $00
	jr nz, jr_001_4906                               ; $48e3: $20 $21

	sbc b                                            ; $48e5: $98
	add b                                            ; $48e6: $80
	sub b                                            ; $48e7: $90
	add [hl]                                         ; $48e8: $86
	sub [hl]                                         ; $48e9: $96
	ld a, h                                          ; $48ea: $7c
	adc h                                            ; $48eb: $8c
	rst $38                                          ; $48ec: $ff
	nop                                              ; $48ed: $00
	jr nz, jr_001_4912                               ; $48ee: $20 $22

	sbc b                                            ; $48f0: $98
	add c                                            ; $48f1: $81
	sub c                                            ; $48f2: $91
	add a                                            ; $48f3: $87
	sub a                                            ; $48f4: $97
	ld a, l                                          ; $48f5: $7d
	adc l                                            ; $48f6: $8d
	rst $38                                          ; $48f7: $ff
	nop                                              ; $48f8: $00
	jr nz, jr_001_491e                               ; $48f9: $20 $23

	sbc b                                            ; $48fb: $98
	xor [hl]                                         ; $48fc: $ae
	xor a                                            ; $48fd: $af
	xor [hl]                                         ; $48fe: $ae
	xor a                                            ; $48ff: $af
	xor [hl]                                         ; $4900: $ae
	xor a                                            ; $4901: $af
	rst $38                                          ; $4902: $ff
	nop                                              ; $4903: $00
	jr nz, jr_001_492d                               ; $4904: $20 $27

jr_001_4906:
	sbc b                                            ; $4906: $98
	add d                                            ; $4907: $82
	sub d                                            ; $4908: $92
	ld a, b                                          ; $4909: $78
	adc b                                            ; $490a: $88
	ld a, [hl]                                       ; $490b: $7e
	adc [hl]                                         ; $490c: $8e
	rst $38                                          ; $490d: $ff
	nop                                              ; $490e: $00
	jr nz, jr_001_4939                               ; $490f: $20 $28

	sbc b                                            ; $4911: $98

jr_001_4912:
	add e                                            ; $4912: $83
	sub e                                            ; $4913: $93
	ld a, c                                          ; $4914: $79
	adc c                                            ; $4915: $89
	ld a, a                                          ; $4916: $7f
	adc a                                            ; $4917: $8f
	rst $38                                          ; $4918: $ff
	nop                                              ; $4919: $00
	jr nz, jr_001_4945                               ; $491a: $20 $29

	sbc b                                            ; $491c: $98
	xor [hl]                                         ; $491d: $ae

jr_001_491e:
	xor a                                            ; $491e: $af
	xor [hl]                                         ; $491f: $ae
	xor a                                            ; $4920: $af
	xor [hl]                                         ; $4921: $ae
	xor a                                            ; $4922: $af
	rst $38                                          ; $4923: $ff
	nop                                              ; $4924: $00
	jr nz, @+$2f                                     ; $4925: $20 $2d

	sbc b                                            ; $4927: $98
	add h                                            ; $4928: $84
	sub h                                            ; $4929: $94
	ld a, d                                          ; $492a: $7a
	adc d                                            ; $492b: $8a
	or b                                             ; $492c: $b0

jr_001_492d:
	or d                                             ; $492d: $b2
	rst $38                                          ; $492e: $ff
	nop                                              ; $492f: $00
	jr nz, @+$30                                     ; $4930: $20 $2e

	sbc b                                            ; $4932: $98
	add l                                            ; $4933: $85
	sub l                                            ; $4934: $95
	ld a, e                                          ; $4935: $7b
	adc e                                            ; $4936: $8b
	or c                                             ; $4937: $b1
	or e                                             ; $4938: $b3

jr_001_4939:
	rst $38                                          ; $4939: $ff
	nop                                              ; $493a: $00
	jr nz, jr_001_496c                               ; $493b: $20 $2f

	sbc b                                            ; $493d: $98
	xor [hl]                                         ; $493e: $ae
	xor a                                            ; $493f: $af
	xor [hl]                                         ; $4940: $ae
	xor a                                            ; $4941: $af
	xor [hl]                                         ; $4942: $ae
	xor a                                            ; $4943: $af
	rst $38                                          ; $4944: $ff

jr_001_4945:
	nop                                              ; $4945: $00
	ld bc, $9c00                                     ; $4946: $01 $00 $9c
	and e                                            ; $4949: $a3
	and e                                            ; $494a: $a3
	and e                                            ; $494b: $a3
	and e                                            ; $494c: $a3
	and e                                            ; $494d: $a3
	cp [hl]                                          ; $494e: $be
	cp a                                             ; $494f: $bf
	ret nz                                           ; $4950: $c0

	pop bc                                           ; $4951: $c1
	jp nz, $00ff                                     ; $4952: $c2 $ff $00

	ld bc, $9c0a                                     ; $4955: $01 $0a $9c
	jp $c5c4                                         ; $4958: $c3 $c4 $c5


	add $c7                                          ; $495b: $c6 $c7
	ret z                                            ; $495d: $c8

	ret                                              ; $495e: $c9


	jp z, $a3cb                                      ; $495f: $ca $cb $a3

	rst $38                                          ; $4962: $ff
	ld [bc], a                                       ; $4963: $02
	ld bc, $9f01                                     ; $4964: $01 $01 $9f
	jr c, jr_001_49a2                                ; $4967: $38 $39

	ld a, [hl-]                                      ; $4969: $3a
	dec sp                                           ; $496a: $3b
	inc a                                            ; $496b: $3c

jr_001_496c:
	dec a                                            ; $496c: $3d
	ld a, $3f                                        ; $496d: $3e $3f
	ld b, b                                          ; $496f: $40
	rst $38                                          ; $4970: $ff
	ld [bc], a                                       ; $4971: $02
	ld bc, $9f0a                                     ; $4972: $01 $0a $9f
	ld b, c                                          ; $4975: $41
	ld b, d                                          ; $4976: $42
	ld b, e                                          ; $4977: $43
	ld b, h                                          ; $4978: $44
	ld b, l                                          ; $4979: $45
	ld b, [hl]                                       ; $497a: $46
	ld b, a                                          ; $497b: $47
	ld c, b                                          ; $497c: $48
	ld c, c                                          ; $497d: $49
	rst $38                                          ; $497e: $ff
	ld [bc], a                                       ; $497f: $02
	ld bc, $9f21                                     ; $4980: $01 $21 $9f
	ld c, d                                          ; $4983: $4a
	ld c, e                                          ; $4984: $4b
	ld c, h                                          ; $4985: $4c
	ld c, l                                          ; $4986: $4d
	ld c, [hl]                                       ; $4987: $4e
	ld c, a                                          ; $4988: $4f
	ld d, b                                          ; $4989: $50
	ld d, c                                          ; $498a: $51
	ld d, d                                          ; $498b: $52
	rst $38                                          ; $498c: $ff
	ld [bc], a                                       ; $498d: $02
	ld bc, $9f2a                                     ; $498e: $01 $2a $9f
	ld d, e                                          ; $4991: $53
	ld d, h                                          ; $4992: $54
	ld d, l                                          ; $4993: $55
	ld d, [hl]                                       ; $4994: $56
	ld d, a                                          ; $4995: $57
	ld e, b                                          ; $4996: $58
	ld e, c                                          ; $4997: $59
	ld e, d                                          ; $4998: $5a
	ld e, e                                          ; $4999: $5b
	rst $38                                          ; $499a: $ff
	ld [bc], a                                       ; $499b: $02
	ld bc, $9f41                                     ; $499c: $01 $41 $9f
	ld e, h                                          ; $499f: $5c
	ld e, l                                          ; $49a0: $5d
	ld e, [hl]                                       ; $49a1: $5e

jr_001_49a2:
	ld e, a                                          ; $49a2: $5f
	ld h, b                                          ; $49a3: $60
	ld h, c                                          ; $49a4: $61
	ld h, d                                          ; $49a5: $62
	ld h, e                                          ; $49a6: $63
	ld h, h                                          ; $49a7: $64
	rst $38                                          ; $49a8: $ff
	ld [bc], a                                       ; $49a9: $02
	ld bc, $9f4a                                     ; $49aa: $01 $4a $9f
	ld h, l                                          ; $49ad: $65
	ld h, [hl]                                       ; $49ae: $66
	ld h, a                                          ; $49af: $67
	ld l, b                                          ; $49b0: $68
	ld l, c                                          ; $49b1: $69
	ld l, d                                          ; $49b2: $6a
	ld l, e                                          ; $49b3: $6b
	ld l, h                                          ; $49b4: $6c
	ld l, l                                          ; $49b5: $6d
	rst $38                                          ; $49b6: $ff
	ld [bc], a                                       ; $49b7: $02
	ld bc, $9f61                                     ; $49b8: $01 $61 $9f
	ld l, [hl]                                       ; $49bb: $6e
	ld l, a                                          ; $49bc: $6f
	ld [hl], b                                       ; $49bd: $70

jr_001_49be:
	ld [hl], c                                       ; $49be: $71
	ld [hl], d                                       ; $49bf: $72
	ld [hl], e                                       ; $49c0: $73
	ld [hl], h                                       ; $49c1: $74
	ld [hl], l                                       ; $49c2: $75
	halt                                             ; $49c3: $76
	rst $38                                          ; $49c4: $ff
	ld [bc], a                                       ; $49c5: $02
	ld bc, $9f6a                                     ; $49c6: $01 $6a $9f
	ld [hl], a                                       ; $49c9: $77
	ld a, b                                          ; $49ca: $78
	ld a, c                                          ; $49cb: $79
	ld a, d                                          ; $49cc: $7a
	ld a, e                                          ; $49cd: $7b
	ld a, h                                          ; $49ce: $7c
	ld a, l                                          ; $49cf: $7d
	ld a, [hl]                                       ; $49d0: $7e
	ld a, a                                          ; $49d1: $7f
	rst $38                                          ; $49d2: $ff
	and e                                            ; $49d3: $a3
	and e                                            ; $49d4: $a3
	and e                                            ; $49d5: $a3
	and e                                            ; $49d6: $a3
	and e                                            ; $49d7: $a3
	and e                                            ; $49d8: $a3
	and e                                            ; $49d9: $a3
	and e                                            ; $49da: $a3
	and e                                            ; $49db: $a3
	rst $38                                          ; $49dc: $ff
	and e                                            ; $49dd: $a3
	and e                                            ; $49de: $a3
	and e                                            ; $49df: $a3
	and e                                            ; $49e0: $a3
	and e                                            ; $49e1: $a3
	and e                                            ; $49e2: $a3

jr_001_49e3:
	and e                                            ; $49e3: $a3
	and e                                            ; $49e4: $a3
	and e                                            ; $49e5: $a3
	and e                                            ; $49e6: $a3
	rst $38                                          ; $49e7: $ff
	and h                                            ; $49e8: $a4
	or h                                             ; $49e9: $b4
	rst $38                                          ; $49ea: $ff
	and l                                            ; $49eb: $a5
	or l                                             ; $49ec: $b5
	rst $38                                          ; $49ed: $ff
	and [hl]                                         ; $49ee: $a6
	or [hl]                                          ; $49ef: $b6
	rst $38                                          ; $49f0: $ff
	and a                                            ; $49f1: $a7
	or a                                             ; $49f2: $b7
	rst $38                                          ; $49f3: $ff
	xor b                                            ; $49f4: $a8
	cp b                                             ; $49f5: $b8
	rst $38                                          ; $49f6: $ff
	xor c                                            ; $49f7: $a9
	cp c                                             ; $49f8: $b9
	rst $38                                          ; $49f9: $ff
	xor d                                            ; $49fa: $aa
	cp d                                             ; $49fb: $ba
	rst $38                                          ; $49fc: $ff
	xor e                                            ; $49fd: $ab
	cp e                                             ; $49fe: $bb
	rst $38                                          ; $49ff: $ff
	xor h                                            ; $4a00: $ac
	cp h                                             ; $4a01: $bc
	rst $38                                          ; $4a02: $ff
	xor l                                            ; $4a03: $ad
	cp l                                             ; $4a04: $bd
	rst $38                                          ; $4a05: $ff
	add sp, $49                                      ; $4a06: $e8 $49
	db $eb                                           ; $4a08: $eb
	ld c, c                                          ; $4a09: $49
	xor $49                                          ; $4a0a: $ee $49
	pop af                                           ; $4a0c: $f1
	ld c, c                                          ; $4a0d: $49
	db $f4                                           ; $4a0e: $f4
	ld c, c                                          ; $4a0f: $49
	rst FarCall                                          ; $4a10: $f7
	ld c, c                                          ; $4a11: $49
	ld a, [$fd49]                                    ; $4a12: $fa $49 $fd
	ld c, c                                          ; $4a15: $49
	nop                                              ; $4a16: $00
	ld c, d                                          ; $4a17: $4a
	inc bc                                           ; $4a18: $03
	ld c, d                                          ; $4a19: $4a
	pop af                                           ; $4a1a: $f1
	and d                                            ; $4a1b: $a2
	inc h                                            ; $4a1c: $24
	sbc b                                            ; $4a1d: $98
	di                                               ; $4a1e: $f3
	and d                                            ; $4a1f: $a2

jr_001_4a20:
	ld a, [hl+]                                      ; $4a20: $2a
	sbc b                                            ; $4a21: $98
	push af                                          ; $4a22: $f5
	and d                                            ; $4a23: $a2
	jr nc, jr_001_49be                               ; $4a24: $30 $98

	rst FarCall                                          ; $4a26: $f7
	and d                                            ; $4a27: $a2
	ld h, h                                          ; $4a28: $64
	sbc b                                            ; $4a29: $98
	ld sp, hl                                        ; $4a2a: $f9
	and d                                            ; $4a2b: $a2
	ld l, d                                          ; $4a2c: $6a
	sbc b                                            ; $4a2d: $98
	ei                                               ; $4a2e: $fb
	and d                                            ; $4a2f: $a2
	ld [hl], b                                       ; $4a30: $70
	sbc b                                            ; $4a31: $98
	db $fd                                           ; $4a32: $fd
	and d                                            ; $4a33: $a2
	and h                                            ; $4a34: $a4
	sbc b                                            ; $4a35: $98
	rst $38                                          ; $4a36: $ff
	and d                                            ; $4a37: $a2
	xor d                                            ; $4a38: $aa
	sbc b                                            ; $4a39: $98
	ld bc, $b0a3                                     ; $4a3a: $01 $a3 $b0
	sbc b                                            ; $4a3d: $98
	ld c, a                                          ; $4a3e: $4f
	push de                                          ; $4a3f: $d5
	ld [$1f18], sp                                   ; $4a40: $08 $18 $1f
	push de                                          ; $4a43: $d5
	jr c, jr_001_4a5e                                ; $4a44: $38 $18

	daa                                              ; $4a46: $27
	push de                                          ; $4a47: $d5
	ld l, b                                          ; $4a48: $68
	jr jr_001_4a7a                                   ; $4a49: $18 $2f

	push de                                          ; $4a4b: $d5
	ld [$3728], sp                                   ; $4a4c: $08 $28 $37
	push de                                          ; $4a4f: $d5
	jr c, jr_001_4a7a                                ; $4a50: $38 $28

	ccf                                              ; $4a52: $3f
	push de                                          ; $4a53: $d5
	ld l, b                                          ; $4a54: $68
	jr z, jr_001_4a9e                                ; $4a55: $28 $47

	push de                                          ; $4a57: $d5
	ld [$5738], sp                                   ; $4a58: $08 $38 $57
	push de                                          ; $4a5b: $d5
	jr c, jr_001_4a96                                ; $4a5c: $38 $38

jr_001_4a5e:
	ld e, a                                          ; $4a5e: $5f
	push de                                          ; $4a5f: $d5
	ld l, b                                          ; $4a60: $68
	jr c, jr_001_49e3                                ; $4a61: $38 $80

	sub e                                            ; $4a63: $93
	add hl, de                                       ; $4a64: $19
	add a                                            ; $4a65: $87
	ld b, e                                          ; $4a66: $43
	add hl, de                                       ; $4a67: $19
	and c                                            ; $4a68: $a1
	ld b, e                                          ; $4a69: $43
	and b                                            ; $4a6a: $a0
	sub e                                            ; $4a6b: $93
	add hl, de                                       ; $4a6c: $19
	jp $1943                                         ; $4a6d: $c3 $43 $19


	call c, $c043                                    ; $4a70: $dc $43 $c0
	sub e                                            ; $4a73: $93
	add hl, de                                       ; $4a74: $19
	ld a, [$1943]                                    ; $4a75: $fa $43 $19
	dec e                                            ; $4a78: $1d
	ld b, h                                          ; $4a79: $44

jr_001_4a7a:
	ldh [hDisp1_OBP0], a                                     ; $4a7a: $e0 $93
	add hl, de                                       ; $4a7c: $19
	ccf                                              ; $4a7d: $3f
	ld b, h                                          ; $4a7e: $44
	add hl, de                                       ; $4a7f: $19
	ld d, a                                          ; $4a80: $57
	ld b, h                                          ; $4a81: $44
	nop                                              ; $4a82: $00
	sub h                                            ; $4a83: $94
	add hl, de                                       ; $4a84: $19
	ld l, d                                          ; $4a85: $6a
	ld b, l                                          ; $4a86: $45
	add hl, de                                       ; $4a87: $19
	adc l                                            ; $4a88: $8d
	ld b, l                                          ; $4a89: $45
	jr nz, jr_001_4a20                               ; $4a8a: $20 $94

	add hl, de                                       ; $4a8c: $19
	ld l, a                                          ; $4a8d: $6f
	ld b, h                                          ; $4a8e: $44
	add hl, de                                       ; $4a8f: $19
	adc c                                            ; $4a90: $89
	ld b, h                                          ; $4a91: $44
	ld b, b                                          ; $4a92: $40
	sub h                                            ; $4a93: $94
	add hl, de                                       ; $4a94: $19
	xor c                                            ; $4a95: $a9

jr_001_4a96:
	ld b, h                                          ; $4a96: $44
	add hl, de                                       ; $4a97: $19
	add $44                                          ; $4a98: $c6 $44
	ld h, b                                          ; $4a9a: $60
	sub h                                            ; $4a9b: $94
	add hl, de                                       ; $4a9c: $19
	ld b, b                                          ; $4a9d: $40

jr_001_4a9e:
	ld b, e                                          ; $4a9e: $43
	add hl, de                                       ; $4a9f: $19
	ld h, e                                          ; $4aa0: $63
	ld b, e                                          ; $4aa1: $43
	add b                                            ; $4aa2: $80
	sub h                                            ; $4aa3: $94
	add hl, de                                       ; $4aa4: $19
	xor c                                            ; $4aa5: $a9
	ld b, l                                          ; $4aa6: $45
	add hl, de                                       ; $4aa7: $19
	bit 0, l                                         ; $4aa8: $cb $45
	ret nz                                           ; $4aaa: $c0

	sub l                                            ; $4aab: $95
	add hl, de                                       ; $4aac: $19
	db $ed                                           ; $4aad: $ed
	ld b, l                                          ; $4aae: $45
	add hl, de                                       ; $4aaf: $19
	ld c, $46                                        ; $4ab0: $0e $46
	ldh [hDisp1_WY], a                                     ; $4ab2: $e0 $95
	add hl, de                                       ; $4ab4: $19
	ld a, [hl+]                                      ; $4ab5: $2a
	ld b, [hl]                                       ; $4ab6: $46
	add hl, de                                       ; $4ab7: $19
	ld c, h                                          ; $4ab8: $4c
	ld b, [hl]                                       ; $4ab9: $46
	nop                                              ; $4aba: $00
	sub [hl]                                         ; $4abb: $96
	add hl, de                                       ; $4abc: $19

jr_001_4abd:
	ld l, [hl]                                       ; $4abd: $6e
	ld b, [hl]                                       ; $4abe: $46

jr_001_4abf:
	add hl, de                                       ; $4abf: $19
	adc h                                            ; $4ac0: $8c
	ld b, [hl]                                       ; $4ac1: $46
	jr nz, @-$68                                     ; $4ac2: $20 $96

	add hl, de                                       ; $4ac4: $19
	xor [hl]                                         ; $4ac5: $ae
	ld b, [hl]                                       ; $4ac6: $46
	add hl, de                                       ; $4ac7: $19
	ret nc                                           ; $4ac8: $d0

	ld b, [hl]                                       ; $4ac9: $46
	ld b, b                                          ; $4aca: $40
	sub [hl]                                         ; $4acb: $96
	add hl, de                                       ; $4acc: $19
	ldh a, [rDMA]                                    ; $4acd: $f0 $46
	add hl, de                                       ; $4acf: $19
	db $10                                           ; $4ad0: $10
	ld b, a                                          ; $4ad1: $47
	ld h, b                                          ; $4ad2: $60
	sub [hl]                                         ; $4ad3: $96
	add hl, de                                       ; $4ad4: $19
	ret nc                                           ; $4ad5: $d0

	ld b, d                                          ; $4ad6: $42
	add hl, de                                       ; $4ad7: $19
	di                                               ; $4ad8: $f3
	ld b, d                                          ; $4ad9: $42
	add hl, bc                                       ; $4ada: $09
	dec bc                                           ; $4adb: $0b
	dec bc                                           ; $4adc: $0b
	dec bc                                           ; $4add: $0b
	dec bc                                           ; $4ade: $0b
	dec bc                                           ; $4adf: $0b
	inc bc                                           ; $4ae0: $03
	inc bc                                           ; $4ae1: $03
	ld [bc], a                                       ; $4ae2: $02
	dec b                                            ; $4ae3: $05
	rlca                                             ; $4ae4: $07
	rlca                                             ; $4ae5: $07
	rlca                                             ; $4ae6: $07
	rlca                                             ; $4ae7: $07
	ld b, $01                                        ; $4ae8: $06 $01
	ld [$09ff], sp                                   ; $4aea: $08 $ff $09
	ld [bc], a                                       ; $4aed: $02
	nop                                              ; $4aee: $00
	rst $38                                          ; $4aef: $ff
	ld a, [bc]                                       ; $4af0: $0a
	inc bc                                           ; $4af1: $03
	ld bc, $0bff                                     ; $4af2: $01 $ff $0b
	inc b                                            ; $4af5: $04
	ld [bc], a                                       ; $4af6: $02
	rst $38                                          ; $4af7: $ff
	inc c                                            ; $4af8: $0c
	dec b                                            ; $4af9: $05
	inc bc                                           ; $4afa: $03
	rst $38                                          ; $4afb: $ff
	dec c                                            ; $4afc: $0d
	ld b, $04                                        ; $4afd: $06 $04
	rst $38                                          ; $4aff: $ff
	ld c, $07                                        ; $4b00: $0e $07
	dec b                                            ; $4b02: $05
	rst $38                                          ; $4b03: $ff
	ld c, $08                                        ; $4b04: $0e $08
	ld b, $ff                                        ; $4b06: $06 $ff
	ld c, $00                                        ; $4b08: $0e $00
	rlca                                             ; $4b0a: $07
	rst $38                                          ; $4b0b: $ff
	ld c, $0a                                        ; $4b0c: $0e $0a
	ld c, $00                                        ; $4b0e: $0e $00
	rst $38                                          ; $4b10: $ff
	dec bc                                           ; $4b11: $0b
	add hl, bc                                       ; $4b12: $09
	ld bc, $0cff                                     ; $4b13: $01 $ff $0c
	ld a, [bc]                                       ; $4b16: $0a
	ld [bc], a                                       ; $4b17: $02
	rst $38                                          ; $4b18: $ff
	dec c                                            ; $4b19: $0d
	dec bc                                           ; $4b1a: $0b
	inc bc                                           ; $4b1b: $03
	rst $38                                          ; $4b1c: $ff
	ld c, $0c                                        ; $4b1d: $0e $0c
	inc b                                            ; $4b1f: $04
	rst $38                                          ; $4b20: $ff
	add hl, bc                                       ; $4b21: $09
	dec c                                            ; $4b22: $0d
	dec b                                            ; $4b23: $05
	rst $38                                          ; $4b24: $ff
	ld [$1870], sp                                   ; $4b25: $08 $70 $18
	ld [hl], b                                       ; $4b28: $70
	jr z, jr_001_4b9b                                ; $4b29: $28 $70

	jr c, jr_001_4b9d                                ; $4b2b: $38 $70

	ld c, b                                          ; $4b2d: $48
	ld [hl], b                                       ; $4b2e: $70
	ld e, b                                          ; $4b2f: $58
	ld [hl], b                                       ; $4b30: $70
	ld l, b                                          ; $4b31: $68
	ld [hl], b                                       ; $4b32: $70
	ld a, b                                          ; $4b33: $78
	ld [hl], b                                       ; $4b34: $70
	adc b                                            ; $4b35: $88
	ld [hl], b                                       ; $4b36: $70
	ld [$1880], sp                                   ; $4b37: $08 $80 $18
	add b                                            ; $4b3a: $80
	jr z, jr_001_4abd                                ; $4b3b: $28 $80

	jr c, jr_001_4abf                                ; $4b3d: $38 $80

	ld c, b                                          ; $4b3f: $48
	add b                                            ; $4b40: $80
	ld e, b                                          ; $4b41: $58
	add b                                            ; $4b42: $80
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	add hl, de                                       ; $4b45: $19
	ld a, [hl-]                                      ; $4b46: $3a
	ld c, e                                          ; $4b47: $4b
	add hl, de                                       ; $4b48: $19
	halt                                             ; $4b49: $76
	ld c, e                                          ; $4b4a: $4b
	add hl, de                                       ; $4b4b: $19
	or [hl]                                          ; $4b4c: $b6
	ld c, e                                          ; $4b4d: $4b
	add hl, de                                       ; $4b4e: $19
	add sp, $4b                                      ; $4b4f: $e8 $4b
	add hl, de                                       ; $4b51: $19
	ld h, $4c                                        ; $4b52: $26 $4c
	add hl, de                                       ; $4b54: $19
	ld h, d                                          ; $4b55: $62
	ld c, h                                          ; $4b56: $4c
	add hl, de                                       ; $4b57: $19
	sbc b                                            ; $4b58: $98
	ld c, h                                          ; $4b59: $4c
	add hl, de                                       ; $4b5a: $19
	ret nc                                           ; $4b5b: $d0

	ld c, h                                          ; $4b5c: $4c
	add hl, de                                       ; $4b5d: $19
	ld [$194d], sp                                   ; $4b5e: $08 $4d $19
	ld [hl], $4d                                     ; $4b61: $36 $4d
	add hl, de                                       ; $4b63: $19
	ld e, [hl]                                       ; $4b64: $5e
	ld c, l                                          ; $4b65: $4d
	add hl, de                                       ; $4b66: $19
	sub [hl]                                         ; $4b67: $96
	ld c, l                                          ; $4b68: $4d
	add hl, de                                       ; $4b69: $19
	call nz, $194d                                   ; $4b6a: $c4 $4d $19
	ld [bc], a                                       ; $4b6d: $02
	ld c, [hl]                                       ; $4b6e: $4e
	add hl, de                                       ; $4b6f: $19
	ld b, h                                          ; $4b70: $44
	ld c, [hl]                                       ; $4b71: $4e
	add hl, de                                       ; $4b72: $19
	ld [hl], b                                       ; $4b73: $70
	ld c, [hl]                                       ; $4b74: $4e
	add hl, de                                       ; $4b75: $19
	xor d                                            ; $4b76: $aa
	ld c, [hl]                                       ; $4b77: $4e
	add hl, de                                       ; $4b78: $19
	ldh [c], a                                       ; $4b79: $e2
	ld c, [hl]                                       ; $4b7a: $4e
	add hl, de                                       ; $4b7b: $19
	ld c, $4f                                        ; $4b7c: $0e $4f
	add hl, de                                       ; $4b7e: $19
	ld [hl-], a                                      ; $4b7f: $32
	ld c, a                                          ; $4b80: $4f
	add hl, de                                       ; $4b81: $19
	ld c, h                                          ; $4b82: $4c
	ld c, a                                          ; $4b83: $4f
	add hl, de                                       ; $4b84: $19
	add d                                            ; $4b85: $82
	ld c, a                                          ; $4b86: $4f
	add hl, de                                       ; $4b87: $19
	or [hl]                                          ; $4b88: $b6
	ld c, a                                          ; $4b89: $4f
	add hl, de                                       ; $4b8a: $19
	call c, $194f                                    ; $4b8b: $dc $4f $19
	ld [$1950], sp                                   ; $4b8e: $08 $50 $19
	jr c, jr_001_4be3                                ; $4b91: $38 $50

	add hl, de                                       ; $4b93: $19
	ld h, b                                          ; $4b94: $60
	ld d, b                                          ; $4b95: $50
	add hl, de                                       ; $4b96: $19
	add [hl]                                         ; $4b97: $86
	ld d, b                                          ; $4b98: $50
	add hl, de                                       ; $4b99: $19
	xor b                                            ; $4b9a: $a8

jr_001_4b9b:
	ld d, b                                          ; $4b9b: $50
	add hl, de                                       ; $4b9c: $19

jr_001_4b9d:
	adc $50                                          ; $4b9d: $ce $50
	rra                                              ; $4b9f: $1f
	push de                                          ; $4ba0: $d5
	daa                                              ; $4ba1: $27
	push de                                          ; $4ba2: $d5
	cpl                                              ; $4ba3: $2f
	push de                                          ; $4ba4: $d5
	scf                                              ; $4ba5: $37
	push de                                          ; $4ba6: $d5
	db $d3                                           ; $4ba7: $d3
	call nc, $d53f                                   ; $4ba8: $d4 $3f $d5
	ld b, a                                          ; $4bab: $47
	push de                                          ; $4bac: $d5
	ld c, a                                          ; $4bad: $4f
	push de                                          ; $4bae: $d5
	db $db                                           ; $4baf: $db
	call nc, $d4e3                                   ; $4bb0: $d4 $e3 $d4
	db $eb                                           ; $4bb3: $eb
	call nc, $d4f3                                   ; $4bb4: $d4 $f3 $d4
	rst FarCall                                          ; $4bb7: $f7
	call nc, $d4ff                                   ; $4bb8: $d4 $ff $d4
	rlca                                             ; $4bbb: $07
	push de                                          ; $4bbc: $d5
	ld sp, hl                                        ; $4bbd: $f9
	add hl, de                                       ; $4bbe: $19
	xor l                                            ; $4bbf: $ad
	ld b, a                                          ; $4bc0: $47
	nop                                              ; $4bc1: $00
	adc d                                            ; $4bc2: $8a
	rst $38                                          ; $4bc3: $ff
	ld sp, hl                                        ; $4bc4: $f9
	add hl, de                                       ; $4bc5: $19
	or [hl]                                          ; $4bc6: $b6
	ld b, a                                          ; $4bc7: $47
	nop                                              ; $4bc8: $00
	adc d                                            ; $4bc9: $8a
	rst $38                                          ; $4bca: $ff
	and b                                            ; $4bcb: $a0
	and d                                            ; $4bcc: $a2
	rst $38                                          ; $4bcd: $ff
	and d                                            ; $4bce: $a2
	and c                                            ; $4bcf: $a1
	rst $38                                          ; $4bd0: $ff
	xor [hl]                                         ; $4bd1: $ae
	xor a                                            ; $4bd2: $af
	rst $38                                          ; $4bd3: $ff
	nop                                              ; $4bd4: $00
	inc b                                            ; $4bd5: $04
	ld [$100c], sp                                   ; $4bd6: $08 $0c $10
	inc d                                            ; $4bd9: $14
	jr jr_001_4bf8                                   ; $4bda: $18 $1c

	jr nz, jr_001_4c01                               ; $4bdc: $20 $23

	sbc b                                            ; $4bde: $98
	add hl, hl                                       ; $4bdf: $29
	sbc b                                            ; $4be0: $98
	cpl                                              ; $4be1: $2f
	sbc b                                            ; $4be2: $98

jr_001_4be3:
	ld h, e                                          ; $4be3: $63
	sbc b                                            ; $4be4: $98
	ld l, c                                          ; $4be5: $69
	sbc b                                            ; $4be6: $98
	ld l, a                                          ; $4be7: $6f
	sbc b                                            ; $4be8: $98
	and e                                            ; $4be9: $a3
	sbc b                                            ; $4bea: $98
	xor c                                            ; $4beb: $a9
	sbc b                                            ; $4bec: $98
	xor a                                            ; $4bed: $af
	sbc b                                            ; $4bee: $98
	rst FarCall                                          ; $4bef: $f7
	ld c, e                                          ; $4bf0: $4b
	rst $38                                          ; $4bf1: $ff
	ld c, e                                          ; $4bf2: $4b
	inc bc                                           ; $4bf3: $03
	ld c, h                                          ; $4bf4: $4c
	rlca                                             ; $4bf5: $07
	ld c, h                                          ; $4bf6: $4c
	dec bc                                           ; $4bf7: $0b

jr_001_4bf8:
	ld c, h                                          ; $4bf8: $4c
	dec de                                           ; $4bf9: $1b
	ld c, h                                          ; $4bfa: $4c
	dec hl                                           ; $4bfb: $2b
	ld c, h                                          ; $4bfc: $4c
	dec sp                                           ; $4bfd: $3b
	ld c, h                                          ; $4bfe: $4c
	ld c, e                                          ; $4bff: $4b
	ld c, h                                          ; $4c00: $4c

jr_001_4c01:
	ld e, l                                          ; $4c01: $5d
	ld c, h                                          ; $4c02: $4c
	ld l, a                                          ; $4c03: $6f
	ld c, h                                          ; $4c04: $4c
	ld l, a                                          ; $4c05: $6f
	ld c, h                                          ; $4c06: $4c
	ld a, c                                          ; $4c07: $79
	ld c, h                                          ; $4c08: $4c
	ld a, e                                          ; $4c09: $7b
	ld c, h                                          ; $4c0a: $4c
	ld a, l                                          ; $4c0b: $7d
	ld c, h                                          ; $4c0c: $4c
	add e                                            ; $4c0d: $83
	ld c, h                                          ; $4c0e: $4c
	adc c                                            ; $4c0f: $89
	ld c, h                                          ; $4c10: $4c
	adc a                                            ; $4c11: $8f
	ld c, h                                          ; $4c12: $4c
	sub l                                            ; $4c13: $95
	ld c, h                                          ; $4c14: $4c
	sbc l                                            ; $4c15: $9d
	ld c, h                                          ; $4c16: $4c
	and l                                            ; $4c17: $a5
	ld c, h                                          ; $4c18: $4c
	and a                                            ; $4c19: $a7
	ld c, h                                          ; $4c1a: $4c
	xor c                                            ; $4c1b: $a9
	ld c, h                                          ; $4c1c: $4c
	xor a                                            ; $4c1d: $af
	ld c, h                                          ; $4c1e: $4c
	or l                                             ; $4c1f: $b5
	ld c, h                                          ; $4c20: $4c
	cp e                                             ; $4c21: $bb
	ld c, h                                          ; $4c22: $4c
	pop bc                                           ; $4c23: $c1
	ld c, h                                          ; $4c24: $4c
	sbc l                                            ; $4c25: $9d
	ld c, h                                          ; $4c26: $4c
	ret                                              ; $4c27: $c9


	ld c, h                                          ; $4c28: $4c
	and a                                            ; $4c29: $a7
	ld c, h                                          ; $4c2a: $4c
	bit 1, h                                         ; $4c2b: $cb $4c
	call $cf4c                                       ; $4c2d: $cd $4c $cf
	ld c, h                                          ; $4c30: $4c
	pop de                                           ; $4c31: $d1
	ld c, h                                          ; $4c32: $4c
	db $d3                                           ; $4c33: $d3
	ld c, h                                          ; $4c34: $4c
	sbc l                                            ; $4c35: $9d
	ld c, h                                          ; $4c36: $4c
	push de                                          ; $4c37: $d5
	ld c, h                                          ; $4c38: $4c
	and a                                            ; $4c39: $a7
	ld c, h                                          ; $4c3a: $4c
	rst SubAFromHL                                          ; $4c3b: $d7
	ld c, h                                          ; $4c3c: $4c
	reti                                             ; $4c3d: $d9


	ld c, h                                          ; $4c3e: $4c
	db $db                                           ; $4c3f: $db
	ld c, h                                          ; $4c40: $4c
	db $dd                                           ; $4c41: $dd
	ld c, h                                          ; $4c42: $4c
	db $d3                                           ; $4c43: $d3
	ld c, h                                          ; $4c44: $4c
	sbc l                                            ; $4c45: $9d
	ld c, h                                          ; $4c46: $4c
	rst SubAFromDE                                          ; $4c47: $df
	ld c, h                                          ; $4c48: $4c
	and a                                            ; $4c49: $a7
	ld c, h                                          ; $4c4a: $4c
	pop hl                                           ; $4c4b: $e1
	ld c, h                                          ; $4c4c: $4c
	rst SubAFromBC                                          ; $4c4d: $e7
	ld c, h                                          ; $4c4e: $4c
	db $ed                                           ; $4c4f: $ed
	ld c, h                                          ; $4c50: $4c
	di                                               ; $4c51: $f3
	ld c, h                                          ; $4c52: $4c
	ld sp, hl                                        ; $4c53: $f9
	ld c, h                                          ; $4c54: $4c
	rst $38                                          ; $4c55: $ff
	ld c, h                                          ; $4c56: $4c
	dec b                                            ; $4c57: $05
	ld c, l                                          ; $4c58: $4d
	dec bc                                           ; $4c59: $0b
	ld c, l                                          ; $4c5a: $4d
	ld de, $174d                                     ; $4c5b: $11 $4d $17
	ld c, l                                          ; $4c5e: $4d
	dec e                                            ; $4c5f: $1d
	ld c, l                                          ; $4c60: $4d
	inc hl                                           ; $4c61: $23
	ld c, l                                          ; $4c62: $4d
	add hl, hl                                       ; $4c63: $29
	ld c, l                                          ; $4c64: $4d
	ld sp, hl                                        ; $4c65: $f9
	ld c, h                                          ; $4c66: $4c
	rst $38                                          ; $4c67: $ff
	ld c, h                                          ; $4c68: $4c
	dec b                                            ; $4c69: $05
	ld c, l                                          ; $4c6a: $4d
	dec bc                                           ; $4c6b: $0b
	ld c, l                                          ; $4c6c: $4d
	ld de, $2f4d                                     ; $4c6d: $11 $4d $2f
	ld c, l                                          ; $4c70: $4d
	ld sp, $334d                                     ; $4c71: $31 $4d $33
	ld c, l                                          ; $4c74: $4d
	dec [hl]                                         ; $4c75: $35
	ld c, l                                          ; $4c76: $4d
	scf                                              ; $4c77: $37
	ld c, l                                          ; $4c78: $4d
	add hl, sp                                       ; $4c79: $39
	ld c, l                                          ; $4c7a: $4d
	dec sp                                           ; $4c7b: $3b
	ld c, l                                          ; $4c7c: $4d
	dec a                                            ; $4c7d: $3d
	ld c, l                                          ; $4c7e: $4d
	ld b, h                                          ; $4c7f: $44
	ld c, l                                          ; $4c80: $4d
	ld c, e                                          ; $4c81: $4b
	ld c, l                                          ; $4c82: $4d
	ld d, d                                          ; $4c83: $52
	ld c, l                                          ; $4c84: $4d
	ld e, c                                          ; $4c85: $59
	ld c, l                                          ; $4c86: $4d
	ld h, b                                          ; $4c87: $60
	ld c, l                                          ; $4c88: $4d
	ld h, a                                          ; $4c89: $67
	ld c, l                                          ; $4c8a: $4d
	ld l, [hl]                                       ; $4c8b: $6e
	ld c, l                                          ; $4c8c: $4d
	ld [hl], l                                       ; $4c8d: $75
	ld c, l                                          ; $4c8e: $4d
	ld a, h                                          ; $4c8f: $7c
	ld c, l                                          ; $4c90: $4d
	add e                                            ; $4c91: $83
	ld c, l                                          ; $4c92: $4d
	adc d                                            ; $4c93: $8a
	ld c, l                                          ; $4c94: $4d
	sub c                                            ; $4c95: $91
	ld c, l                                          ; $4c96: $4d
	sbc b                                            ; $4c97: $98
	ld c, l                                          ; $4c98: $4d
	sbc a                                            ; $4c99: $9f
	ld c, l                                          ; $4c9a: $4d
	and [hl]                                         ; $4c9b: $a6
	ld c, l                                          ; $4c9c: $4d
	xor l                                            ; $4c9d: $ad
	ld c, l                                          ; $4c9e: $4d
	or h                                             ; $4c9f: $b4
	ld c, l                                          ; $4ca0: $4d
	cp e                                             ; $4ca1: $bb
	ld c, l                                          ; $4ca2: $4d
	jp nz, $c94d                                     ; $4ca3: $c2 $4d $c9

	ld c, l                                          ; $4ca6: $4d
	ret nc                                           ; $4ca7: $d0

	ld c, l                                          ; $4ca8: $4d
	rst SubAFromHL                                          ; $4ca9: $d7
	ld c, l                                          ; $4caa: $4d
	sbc $4d                                          ; $4cab: $de $4d
	push hl                                          ; $4cad: $e5
	ld c, l                                          ; $4cae: $4d
	db $ec                                           ; $4caf: $ec
	ld c, l                                          ; $4cb0: $4d
	di                                               ; $4cb1: $f3
	ld c, l                                          ; $4cb2: $4d
	ld a, [$014d]                    ; $4cb3: $fa $4d $01
	ld c, [hl]                                       ; $4cb6: $4e
	ld [$0f4e], sp                                   ; $4cb7: $08 $4e $0f
	ld c, [hl]                                       ; $4cba: $4e
	ld d, $4e                                        ; $4cbb: $16 $4e
	dec e                                            ; $4cbd: $1d
	ld c, [hl]                                       ; $4cbe: $4e
	inc h                                            ; $4cbf: $24
	ld c, [hl]                                       ; $4cc0: $4e
	dec hl                                           ; $4cc1: $2b
	ld c, [hl]                                       ; $4cc2: $4e
	ld [hl-], a                                      ; $4cc3: $32
	ld c, [hl]                                       ; $4cc4: $4e
	add hl, sp                                       ; $4cc5: $39
	ld c, [hl]                                       ; $4cc6: $4e
	ld b, b                                          ; $4cc7: $40
	ld c, [hl]                                       ; $4cc8: $4e
	ld b, a                                          ; $4cc9: $47
	ld c, [hl]                                       ; $4cca: $4e
	ld c, [hl]                                       ; $4ccb: $4e
	ld c, [hl]                                       ; $4ccc: $4e
	ld d, l                                          ; $4ccd: $55
	ld c, [hl]                                       ; $4cce: $4e
	ld e, h                                          ; $4ccf: $5c
	ld c, [hl]                                       ; $4cd0: $4e
	ld h, e                                          ; $4cd1: $63
	ld c, [hl]                                       ; $4cd2: $4e
	ld l, d                                          ; $4cd3: $6a
	ld c, [hl]                                       ; $4cd4: $4e
	ld [hl], c                                       ; $4cd5: $71
	ld c, [hl]                                       ; $4cd6: $4e
	ld a, b                                          ; $4cd7: $78
	ld c, [hl]                                       ; $4cd8: $4e
	ld a, a                                          ; $4cd9: $7f
	ld c, [hl]                                       ; $4cda: $4e
	add [hl]                                         ; $4cdb: $86
	ld c, [hl]                                       ; $4cdc: $4e
	adc l                                            ; $4cdd: $8d
	ld c, [hl]                                       ; $4cde: $4e
	sub h                                            ; $4cdf: $94
	ld c, [hl]                                       ; $4ce0: $4e
	sbc e                                            ; $4ce1: $9b
	ld c, [hl]                                       ; $4ce2: $4e
	and d                                            ; $4ce3: $a2
	ld c, [hl]                                       ; $4ce4: $4e
	xor c                                            ; $4ce5: $a9
	ld c, [hl]                                       ; $4ce6: $4e
	or b                                             ; $4ce7: $b0
	ld c, [hl]                                       ; $4ce8: $4e
	or a                                             ; $4ce9: $b7
	ld c, [hl]                                       ; $4cea: $4e
	cp [hl]                                          ; $4ceb: $be
	ld c, [hl]                                       ; $4cec: $4e
	push bc                                          ; $4ced: $c5
	ld c, [hl]                                       ; $4cee: $4e
	call z, $d34e                                    ; $4cef: $cc $4e $d3
	ld c, [hl]                                       ; $4cf2: $4e
	jp c, $e14e                                      ; $4cf3: $da $4e $e1

	ld c, [hl]                                       ; $4cf6: $4e
	add sp, $4e                                      ; $4cf7: $e8 $4e
	rst AddAOntoHL                                          ; $4cf9: $ef
	ld c, [hl]                                       ; $4cfa: $4e
	or $4e                                           ; $4cfb: $f6 $4e
	db $fd                                           ; $4cfd: $fd
	ld c, [hl]                                       ; $4cfe: $4e
	inc b                                            ; $4cff: $04
	ld c, a                                          ; $4d00: $4f
	dec bc                                           ; $4d01: $0b
	ld c, a                                          ; $4d02: $4f
	ld [de], a                                       ; $4d03: $12
	ld c, a                                          ; $4d04: $4f
	add hl, de                                       ; $4d05: $19
	ld c, a                                          ; $4d06: $4f
	jr nz, jr_001_4d58                               ; $4d07: $20 $4f

	daa                                              ; $4d09: $27
	ld c, a                                          ; $4d0a: $4f
	ld l, $4f                                        ; $4d0b: $2e $4f
	dec [hl]                                         ; $4d0d: $35
	ld c, a                                          ; $4d0e: $4f
	inc a                                            ; $4d0f: $3c
	ld c, a                                          ; $4d10: $4f
	ld b, e                                          ; $4d11: $43
	ld c, a                                          ; $4d12: $4f
	ld c, d                                          ; $4d13: $4a
	ld c, a                                          ; $4d14: $4f
	ld d, c                                          ; $4d15: $51
	ld c, a                                          ; $4d16: $4f
	ld e, b                                          ; $4d17: $58
	ld c, a                                          ; $4d18: $4f
	ld e, a                                          ; $4d19: $5f
	ld c, a                                          ; $4d1a: $4f
	ld h, [hl]                                       ; $4d1b: $66
	ld c, a                                          ; $4d1c: $4f
	ld l, l                                          ; $4d1d: $6d
	ld c, a                                          ; $4d1e: $4f
	ld [hl], h                                       ; $4d1f: $74
	ld c, a                                          ; $4d20: $4f
	ld a, e                                          ; $4d21: $7b
	ld c, a                                          ; $4d22: $4f
	add d                                            ; $4d23: $82
	ld c, a                                          ; $4d24: $4f
	adc c                                            ; $4d25: $89
	ld c, a                                          ; $4d26: $4f
	sub b                                            ; $4d27: $90
	ld c, a                                          ; $4d28: $4f
	sub a                                            ; $4d29: $97
	ld c, a                                          ; $4d2a: $4f
	sbc [hl]                                         ; $4d2b: $9e
	ld c, a                                          ; $4d2c: $4f
	and l                                            ; $4d2d: $a5
	ld c, a                                          ; $4d2e: $4f
	xor h                                            ; $4d2f: $ac
	ld c, a                                          ; $4d30: $4f
	or e                                             ; $4d31: $b3
	ld c, a                                          ; $4d32: $4f
	cp d                                             ; $4d33: $ba
	ld c, a                                          ; $4d34: $4f
	pop bc                                           ; $4d35: $c1
	ld c, a                                          ; $4d36: $4f
	ret z                                            ; $4d37: $c8

	ld c, a                                          ; $4d38: $4f
	rst GetHLinHL                                          ; $4d39: $cf
	ld c, a                                          ; $4d3a: $4f
	sub $4f                                          ; $4d3b: $d6 $4f
	ld a, [de]                                       ; $4d3d: $1a
	nop                                              ; $4d3e: $00
	ld b, b                                          ; $4d3f: $40
	jp z, $0162                                      ; $4d40: $ca $62 $01

	jr nz, jr_001_4d5f                               ; $4d43: $20 $1a

	nop                                              ; $4d45: $00
	ld b, b                                          ; $4d46: $40
	jp z, $0462                                      ; $4d47: $ca $62 $04

	jr nz, jr_001_4d66                               ; $4d4a: $20 $1a

	nop                                              ; $4d4c: $00
	ld b, b                                          ; $4d4d: $40
	adc $62                                          ; $4d4e: $ce $62
	rlca                                             ; $4d50: $07
	jr nz, jr_001_4d6d                               ; $4d51: $20 $1a

	rst SubAFromBC                                          ; $4d53: $e7
	ld b, [hl]                                       ; $4d54: $46

Jump_001_4d55:
	jp nc, $0a62                                     ; $4d55: $d2 $62 $0a

jr_001_4d58:
	jr nz, jr_001_4d74                               ; $4d58: $20 $1a

	rst SubAFromBC                                          ; $4d5a: $e7
	ld b, [hl]                                       ; $4d5b: $46
	jp nc, $0d62                                     ; $4d5c: $d2 $62 $0d

jr_001_4d5f:
	jr nz, jr_001_4d7b                               ; $4d5f: $20 $1a

	rst SubAFromBC                                          ; $4d61: $e7

Jump_001_4d62:
	ld b, [hl]                                       ; $4d62: $46
	sub $62                                          ; $4d63: $d6 $62
	db $10                                           ; $4d65: $10

jr_001_4d66:
	jr nz, jr_001_4d82                               ; $4d66: $20 $1a

	db $d3                                           ; $4d68: $d3
	ld c, l                                          ; $4d69: $4d
	jp c, $1362                                      ; $4d6a: $da $62 $13

jr_001_4d6d:
	jr nz, jr_001_4d89                               ; $4d6d: $20 $1a

	db $d3                                           ; $4d6f: $d3
	ld c, l                                          ; $4d70: $4d
	jp c, $1662                                      ; $4d71: $da $62 $16

jr_001_4d74:
	jr nz, jr_001_4d90                               ; $4d74: $20 $1a

	db $d3                                           ; $4d76: $d3
	ld c, l                                          ; $4d77: $4d
	sbc $62                                          ; $4d78: $de $62
	add hl, de                                       ; $4d7a: $19

jr_001_4d7b:
	jr nz, jr_001_4d8d                               ; $4d7b: $20 $10

	ld a, [hl+]                                      ; $4d7d: $2a
	ld l, b                                          ; $4d7e: $68
	ldh [c], a                                       ; $4d7f: $e2
	ld h, d                                          ; $4d80: $62
	inc e                                            ; $4d81: $1c

jr_001_4d82:
	jr nz, jr_001_4d94                               ; $4d82: $20 $10

	ld a, [hl+]                                      ; $4d84: $2a
	ld l, b                                          ; $4d85: $68
	ldh [c], a                                       ; $4d86: $e2
	ld h, d                                          ; $4d87: $62
	rra                                              ; $4d88: $1f

jr_001_4d89:
	jr nz, jr_001_4d9b                               ; $4d89: $20 $10

	rla                                              ; $4d8b: $17
	ld l, e                                          ; $4d8c: $6b

jr_001_4d8d:
	ldh [c], a                                       ; $4d8d: $e2
	ld h, d                                          ; $4d8e: $62
	ld [hl+], a                                      ; $4d8f: $22

jr_001_4d90:
	jr nz, @+$1c                                     ; $4d90: $20 $1a

	ld c, h                                          ; $4d92: $4c
	ld h, b                                          ; $4d93: $60

jr_001_4d94:
	and $62                                          ; $4d94: $e6 $62
	dec h                                            ; $4d96: $25
	jr nz, @+$1c                                     ; $4d97: $20 $1a

	ld c, h                                          ; $4d99: $4c
	ld h, b                                          ; $4d9a: $60

jr_001_4d9b:
	and $62                                          ; $4d9b: $e6 $62
	jr z, jr_001_4dbf                                ; $4d9d: $28 $20

	ld a, [de]                                       ; $4d9f: $1a
	inc l                                            ; $4da0: $2c
	ld h, e                                          ; $4da1: $63
	ld [$2b62], a                                    ; $4da2: $ea $62 $2b
	jr nz, jr_001_4dc1                               ; $4da5: $20 $1a

	dec d                                            ; $4da7: $15
	ld h, [hl]                                       ; $4da8: $66
	and $62                                          ; $4da9: $e6 $62
	ld l, $20                                        ; $4dab: $2e $20
	ld a, [de]                                       ; $4dad: $1a
	inc b                                            ; $4dae: $04
	ld d, l                                          ; $4daf: $55
	xor $62                                          ; $4db0: $ee $62
	ld sp, $1a20                                     ; $4db2: $31 $20 $1a
	inc b                                            ; $4db5: $04
	ld d, l                                          ; $4db6: $55
	xor $62                                          ; $4db7: $ee $62
	inc [hl]                                         ; $4db9: $34
	jr nz, jr_001_4dd6                               ; $4dba: $20 $1a

	inc sp                                           ; $4dbc: $33
	ld e, b                                          ; $4dbd: $58
	ldh a, [c]                                       ; $4dbe: $f2

jr_001_4dbf:
	ld h, d                                          ; $4dbf: $62
	scf                                              ; $4dc0: $37

jr_001_4dc1:
	jr nz, jr_001_4ddd                               ; $4dc1: $20 $1a

	ld [hl], h                                       ; $4dc3: $74
	ld e, e                                          ; $4dc4: $5b
	xor $62                                          ; $4dc5: $ee $62
	ld a, [hl-]                                      ; $4dc7: $3a
	jr nz, jr_001_4de4                               ; $4dc8: $20 $1a

	ld c, c                                          ; $4dca: $49
	ld e, a                                          ; $4dcb: $5f
	or $62                                           ; $4dcc: $f6 $62
	dec a                                            ; $4dce: $3d
	jr nz, jr_001_4deb                               ; $4dcf: $20 $1a

	ld c, b                                          ; $4dd1: $48
	ld a, h                                          ; $4dd2: $7c
	ld a, [$3f62]                                    ; $4dd3: $fa $62 $3f

jr_001_4dd6:
	jr nz, jr_001_4df2                               ; $4dd6: $20 $1a

	ld [hl], h                                       ; $4dd8: $74
	ld b, e                                          ; $4dd9: $43
	jp z, Jump_001_4162                              ; $4dda: $ca $62 $41

jr_001_4ddd:
	jr nz, jr_001_4df9                               ; $4ddd: $20 $1a

	ld [hl], h                                       ; $4ddf: $74
	ld b, e                                          ; $4de0: $43
	jp z, $4462                                      ; $4de1: $ca $62 $44

jr_001_4de4:
	jr nz, jr_001_4e00                               ; $4de4: $20 $1a

	ld [hl], h                                       ; $4de6: $74
	ld b, e                                          ; $4de7: $43
	adc $62                                          ; $4de8: $ce $62
	ld b, a                                          ; $4dea: $47

jr_001_4deb:
	jr nz, jr_001_4e07                               ; $4deb: $20 $1a

	ld d, d                                          ; $4ded: $52
	ld c, d                                          ; $4dee: $4a
	jp nc, $4a62                                     ; $4def: $d2 $62 $4a

jr_001_4df2:
	jr nz, jr_001_4e0e                               ; $4df2: $20 $1a

	ld d, d                                          ; $4df4: $52
	ld c, d                                          ; $4df5: $4a
	jp nc, Jump_001_4d62                             ; $4df6: $d2 $62 $4d

jr_001_4df9:
	jr nz, jr_001_4e15                               ; $4df9: $20 $1a

	ld d, d                                          ; $4dfb: $52
	ld c, d                                          ; $4dfc: $4a
	sub $62                                          ; $4dfd: $d6 $62
	ld d, b                                          ; $4dff: $50

jr_001_4e00:
	jr nz, jr_001_4e1c                               ; $4e00: $20 $1a

	ld l, h                                          ; $4e02: $6c
	ld d, c                                          ; $4e03: $51
	jp c, Jump_001_5362                              ; $4e04: $da $62 $53

jr_001_4e07:
	jr nz, jr_001_4e23                               ; $4e07: $20 $1a

	ld l, h                                          ; $4e09: $6c
	ld d, c                                          ; $4e0a: $51
	jp c, Jump_001_5662                              ; $4e0b: $da $62 $56

jr_001_4e0e:
	jr nz, jr_001_4e2a                               ; $4e0e: $20 $1a

	ld l, h                                          ; $4e10: $6c
	ld d, c                                          ; $4e11: $51
	sbc $62                                          ; $4e12: $de $62
	ld e, c                                          ; $4e14: $59

jr_001_4e15:
	jr nz, jr_001_4e27                               ; $4e15: $20 $10

	add c                                            ; $4e17: $81
	ld l, [hl]                                       ; $4e18: $6e
	cp $62                                           ; $4e19: $fe $62
	ld e, h                                          ; $4e1b: $5c

jr_001_4e1c:
	jr nz, jr_001_4e2e                               ; $4e1c: $20 $10

	add c                                            ; $4e1e: $81
	ld l, [hl]                                       ; $4e1f: $6e
	cp $62                                           ; $4e20: $fe $62
	ld e, a                                          ; $4e22: $5f

jr_001_4e23:
	jr nz, jr_001_4e35                               ; $4e23: $20 $10

	ld [hl], h                                       ; $4e25: $74
	ld [hl], c                                       ; $4e26: $71

jr_001_4e27:
	cp $62                                           ; $4e27: $fe $62
	ld h, d                                          ; $4e29: $62

jr_001_4e2a:
	jr nz, jr_001_4e46                               ; $4e2a: $20 $1a

	ld c, h                                          ; $4e2c: $4c
	ld h, b                                          ; $4e2d: $60

jr_001_4e2e:
	and $62                                          ; $4e2e: $e6 $62
	ld h, l                                          ; $4e30: $65
	jr nz, jr_001_4e4d                               ; $4e31: $20 $1a

	ld c, h                                          ; $4e33: $4c
	ld h, b                                          ; $4e34: $60

jr_001_4e35:
	and $62                                          ; $4e35: $e6 $62
	ld l, b                                          ; $4e37: $68
	jr nz, jr_001_4e54                               ; $4e38: $20 $1a

	inc l                                            ; $4e3a: $2c
	ld h, e                                          ; $4e3b: $63
	ld [$6b62], a                                    ; $4e3c: $ea $62 $6b
	jr nz, jr_001_4e5b                               ; $4e3f: $20 $1a

	dec d                                            ; $4e41: $15
	ld h, [hl]                                       ; $4e42: $66
	and $62                                          ; $4e43: $e6 $62
	ld l, [hl]                                       ; $4e45: $6e

jr_001_4e46:
	jr nz, jr_001_4e62                               ; $4e46: $20 $1a

	ld c, c                                          ; $4e48: $49
	ld e, a                                          ; $4e49: $5f
	or $62                                           ; $4e4a: $f6 $62
	ld [hl], c                                       ; $4e4c: $71

jr_001_4e4d:
	jr nz, jr_001_4e69                               ; $4e4d: $20 $1a

	ld a, a                                          ; $4e4f: $7f
	ld l, c                                          ; $4e50: $69
	ld [bc], a                                       ; $4e51: $02
	ld h, e                                          ; $4e52: $63
	ld [hl], e                                       ; $4e53: $73

jr_001_4e54:
	jr nz, jr_001_4e70                               ; $4e54: $20 $1a

	ld b, e                                          ; $4e56: $43
	ld l, h                                          ; $4e57: $6c
	ld b, $63                                        ; $4e58: $06 $63
	halt                                             ; $4e5a: $76

jr_001_4e5b:
	jr nz, jr_001_4e77                               ; $4e5b: $20 $1a

	ret nc                                           ; $4e5d: $d0

	ld l, [hl]                                       ; $4e5e: $6e
	ld a, [bc]                                       ; $4e5f: $0a
	ld h, e                                          ; $4e60: $63
	ld a, c                                          ; $4e61: $79

jr_001_4e62:
	jr nz, jr_001_4e7e                               ; $4e62: $20 $1a

	ld [hl-], a                                      ; $4e64: $32
	ld [hl], c                                       ; $4e65: $71
	ld c, $63                                        ; $4e66: $0e $63
	ld a, h                                          ; $4e68: $7c

jr_001_4e69:
	jr nz, jr_001_4e85                               ; $4e69: $20 $1a

	dec d                                            ; $4e6b: $15
	ld [hl], a                                       ; $4e6c: $77
	ld [de], a                                       ; $4e6d: $12
	ld h, e                                          ; $4e6e: $63
	ld a, a                                          ; $4e6f: $7f

jr_001_4e70:
	jr nz, jr_001_4e8c                               ; $4e70: $20 $1a

	dec de                                           ; $4e72: $1b
	halt                                             ; $4e73: $76
	ld d, $63                                        ; $4e74: $16 $63
	add d                                            ; $4e76: $82

jr_001_4e77:
	jr nz, jr_001_4e93                               ; $4e77: $20 $1a

	ld a, a                                          ; $4e79: $7f
	ld l, c                                          ; $4e7a: $69
	ld [bc], a                                       ; $4e7b: $02
	ld h, e                                          ; $4e7c: $63
	add h                                            ; $4e7d: $84

jr_001_4e7e:
	jr nz, jr_001_4e9a                               ; $4e7e: $20 $1a

	ld b, e                                          ; $4e80: $43
	ld l, h                                          ; $4e81: $6c
	ld b, $63                                        ; $4e82: $06 $63
	add a                                            ; $4e84: $87

jr_001_4e85:
	jr nz, jr_001_4ea1                               ; $4e85: $20 $1a

	ret nc                                           ; $4e87: $d0

	ld l, [hl]                                       ; $4e88: $6e
	ld a, [bc]                                       ; $4e89: $0a
	ld h, e                                          ; $4e8a: $63
	adc d                                            ; $4e8b: $8a

jr_001_4e8c:
	jr nz, jr_001_4ea8                               ; $4e8c: $20 $1a

	and b                                            ; $4e8e: $a0
	ld [hl], e                                       ; $4e8f: $73
	ld c, $63                                        ; $4e90: $0e $63
	adc l                                            ; $4e92: $8d

jr_001_4e93:
	jr nz, jr_001_4eaf                               ; $4e93: $20 $1a

	dec de                                           ; $4e95: $1b
	halt                                             ; $4e96: $76
	ld d, $63                                        ; $4e97: $16 $63
	sub b                                            ; $4e99: $90

jr_001_4e9a:
	jr nz, @+$1d                                     ; $4e9a: $20 $1b

	ld h, a                                          ; $4e9c: $67
	ld l, [hl]                                       ; $4e9d: $6e
	ld a, [de]                                       ; $4e9e: $1a
	ld h, e                                          ; $4e9f: $63
	sub d                                            ; $4ea0: $92

jr_001_4ea1:
	jr nz, @+$1d                                     ; $4ea1: $20 $1b

	ld h, a                                          ; $4ea3: $67
	ld l, [hl]                                       ; $4ea4: $6e
	ld a, [de]                                       ; $4ea5: $1a
	ld h, e                                          ; $4ea6: $63
	sub l                                            ; $4ea7: $95

jr_001_4ea8:
	jr nz, @+$1d                                     ; $4ea8: $20 $1b

	ld h, a                                          ; $4eaa: $67
	ld l, [hl]                                       ; $4eab: $6e
	ld a, [de]                                       ; $4eac: $1a
	ld h, e                                          ; $4ead: $63
	sbc b                                            ; $4eae: $98

jr_001_4eaf:
	jr nz, @+$1d                                     ; $4eaf: $20 $1b

	db $ed                                           ; $4eb1: $ed
	ld h, a                                          ; $4eb2: $67
	ld e, $63                                        ; $4eb3: $1e $63
	sbc e                                            ; $4eb5: $9b
	jr nz, @+$1d                                     ; $4eb6: $20 $1b

	db $ed                                           ; $4eb8: $ed
	ld h, a                                          ; $4eb9: $67
	ld e, $63                                        ; $4eba: $1e $63
	sbc [hl]                                         ; $4ebc: $9e
	jr nz, @+$1d                                     ; $4ebd: $20 $1b

	db $ed                                           ; $4ebf: $ed
	ld h, a                                          ; $4ec0: $67
	ld [hl+], a                                      ; $4ec1: $22
	ld h, e                                          ; $4ec2: $63
	and c                                            ; $4ec3: $a1
	jr nz, @+$1d                                     ; $4ec4: $20 $1b

	ld sp, hl                                        ; $4ec6: $f9
	ld h, b                                          ; $4ec7: $60
	ld h, $63                                        ; $4ec8: $26 $63
	and h                                            ; $4eca: $a4
	jr nz, @+$1d                                     ; $4ecb: $20 $1b

	ld sp, hl                                        ; $4ecd: $f9
	ld h, b                                          ; $4ece: $60
	ld h, $63                                        ; $4ecf: $26 $63
	and a                                            ; $4ed1: $a7
	jr nz, @+$1d                                     ; $4ed2: $20 $1b

	ld sp, hl                                        ; $4ed4: $f9
	ld h, b                                          ; $4ed5: $60
	ld a, [hl+]                                      ; $4ed6: $2a
	ld h, e                                          ; $4ed7: $63
	xor d                                            ; $4ed8: $aa
	jr nz, @+$1d                                     ; $4ed9: $20 $1b

	ld d, d                                          ; $4edb: $52
	ld [hl], c                                       ; $4edc: $71
	ld l, $63                                        ; $4edd: $2e $63
	xor l                                            ; $4edf: $ad
	jr nz, @+$1d                                     ; $4ee0: $20 $1b

	ld d, d                                          ; $4ee2: $52
	ld [hl], c                                       ; $4ee3: $71
	ld l, $63                                        ; $4ee4: $2e $63
	or b                                             ; $4ee6: $b0
	jr nz, @+$1d                                     ; $4ee7: $20 $1b

	ld d, d                                          ; $4ee9: $52
	ld [hl], c                                       ; $4eea: $71
	ld [hl-], a                                      ; $4eeb: $32
	ld h, e                                          ; $4eec: $63
	or e                                             ; $4eed: $b3
	jr nz, @+$1d                                     ; $4eee: $20 $1b

	ld d, c                                          ; $4ef0: $51
	ld d, h                                          ; $4ef1: $54
	ld [hl], $63                                     ; $4ef2: $36 $63
	or [hl]                                          ; $4ef4: $b6
	jr nz, @+$1d                                     ; $4ef5: $20 $1b

	ld d, c                                          ; $4ef7: $51
	ld d, h                                          ; $4ef8: $54
	ld [hl], $63                                     ; $4ef9: $36 $63
	cp c                                             ; $4efb: $b9
	jr nz, @+$1d                                     ; $4efc: $20 $1b

	and e                                            ; $4efe: $a3
	ld d, a                                          ; $4eff: $57
	ld [hl], $63                                     ; $4f00: $36 $63
	cp h                                             ; $4f02: $bc
	jr nz, @+$1d                                     ; $4f03: $20 $1b

	add l                                            ; $4f05: $85
	ld c, [hl]                                       ; $4f06: $4e
	ld a, [hl-]                                      ; $4f07: $3a
	ld h, e                                          ; $4f08: $63
	cp a                                             ; $4f09: $bf
	jr nz, jr_001_4f27                               ; $4f0a: $20 $1b

	add l                                            ; $4f0c: $85
	ld c, [hl]                                       ; $4f0d: $4e
	ld a, [hl-]                                      ; $4f0e: $3a
	ld h, e                                          ; $4f0f: $63
	jp nz, $1b20                                     ; $4f10: $c2 $20 $1b

	ld d, c                                          ; $4f13: $51
	ld d, c                                          ; $4f14: $51
	ld a, [hl-]                                      ; $4f15: $3a
	ld h, e                                          ; $4f16: $63
	push bc                                          ; $4f17: $c5
	jr nz, @+$1d                                     ; $4f18: $20 $1b

	nop                                              ; $4f1a: $00
	ld b, b                                          ; $4f1b: $40
	ld a, $63                                        ; $4f1c: $3e $63
	ret z                                            ; $4f1e: $c8

	jr nz, @+$1d                                     ; $4f1f: $20 $1b

	nop                                              ; $4f21: $00
	ld b, b                                          ; $4f22: $40
	ld a, $63                                        ; $4f23: $3e $63
	sla b                                            ; $4f25: $cb $20

jr_001_4f27:
	dec de                                           ; $4f27: $1b
	ld [hl], b                                       ; $4f28: $70
	ld b, e                                          ; $4f29: $43
	ld a, $63                                        ; $4f2a: $3e $63
	adc $20                                          ; $4f2c: $ce $20
	dec de                                           ; $4f2e: $1b
	push hl                                          ; $4f2f: $e5
	ld e, d                                          ; $4f30: $5a
	ld b, d                                          ; $4f31: $42
	ld h, e                                          ; $4f32: $63
	pop de                                           ; $4f33: $d1
	jr nz, @+$1d                                     ; $4f34: $20 $1b

	push hl                                          ; $4f36: $e5
	ld e, d                                          ; $4f37: $5a
	ld b, d                                          ; $4f38: $42
	ld h, e                                          ; $4f39: $63
	call nc, $1b20                                   ; $4f3a: $d4 $20 $1b
	ld sp, hl                                        ; $4f3d: $f9
	ld e, l                                          ; $4f3e: $5d
	ld b, d                                          ; $4f3f: $42
	ld h, e                                          ; $4f40: $63
	rst SubAFromHL                                          ; $4f41: $d7
	jr nz, @+$1d                                     ; $4f42: $20 $1b

	cp h                                             ; $4f44: $bc
	ld b, [hl]                                       ; $4f45: $46
	ld b, [hl]                                       ; $4f46: $46
	ld h, e                                          ; $4f47: $63
	jp c, $1b20                                      ; $4f48: $da $20 $1b

	cp h                                             ; $4f4b: $bc
	ld b, [hl]                                       ; $4f4c: $46
	ld b, [hl]                                       ; $4f4d: $46
	ld h, e                                          ; $4f4e: $63
	db $dd                                           ; $4f4f: $dd
	jr nz, @+$1d                                     ; $4f50: $20 $1b

	adc l                                            ; $4f52: $8d
	ld c, d                                          ; $4f53: $4a
	ld b, [hl]                                       ; $4f54: $46
	ld h, e                                          ; $4f55: $63
	ldh [rAUD4LEN], a                                ; $4f56: $e0 $20
	dec de                                           ; $4f58: $1b
	ld h, a                                          ; $4f59: $67
	ld l, [hl]                                       ; $4f5a: $6e
	ld a, [de]                                       ; $4f5b: $1a
	ld h, e                                          ; $4f5c: $63
	db $e3                                           ; $4f5d: $e3
	jr nz, @+$1d                                     ; $4f5e: $20 $1b

	ld h, a                                          ; $4f60: $67
	ld l, [hl]                                       ; $4f61: $6e
	ld a, [de]                                       ; $4f62: $1a
	ld h, e                                          ; $4f63: $63
	and $20                                          ; $4f64: $e6 $20
	dec de                                           ; $4f66: $1b
	ld h, a                                          ; $4f67: $67
	ld l, [hl]                                       ; $4f68: $6e
	ld a, [de]                                       ; $4f69: $1a
	ld h, e                                          ; $4f6a: $63
	jp hl                                            ; $4f6b: $e9


	jr nz, @+$1d                                     ; $4f6c: $20 $1b

	ld a, [hl+]                                      ; $4f6e: $2a
	ld l, e                                          ; $4f6f: $6b
	ld e, $63                                        ; $4f70: $1e $63
	db $ec                                           ; $4f72: $ec
	jr nz, jr_001_4f90                               ; $4f73: $20 $1b

	ld a, [hl+]                                      ; $4f75: $2a
	ld l, e                                          ; $4f76: $6b
	ld e, $63                                        ; $4f77: $1e $63
	rst AddAOntoHL                                          ; $4f79: $ef
	jr nz, @+$1d                                     ; $4f7a: $20 $1b

	ld a, [hl+]                                      ; $4f7c: $2a
	ld l, e                                          ; $4f7d: $6b
	ld [hl+], a                                      ; $4f7e: $22
	ld h, e                                          ; $4f7f: $63
	ldh a, [c]                                       ; $4f80: $f2
	jr nz, jr_001_4f9e                               ; $4f81: $20 $1b

	ld l, h                                          ; $4f83: $6c
	ld h, h                                          ; $4f84: $64
	ld h, $63                                        ; $4f85: $26 $63
	push af                                          ; $4f87: $f5
	jr nz, @+$1d                                     ; $4f88: $20 $1b

	ld l, h                                          ; $4f8a: $6c
	ld h, h                                          ; $4f8b: $64
	ld h, $63                                        ; $4f8c: $26 $63
	ld hl, sp+$20                                    ; $4f8e: $f8 $20

jr_001_4f90:
	dec de                                           ; $4f90: $1b
	ld l, h                                          ; $4f91: $6c
	ld h, h                                          ; $4f92: $64
	ld a, [hl+]                                      ; $4f93: $2a
	ld h, e                                          ; $4f94: $63
	ei                                               ; $4f95: $fb
	jr nz, @+$1d                                     ; $4f96: $20 $1b

	ld e, $75                                        ; $4f98: $1e $75
	ld l, $63                                        ; $4f9a: $2e $63
	cp $20                                           ; $4f9c: $fe $20

jr_001_4f9e:
	dec de                                           ; $4f9e: $1b
	ld e, $75                                        ; $4f9f: $1e $75
	ld l, $63                                        ; $4fa1: $2e $63
	ld bc, $1b21                                     ; $4fa3: $01 $21 $1b
	ld e, $75                                        ; $4fa6: $1e $75
	ld [hl-], a                                      ; $4fa8: $32
	ld h, e                                          ; $4fa9: $63
	inc b                                            ; $4faa: $04
	ld hl, $121f                                     ; $4fab: $21 $1f $12
	ld [hl], a                                       ; $4fae: $77
	ld c, d                                          ; $4faf: $4a
	ld h, e                                          ; $4fb0: $63
	rlca                                             ; $4fb1: $07
	ld hl, $3719                                     ; $4fb2: $21 $19 $37
	ld d, l                                          ; $4fb5: $55
	ld c, [hl]                                       ; $4fb6: $4e
	ld h, e                                          ; $4fb7: $63
	ld a, [bc]                                       ; $4fb8: $0a
	ld hl, $ed1b                                     ; $4fb9: $21 $1b $ed
	ld a, b                                          ; $4fbc: $78
	ld d, d                                          ; $4fbd: $52
	ld h, e                                          ; $4fbe: $63
	dec c                                            ; $4fbf: $0d
	ld hl, $cb10                                     ; $4fc0: $21 $10 $cb
	ld [hl], h                                       ; $4fc3: $74
	ld d, [hl]                                       ; $4fc4: $56
	ld h, e                                          ; $4fc5: $63
	db $10                                           ; $4fc6: $10
	ld hl, $f419                                     ; $4fc7: $21 $19 $f4
	ld d, b                                          ; $4fca: $50
	ld e, d                                          ; $4fcb: $5a
	ld h, e                                          ; $4fcc: $63
	inc de                                           ; $4fcd: $13
	ld hl, $5e1a                                     ; $4fce: $21 $1a $5e
	ld a, c                                          ; $4fd1: $79
	ld e, [hl]                                       ; $4fd2: $5e
	ld h, e                                          ; $4fd3: $63
	ld d, $21                                        ; $4fd4: $16 $21
	ld a, [de]                                       ; $4fd6: $1a
	ld e, [hl]                                       ; $4fd7: $5e
	ld a, c                                          ; $4fd8: $79
	ld e, [hl]                                       ; $4fd9: $5e
	ld h, e                                          ; $4fda: $63
	add hl, de                                       ; $4fdb: $19
	ld hl, $2c10                                     ; $4fdc: $21 $10 $2c
	db $10                                           ; $4fdf: $10
	inc a                                            ; $4fe0: $3c
	db $10                                           ; $4fe1: $10
	inc l                                            ; $4fe2: $2c
	db $10                                           ; $4fe3: $10
	inc a                                            ; $4fe4: $3c
	db $10                                           ; $4fe5: $10
	inc l                                            ; $4fe6: $2c
	db $10                                           ; $4fe7: $10
	inc a                                            ; $4fe8: $3c
	db $10                                           ; $4fe9: $10
	ld c, h                                          ; $4fea: $4c
	ld e, $de                                        ; $4feb: $1e $de
	sbc l                                            ; $4fed: $9d
	ld e, $e5                                        ; $4fee: $1e $e5
	sbc l                                            ; $4ff0: $9d
	ld e, $ed                                        ; $4ff1: $1e $ed
	sbc l                                            ; $4ff3: $9d
	ld e, $fb                                        ; $4ff4: $1e $fb
	sbc l                                            ; $4ff6: $9d
	ld e, $09                                        ; $4ff7: $1e $09
	sbc [hl]                                         ; $4ff9: $9e
	ld e, $1b                                        ; $4ffa: $1e $1b
	sbc [hl]                                         ; $4ffc: $9e
	ld e, $29                                        ; $4ffd: $1e $29
	sbc [hl]                                         ; $4fff: $9e
	rlca                                             ; $5000: $07
	rlca                                             ; $5001: $07
	rlca                                             ; $5002: $07
	ld [$0808], sp                                   ; $5003: $08 $08 $08
	ld [$0708], sp                                   ; $5006: $08 $08 $07
	add hl, bc                                       ; $5009: $09
	ld a, [bc]                                       ; $500a: $0a
	dec bc                                           ; $500b: $0b
	inc c                                            ; $500c: $0c
	dec c                                            ; $500d: $0d
	ld c, $0f                                        ; $500e: $0e $0f

Call_001_5010::
	rst FarCall                                          ; $5010: $f7
	AddrBank Call_008_52de
	call Func_01_501e                                   ; $5014: $cd $1e $50
	call Call_000_1bce                                       ; $5017: $cd $ce $1b
	call Call_001_59cd                               ; $501a: $cd $cd $59
	ret                                              ; $501d: $c9


Func_01_501e:
	ld a, [$d390]                                    ; $501e: $fa $90 $d3
	call wJumpTable                                       ; $5021: $cd $80 $cf
	jr z, jr_001_5076                                ; $5024: $28 $50

	ld l, b                                          ; $5026: $68
	ld d, b                                          ; $5027: $50
	ld hl, $d390                                     ; $5028: $21 $90 $d3
	inc [hl]                                         ; $502b: $34
	ret                                              ; $502c: $c9


Jump_001_502d:
	ld [$d391], a                                    ; $502d: $ea $91 $d3
	xor a                                            ; $5030: $af
	ld [$d392], a                                    ; $5031: $ea $92 $d3
	ret                                              ; $5034: $c9


Jump_001_5035:
	xor a                                            ; $5035: $af
	ld [$d391], a                                    ; $5036: $ea $91 $d3
	ld [$d392], a                                    ; $5039: $ea $92 $d3
	ld a, [$d393]                                    ; $503c: $fa $93 $d3
	ld c, a                                          ; $503f: $4f
	ld b, $00                                        ; $5040: $06 $00
	ld hl, $d3b0                                     ; $5042: $21 $b0 $d3
	add hl, bc                                       ; $5045: $09
	ld [hl], b                                       ; $5046: $70
	ld a, [$d393]                                    ; $5047: $fa $93 $d3
	inc a                                            ; $504a: $3c
	and $0f                                          ; $504b: $e6 $0f
	ld [$d393], a                                    ; $504d: $ea $93 $d3
	ret                                              ; $5050: $c9


Call_001_5051:
Jump_001_5051:
	ld b, a                                          ; $5051: $47
	ld a, [$d394]                                    ; $5052: $fa $94 $d3
	ld c, a                                          ; $5055: $4f
	ld a, b                                          ; $5056: $78
	ld b, $00                                        ; $5057: $06 $00
	ld hl, $d3b0                                     ; $5059: $21 $b0 $d3
	add hl, bc                                       ; $505c: $09
	ld [hl], a                                       ; $505d: $77
	ld a, [$d394]                                    ; $505e: $fa $94 $d3
	inc a                                            ; $5061: $3c
	and $0f                                          ; $5062: $e6 $0f
	ld [$d394], a                                    ; $5064: $ea $94 $d3
	ret                                              ; $5067: $c9


	ldh a, [hDisp0_LCDC]                                     ; $5068: $f0 $82
	and $20                                          ; $506a: $e6 $20
	or $d7                                           ; $506c: $f6 $d7
	ldh [hDisp0_LCDC], a                                     ; $506e: $e0 $82
	ld a, [$d391]                                    ; $5070: $fa $91 $d3
	call wJumpTable                                       ; $5073: $cd $80 $cf

jr_001_5076:
	and h                                            ; $5076: $a4
	ld d, b                                          ; $5077: $50
	or d                                             ; $5078: $b2
	ld d, b                                          ; $5079: $50
	cp h                                             ; $507a: $bc
	ld d, c                                          ; $507b: $51
	nop                                              ; $507c: $00
	ld d, d                                          ; $507d: $52
	rla                                              ; $507e: $17
	ld d, d                                          ; $507f: $52
	ld a, [de]                                       ; $5080: $1a
	ld d, d                                          ; $5081: $52
	inc c                                            ; $5082: $0c
	ld d, e                                          ; $5083: $53
	dec a                                            ; $5084: $3d
	ld d, e                                          ; $5085: $53
	ld c, d                                          ; $5086: $4a
	ld d, e                                          ; $5087: $53
	ld d, d                                          ; $5088: $52
	ld d, e                                          ; $5089: $53
	ld e, d                                          ; $508a: $5a
	ld d, e                                          ; $508b: $53
	ld h, d                                          ; $508c: $62
	ld d, e                                          ; $508d: $53
	ccf                                              ; $508e: $3f
	ld d, h                                          ; $508f: $54
	jp c, Jump_001_4d55                              ; $5090: $da $55 $4d

	ld d, [hl]                                       ; $5093: $56
	sbc a                                            ; $5094: $9f
	ld d, [hl]                                       ; $5095: $56
	xor [hl]                                         ; $5096: $ae
	ld d, [hl]                                       ; $5097: $56

Call_001_5098:
	rst $38                                          ; $5098: $ff
	ld d, [hl]                                       ; $5099: $56
	ld c, e                                          ; $509a: $4b
	ld d, a                                          ; $509b: $57
	xor d                                            ; $509c: $aa
	ld d, a                                          ; $509d: $57
	reti                                             ; $509e: $d9


	ld d, a                                          ; $509f: $57
	add hl, hl                                       ; $50a0: $29
	ld d, e                                          ; $50a1: $53
	pop hl                                           ; $50a2: $e1
	ld d, a                                          ; $50a3: $57
	ld a, [$d393]                                    ; $50a4: $fa $93 $d3
	ld c, a                                          ; $50a7: $4f
	ld b, $00                                        ; $50a8: $06 $00
	ld hl, $d3b0                                     ; $50aa: $21 $b0 $d3
	add hl, bc                                       ; $50ad: $09
	ld a, [hl]                                       ; $50ae: $7e
	jp Jump_001_502d                                 ; $50af: $c3 $2d $50


	ld a, [$d392]                                    ; $50b2: $fa $92 $d3
	call wJumpTable                                       ; $50b5: $cd $80 $cf
	call nz, $c750                                   ; $50b8: $c4 $50 $c7
	ld d, b                                          ; $50bb: $50
	sub $50                                          ; $50bc: $d6 $50
	ld c, a                                          ; $50be: $4f
	ld d, c                                          ; $50bf: $51
	add a                                            ; $50c0: $87
	ld d, c                                          ; $50c1: $51
	cp c                                             ; $50c2: $b9
	ld d, c                                          ; $50c3: $51
	jp Jump_001_51b4                                 ; $50c4: $c3 $b4 $51


	ld hl, $47aa                                     ; $50c7: $21 $aa $47
	call $0aab                                       ; $50ca: $cd $ab $0a
	ld hl, $473a                                     ; $50cd: $21 $3a $47
	call $0aab                                       ; $50d0: $cd $ab $0a
	jp Jump_001_51b4                                 ; $50d3: $c3 $b4 $51


	ld hl, $48b4                                     ; $50d6: $21 $b4 $48
	ld d, $01                                        ; $50d9: $16 $01
	ld e, $01                                        ; $50db: $1e $01
	ld bc, $9801                                     ; $50dd: $01 $01 $98
	call Call_001_59aa                               ; $50e0: $cd $aa $59
	ld hl, $48be                                     ; $50e3: $21 $be $48
	ld d, $01                                        ; $50e6: $16 $01
	ld e, $01                                        ; $50e8: $1e $01
	ld bc, $980a                                     ; $50ea: $01 $0a $98
	call Call_001_59aa                               ; $50ed: $cd $aa $59
	ld hl, $48c8                                     ; $50f0: $21 $c8 $48
	call Call_001_59a2                               ; $50f3: $cd $a2 $59
	ld hl, $48d5                                     ; $50f6: $21 $d5 $48
	call Call_001_59a2                               ; $50f9: $cd $a2 $59
	ld hl, $48b4                                     ; $50fc: $21 $b4 $48
	ld d, $01                                        ; $50ff: $16 $01
	ld e, $01                                        ; $5101: $1e $01
	ld bc, $98e1                                     ; $5103: $01 $e1 $98
	call Call_001_59aa                               ; $5106: $cd $aa $59
	ld hl, $48be                                     ; $5109: $21 $be $48
	ld d, $01                                        ; $510c: $16 $01
	ld e, $01                                        ; $510e: $1e $01
	ld bc, $98ea                                     ; $5110: $01 $ea $98
	call Call_001_59aa                               ; $5113: $cd $aa $59
	ld hl, $48e2                                     ; $5116: $21 $e2 $48
	call Call_001_59a2                               ; $5119: $cd $a2 $59
	ld hl, $48ed                                     ; $511c: $21 $ed $48
	call Call_001_59a2                               ; $511f: $cd $a2 $59
	ld hl, $48f8                                     ; $5122: $21 $f8 $48
	call Call_001_59a2                               ; $5125: $cd $a2 $59
	ld hl, $4903                                     ; $5128: $21 $03 $49
	call Call_001_59a2                               ; $512b: $cd $a2 $59
	ld hl, $490e                                     ; $512e: $21 $0e $49
	call Call_001_59a2                               ; $5131: $cd $a2 $59
	ld hl, $4919                                     ; $5134: $21 $19 $49
	call Call_001_59a2                               ; $5137: $cd $a2 $59
	ld hl, $4924                                     ; $513a: $21 $24 $49
	call Call_001_59a2                               ; $513d: $cd $a2 $59
	ld hl, $492f                                     ; $5140: $21 $2f $49
	call Call_001_59a2                               ; $5143: $cd $a2 $59
	ld hl, $493a                                     ; $5146: $21 $3a $49
	call Call_001_59a2                               ; $5149: $cd $a2 $59
	jp Jump_001_51b4                                 ; $514c: $c3 $b4 $51


	ld a, [wInitialA]                                    ; $514f: $fa $00 $c1
	cp $11                                           ; $5152: $fe $11
	jp nz, Jump_001_51b4                             ; $5154: $c2 $b4 $51

	ld d, $09                                        ; $5157: $16 $09
	ld bc, $4a3e                                     ; $5159: $01 $3e $4a
	ld hl, $c200                                     ; $515c: $21 $00 $c2

jr_001_515f:
	ld l, $08                                        ; $515f: $2e $08
	ld a, [bc]                                       ; $5161: $0a
	ld [hl], a                                       ; $5162: $77
	inc bc                                           ; $5163: $03
	ld l, $09                                        ; $5164: $2e $09
	ld a, [bc]                                       ; $5166: $0a
	ld [hl], a                                       ; $5167: $77
	inc bc                                           ; $5168: $03
	ld l, $07                                        ; $5169: $2e $07
	ld a, [bc]                                       ; $516b: $0a
	ld [hl], a                                       ; $516c: $77
	inc bc                                           ; $516d: $03
	ld l, $05                                        ; $516e: $2e $05
	ld a, [bc]                                       ; $5170: $0a
	ld [hl], a                                       ; $5171: $77
	ld l, $00                                        ; $5172: $2e $00
	ld [hl], $03                                     ; $5174: $36 $03
	ld l, $01                                        ; $5176: $2e $01
	xor a                                            ; $5178: $af
	ld [hl], a                                       ; $5179: $77
	ld a, $38                                        ; $517a: $3e $38
	ld l, $02                                        ; $517c: $2e $02
	ld [hl], a                                       ; $517e: $77
	inc h                                            ; $517f: $24
	inc bc                                           ; $5180: $03
	dec d                                            ; $5181: $15
	jr nz, jr_001_515f                               ; $5182: $20 $db

	jp Jump_001_51b4                                 ; $5184: $c3 $b4 $51


	ld a, $00                                        ; $5187: $3e $00
	call Call_001_5a01                               ; $5189: $cd $01 $5a
	ld a, $04                                        ; $518c: $3e $04
	call Call_001_5a01                               ; $518e: $cd $01 $5a
	ld a, $08                                        ; $5191: $3e $08
	call Call_001_5a01                               ; $5193: $cd $01 $5a
	ld a, $0c                                        ; $5196: $3e $0c
	call Call_001_5a01                               ; $5198: $cd $01 $5a
	ld a, $10                                        ; $519b: $3e $10
	call Call_001_5a01                               ; $519d: $cd $01 $5a
	ld a, $14                                        ; $51a0: $3e $14
	call Call_001_5a01                               ; $51a2: $cd $01 $5a
	ld a, $18                                        ; $51a5: $3e $18
	call Call_001_5a01                               ; $51a7: $cd $01 $5a
	ld a, $1c                                        ; $51aa: $3e $1c
	call Call_001_5a01                               ; $51ac: $cd $01 $5a
	ld a, $20                                        ; $51af: $3e $20
	call Call_001_5a01                               ; $51b1: $cd $01 $5a

Call_001_51b4:
Jump_001_51b4:
	ld hl, $d392                                     ; $51b4: $21 $92 $d3
	inc [hl]                                         ; $51b7: $34
	ret                                              ; $51b8: $c9


	jp Jump_001_5035                                 ; $51b9: $c3 $35 $50


	ld a, [$d392]                                    ; $51bc: $fa $92 $d3
	call wJumpTable                                       ; $51bf: $cd $80 $cf
	add $51                                          ; $51c2: $c6 $51
	rst GetHLinHL                                          ; $51c4: $cf
	ld d, c                                          ; $51c5: $51
	ldh a, [$8d]                                     ; $51c6: $f0 $8d
	or $08                                           ; $51c8: $f6 $08
	ldh [$8d], a                                     ; $51ca: $e0 $8d
	jp Jump_001_51b4                                 ; $51cc: $c3 $b4 $51


	ld a, [$c1ed]                                    ; $51cf: $fa $ed $c1
	ld [$d3a0], a                                    ; $51d2: $ea $a0 $d3
	sla a                                            ; $51d5: $cb $27
	add $00                                          ; $51d7: $c6 $00
	ld c, a                                          ; $51d9: $4f
	ld b, $00                                        ; $51da: $06 $00
	push bc                                          ; $51dc: $c5
	call $3a12                                       ; $51dd: $cd $12 $3a
	call $399b                                       ; $51e0: $cd $9b $39
	call $388c                                       ; $51e3: $cd $8c $38
	pop bc                                           ; $51e6: $c1
	ldh a, [$8b]                                     ; $51e7: $f0 $8b
	cp $70                                           ; $51e9: $fe $70
	jr c, jr_001_51f7                                ; $51eb: $38 $0a

	inc bc                                           ; $51ed: $03
	call $3a12                                       ; $51ee: $cd $12 $3a
	call $39ad                                       ; $51f1: $cd $ad $39
	call $388c                                       ; $51f4: $cd $8c $38

jr_001_51f7:
	ldh a, [$8d]                                     ; $51f7: $f0 $8d
	and $f7                                          ; $51f9: $e6 $f7
	ldh [$8d], a                                     ; $51fb: $e0 $8d
	jp Jump_001_5035                                 ; $51fd: $c3 $35 $50


	ld a, [$c1ed]                                    ; $5200: $fa $ed $c1
	sla a                                            ; $5203: $cb $27
	add $00                                          ; $5205: $c6 $00
	inc a                                            ; $5207: $3c
	ld c, a                                          ; $5208: $4f
	ld b, $00                                        ; $5209: $06 $00
	call $3a12                                       ; $520b: $cd $12 $3a
	call $39ad                                       ; $520e: $cd $ad $39
	call $388c                                       ; $5211: $cd $8c $38
	jp Jump_001_5035                                 ; $5214: $c3 $35 $50


	call Call_001_5220                               ; $5217: $cd $20 $52
	call Call_001_5239                               ; $521a: $cd $39 $52
	jp Jump_001_5035                                 ; $521d: $c3 $35 $50


Call_001_5220:
	ld hl, $47b1                                     ; $5220: $21 $b1 $47
	call $0aab                                       ; $5223: $cd $ab $0a
	ld hl, $4945                                     ; $5226: $21 $45 $49
	call Call_001_59a2                               ; $5229: $cd $a2 $59
	ld hl, $4954                                     ; $522c: $21 $54 $49
	call Call_001_59a2                               ; $522f: $cd $a2 $59
	ld hl, $0788                                     ; $5232: $21 $88 $07
	call $095c                                       ; $5235: $cd $5c $09
	ret                                              ; $5238: $c9


Call_001_5239:
	ld a, $f9                                        ; $5239: $3e $f9
	ld [$d840], a                                    ; $523b: $ea $40 $d8
	ld a, [$a224]                                    ; $523e: $fa $24 $a2
	ld c, a                                          ; $5241: $4f
	add c                                            ; $5242: $81
	add c                                            ; $5243: $81
	ld c, a                                          ; $5244: $4f
	ld b, $00                                        ; $5245: $06 $00
	ld hl, $48a8                                     ; $5247: $21 $a8 $48
	add hl, bc                                       ; $524a: $09
	ld a, [hl+]                                      ; $524b: $2a
	ld [$d841], a                                    ; $524c: $ea $41 $d8
	ld a, [hl+]                                      ; $524f: $2a
	ld [$d842], a                                    ; $5250: $ea $42 $d8
	ld a, [hl+]                                      ; $5253: $2a
	ld [$d843], a                                    ; $5254: $ea $43 $d8
	ld a, $e0                                        ; $5257: $3e $e0
	ld [$d844], a                                    ; $5259: $ea $44 $d8
	ld a, $8b                                        ; $525c: $3e $8b
	ld [$d845], a                                    ; $525e: $ea $45 $d8
	ld a, [$a226]                                    ; $5261: $fa $26 $a2
	ld c, a                                          ; $5264: $4f
	add c                                            ; $5265: $81
	add c                                            ; $5266: $81
	sla a                                            ; $5267: $cb $27
	ld c, a                                          ; $5269: $4f
	ld b, $00                                        ; $526a: $06 $00
	ld hl, $47d9                                     ; $526c: $21 $d9 $47
	add hl, bc                                       ; $526f: $09
	ld a, [hl+]                                      ; $5270: $2a
	ld [$d846], a                                    ; $5271: $ea $46 $d8
	ld a, [hl+]                                      ; $5274: $2a
	ld [$d847], a                                    ; $5275: $ea $47 $d8
	ld a, [hl+]                                      ; $5278: $2a
	ld [$d848], a                                    ; $5279: $ea $48 $d8
	ld a, $20                                        ; $527c: $3e $20
	ld [$d849], a                                    ; $527e: $ea $49 $d8
	ld a, $8c                                        ; $5281: $3e $8c
	ld [$d84a], a                                    ; $5283: $ea $4a $d8
	ld a, [hl+]                                      ; $5286: $2a
	ld [$d84b], a                                    ; $5287: $ea $4b $d8
	ld a, [hl+]                                      ; $528a: $2a
	ld [$d84c], a                                    ; $528b: $ea $4c $d8
	ld a, [hl+]                                      ; $528e: $2a
	ld [$d84d], a                                    ; $528f: $ea $4d $d8
	ld a, $30                                        ; $5292: $3e $30
	ld [$d84e], a                                    ; $5294: $ea $4e $d8
	ld a, $8c                                        ; $5297: $3e $8c
	ld [$d84f], a                                    ; $5299: $ea $4f $d8
	ld a, [$a228]                                    ; $529c: $fa $28 $a2
	ld c, a                                          ; $529f: $4f
	add c                                            ; $52a0: $81
	add c                                            ; $52a1: $81
	sla a                                            ; $52a2: $cb $27
	ld c, a                                          ; $52a4: $4f
	ld b, $00                                        ; $52a5: $06 $00
	ld hl, $47d9                                     ; $52a7: $21 $d9 $47
	add hl, bc                                       ; $52aa: $09
	ld a, [hl+]                                      ; $52ab: $2a
	ld [$d850], a                                    ; $52ac: $ea $50 $d8
	ld a, [hl+]                                      ; $52af: $2a
	ld [$d851], a                                    ; $52b0: $ea $51 $d8
	ld a, [hl+]                                      ; $52b3: $2a
	ld [$d852], a                                    ; $52b4: $ea $52 $d8
	ld a, $60                                        ; $52b7: $3e $60
	ld [$d853], a                                    ; $52b9: $ea $53 $d8
	ld a, $8c                                        ; $52bc: $3e $8c
	ld [$d854], a                                    ; $52be: $ea $54 $d8
	ld a, [hl+]                                      ; $52c1: $2a
	ld [$d855], a                                    ; $52c2: $ea $55 $d8
	ld a, [hl+]                                      ; $52c5: $2a
	ld [$d856], a                                    ; $52c6: $ea $56 $d8
	ld a, [hl+]                                      ; $52c9: $2a
	ld [$d857], a                                    ; $52ca: $ea $57 $d8
	ld a, $70                                        ; $52cd: $3e $70
	ld [$d858], a                                    ; $52cf: $ea $58 $d8
	ld a, $8c                                        ; $52d2: $3e $8c
	ld [$d859], a                                    ; $52d4: $ea $59 $d8
	ld a, [$d080]                                    ; $52d7: $fa $80 $d0
	ld c, a                                          ; $52da: $4f
	add c                                            ; $52db: $81
	add c                                            ; $52dc: $81
	ld c, a                                          ; $52dd: $4f
	ld b, $00                                        ; $52de: $06 $00
	ld hl, $4893                                     ; $52e0: $21 $93 $48
	add hl, bc                                       ; $52e3: $09
	ld a, [hl+]                                      ; $52e4: $2a
	ld [$d85a], a                                    ; $52e5: $ea $5a $d8
	ld a, [hl+]                                      ; $52e8: $2a
	ld [$d85b], a                                    ; $52e9: $ea $5b $d8
	ld a, [hl+]                                      ; $52ec: $2a
	ld [$d85c], a                                    ; $52ed: $ea $5c $d8
	ld a, $a0                                        ; $52f0: $3e $a0
	ld [$d85d], a                                    ; $52f2: $ea $5d $d8
	ld a, $8c                                        ; $52f5: $3e $8c
	ld [$d85e], a                                    ; $52f7: $ea $5e $d8
	ld a, $ff                                        ; $52fa: $3e $ff
	ld [$d85f], a                                    ; $52fc: $ea $5f $d8
	ld hl, $d840                                     ; $52ff: $21 $40 $d8
	call $0aab                                       ; $5302: $cd $ab $0a
	ldh a, [hDisp0_LCDC]                                     ; $5305: $f0 $82
	or $20                                           ; $5307: $f6 $20
	ldh [hDisp0_LCDC], a                                     ; $5309: $e0 $82
	ret                                              ; $530b: $c9


	ld a, [$d392]                                    ; $530c: $fa $92 $d3
	call wJumpTable                                       ; $530f: $cd $80 $cf
	ld d, $53                                        ; $5312: $16 $53
	ld e, $53                                        ; $5314: $1e $53
	ld a, $20                                        ; $5316: $3e $20
	ld [$d3ac], a                                    ; $5318: $ea $ac $d3
	call Call_001_51b4                               ; $531b: $cd $b4 $51

Call_001_531e:
jr_001_531e:
	ld a, [$d3ac]                                    ; $531e: $fa $ac $d3
	dec a                                            ; $5321: $3d
	ld [$d3ac], a                                    ; $5322: $ea $ac $d3
	ret nz                                           ; $5325: $c0

	jp Jump_001_5035                                 ; $5326: $c3 $35 $50


	ld a, [$d392]                                    ; $5329: $fa $92 $d3
	call wJumpTable                                       ; $532c: $cd $80 $cf
	inc sp                                           ; $532f: $33
	ld d, e                                          ; $5330: $53
	ld e, $53                                        ; $5331: $1e $53
	ld a, $02                                        ; $5333: $3e $02
	ld [$d3ac], a                                    ; $5335: $ea $ac $d3
	call Call_001_51b4                               ; $5338: $cd $b4 $51
	jr jr_001_531e                                   ; $533b: $18 $e1

	ld a, $01                                        ; $533d: $3e $01
	ld [$d811], a                                    ; $533f: $ea $11 $d8
	ld a, $00                                        ; $5342: $3e $00
	ld [$c186], a                                    ; $5344: $ea $86 $c1
	jp Jump_001_5035                                 ; $5347: $c3 $35 $50


	ld a, $0b                                        ; $534a: $3e $0b
	ld [$d811], a                                    ; $534c: $ea $11 $d8
	jp Jump_001_5035                                 ; $534f: $c3 $35 $50


	ld a, $0a                                        ; $5352: $3e $0a
	ld [$d811], a                                    ; $5354: $ea $11 $d8
	jp Jump_001_5035                                 ; $5357: $c3 $35 $50


	ld a, [$d811]                                    ; $535a: $fa $11 $d8
	and a                                            ; $535d: $a7
	ret nz                                           ; $535e: $c0

	jp Jump_001_5035                                 ; $535f: $c3 $35 $50


Jump_001_5362:
	ld a, [$d392]                                    ; $5362: $fa $92 $d3
	call wJumpTable                                       ; $5365: $cd $80 $cf
	and c                                            ; $5368: $a1
	ld d, e                                          ; $5369: $53
	cp c                                             ; $536a: $b9
	ld d, e                                          ; $536b: $53
	ld l, [hl]                                       ; $536c: $6e
	ld d, e                                          ; $536d: $53
	ld hl, $4963                                     ; $536e: $21 $63 $49
	call Call_001_59a2                               ; $5371: $cd $a2 $59
	ld hl, $4971                                     ; $5374: $21 $71 $49
	call Call_001_59a2                               ; $5377: $cd $a2 $59
	ld hl, $497f                                     ; $537a: $21 $7f $49
	call Call_001_59a2                               ; $537d: $cd $a2 $59
	ld hl, $498d                                     ; $5380: $21 $8d $49
	call Call_001_59a2                               ; $5383: $cd $a2 $59
	ld hl, $499b                                     ; $5386: $21 $9b $49
	call Call_001_59a2                               ; $5389: $cd $a2 $59
	ld hl, $49a9                                     ; $538c: $21 $a9 $49
	call Call_001_59a2                               ; $538f: $cd $a2 $59
	ld hl, $49b7                                     ; $5392: $21 $b7 $49
	call Call_001_59a2                               ; $5395: $cd $a2 $59
	ld hl, $49c5                                     ; $5398: $21 $c5 $49
	call Call_001_59a2                               ; $539b: $cd $a2 $59
	jp Jump_001_5035                                 ; $539e: $c3 $35 $50


	ld a, [$d3a4]                                    ; $53a1: $fa $a4 $d3
	sla a                                            ; $53a4: $cb $27
	ld [$d3ac], a                                    ; $53a6: $ea $ac $d3
	ld a, [$d3a5]                                    ; $53a9: $fa $a5 $d3
	rl a                                             ; $53ac: $cb $17
	ld [$d3ad], a                                    ; $53ae: $ea $ad $d3
	ld a, $00                                        ; $53b1: $3e $00
	ld [$d3ae], a                                    ; $53b3: $ea $ae $d3
	jp Jump_001_51b4                                 ; $53b6: $c3 $b4 $51


	ld a, $f9                                        ; $53b9: $3e $f9
	ld [$c150], a                                    ; $53bb: $ea $50 $c1
	ld a, [$d3ae]                                    ; $53be: $fa $ae $d3
	ld c, a                                          ; $53c1: $4f
	sla c                                            ; $53c2: $cb $21
	sla c                                            ; $53c4: $cb $21
	sla c                                            ; $53c6: $cb $21
	ld b, $00                                        ; $53c8: $06 $00
	ld hl, $4a62                                     ; $53ca: $21 $62 $4a
	add hl, bc                                       ; $53cd: $09
	ld a, [hl+]                                      ; $53ce: $2a
	ld [$c154], a                                    ; $53cf: $ea $54 $c1
	ld c, a                                          ; $53d2: $4f
	ld a, [hl+]                                      ; $53d3: $2a
	ld [$c155], a                                    ; $53d4: $ea $55 $c1
	ld b, a                                          ; $53d7: $47
	ld a, [hl+]                                      ; $53d8: $2a
	ld [$c151], a                                    ; $53d9: $ea $51 $c1
	ld a, [hl+]                                      ; $53dc: $2a
	ld [$c152], a                                    ; $53dd: $ea $52 $c1
	ld a, [hl+]                                      ; $53e0: $2a
	ld [$c153], a                                    ; $53e1: $ea $53 $c1
	ld a, [hl+]                                      ; $53e4: $2a
	ld [$c156], a                                    ; $53e5: $ea $56 $c1
	ld a, [hl+]                                      ; $53e8: $2a
	ld [$c157], a                                    ; $53e9: $ea $57 $c1
	ld a, [hl+]                                      ; $53ec: $2a
	ld [$c158], a                                    ; $53ed: $ea $58 $c1
	ld h, $01                                        ; $53f0: $26 $01
	ld l, $20                                        ; $53f2: $2e $20
	add hl, bc                                       ; $53f4: $09
	ld a, l                                          ; $53f5: $7d
	ld [$c159], a                                    ; $53f6: $ea $59 $c1
	ld a, h                                          ; $53f9: $7c
	ld [$c15a], a                                    ; $53fa: $ea $5a $c1
	ld a, $ff                                        ; $53fd: $3e $ff
	ld [$c15b], a                                    ; $53ff: $ea $5b $c1
	ld hl, $d3ac                                     ; $5402: $21 $ac $d3
	sla [hl]                                         ; $5405: $cb $26
	ld hl, $d3ad                                     ; $5407: $21 $ad $d3
	rl [hl]                                          ; $540a: $cb $16
	jr c, jr_001_542c                                ; $540c: $38 $1e

	ld a, $19                                        ; $540e: $3e $19
	ld [$c151], a                                    ; $5410: $ea $51 $c1
	ld a, $14                                        ; $5413: $3e $14
	ld [$c152], a                                    ; $5415: $ea $52 $c1
	ld a, $43                                        ; $5418: $3e $43
	ld [$c153], a                                    ; $541a: $ea $53 $c1
	ld a, $19                                        ; $541d: $3e $19
	ld [$c156], a                                    ; $541f: $ea $56 $c1
	ld a, $2a                                        ; $5422: $3e $2a
	ld [$c157], a                                    ; $5424: $ea $57 $c1
	ld a, $43                                        ; $5427: $3e $43
	ld [$c158], a                                    ; $5429: $ea $58 $c1

jr_001_542c:
	ld hl, $c150                                     ; $542c: $21 $50 $c1
	call $0aab                                       ; $542f: $cd $ab $0a
	ld a, [$d3ae]                                    ; $5432: $fa $ae $d3
	inc a                                            ; $5435: $3c
	ld [$d3ae], a                                    ; $5436: $ea $ae $d3
	cp $0f                                           ; $5439: $fe $0f
	ret c                                            ; $543b: $d8

	jp Jump_001_51b4                                 ; $543c: $c3 $b4 $51


	ld a, [$d392]                                    ; $543f: $fa $92 $d3
	call wJumpTable                                       ; $5442: $cd $80 $cf
	ld c, c                                          ; $5445: $49
	ld d, h                                          ; $5446: $54
	ld [hl-], a                                      ; $5447: $32
	ld d, l                                          ; $5448: $55
	ld hl, $47c7                                     ; $5449: $21 $c7 $47
	call $0aab                                       ; $544c: $cd $ab $0a
	ld hl, $d50f                                     ; $544f: $21 $0f $d5
	ld a, l                                          ; $5452: $7d
	ld [$cb08], a                                    ; $5453: $ea $08 $cb
	ld a, h                                          ; $5456: $7c
	ld [$cb09], a                                    ; $5457: $ea $09 $cb
	ld a, $01                                        ; $545a: $3e $01
	ld [$cb00], a                                    ; $545c: $ea $00 $cb
	ld a, $38                                        ; $545f: $3e $38
	ld [$cb02], a                                    ; $5461: $ea $02 $cb
	ld a, [wInitialA]                                    ; $5464: $fa $00 $c1
	cp $11                                           ; $5467: $fe $11
	jp nz, Jump_001_5478                             ; $5469: $c2 $78 $54

	ld a, $02                                        ; $546c: $3e $02
	ld [$cc00], a                                    ; $546e: $ea $00 $cc
	ld a, $38                                        ; $5471: $3e $38
	ld [$cc02], a                                    ; $5473: $ea $02 $cc
	jr jr_001_547b                                   ; $5476: $18 $03

Jump_001_5478:
	call Call_001_5aea                               ; $5478: $cd $ea $5a

jr_001_547b:
	call Call_001_551b                               ; $547b: $cd $1b $55
	call Call_001_5484                               ; $547e: $cd $84 $54
	jp Jump_001_51b4                                 ; $5481: $c3 $b4 $51


Call_001_5484:
	xor a                                            ; $5484: $af
	ld [$d3a7], a                                    ; $5485: $ea $a7 $d3
	ld a, [$d3a6]                                    ; $5488: $fa $a6 $d3
	sla a                                            ; $548b: $cb $27
	ld c, a                                          ; $548d: $4f
	ld b, $00                                        ; $548e: $06 $00
	ld hl, $4b25                                     ; $5490: $21 $25 $4b
	add hl, bc                                       ; $5493: $09
	ld a, [hl+]                                      ; $5494: $2a
	ld [$cb07], a                                    ; $5495: $ea $07 $cb
	ld a, [hl]                                       ; $5498: $7e
	ld [$cb05], a                                    ; $5499: $ea $05 $cb
	xor a                                            ; $549c: $af
	ld [$cc08], a                                    ; $549d: $ea $08 $cc
	ld [$cc09], a                                    ; $54a0: $ea $09 $cc
	ld a, [$cc00]                                    ; $54a3: $fa $00 $cc
	cp $02                                           ; $54a6: $fe $02
	jr nz, jr_001_54cf                               ; $54a8: $20 $25

	call Call_001_55c8                               ; $54aa: $cd $c8 $55
	jr nc, jr_001_54cf                               ; $54ad: $30 $20

	ld a, [$cb07]                                    ; $54af: $fa $07 $cb
	ld [$cc07], a                                    ; $54b2: $ea $07 $cc
	ld a, [$cb05]                                    ; $54b5: $fa $05 $cb
	ld [$cc05], a                                    ; $54b8: $ea $05 $cc
	ld a, [$d3a6]                                    ; $54bb: $fa $a6 $d3
	sla a                                            ; $54be: $cb $27
	ld c, a                                          ; $54c0: $4f
	ld b, $00                                        ; $54c1: $06 $00
	ld hl, $4b9f                                     ; $54c3: $21 $9f $4b
	add hl, bc                                       ; $54c6: $09
	ld a, [hl+]                                      ; $54c7: $2a
	ld [$cc08], a                                    ; $54c8: $ea $08 $cc
	ld a, [hl]                                       ; $54cb: $7e
	ld [$cc09], a                                    ; $54cc: $ea $09 $cc

jr_001_54cf:
	ld a, $f9                                        ; $54cf: $3e $f9
	ld [$c160], a                                    ; $54d1: $ea $60 $c1
	ld a, [$d3a6]                                    ; $54d4: $fa $a6 $d3
	sla a                                            ; $54d7: $cb $27
	ld b, a                                          ; $54d9: $47
	sla a                                            ; $54da: $cb $27
	add b                                            ; $54dc: $80
	ld c, a                                          ; $54dd: $4f
	ld b, $00                                        ; $54de: $06 $00
	ld hl, $4b45                                     ; $54e0: $21 $45 $4b
	add hl, bc                                       ; $54e3: $09
	ld a, [hl+]                                      ; $54e4: $2a
	ld [$c161], a                                    ; $54e5: $ea $61 $c1
	ld a, [hl+]                                      ; $54e8: $2a
	ld [$c162], a                                    ; $54e9: $ea $62 $c1
	ld a, [hl+]                                      ; $54ec: $2a
	ld [$c163], a                                    ; $54ed: $ea $63 $c1
	ld a, [hl+]                                      ; $54f0: $2a
	ld [$c166], a                                    ; $54f1: $ea $66 $c1
	ld a, [hl+]                                      ; $54f4: $2a
	ld [$c167], a                                    ; $54f5: $ea $67 $c1
	ld a, [hl]                                       ; $54f8: $7e
	ld [$c168], a                                    ; $54f9: $ea $68 $c1
	ld a, $90                                        ; $54fc: $3e $90
	ld [$c164], a                                    ; $54fe: $ea $64 $c1
	ld a, $96                                        ; $5501: $3e $96
	ld [$c165], a                                    ; $5503: $ea $65 $c1
	ld a, $b0                                        ; $5506: $3e $b0
	ld [$c169], a                                    ; $5508: $ea $69 $c1
	ld a, $97                                        ; $550b: $3e $97
	ld [$c16a], a                                    ; $550d: $ea $6a $c1
	ld a, $ff                                        ; $5510: $3e $ff
	ld [$c16b], a                                    ; $5512: $ea $6b $c1
	ld hl, $c160                                     ; $5515: $21 $60 $c1
	jp $0aab                                         ; $5518: $c3 $ab $0a


Call_001_551b:
	xor a                                            ; $551b: $af
	ld [$d3a2], a                                    ; $551c: $ea $a2 $d3
	ld [$d3a3], a                                    ; $551f: $ea $a3 $d3
	ret                                              ; $5522: $c9


jr_001_5523:
	xor a                                            ; $5523: $af
	ld [$cb00], a                                    ; $5524: $ea $00 $cb
	ld [$cc00], a                                    ; $5527: $ea $00 $cc
	ld a, $32                                        ; $552a: $3e $32
	call $1e2e                                       ; $552c: $cd $2e $1e
	jp Jump_001_5035                                 ; $552f: $c3 $35 $50


	ld a, [$d3a7]                                    ; $5532: $fa $a7 $d3
	inc a                                            ; $5535: $3c
	ld [$d3a7], a                                    ; $5536: $ea $a7 $d3
	and $10                                          ; $5539: $e6 $10
	sla a                                            ; $553b: $cb $27
	sla a                                            ; $553d: $cb $27
	sla a                                            ; $553f: $cb $27
	ld [$cb01], a                                    ; $5541: $ea $01 $cb
	ld a, [wButtonsPressed]                                    ; $5544: $fa $25 $c1
	ld b, a                                          ; $5547: $47
	bit 6, a                                         ; $5548: $cb $77
	jr nz, jr_001_556f                               ; $554a: $20 $23

	ld a, [$d350]                                    ; $554c: $fa $50 $d3
	or b                                             ; $554f: $b0
	call nz, Call_001_551b                           ; $5550: $c4 $1b $55
	ld a, [$d3a2]                                    ; $5553: $fa $a2 $d3
	ld l, a                                          ; $5556: $6f
	ld a, [$d3a3]                                    ; $5557: $fa $a3 $d3
	ld h, a                                          ; $555a: $67
	inc hl                                           ; $555b: $23
	ld a, l                                          ; $555c: $7d
	ld [$d3a2], a                                    ; $555d: $ea $a2 $d3
	ld a, h                                          ; $5560: $7c
	ld [$d3a3], a                                    ; $5561: $ea $a3 $d3
	ld b, h                                          ; $5564: $44
	ld c, l                                          ; $5565: $4d
	ld de, $4650                                     ; $5566: $11 $50 $46
	call Call_001_5ad3                               ; $5569: $cd $d3 $5a
	and a                                            ; $556c: $a7
	jr z, jr_001_5577                                ; $556d: $28 $08

jr_001_556f:
	ld a, $0f                                        ; $556f: $3e $0f
	ld [$d3a6], a                                    ; $5571: $ea $a6 $d3
	jp Jump_001_57d9                                 ; $5574: $c3 $d9 $57


jr_001_5577:
	call Call_001_55c8                               ; $5577: $cd $c8 $55
	jr nc, jr_001_5583                               ; $557a: $30 $07

	ld hl, wButtonsPressed                                     ; $557c: $21 $25 $c1
	bit 4, [hl]                                      ; $557f: $cb $66
	jr nz, jr_001_5523                               ; $5581: $20 $a0

jr_001_5583:
	ld a, [$d350]                                    ; $5583: $fa $50 $d3
	bit 0, a                                         ; $5586: $cb $47
	jr nz, jr_001_55a1                               ; $5588: $20 $17

	bit 1, a                                         ; $558a: $cb $4f
	jr nz, jr_001_55a6                               ; $558c: $20 $18

	bit 2, a                                         ; $558e: $cb $57
	jr nz, jr_001_559c                               ; $5590: $20 $0a

	bit 3, a                                         ; $5592: $cb $5f
	jr nz, jr_001_5597                               ; $5594: $20 $01

	ret                                              ; $5596: $c9


jr_001_5597:
	ld de, $0003                                     ; $5597: $11 $03 $00
	jr jr_001_55a9                                   ; $559a: $18 $0d

jr_001_559c:
	ld de, $0002                                     ; $559c: $11 $02 $00
	jr jr_001_55a9                                   ; $559f: $18 $08

jr_001_55a1:
	ld de, $0000                                     ; $55a1: $11 $00 $00
	jr jr_001_55a9                                   ; $55a4: $18 $03

jr_001_55a6:
	ld de, $0001                                     ; $55a6: $11 $01 $00

jr_001_55a9:
	ld a, [$d3a6]                                    ; $55a9: $fa $a6 $d3
	sla a                                            ; $55ac: $cb $27
	sla a                                            ; $55ae: $cb $27
	ld c, a                                          ; $55b0: $4f
	ld b, $00                                        ; $55b1: $06 $00
	ld hl, $4ae9                                     ; $55b3: $21 $e9 $4a
	add hl, bc                                       ; $55b6: $09
	add hl, de                                       ; $55b7: $19
	ld a, [hl]                                       ; $55b8: $7e
	cp $ff                                           ; $55b9: $fe $ff
	ret z                                            ; $55bb: $c8

	ld [$d3a6], a                                    ; $55bc: $ea $a6 $d3
	call Call_001_5484                               ; $55bf: $cd $84 $54
	ld a, $68                                        ; $55c2: $3e $68
	call $1e2e                                       ; $55c4: $cd $2e $1e
	ret                                              ; $55c7: $c9


Call_001_55c8:
	ld a, [$d3a5]                                    ; $55c8: $fa $a5 $d3
	ld h, a                                          ; $55cb: $67
	ld a, [$d3a4]                                    ; $55cc: $fa $a4 $d3
	ld l, a                                          ; $55cf: $6f
	ld a, [$d3a6]                                    ; $55d0: $fa $a6 $d3
	inc a                                            ; $55d3: $3c
	add hl, hl                                       ; $55d4: $29

jr_001_55d5:
	add hl, hl                                       ; $55d5: $29
	dec a                                            ; $55d6: $3d
	jr nz, jr_001_55d5                               ; $55d7: $20 $fc

	ret                                              ; $55d9: $c9


	ld a, [$d392]                                    ; $55da: $fa $92 $d3
	call wJumpTable                                       ; $55dd: $cd $80 $cf
	ldh [c], a                                       ; $55e0: $e2
	ld d, l                                          ; $55e1: $55
	ld hl, $49d3                                     ; $55e2: $21 $d3 $49
	ld d, $00                                        ; $55e5: $16 $00
	ld e, $01                                        ; $55e7: $1e $01
	ld bc, $9f01                                     ; $55e9: $01 $01 $9f
	call Call_001_59aa                               ; $55ec: $cd $aa $59
	ld hl, $49d3                                     ; $55ef: $21 $d3 $49
	ld d, $00                                        ; $55f2: $16 $00
	ld e, $01                                        ; $55f4: $1e $01
	ld bc, $9f0a                                     ; $55f6: $01 $0a $9f
	call Call_001_59aa                               ; $55f9: $cd $aa $59
	ld hl, $49d3                                     ; $55fc: $21 $d3 $49
	ld d, $00                                        ; $55ff: $16 $00
	ld e, $01                                        ; $5601: $1e $01
	ld bc, $9f21                                     ; $5603: $01 $21 $9f
	call Call_001_59aa                               ; $5606: $cd $aa $59
	ld hl, $49d3                                     ; $5609: $21 $d3 $49
	ld d, $00                                        ; $560c: $16 $00
	ld e, $01                                        ; $560e: $1e $01
	ld bc, $9f2a                                     ; $5610: $01 $2a $9f
	call Call_001_59aa                               ; $5613: $cd $aa $59
	ld hl, $49d3                                     ; $5616: $21 $d3 $49
	ld d, $00                                        ; $5619: $16 $00
	ld e, $01                                        ; $561b: $1e $01
	ld bc, $9f41                                     ; $561d: $01 $41 $9f
	call Call_001_59aa                               ; $5620: $cd $aa $59
	ld hl, $49d3                                     ; $5623: $21 $d3 $49
	ld d, $00                                        ; $5626: $16 $00
	ld e, $01                                        ; $5628: $1e $01
	ld bc, $9f4a                                     ; $562a: $01 $4a $9f
	call Call_001_59aa                               ; $562d: $cd $aa $59
	ld hl, $49d3                                     ; $5630: $21 $d3 $49
	ld d, $00                                        ; $5633: $16 $00
	ld e, $01                                        ; $5635: $1e $01
	ld bc, $9f61                                     ; $5637: $01 $61 $9f
	call Call_001_59aa                               ; $563a: $cd $aa $59
	ld hl, $49d3                                     ; $563d: $21 $d3 $49
	ld d, $00                                        ; $5640: $16 $00
	ld e, $01                                        ; $5642: $1e $01
	ld bc, $9f6a                                     ; $5644: $01 $6a $9f
	call Call_001_59aa                               ; $5647: $cd $aa $59
	jp Jump_001_5035                                 ; $564a: $c3 $35 $50


	ld a, [$d3a6]                                    ; $564d: $fa $a6 $d3
	ld b, $00                                        ; $5650: $06 $00
	ld c, a                                          ; $5652: $4f
	ld h, $00                                        ; $5653: $26 $00
	ld l, a                                          ; $5655: $6f
	add hl, hl                                       ; $5656: $29
	add hl, hl                                       ; $5657: $29
	add hl, bc                                       ; $5658: $09
	ld bc, $5677                                     ; $5659: $01 $77 $56
	add hl, bc                                       ; $565c: $09
	ld a, [hl+]                                      ; $565d: $2a
	ld [$c1e7], a                                    ; $565e: $ea $e7 $c1
	ld a, [hl+]                                      ; $5661: $2a

Jump_001_5662:
	ld [$c1e9], a                                    ; $5662: $ea $e9 $c1
	ld a, [hl+]                                      ; $5665: $2a
	ld [$c1e8], a                                    ; $5666: $ea $e8 $c1
	ld a, [hl+]                                      ; $5669: $2a
	ld [$c1f4], a                                    ; $566a: $ea $f4 $c1
	ld a, [hl+]                                      ; $566d: $2a
	ld [$c1e6], a                                    ; $566e: $ea $e6 $c1
	call Call_001_5b66                               ; $5671: $cd $66 $5b
	jp Jump_001_5035                                 ; $5674: $c3 $35 $50


	nop                                              ; $5677: $00
	nop                                              ; $5678: $00
	nop                                              ; $5679: $00
	ld bc, $0000                                     ; $567a: $01 $00 $00
	nop                                              ; $567d: $00
	ld bc, $0002                                     ; $567e: $01 $02 $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	ld [bc], a                                       ; $5683: $02
	ld [bc], a                                       ; $5684: $02
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	dec b                                            ; $5688: $05
	ld bc, $0100                                     ; $5689: $01 $00 $01
	nop                                              ; $568c: $00
	ld [$0002], sp                                   ; $568d: $08 $02 $00
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	inc bc                                           ; $5692: $03
	ld bc, $0000                                     ; $5693: $01 $00 $00
	nop                                              ; $5696: $00
	inc b                                            ; $5697: $04
	ld bc, $0000                                     ; $5698: $01 $00 $00
	nop                                              ; $569b: $00
	ld b, $00                                        ; $569c: $06 $00
	nop                                              ; $569e: $00
	call Call_001_5cc8                               ; $569f: $cd $c8 $5c
	ld a, [$c1f6]                                    ; $56a2: $fa $f6 $c1
	and a                                            ; $56a5: $a7
	ret z                                            ; $56a6: $c8

	xor a                                            ; $56a7: $af
	ld [$c1f6], a                                    ; $56a8: $ea $f6 $c1
	jp Jump_001_5035                                 ; $56ab: $c3 $35 $50


	ld a, [$d392]                                    ; $56ae: $fa $92 $d3
	call wJumpTable                                       ; $56b1: $cd $80 $cf
	or [hl]                                          ; $56b4: $b6
	ld d, [hl]                                       ; $56b5: $56
	ld hl, $9300                                     ; $56b6: $21 $00 $93
	call Call_001_56d7                               ; $56b9: $cd $d7 $56
	ld hl, $9400                                     ; $56bc: $21 $00 $94
	call Call_001_56d7                               ; $56bf: $cd $d7 $56
	ld hl, $9500                                     ; $56c2: $21 $00 $95
	call Call_001_56d7                               ; $56c5: $cd $d7 $56
	ld hl, $9600                                     ; $56c8: $21 $00 $96
	call Call_001_56d7                               ; $56cb: $cd $d7 $56
	ld hl, $9700                                     ; $56ce: $21 $00 $97
	call Call_001_56d7                               ; $56d1: $cd $d7 $56
	jp Jump_001_5035                                 ; $56d4: $c3 $35 $50


Call_001_56d7:
	ld a, $f9                                        ; $56d7: $3e $f9
	ld [$c150], a                                    ; $56d9: $ea $50 $c1
	ld a, $1b                                        ; $56dc: $3e $1b
	ld [$c151], a                                    ; $56de: $ea $51 $c1
	ld a, $be                                        ; $56e1: $3e $be
	ld [$c152], a                                    ; $56e3: $ea $52 $c1
	ld a, $7c                                        ; $56e6: $3e $7c
	ld [$c153], a                                    ; $56e8: $ea $53 $c1
	ld a, l                                          ; $56eb: $7d
	ld [$c154], a                                    ; $56ec: $ea $54 $c1
	ld a, h                                          ; $56ef: $7c
	ld [$c155], a                                    ; $56f0: $ea $55 $c1
	ld a, $ff                                        ; $56f3: $3e $ff
	ld [$c156], a                                    ; $56f5: $ea $56 $c1
	ld hl, $c150                                     ; $56f8: $21 $50 $c1
	call $0aab                                       ; $56fb: $cd $ab $0a
	ret                                              ; $56fe: $c9


	ld a, [$d392]                                    ; $56ff: $fa $92 $d3
	call wJumpTable                                       ; $5702: $cd $80 $cf
	add hl, bc                                       ; $5705: $09
	ld d, a                                          ; $5706: $57
	db $10                                           ; $5707: $10
	ld d, a                                          ; $5708: $57
	xor a                                            ; $5709: $af
	ld [$d3ab], a                                    ; $570a: $ea $ab $d3
	call Call_001_51b4                               ; $570d: $cd $b4 $51
	ld a, [$d3ab]                                    ; $5710: $fa $ab $d3
	ld l, a                                          ; $5713: $6f
	ld h, $00                                        ; $5714: $26 $00
	add hl, hl                                       ; $5716: $29
	add hl, hl                                       ; $5717: $29
	add hl, hl                                       ; $5718: $29
	add hl, hl                                       ; $5719: $29
	add hl, hl                                       ; $571a: $29
	ld bc, $9ce0                                     ; $571b: $01 $e0 $9c
	add hl, bc                                       ; $571e: $09
	ld b, h                                          ; $571f: $44
	ld c, l                                          ; $5720: $4d
	push bc                                          ; $5721: $c5
	ld hl, $49dd                                     ; $5722: $21 $dd $49
	ld d, $02                                        ; $5725: $16 $02
	ld e, $01                                        ; $5727: $1e $01
	call Call_001_59aa                               ; $5729: $cd $aa $59
	pop hl                                           ; $572c: $e1
	ld b, $00                                        ; $572d: $06 $00
	ld c, $0a                                        ; $572f: $0e $0a
	add hl, bc                                       ; $5731: $09
	push hl                                          ; $5732: $e5
	pop bc                                           ; $5733: $c1
	ld hl, $49dd                                     ; $5734: $21 $dd $49
	ld d, $02                                        ; $5737: $16 $02
	ld e, $01                                        ; $5739: $1e $01
	call Call_001_59aa                               ; $573b: $cd $aa $59
	ld a, [$d3ab]                                    ; $573e: $fa $ab $d3
	inc a                                            ; $5741: $3c
	ld [$d3ab], a                                    ; $5742: $ea $ab $d3
	cp $0a                                           ; $5745: $fe $0a
	ret nz                                           ; $5747: $c0

	jp Jump_001_5035                                 ; $5748: $c3 $35 $50


	ld a, [$d392]                                    ; $574b: $fa $92 $d3
	call wJumpTable                                       ; $574e: $cd $80 $cf
	ld d, l                                          ; $5751: $55
	ld d, a                                          ; $5752: $57
	and b                                            ; $5753: $a0
	ld d, a                                          ; $5754: $57
	ld hl, $c14a                                     ; $5755: $21 $4a $c1
	bit 6, [hl]                                      ; $5758: $cb $76
	jr nz, jr_001_5770                               ; $575a: $20 $14

	ld a, [wInitialA]                                    ; $575c: $fa $00 $c1
	cp $11                                           ; $575f: $fe $11
	jr nz, jr_001_576b                               ; $5761: $20 $08

	ld bc, $62be                                     ; $5763: $01 $be $62
	call $18c4                                       ; $5766: $cd $c4 $18
	jr jr_001_57a7                                   ; $5769: $18 $3c

jr_001_576b:
	call Call_001_5aea                               ; $576b: $cd $ea $5a
	jr jr_001_57a7                                   ; $576e: $18 $37

jr_001_5770:
	ld a, $e4                                        ; $5770: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $5772: $e0 $85
	ld a, $06                                        ; $5774: $3e $06
	ldh [hDisp0_OBP0], a                                     ; $5776: $e0 $86
	ld a, $06                                        ; $5778: $3e $06
	ldh [hDisp0_OBP1], a                                     ; $577a: $e0 $87
	call $1a02                                       ; $577c: $cd $02 $1a
	and a                                            ; $577f: $a7
	jr nz, jr_001_5791                               ; $5780: $20 $0f

	ld bc, $62be                                     ; $5782: $01 $be $62
	call $18c4                                       ; $5785: $cd $c4 $18
	ld bc, $6824                                     ; $5788: $01 $24 $68
	call $18b3                                       ; $578b: $cd $b3 $18
	jp Jump_001_51b4                                 ; $578e: $c3 $b4 $51


jr_001_5791:
	ld bc, $62be                                     ; $5791: $01 $be $62
	call $18c4                                       ; $5794: $cd $c4 $18
	ld bc, $67e4                                     ; $5797: $01 $e4 $67
	call $18b3                                       ; $579a: $cd $b3 $18
	jp Jump_001_51b4                                 ; $579d: $c3 $b4 $51


	call $1998                                       ; $57a0: $cd $98 $19
	ret nz                                           ; $57a3: $c0

	xor a                                            ; $57a4: $af
	ldh [$8a], a                                     ; $57a5: $e0 $8a

jr_001_57a7:
	jp Jump_001_5035                                 ; $57a7: $c3 $35 $50


	ld a, [$d3a6]                                    ; $57aa: $fa $a6 $d3
	cp $0c                                           ; $57ad: $fe $0c
	jr z, jr_001_57d6                                ; $57af: $28 $25

	cp $08                                           ; $57b1: $fe $08
	jr z, jr_001_57d6                                ; $57b3: $28 $21

	cp $0d                                           ; $57b5: $fe $0d
	jr z, jr_001_57d6                                ; $57b7: $28 $1d

	cp $0b                                           ; $57b9: $fe $0b
	jr z, jr_001_57d6                                ; $57bb: $28 $19

	cp $09                                           ; $57bd: $fe $09
	jr z, jr_001_57d6                                ; $57bf: $28 $15

	cp $04                                           ; $57c1: $fe $04
	jr nz, jr_001_57cb                               ; $57c3: $20 $06

	ld a, [wTaskParam5_word0+1]                                    ; $57c5: $fa $c5 $d0
	and a                                            ; $57c8: $a7
	jr z, jr_001_57d6                                ; $57c9: $28 $0b

jr_001_57cb:
	ld a, [$c1f0]                                    ; $57cb: $fa $f0 $c1
	and a                                            ; $57ce: $a7
	jp z, Jump_001_5035                              ; $57cf: $ca $35 $50

	xor a                                            ; $57d2: $af
	ld [$c1f0], a                                    ; $57d3: $ea $f0 $c1

jr_001_57d6:
	call Call_001_5856                               ; $57d6: $cd $56 $58

Jump_001_57d9:
	ld hl, $d395                                     ; $57d9: $21 $95 $d3
	ld [hl], $01                                     ; $57dc: $36 $01
	jp Jump_001_5035                                 ; $57de: $c3 $35 $50


	ld hl, $c14a                                     ; $57e1: $21 $4a $c1
	bit 6, [hl]                                      ; $57e4: $cb $76
	ld a, [wInitialA]                                    ; $57e6: $fa $00 $c1
	cp $11                                           ; $57e9: $fe $11
	jr nz, jr_001_57f5                               ; $57eb: $20 $08

	ld bc, $62c2                                     ; $57ed: $01 $c2 $62
	call $18c4                                       ; $57f0: $cd $c4 $18
	jr jr_001_57fc                                   ; $57f3: $18 $07

jr_001_57f5:
	xor a                                            ; $57f5: $af
	ldh [hDisp0_BGP], a                                     ; $57f6: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $57f8: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $57fa: $e0 $87

jr_001_57fc:
	jp Jump_001_5035                                 ; $57fc: $c3 $35 $50


	call nz, Call_001_4398                           ; $57ff: $c4 $98 $43
	ld c, l                                          ; $5802: $4d
	ld b, h                                          ; $5803: $44
	ld d, e                                          ; $5804: $53
	ld b, e                                          ; $5805: $43
	ld d, d                                          ; $5806: $52
	ld c, [hl]                                       ; $5807: $4e
	jr nz, @+$56                                     ; $5808: $20 $54

	ld b, l                                          ; $580a: $45
	ld d, e                                          ; $580b: $53
	ld d, h                                          ; $580c: $54
	rst $38                                          ; $580d: $ff
	ld hl, $c186                                     ; $580e: $21 $86 $c1
	ld a, [hl]                                       ; $5811: $7e
	cp $00                                           ; $5812: $fe $00
	ret z                                            ; $5814: $c8

	ld a, $ff                                        ; $5815: $3e $ff
	ld [$d3a0], a                                    ; $5817: $ea $a0 $d3
	ld a, [$c186]                                    ; $581a: $fa $86 $c1
	ld [$d3a1], a                                    ; $581d: $ea $a1 $d3
	call Call_001_5b16                               ; $5820: $cd $16 $5b
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5823: $cd $ef $2d
	ld a, $01                                        ; $5826: $3e $01
	ldh [$8a], a                                     ; $5828: $e0 $8a
	ld a, [$d3a1]                                    ; $582a: $fa $a1 $d3
	cp $00                                           ; $582d: $fe $00
	jr z, jr_001_5848                                ; $582f: $28 $17

	cp $01                                           ; $5831: $fe $01
	jr z, jr_001_5848                                ; $5833: $28 $13

	cp $03                                           ; $5835: $fe $03
	jr z, jr_001_5848                                ; $5837: $28 $0f

	cp $04                                           ; $5839: $fe $04
	jr z, jr_001_5848                                ; $583b: $28 $0b

	cp $07                                           ; $583d: $fe $07
	jr z, jr_001_5848                                ; $583f: $28 $07

	cp $0f                                           ; $5841: $fe $0f
	jr z, jr_001_5848                                ; $5843: $28 $03

	xor a                                            ; $5845: $af
	ldh [$8a], a                                     ; $5846: $e0 $8a

jr_001_5848:
	ret                                              ; $5848: $c9


Call_001_5849::
	xor a                                            ; $5849: $af
	ld [$d390], a                                    ; $584a: $ea $90 $d3
	ld [$d391], a                                    ; $584d: $ea $91 $d3
	ld [$d392], a                                    ; $5850: $ea $92 $d3
	ld [$d395], a                                    ; $5853: $ea $95 $d3

Call_001_5856:
	xor a                                            ; $5856: $af
	ld [$d393], a                                    ; $5857: $ea $93 $d3
	ld [$d394], a                                    ; $585a: $ea $94 $d3
	ld b, $10                                        ; $585d: $06 $10
	ld hl, $d3b0                                     ; $585f: $21 $b0 $d3

jr_001_5862:
	ld [hl+], a                                      ; $5862: $22
	dec b                                            ; $5863: $05
	jr nz, jr_001_5862                               ; $5864: $20 $fc

	ret                                              ; $5866: $c9


	ld hl, $c186                                     ; $5867: $21 $86 $c1
	ld a, [hl]                                       ; $586a: $7e
	cp $00                                           ; $586b: $fe $00
	jr z, jr_001_589e                                ; $586d: $28 $2f

	ld hl, $6b4c                                     ; $586f: $21 $4c $6b
	rst FarCall                                          ; $5872: $f7
	ld c, c                                          ; $5873: $49
	ld l, c                                          ; $5874: $69
	dec b                                            ; $5875: $05
	ld a, $04                                        ; $5876: $3e $04
	call Call_001_5051                               ; $5878: $cd $51 $50
	ld a, $0d                                        ; $587b: $3e $0d
	call Call_001_5051                               ; $587d: $cd $51 $50
	ld a, $16                                        ; $5880: $3e $16
	call Call_001_5051                               ; $5882: $cd $51 $50
	ld a, $07                                        ; $5885: $3e $07
	call Call_001_5051                               ; $5887: $cd $51 $50
	ld a, $01                                        ; $588a: $3e $01
	call Call_001_5051                               ; $588c: $cd $51 $50
	ld a, $11                                        ; $588f: $3e $11
	call Call_001_5051                               ; $5891: $cd $51 $50
	ld a, $12                                        ; $5894: $3e $12
	call Call_001_5051                               ; $5896: $cd $51 $50
	ld a, $14                                        ; $5899: $3e $14
	jp Jump_001_5051                                 ; $589b: $c3 $51 $50


jr_001_589e:
	ld a, $04                                        ; $589e: $3e $04
	call Call_001_5051                               ; $58a0: $cd $51 $50
	ld a, $14                                        ; $58a3: $3e $14
	jp Jump_001_5051                                 ; $58a5: $c3 $51 $50


	ld a, $02                                        ; $58a8: $3e $02
	call Call_001_5051                               ; $58aa: $cd $51 $50
	ld a, $14                                        ; $58ad: $3e $14
	jp Jump_001_5051                                 ; $58af: $c3 $51 $50


	ld a, $0d                                        ; $58b2: $3e $0d
	call Call_001_5051                               ; $58b4: $cd $51 $50
	ld a, $10                                        ; $58b7: $3e $10
	call Call_001_5051                               ; $58b9: $cd $51 $50
	ld a, $0b                                        ; $58bc: $3e $0b
	call Call_001_5051                               ; $58be: $cd $51 $50
	ld a, $0c                                        ; $58c1: $3e $0c
	call Call_001_5051                               ; $58c3: $cd $51 $50
	ld a, $06                                        ; $58c6: $3e $06
	call Call_001_5051                               ; $58c8: $cd $51 $50
	ld a, $0d                                        ; $58cb: $3e $0d
	call Call_001_5051                               ; $58cd: $cd $51 $50
	ld a, $13                                        ; $58d0: $3e $13
	call Call_001_5051                               ; $58d2: $cd $51 $50
	ld a, $03                                        ; $58d5: $3e $03
	call Call_001_5051                               ; $58d7: $cd $51 $50
	ld a, $09                                        ; $58da: $3e $09
	call Call_001_5051                               ; $58dc: $cd $51 $50
	ld a, $0a                                        ; $58df: $3e $0a
	call Call_001_5051                               ; $58e1: $cd $51 $50
	ld a, $14                                        ; $58e4: $3e $14
	jp Jump_001_5051                                 ; $58e6: $c3 $51 $50


Func_01_58e9::
	ld a, $08                                        ; $58e9: $3e $08
	call Call_001_5051                               ; $58eb: $cd $51 $50
	ld a, $0a                                        ; $58ee: $3e $0a
	call Call_001_5051                               ; $58f0: $cd $51 $50
	ld a, $14                                        ; $58f3: $3e $14
	jp Jump_001_5051                                 ; $58f5: $c3 $51 $50


Jump_001_58f8:
	ldh a, [$8b]                                     ; $58f8: $f0 $8b
	cp $70                                           ; $58fa: $fe $70
	jr nc, jr_001_5912                               ; $58fc: $30 $14

	ld a, $0d                                        ; $58fe: $3e $0d
	call Call_001_5051                               ; $5900: $cd $51 $50
	ld a, $03                                        ; $5903: $3e $03
	call Call_001_5051                               ; $5905: $cd $51 $50
	ld a, $09                                        ; $5908: $3e $09
	call Call_001_5051                               ; $590a: $cd $51 $50
	ld a, $0a                                        ; $590d: $3e $0a
	call Call_001_5051                               ; $590f: $cd $51 $50

jr_001_5912:
	ld a, $14                                        ; $5912: $3e $14
	jp Jump_001_5051                                 ; $5914: $c3 $51 $50


	ld b, $70                                        ; $5917: $06 $70
	ld hl, $d360                                     ; $5919: $21 $60 $d3
	xor a                                            ; $591c: $af

jr_001_591d:
	ld [hl+], a                                      ; $591d: $22
	dec b                                            ; $591e: $05
	jr nz, jr_001_591d                               ; $591f: $20 $fc

	ret                                              ; $5921: $c9


	ld d, [hl]                                       ; $5922: $56
	inc hl                                           ; $5923: $23
	ld e, [hl]                                       ; $5924: $5e
	inc hl                                           ; $5925: $23
	ld c, [hl]                                       ; $5926: $4e
	inc hl                                           ; $5927: $23
	ld b, [hl]                                       ; $5928: $46
	inc hl                                           ; $5929: $23

Call_001_592a:
	push hl                                          ; $592a: $e5
	ld hl, $ff98                                     ; $592b: $21 $98 $ff
	ld a, $58                                        ; $592e: $3e $58
	cp [hl]                                          ; $5930: $be
	jr nc, jr_001_593a                               ; $5931: $30 $07

	ld a, [hl]                                       ; $5933: $7e
	cp $80                                           ; $5934: $fe $80
	jr c, jr_001_593a                                ; $5936: $38 $02

	ld a, $58                                        ; $5938: $3e $58

jr_001_593a:
	ld [$c0f0], a                                    ; $593a: $ea $f0 $c0
	pop hl                                           ; $593d: $e1
	ld a, [wInitialA]                                    ; $593e: $fa $00 $c1
	cp $11                                           ; $5941: $fe $11
	jr nz, jr_001_5979                               ; $5943: $20 $34

jr_001_5945:
	ld a, [hl+]                                      ; $5945: $2a
	push hl                                          ; $5946: $e5
	push af                                          ; $5947: $f5
	ld hl, $c0f0                                     ; $5948: $21 $f0 $c0

jr_001_594b:
	ldh a, [rLY]                                     ; $594b: $f0 $44
	cp [hl]                                          ; $594d: $be
	jr c, jr_001_594b                                ; $594e: $38 $fb

	ld a, $01                                        ; $5950: $3e $01
	ldh [rVBK], a                                    ; $5952: $e0 $4f
	ld hl, rSTAT                                     ; $5954: $21 $41 $ff
	di                                               ; $5957: $f3

jr_001_5958:
	bit 1, [hl]                                      ; $5958: $cb $4e
	jr nz, jr_001_5958                               ; $595a: $20 $fc

	ld a, d                                          ; $595c: $7a
	ld [bc], a                                       ; $595d: $02
	ei                                               ; $595e: $fb
	xor a                                            ; $595f: $af
	ldh [rVBK], a                                    ; $5960: $e0 $4f
	ld hl, rSTAT                                     ; $5962: $21 $41 $ff
	di                                               ; $5965: $f3

jr_001_5966:
	bit 1, [hl]                                      ; $5966: $cb $4e
	jr nz, jr_001_5966                               ; $5968: $20 $fc

	pop af                                           ; $596a: $f1
	ld [bc], a                                       ; $596b: $02
	ei                                               ; $596c: $fb
	ld a, c                                          ; $596d: $79
	add e                                            ; $596e: $83
	ld c, a                                          ; $596f: $4f
	jr nc, jr_001_5973                               ; $5970: $30 $01

	inc b                                            ; $5972: $04

jr_001_5973:
	pop hl                                           ; $5973: $e1
	ld a, [hl]                                       ; $5974: $7e
	inc a                                            ; $5975: $3c
	jr nz, jr_001_5945                               ; $5976: $20 $cd

	ret                                              ; $5978: $c9


jr_001_5979:
	ld a, [hl+]                                      ; $5979: $2a
	push hl                                          ; $597a: $e5
	push af                                          ; $597b: $f5
	ld hl, $c0f0                                     ; $597c: $21 $f0 $c0

jr_001_597f:
	ldh a, [rLY]                                     ; $597f: $f0 $44
	cp [hl]                                          ; $5981: $be
	jr c, jr_001_597f                                ; $5982: $38 $fb

	cp $83                                           ; $5984: $fe $83
	jr nc, jr_001_597f                               ; $5986: $30 $f7

	xor a                                            ; $5988: $af
	ldh [rVBK], a                                    ; $5989: $e0 $4f
	ld hl, rSTAT                                     ; $598b: $21 $41 $ff
	di                                               ; $598e: $f3

jr_001_598f:
	bit 1, [hl]                                      ; $598f: $cb $4e
	jr nz, jr_001_598f                               ; $5991: $20 $fc

	pop af                                           ; $5993: $f1
	ld [bc], a                                       ; $5994: $02
	ei                                               ; $5995: $fb
	ld a, c                                          ; $5996: $79
	add e                                            ; $5997: $83

Call_001_5998:
	ld c, a                                          ; $5998: $4f
	jr nc, jr_001_599c                               ; $5999: $30 $01

	inc b                                            ; $599b: $04

jr_001_599c:
	pop hl                                           ; $599c: $e1
	ld a, [hl]                                       ; $599d: $7e
	inc a                                            ; $599e: $3c
	jr nz, jr_001_5979                               ; $599f: $20 $d8

	ret                                              ; $59a1: $c9


Call_001_59a2:
	ld d, [hl]                                       ; $59a2: $56
	inc hl                                           ; $59a3: $23
	ld e, [hl]                                       ; $59a4: $5e
	inc hl                                           ; $59a5: $23
	ld c, [hl]                                       ; $59a6: $4e
	inc hl                                           ; $59a7: $23
	ld b, [hl]                                       ; $59a8: $46
	inc hl                                           ; $59a9: $23

Call_001_59aa:
	push bc                                          ; $59aa: $c5
	push hl                                          ; $59ab: $e5
	ld a, [$d368]                                    ; $59ac: $fa $68 $d3
	ld b, $00                                        ; $59af: $06 $00
	ld c, a                                          ; $59b1: $4f
	ld hl, $df00                                     ; $59b2: $21 $00 $df
	add hl, bc                                       ; $59b5: $09
	pop bc                                           ; $59b6: $c1
	ld a, c                                          ; $59b7: $79
	ld [hl+], a                                      ; $59b8: $22
	ld a, b                                          ; $59b9: $78
	ld [hl+], a                                      ; $59ba: $22
	ld a, e                                          ; $59bb: $7b
	ld [hl+], a                                      ; $59bc: $22
	ld a, d                                          ; $59bd: $7a
	ld [hl+], a                                      ; $59be: $22
	pop bc                                           ; $59bf: $c1
	ld a, c                                          ; $59c0: $79
	ld [hl+], a                                      ; $59c1: $22
	ld a, b                                          ; $59c2: $78
	ld [hl+], a                                      ; $59c3: $22
	ld a, [$d368]                                    ; $59c4: $fa $68 $d3
	add $06                                          ; $59c7: $c6 $06
	ld [$d368], a                                    ; $59c9: $ea $68 $d3
	ret                                              ; $59cc: $c9


Call_001_59cd:
	ld a, [$d368]                                    ; $59cd: $fa $68 $d3
	and a                                            ; $59d0: $a7
	ret z                                            ; $59d1: $c8

	xor a                                            ; $59d2: $af
	ld [$d369], a                                    ; $59d3: $ea $69 $d3

jr_001_59d6:
	ld hl, $df00                                     ; $59d6: $21 $00 $df
	ld l, a                                          ; $59d9: $6f
	ld c, [hl]                                       ; $59da: $4e
	inc hl                                           ; $59db: $23
	ld b, [hl]                                       ; $59dc: $46
	inc hl                                           ; $59dd: $23
	push bc                                          ; $59de: $c5
	ld e, [hl]                                       ; $59df: $5e
	inc hl                                           ; $59e0: $23
	ld d, [hl]                                       ; $59e1: $56
	inc hl                                           ; $59e2: $23
	ld c, [hl]                                       ; $59e3: $4e
	inc hl                                           ; $59e4: $23
	ld b, [hl]                                       ; $59e5: $46
	inc hl                                           ; $59e6: $23
	ld a, l                                          ; $59e7: $7d
	ld [$d369], a                                    ; $59e8: $ea $69 $d3
	pop hl                                           ; $59eb: $e1
	call Call_001_592a                               ; $59ec: $cd $2a $59
	ld a, [$d368]                                    ; $59ef: $fa $68 $d3
	ld b, a                                          ; $59f2: $47
	ld a, [$d369]                                    ; $59f3: $fa $69 $d3
	cp b                                             ; $59f6: $b8
	jr nz, jr_001_59d6                               ; $59f7: $20 $dd

	xor a                                            ; $59f9: $af
	ld [$d369], a                                    ; $59fa: $ea $69 $d3
	ld [$d368], a                                    ; $59fd: $ea $68 $d3
	ret                                              ; $5a00: $c9


Call_001_5a01:
	ld [$c150], a                                    ; $5a01: $ea $50 $c1
	ld c, a                                          ; $5a04: $4f
	ld b, $00                                        ; $5a05: $06 $00
	ld hl, $4a1a                                     ; $5a07: $21 $1a $4a
	add hl, bc                                       ; $5a0a: $09
	ld c, [hl]                                       ; $5a0b: $4e
	inc hl                                           ; $5a0c: $23
	ld b, [hl]                                       ; $5a0d: $46
	ld h, b                                          ; $5a0e: $60
	ld l, c                                          ; $5a0f: $69
	ld c, [hl]                                       ; $5a10: $4e
	inc hl                                           ; $5a11: $23
	ld b, [hl]                                       ; $5a12: $46
	call Call_001_5a80                               ; $5a13: $cd $80 $5a
	ld a, c                                          ; $5a16: $79
	ld [$c151], a                                    ; $5a17: $ea $51 $c1
	ld a, [$c150]                                    ; $5a1a: $fa $50 $c1
	ld d, a                                          ; $5a1d: $57
	ld e, b                                          ; $5a1e: $58
	call Call_001_5a4b                               ; $5a1f: $cd $4b $5a
	call Call_001_59aa                               ; $5a22: $cd $aa $59
	ld a, [$c150]                                    ; $5a25: $fa $50 $c1
	ld d, a                                          ; $5a28: $57
	ld a, [$c151]                                    ; $5a29: $fa $51 $c1
	and $f0                                          ; $5a2c: $e6 $f0
	swap a                                           ; $5a2e: $cb $37
	ld e, a                                          ; $5a30: $5f
	call Call_001_5a4b                               ; $5a31: $cd $4b $5a
	inc bc                                           ; $5a34: $03
	call Call_001_59aa                               ; $5a35: $cd $aa $59
	ld a, [$c150]                                    ; $5a38: $fa $50 $c1
	ld d, a                                          ; $5a3b: $57
	ld a, [$c151]                                    ; $5a3c: $fa $51 $c1
	and $0f                                          ; $5a3f: $e6 $0f
	ld e, a                                          ; $5a41: $5f
	call Call_001_5a4b                               ; $5a42: $cd $4b $5a
	inc bc                                           ; $5a45: $03
	inc bc                                           ; $5a46: $03
	call Call_001_59aa                               ; $5a47: $cd $aa $59
	ret                                              ; $5a4a: $c9


Call_001_5a4b:
	ld b, $00                                        ; $5a4b: $06 $00
	ld c, d                                          ; $5a4d: $4a
	ld hl, $4a1c                                     ; $5a4e: $21 $1c $4a
	add hl, bc                                       ; $5a51: $09
	ld a, [hl+]                                      ; $5a52: $2a
	ld c, a                                          ; $5a53: $4f
	ld a, [hl]                                       ; $5a54: $7e
	ld b, a                                          ; $5a55: $47
	push bc                                          ; $5a56: $c5
	ld b, $00                                        ; $5a57: $06 $00
	ld c, e                                          ; $5a59: $4b
	ld hl, $4a06                                     ; $5a5a: $21 $06 $4a
	add hl, bc                                       ; $5a5d: $09
	add hl, bc                                       ; $5a5e: $09
	ld a, [hl+]                                      ; $5a5f: $2a
	ld c, a                                          ; $5a60: $4f
	ld a, [hl]                                       ; $5a61: $7e
	ld b, a                                          ; $5a62: $47
	push bc                                          ; $5a63: $c5
	pop hl                                           ; $5a64: $e1
	pop bc                                           ; $5a65: $c1
	ld a, [$d366]                                    ; $5a66: $fa $66 $d3
	ld d, a                                          ; $5a69: $57
	ld e, $20                                        ; $5a6a: $1e $20
	ret                                              ; $5a6c: $c9


	push af                                          ; $5a6d: $f5
	and $f0                                          ; $5a6e: $e6 $f0
	swap a                                           ; $5a70: $cb $37
	sla a                                            ; $5a72: $cb $27
	ld b, a                                          ; $5a74: $47
	sla a                                            ; $5a75: $cb $27
	sla a                                            ; $5a77: $cb $27
	add b                                            ; $5a79: $80
	ld b, a                                          ; $5a7a: $47
	pop af                                           ; $5a7b: $f1
	and $0f                                          ; $5a7c: $e6 $0f
	add b                                            ; $5a7e: $80
	ret                                              ; $5a7f: $c9


Call_001_5a80:
	ld de, $0000                                     ; $5a80: $11 $00 $00

jr_001_5a83:
	ld h, b                                          ; $5a83: $60
	ld l, c                                          ; $5a84: $69
	ld bc, $fc18                                     ; $5a85: $01 $18 $fc
	add hl, bc                                       ; $5a88: $09
	jr nc, jr_001_5a97                               ; $5a89: $30 $0c

	ld b, h                                          ; $5a8b: $44
	ld c, l                                          ; $5a8c: $4d
	ld h, d                                          ; $5a8d: $62
	ld l, e                                          ; $5a8e: $6b
	ld de, $1000                                     ; $5a8f: $11 $00 $10
	add hl, de                                       ; $5a92: $19
	ld d, h                                          ; $5a93: $54
	ld e, l                                          ; $5a94: $5d
	jr jr_001_5a83                                   ; $5a95: $18 $ec

jr_001_5a97:
	ld bc, $03e8                                     ; $5a97: $01 $e8 $03
	add hl, bc                                       ; $5a9a: $09
	ld b, h                                          ; $5a9b: $44
	ld c, l                                          ; $5a9c: $4d

jr_001_5a9d:
	ld h, b                                          ; $5a9d: $60
	ld l, c                                          ; $5a9e: $69
	ld bc, $ff9c                                     ; $5a9f: $01 $9c $ff
	add hl, bc                                       ; $5aa2: $09
	jr nc, jr_001_5ab1                               ; $5aa3: $30 $0c

	ld b, h                                          ; $5aa5: $44
	ld c, l                                          ; $5aa6: $4d
	ld h, d                                          ; $5aa7: $62
	ld l, e                                          ; $5aa8: $6b
	ld de, $0100                                     ; $5aa9: $11 $00 $01
	add hl, de                                       ; $5aac: $19
	ld d, h                                          ; $5aad: $54
	ld e, l                                          ; $5aae: $5d
	jr jr_001_5a9d                                   ; $5aaf: $18 $ec

jr_001_5ab1:
	ld bc, $0064                                     ; $5ab1: $01 $64 $00
	add hl, bc                                       ; $5ab4: $09
	ld b, h                                          ; $5ab5: $44
	ld c, l                                          ; $5ab6: $4d

jr_001_5ab7:
	ld h, b                                          ; $5ab7: $60
	ld l, c                                          ; $5ab8: $69
	ld bc, $fff6                                     ; $5ab9: $01 $f6 $ff
	add hl, bc                                       ; $5abc: $09
	jr nc, jr_001_5acb                               ; $5abd: $30 $0c

	ld b, h                                          ; $5abf: $44
	ld c, l                                          ; $5ac0: $4d
	ld h, d                                          ; $5ac1: $62
	ld l, e                                          ; $5ac2: $6b
	ld de, $0010                                     ; $5ac3: $11 $10 $00
	add hl, de                                       ; $5ac6: $19
	ld d, h                                          ; $5ac7: $54
	ld e, l                                          ; $5ac8: $5d
	jr jr_001_5ab7                                   ; $5ac9: $18 $ec

jr_001_5acb:
	ld bc, $000a                                     ; $5acb: $01 $0a $00
	add hl, bc                                       ; $5ace: $09
	add hl, de                                       ; $5acf: $19
	ld b, h                                          ; $5ad0: $44
	ld c, l                                          ; $5ad1: $4d
	ret                                              ; $5ad2: $c9


Call_001_5ad3:
	ld a, b                                          ; $5ad3: $78
	cp d                                             ; $5ad4: $ba
	jr z, jr_001_5adb                                ; $5ad5: $28 $04

	jr c, jr_001_5ae4                                ; $5ad7: $38 $0b

	jr jr_001_5ae1                                   ; $5ad9: $18 $06

jr_001_5adb:
	ld a, c                                          ; $5adb: $79
	cp e                                             ; $5adc: $bb
	jr z, jr_001_5ae7                                ; $5add: $28 $08

	jr c, jr_001_5ae4                                ; $5adf: $38 $03

jr_001_5ae1:
	ld a, $02                                        ; $5ae1: $3e $02
	ret                                              ; $5ae3: $c9


jr_001_5ae4:
	ld a, $00                                        ; $5ae4: $3e $00
	ret                                              ; $5ae6: $c9


jr_001_5ae7:
	ld a, $01                                        ; $5ae7: $3e $01
	ret                                              ; $5ae9: $c9


Call_001_5aea:
	ld a, $e4                                        ; $5aea: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $5aec: $e0 $85
	ld a, $06                                        ; $5aee: $3e $06
	ldh [hDisp0_OBP0], a                                     ; $5af0: $e0 $86
	ld a, $06                                        ; $5af2: $3e $06
	ldh [hDisp0_OBP1], a                                     ; $5af4: $e0 $87
	ret                                              ; $5af6: $c9


Call_001_5af7:
	push hl                                          ; $5af7: $e5
	ld l, $01                                        ; $5af8: $2e $01
	ld [hl], $00                                     ; $5afa: $36 $00
	pop hl                                           ; $5afc: $e1
	jp $3bfb                                         ; $5afd: $c3 $fb $3b


	ld a, $01                                        ; $5b00: $3e $01
	ldh [rVBK], a                                    ; $5b02: $e0 $4f
	xor a                                            ; $5b04: $af
	ld hl, $9c00                                     ; $5b05: $21 $00 $9c
	call Call_001_5b2e                               ; $5b08: $cd $2e $5b
	xor a                                            ; $5b0b: $af
	ldh [rVBK], a                                    ; $5b0c: $e0 $4f
	ld a, $a3                                        ; $5b0e: $3e $a3
	ld hl, $9c00                                     ; $5b10: $21 $00 $9c
	call Call_001_5b2e                               ; $5b13: $cd $2e $5b

Call_001_5b16:
	ld a, $01                                        ; $5b16: $3e $01
	ldh [rVBK], a                                    ; $5b18: $e0 $4f
	ld a, $02                                        ; $5b1a: $3e $02
	ld hl, $9800                                     ; $5b1c: $21 $00 $98
	call Call_001_5b2e                               ; $5b1f: $cd $2e $5b
	xor a                                            ; $5b22: $af
	ldh [rVBK], a                                    ; $5b23: $e0 $4f
	ld a, $a3                                        ; $5b25: $3e $a3
	ld hl, $9800                                     ; $5b27: $21 $00 $98
	call Call_001_5b2e                               ; $5b2a: $cd $2e $5b
	ret                                              ; $5b2d: $c9


Call_001_5b2e:
	ld bc, $0400                                     ; $5b2e: $01 $00 $04
	call $cfeb                                       ; $5b31: $cd $eb $cf
	ret                                              ; $5b34: $c9


Func_01_5b35::
	ld a, $00                                        ; $5b35: $3e $00
	call Call_001_5a01                               ; $5b37: $cd $01 $5a
	ld a, $04                                        ; $5b3a: $3e $04
	call Call_001_5a01                               ; $5b3c: $cd $01 $5a
	ld a, $08                                        ; $5b3f: $3e $08
	call Call_001_5a01                               ; $5b41: $cd $01 $5a
	ld a, $0c                                        ; $5b44: $3e $0c
	call Call_001_5a01                               ; $5b46: $cd $01 $5a
	ld a, $10                                        ; $5b49: $3e $10
	call Call_001_5a01                               ; $5b4b: $cd $01 $5a
	ld a, $14                                        ; $5b4e: $3e $14
	call Call_001_5a01                               ; $5b50: $cd $01 $5a
	ld a, $18                                        ; $5b53: $3e $18
	call Call_001_5a01                               ; $5b55: $cd $01 $5a
	ld a, $1c                                        ; $5b58: $3e $1c
	call Call_001_5a01                               ; $5b5a: $cd $01 $5a
	ld a, $20                                        ; $5b5d: $3e $20
	call Call_001_5a01                               ; $5b5f: $cd $01 $5a
	call Call_001_59cd                               ; $5b62: $cd $cd $59
	ret                                              ; $5b65: $c9


Call_001_5b66:
	xor a                                            ; $5b66: $af
	ld [$cb08], a                                    ; $5b67: $ea $08 $cb
	ld [$cb09], a                                    ; $5b6a: $ea $09 $cb
	ld [$cc08], a                                    ; $5b6d: $ea $08 $cc
	ld [$cc09], a                                    ; $5b70: $ea $09 $cc
	ld [$d360], a                                    ; $5b73: $ea $60 $d3
	call Call_001_5c73                               ; $5b76: $cd $73 $5c
	ld a, [$c1e7]                                    ; $5b79: $fa $e7 $c1
	cp $00                                           ; $5b7c: $fe $00
	jr z, jr_001_5b84                                ; $5b7e: $28 $04

	cp $01                                           ; $5b80: $fe $01
	jr nz, jr_001_5b94                               ; $5b82: $20 $10

jr_001_5b84:
	ld a, [$c1e9]                                    ; $5b84: $fa $e9 $c1
	and $02                                          ; $5b87: $e6 $02
	jr nz, jr_001_5b94                               ; $5b89: $20 $09

	ld a, [$d040]                                    ; $5b8b: $fa $40 $d0
	cp $07                                           ; $5b8e: $fe $07
	jr z, jr_001_5b94                                ; $5b90: $28 $02

	jr jr_001_5b98                                   ; $5b92: $18 $04

jr_001_5b94:
	xor a                                            ; $5b94: $af
	ld [$c1f4], a                                    ; $5b95: $ea $f4 $c1

jr_001_5b98:
	ld a, [$d361]                                    ; $5b98: $fa $61 $d3
	ld l, a                                          ; $5b9b: $6f
	ld a, [$d362]                                    ; $5b9c: $fa $62 $d3
	ld h, a                                          ; $5b9f: $67
	ld a, [$c1f4]                                    ; $5ba0: $fa $f4 $c1
	sla a                                            ; $5ba3: $cb $27
	ld c, a                                          ; $5ba5: $4f
	ld b, $00                                        ; $5ba6: $06 $00
	add hl, bc                                       ; $5ba8: $09
	ld c, [hl]                                       ; $5ba9: $4e
	inc hl                                           ; $5baa: $23
	ld b, [hl]                                       ; $5bab: $46
	ld h, b                                          ; $5bac: $60
	ld l, c                                          ; $5bad: $69
	ld a, $f9                                        ; $5bae: $3e $f9
	ld [$c150], a                                    ; $5bb0: $ea $50 $c1
	ld a, [hl+]                                      ; $5bb3: $2a
	ld [$c151], a                                    ; $5bb4: $ea $51 $c1
	ld a, [hl+]                                      ; $5bb7: $2a
	ld [$c152], a                                    ; $5bb8: $ea $52 $c1
	ld a, [hl+]                                      ; $5bbb: $2a
	ld [$c153], a                                    ; $5bbc: $ea $53 $c1
	ld a, $00                                        ; $5bbf: $3e $00
	ld [$c154], a                                    ; $5bc1: $ea $54 $c1
	ld a, $80                                        ; $5bc4: $3e $80
	ld [$c155], a                                    ; $5bc6: $ea $55 $c1
	ld a, $ff                                        ; $5bc9: $3e $ff
	ld [$c156], a                                    ; $5bcb: $ea $56 $c1
	push hl                                          ; $5bce: $e5
	ld hl, $c150                                     ; $5bcf: $21 $50 $c1
	call $0aab                                       ; $5bd2: $cd $ab $0a
	pop hl                                           ; $5bd5: $e1
	ld a, [wInitialA]                                    ; $5bd6: $fa $00 $c1
	cp $11                                           ; $5bd9: $fe $11
	jr nz, jr_001_5be5                               ; $5bdb: $20 $08

	ld c, [hl]                                       ; $5bdd: $4e
	inc hl                                           ; $5bde: $23
	ld b, [hl]                                       ; $5bdf: $46
	call $18c4                                       ; $5be0: $cd $c4 $18
	jr jr_001_5bf1                                   ; $5be3: $18 $0c

jr_001_5be5:
	ld a, $e4                                        ; $5be5: $3e $e4
	ldh [hDisp0_OBP0], a                                     ; $5be7: $e0 $86
	ldh [rOBP0], a                                   ; $5be9: $e0 $48
	ld a, $e4                                        ; $5beb: $3e $e4
	ldh [hDisp0_OBP1], a                                     ; $5bed: $e0 $87
	ldh [rOBP1], a                                   ; $5bef: $e0 $49

jr_001_5bf1:
	ld a, [$d361]                                    ; $5bf1: $fa $61 $d3
	ld l, a                                          ; $5bf4: $6f
	ld a, [$d362]                                    ; $5bf5: $fa $62 $d3
	ld h, a                                          ; $5bf8: $67
	ld c, [hl]                                       ; $5bf9: $4e
	inc hl                                           ; $5bfa: $23
	ld b, [hl]                                       ; $5bfb: $46
	ld h, $00                                        ; $5bfc: $26 $00
	ld l, $05                                        ; $5bfe: $2e $05
	add hl, bc                                       ; $5c00: $09
	ld c, [hl]                                       ; $5c01: $4e
	inc hl                                           ; $5c02: $23
	ld b, [hl]                                       ; $5c03: $46
	ld a, c                                          ; $5c04: $79
	ld [$cb30], a                                    ; $5c05: $ea $30 $cb
	ld a, b                                          ; $5c08: $78
	ld [$cb31], a                                    ; $5c09: $ea $31 $cb
	ld hl, $cb00                                     ; $5c0c: $21 $00 $cb
	call Call_001_5af7                               ; $5c0f: $cd $f7 $5a
	ld a, $01                                        ; $5c12: $3e $01
	ld [$cb00], a                                    ; $5c14: $ea $00 $cb
	ld a, $40                                        ; $5c17: $3e $40
	ld [$cb07], a                                    ; $5c19: $ea $07 $cb
	ld a, $80                                        ; $5c1c: $3e $80
	ld [$cb05], a                                    ; $5c1e: $ea $05 $cb
	ld a, [$c1f4]                                    ; $5c21: $fa $f4 $c1
	and a                                            ; $5c24: $a7
	jr z, jr_001_5c60                                ; $5c25: $28 $39

	ld a, [$d361]                                    ; $5c27: $fa $61 $d3
	ld l, a                                          ; $5c2a: $6f
	ld a, [$d362]                                    ; $5c2b: $fa $62 $d3
	ld h, a                                          ; $5c2e: $67
	ld a, [$c1f4]                                    ; $5c2f: $fa $f4 $c1
	sla a                                            ; $5c32: $cb $27
	ld c, a                                          ; $5c34: $4f
	ld b, $00                                        ; $5c35: $06 $00
	add hl, bc                                       ; $5c37: $09
	ld c, [hl]                                       ; $5c38: $4e
	inc hl                                           ; $5c39: $23
	ld b, [hl]                                       ; $5c3a: $46
	ld h, $00                                        ; $5c3b: $26 $00
	ld l, $05                                        ; $5c3d: $2e $05
	add hl, bc                                       ; $5c3f: $09
	ld c, [hl]                                       ; $5c40: $4e
	inc hl                                           ; $5c41: $23
	ld b, [hl]                                       ; $5c42: $46
	ld a, c                                          ; $5c43: $79
	ld [$cc30], a                                    ; $5c44: $ea $30 $cc
	ld a, b                                          ; $5c47: $78
	ld [$cc31], a                                    ; $5c48: $ea $31 $cc
	ld hl, $cc00                                     ; $5c4b: $21 $00 $cc
	call Call_001_5af7                               ; $5c4e: $cd $f7 $5a
	ld a, $02                                        ; $5c51: $3e $02
	ld [$cc00], a                                    ; $5c53: $ea $00 $cc
	ld a, $40                                        ; $5c56: $3e $40
	ld [$cc07], a                                    ; $5c58: $ea $07 $cc
	ld a, $80                                        ; $5c5b: $3e $80
	ld [$cc05], a                                    ; $5c5d: $ea $05 $cc

jr_001_5c60:
	xor a                                            ; $5c60: $af
	ld [$c1f6], a                                    ; $5c61: $ea $f6 $c1
	ld [$c1f7], a                                    ; $5c64: $ea $f7 $c1
	ld [$d365], a                                    ; $5c67: $ea $65 $d3
	call Call_001_5ca9                               ; $5c6a: $cd $a9 $5c
	call Call_001_5849                               ; $5c6d: $cd $49 $58
	jp Jump_001_58f8                                 ; $5c70: $c3 $f8 $58


Call_001_5c73:
	ld a, [$c1e7]                                    ; $5c73: $fa $e7 $c1
	sla a                                            ; $5c76: $cb $27
	ld c, a                                          ; $5c78: $4f
	ld b, $00                                        ; $5c79: $06 $00
	ld hl, $4bef                                     ; $5c7b: $21 $ef $4b
	add hl, bc                                       ; $5c7e: $09
	ld c, [hl]                                       ; $5c7f: $4e
	inc hl                                           ; $5c80: $23
	ld b, [hl]                                       ; $5c81: $46
	ld h, b                                          ; $5c82: $60
	ld l, c                                          ; $5c83: $69
	ld a, [$c1e9]                                    ; $5c84: $fa $e9 $c1
	sla a                                            ; $5c87: $cb $27
	ld c, a                                          ; $5c89: $4f
	ld b, $00                                        ; $5c8a: $06 $00
	add hl, bc                                       ; $5c8c: $09
	ld c, [hl]                                       ; $5c8d: $4e
	inc hl                                           ; $5c8e: $23
	ld b, [hl]                                       ; $5c8f: $46
	ld h, b                                          ; $5c90: $60
	ld l, c                                          ; $5c91: $69
	ld a, [$c1e8]                                    ; $5c92: $fa $e8 $c1
	sla a                                            ; $5c95: $cb $27
	ld c, a                                          ; $5c97: $4f
	ld b, $00                                        ; $5c98: $06 $00
	add hl, bc                                       ; $5c9a: $09
	ld c, [hl]                                       ; $5c9b: $4e
	inc hl                                           ; $5c9c: $23
	ld b, [hl]                                       ; $5c9d: $46
	ld h, b                                          ; $5c9e: $60
	ld l, c                                          ; $5c9f: $69
	ld a, l                                          ; $5ca0: $7d
	ld [$d361], a                                    ; $5ca1: $ea $61 $d3
	ld a, h                                          ; $5ca4: $7c
	ld [$d362], a                                    ; $5ca5: $ea $62 $d3
	ret                                              ; $5ca8: $c9


Call_001_5ca9:
	ld a, [$c1e7]                                    ; $5ca9: $fa $e7 $c1
	ld [$c1fc], a                                    ; $5cac: $ea $fc $c1
	ld a, [$c1e8]                                    ; $5caf: $fa $e8 $c1
	ld [$c1fd], a                                    ; $5cb2: $ea $fd $c1
	ld a, [$c1e9]                                    ; $5cb5: $fa $e9 $c1
	ld [$c1fe], a                                    ; $5cb8: $ea $fe $c1
	ld a, [$c1e6]                                    ; $5cbb: $fa $e6 $c1
	ld [$c1fb], a                                    ; $5cbe: $ea $fb $c1
	ld a, [$c1f4]                                    ; $5cc1: $fa $f4 $c1
	ld [$c1f5], a                                    ; $5cc4: $ea $f5 $c1
	ret                                              ; $5cc7: $c9


Call_001_5cc8:
	ld a, [$d360]                                    ; $5cc8: $fa $60 $d3
	call wJumpTable                                       ; $5ccb: $cd $80 $cf
	jp nc, $df5c                                     ; $5cce: $d2 $5c $df

	ld e, h                                          ; $5cd1: $5c
	call Call_001_5010                               ; $5cd2: $cd $10 $50
	ld a, [$d395]                                    ; $5cd5: $fa $95 $d3
	and a                                            ; $5cd8: $a7
	ret z                                            ; $5cd9: $c8

	ld hl, $d360                                     ; $5cda: $21 $60 $d3
	inc [hl]                                         ; $5cdd: $34
	ret                                              ; $5cde: $c9


	call Call_001_5d12                               ; $5cdf: $cd $12 $5d
	ld a, [$c1f6]                                    ; $5ce2: $fa $f6 $c1
	ld b, a                                          ; $5ce5: $47
	ld a, [$c1f7]                                    ; $5ce6: $fa $f7 $c1
	or b                                             ; $5ce9: $b0
	and a                                            ; $5cea: $a7
	ret nz                                           ; $5ceb: $c0

	ld a, [$a1c6]                                    ; $5cec: $fa $c6 $a1
	and a                                            ; $5cef: $a7
	jr nz, jr_001_5cf8                               ; $5cf0: $20 $06

	ld hl, wButtonsHeld                                     ; $5cf2: $21 $23 $c1
	bit 5, [hl]                                      ; $5cf5: $cb $6e
	ret z                                            ; $5cf7: $c8

jr_001_5cf8:
	call Call_001_5d12                               ; $5cf8: $cd $12 $5d
	ld a, [$c1f6]                                    ; $5cfb: $fa $f6 $c1
	ld b, a                                          ; $5cfe: $47
	ld a, [$c1f7]                                    ; $5cff: $fa $f7 $c1
	or b                                             ; $5d02: $b0
	and a                                            ; $5d03: $a7
	ret nz                                           ; $5d04: $c0

	call Call_001_5d12                               ; $5d05: $cd $12 $5d
	ld a, [$c1f6]                                    ; $5d08: $fa $f6 $c1
	ld b, a                                          ; $5d0b: $47
	ld a, [$c1f7]                                    ; $5d0c: $fa $f7 $c1
	or b                                             ; $5d0f: $b0
	and a                                            ; $5d10: $a7
	ret nz                                           ; $5d11: $c0

Call_001_5d12:
	call Call_001_5d19                               ; $5d12: $cd $19 $5d
	call Call_001_59cd                               ; $5d15: $cd $cd $59
	ret                                              ; $5d18: $c9


Call_001_5d19:
	xor a                                            ; $5d19: $af
	ld [$c1f6], a                                    ; $5d1a: $ea $f6 $c1
	ld [$c1f7], a                                    ; $5d1d: $ea $f7 $c1
	call Call_001_5d3b                               ; $5d20: $cd $3b $5d
	call Call_001_5db7                               ; $5d23: $cd $b7 $5d
	ld a, [$c1f6]                                    ; $5d26: $fa $f6 $c1
	and a                                            ; $5d29: $a7
	ret z                                            ; $5d2a: $c8

	xor a                                            ; $5d2b: $af
	ld [$c1f6], a                                    ; $5d2c: $ea $f6 $c1
	ld a, [$d365]                                    ; $5d2f: $fa $65 $d3
	cp $01                                           ; $5d32: $fe $01
	ret z                                            ; $5d34: $c8

	ld a, $01                                        ; $5d35: $3e $01
	ld [$c1f6], a                                    ; $5d37: $ea $f6 $c1
	ret                                              ; $5d3a: $c9


Call_001_5d3b:
	ld hl, $cb00                                     ; $5d3b: $21 $00 $cb
	call $16d0                                       ; $5d3e: $cd $d0 $16
	ld hl, $cb00                                     ; $5d41: $21 $00 $cb
	call Call_001_5d73                               ; $5d44: $cd $73 $5d
	ld b, $00                                        ; $5d47: $06 $00
	ld a, [$c1f4]                                    ; $5d49: $fa $f4 $c1
	and a                                            ; $5d4c: $a7
	jr z, jr_001_5d5f                                ; $5d4d: $28 $10

	ld hl, $cc00                                     ; $5d4f: $21 $00 $cc
	call $16d0                                       ; $5d52: $cd $d0 $16
	ld hl, $cc00                                     ; $5d55: $21 $00 $cc
	call Call_001_5d73                               ; $5d58: $cd $73 $5d
	ld a, [$cc0c]                                    ; $5d5b: $fa $0c $cc
	ld b, a                                          ; $5d5e: $47

jr_001_5d5f:
	ld a, [$cb0c]                                    ; $5d5f: $fa $0c $cb
	or b                                             ; $5d62: $b0
	jr nz, jr_001_5d71                               ; $5d63: $20 $0c

	ld a, $01                                        ; $5d65: $3e $01
	ld [$c1f6], a                                    ; $5d67: $ea $f6 $c1
	xor a                                            ; $5d6a: $af
	ld [$cb00], a                                    ; $5d6b: $ea $00 $cb
	ld [$cc00], a                                    ; $5d6e: $ea $00 $cc

jr_001_5d71:
	nop                                              ; $5d71: $00
	ret                                              ; $5d72: $c9


Call_001_5d73:
jr_001_5d73:
	ld l, $0c                                        ; $5d73: $2e $0c
	ld a, [hl]                                       ; $5d75: $7e
	and a                                            ; $5d76: $a7
	ret nz                                           ; $5d77: $c0

	ld l, $08                                        ; $5d78: $2e $08
	ld a, [hl+]                                      ; $5d7a: $2a
	or [hl]                                          ; $5d7b: $b6
	ret z                                            ; $5d7c: $c8

	dec hl                                           ; $5d7d: $2b
	ld a, [hl]                                       ; $5d7e: $7e
	cp $01                                           ; $5d7f: $fe $01
	jr z, jr_001_5d88                                ; $5d81: $28 $05

	cp $02                                           ; $5d83: $fe $02
	jr z, jr_001_5da8                                ; $5d85: $28 $21

	ret                                              ; $5d87: $c9


jr_001_5d88:
	ld l, $30                                        ; $5d88: $2e $30
	ld a, [hl]                                       ; $5d8a: $7e
	ld c, a                                          ; $5d8b: $4f
	ld l, $31                                        ; $5d8c: $2e $31
	ld a, [hl]                                       ; $5d8e: $7e
	ld b, a                                          ; $5d8f: $47
	push hl                                          ; $5d90: $e5
	ld a, [$c1e6]                                    ; $5d91: $fa $e6 $c1
	ld l, a                                          ; $5d94: $6f
	ld h, $00                                        ; $5d95: $26 $00
	inc hl                                           ; $5d97: $23
	add hl, bc                                       ; $5d98: $09
	ld b, h                                          ; $5d99: $44
	ld c, l                                          ; $5d9a: $4d
	pop hl                                           ; $5d9b: $e1
	ld l, $00                                        ; $5d9c: $2e $00
	push hl                                          ; $5d9e: $e5
	call Call_001_5af7                               ; $5d9f: $cd $f7 $5a
	pop hl                                           ; $5da2: $e1
	call $16d0                                       ; $5da3: $cd $d0 $16
	jr jr_001_5d73                                   ; $5da6: $18 $cb

jr_001_5da8:
	ld l, $0c                                        ; $5da8: $2e $0c
	inc [hl]                                         ; $5daa: $34
	ld l, $00                                        ; $5dab: $2e $00
	call $16d0                                       ; $5dad: $cd $d0 $16
	ld a, $80                                        ; $5db0: $3e $80
	ld [$c1f7], a                                    ; $5db2: $ea $f7 $c1
	jr jr_001_5d73                                   ; $5db5: $18 $bc

Call_001_5db7:
	ld a, [$d365]                                    ; $5db7: $fa $65 $d3
	cp $01                                           ; $5dba: $fe $01
	ret nz                                           ; $5dbc: $c0

	xor a                                            ; $5dbd: $af
	ld [$d363], a                                    ; $5dbe: $ea $63 $d3

jr_001_5dc1:
	ld a, [$d363]                                    ; $5dc1: $fa $63 $d3
	ld c, a                                          ; $5dc4: $4f
	ld b, $00                                        ; $5dc5: $06 $00
	ld hl, $d397                                     ; $5dc7: $21 $97 $d3
	add hl, bc                                       ; $5dca: $09
	ld a, [hl]                                       ; $5dcb: $7e
	ld [$d364], a                                    ; $5dcc: $ea $64 $d3
	and $7f                                          ; $5dcf: $e6 $7f
	and a                                            ; $5dd1: $a7
	jr z, jr_001_5de6                                ; $5dd2: $28 $12

	dec [hl]                                         ; $5dd4: $35
	dec a                                            ; $5dd5: $3d
	cp $15                                           ; $5dd6: $fe $15
	jr nz, jr_001_5ddf                               ; $5dd8: $20 $05

	call Call_001_5e23                               ; $5dda: $cd $23 $5e
	jr jr_001_5de6                                   ; $5ddd: $18 $07

jr_001_5ddf:
	cp $01                                           ; $5ddf: $fe $01
	jr nz, jr_001_5de6                               ; $5de1: $20 $03

	call Call_001_5ead                               ; $5de3: $cd $ad $5e

jr_001_5de6:
	ld a, [$d363]                                    ; $5de6: $fa $63 $d3
	inc a                                            ; $5de9: $3c
	ld [$d363], a                                    ; $5dea: $ea $63 $d3
	cp $09                                           ; $5ded: $fe $09
	jr nz, jr_001_5dc1                               ; $5def: $20 $d0

	ld a, [$d397]                                    ; $5df1: $fa $97 $d3
	ld hl, $d398                                     ; $5df4: $21 $98 $d3
	or [hl]                                          ; $5df7: $b6
	ld hl, $d399                                     ; $5df8: $21 $99 $d3
	or [hl]                                          ; $5dfb: $b6
	ld hl, $d39a                                     ; $5dfc: $21 $9a $d3
	or [hl]                                          ; $5dff: $b6
	ld hl, $d39b                                     ; $5e00: $21 $9b $d3
	or [hl]                                          ; $5e03: $b6
	ld hl, $d39c                                     ; $5e04: $21 $9c $d3
	or [hl]                                          ; $5e07: $b6
	ld hl, $d39d                                     ; $5e08: $21 $9d $d3
	or [hl]                                          ; $5e0b: $b6
	ld hl, $d39e                                     ; $5e0c: $21 $9e $d3
	or [hl]                                          ; $5e0f: $b6
	ld hl, $d39f                                     ; $5e10: $21 $9f $d3
	or [hl]                                          ; $5e13: $b6
	and $7f                                          ; $5e14: $e6 $7f
	ret nz                                           ; $5e16: $c0

	ld a, $02                                        ; $5e17: $3e $02
	ld [$d365], a                                    ; $5e19: $ea $65 $d3
	xor a                                            ; $5e1c: $af
	ldh [$8c], a                                     ; $5e1d: $e0 $8c
	call Call_001_5f49                               ; $5e1f: $cd $49 $5f
	ret                                              ; $5e22: $c9


Call_001_5e23:
	ld a, [$d363]                                    ; $5e23: $fa $63 $d3
	sla a                                            ; $5e26: $cb $27
	ld c, a                                          ; $5e28: $4f
	ld b, $00                                        ; $5e29: $06 $00
	ld hl, $a2f1                                     ; $5e2b: $21 $f1 $a2
	add hl, bc                                       ; $5e2e: $09
	ld c, [hl]                                       ; $5e2f: $4e
	inc hl                                           ; $5e30: $23
	ld b, [hl]                                       ; $5e31: $46
	dec hl                                           ; $5e32: $2b
	ld a, [$d364]                                    ; $5e33: $fa $64 $d3
	and $80                                          ; $5e36: $e6 $80
	jr nz, jr_001_5e50                               ; $5e38: $20 $16

	ld de, $03e7                                     ; $5e3a: $11 $e7 $03
	call Call_001_5ad3                               ; $5e3d: $cd $d3 $5a
	and a                                            ; $5e40: $a7
	ret nz                                           ; $5e41: $c0

	push hl                                          ; $5e42: $e5
	ld a, $02                                        ; $5e43: $3e $02
	ld [$d366], a                                    ; $5e45: $ea $66 $d3
	call Call_001_5ebf                               ; $5e48: $cd $bf $5e
	ld hl, $4bcb                                     ; $5e4b: $21 $cb $4b
	jr jr_001_5e60                                   ; $5e4e: $18 $10

jr_001_5e50:
	ld a, b                                          ; $5e50: $78
	or c                                             ; $5e51: $b1
	and a                                            ; $5e52: $a7
	ret z                                            ; $5e53: $c8

	ld a, $03                                        ; $5e54: $3e $03
	ld [$d366], a                                    ; $5e56: $ea $66 $d3
	push hl                                          ; $5e59: $e5
	call Call_001_5ebf                               ; $5e5a: $cd $bf $5e
	ld hl, $4bce                                     ; $5e5d: $21 $ce $4b

jr_001_5e60:
	call Call_001_59aa                               ; $5e60: $cd $aa $59
	pop hl                                           ; $5e63: $e1
	push hl                                          ; $5e64: $e5
	ld e, [hl]                                       ; $5e65: $5e
	inc hl                                           ; $5e66: $23
	ld d, [hl]                                       ; $5e67: $56
	ld a, [$d363]                                    ; $5e68: $fa $63 $d3
	sla a                                            ; $5e6b: $cb $27
	ld c, a                                          ; $5e6d: $4f
	ld b, $00                                        ; $5e6e: $06 $00
	ld hl, $d08f                                     ; $5e70: $21 $8f $d0
	add hl, bc                                       ; $5e73: $09
	xor a                                            ; $5e74: $af
	ld c, [hl]                                       ; $5e75: $4e
	ld [hl], a                                       ; $5e76: $77
	inc hl                                           ; $5e77: $23
	ld b, [hl]                                       ; $5e78: $46
	ld [hl], a                                       ; $5e79: $77
	ld h, d                                          ; $5e7a: $62
	ld l, e                                          ; $5e7b: $6b
	add hl, bc                                       ; $5e7c: $09
	ld b, h                                          ; $5e7d: $44
	ld c, l                                          ; $5e7e: $4d
	pop hl                                           ; $5e7f: $e1
	ld [hl], c                                       ; $5e80: $71
	inc hl                                           ; $5e81: $23
	ld [hl], b                                       ; $5e82: $70
	ld de, $03e7                                     ; $5e83: $11 $e7 $03
	call Call_001_5ad3                               ; $5e86: $cd $d3 $5a
	and a                                            ; $5e89: $a7
	jr z, jr_001_5e9e                                ; $5e8a: $28 $12

	ld a, [$d364]                                    ; $5e8c: $fa $64 $d3
	and $80                                          ; $5e8f: $e6 $80
	jr nz, jr_001_5e98                               ; $5e91: $20 $05

	ld bc, $03e7                                     ; $5e93: $01 $e7 $03
	jr jr_001_5e9b                                   ; $5e96: $18 $03

jr_001_5e98:
	ld bc, $0000                                     ; $5e98: $01 $00 $00

jr_001_5e9b:
	ld [hl], b                                       ; $5e9b: $70
	dec hl                                           ; $5e9c: $2b
	ld [hl], c                                       ; $5e9d: $71

Call_001_5e9e:
jr_001_5e9e:
	ld a, [$d363]                                    ; $5e9e: $fa $63 $d3
	ld c, a                                          ; $5ea1: $4f
	ld b, $00                                        ; $5ea2: $06 $00
	ld hl, $4bd4                                     ; $5ea4: $21 $d4 $4b
	add hl, bc                                       ; $5ea7: $09
	ld a, [hl]                                       ; $5ea8: $7e
	call Call_001_5a01                               ; $5ea9: $cd $01 $5a
	ret                                              ; $5eac: $c9


Call_001_5ead:
	call Call_001_5ebf                               ; $5ead: $cd $bf $5e
	ld hl, $4bd1                                     ; $5eb0: $21 $d1 $4b
	call Call_001_59aa                               ; $5eb3: $cd $aa $59
	ld a, $00                                        ; $5eb6: $3e $00
	ld [$d366], a                                    ; $5eb8: $ea $66 $d3
	call Call_001_5e9e                               ; $5ebb: $cd $9e $5e
	ret                                              ; $5ebe: $c9


Call_001_5ebf:
	ld a, [$d363]                                    ; $5ebf: $fa $63 $d3
	sla a                                            ; $5ec2: $cb $27
	ld c, a                                          ; $5ec4: $4f
	ld b, $00                                        ; $5ec5: $06 $00
	ld hl, $4bdd                                     ; $5ec7: $21 $dd $4b
	add hl, bc                                       ; $5eca: $09
	ld a, [hl+]                                      ; $5ecb: $2a
	ld c, a                                          ; $5ecc: $4f
	ld a, [hl]                                       ; $5ecd: $7e
	ld b, a                                          ; $5ece: $47
	ld d, $00                                        ; $5ecf: $16 $00
	ld e, $20                                        ; $5ed1: $1e $20
	ret                                              ; $5ed3: $c9


	call Call_001_5f42                               ; $5ed4: $cd $42 $5f
	xor a                                            ; $5ed7: $af
	ld [$d397], a                                    ; $5ed8: $ea $97 $d3
	ld [$d398], a                                    ; $5edb: $ea $98 $d3
	ld [$d399], a                                    ; $5ede: $ea $99 $d3
	ld [$d39a], a                                    ; $5ee1: $ea $9a $d3
	ld [$d39b], a                                    ; $5ee4: $ea $9b $d3
	ld [$d39c], a                                    ; $5ee7: $ea $9c $d3
	ld [$d39d], a                                    ; $5eea: $ea $9d $d3
	ld [$d39e], a                                    ; $5eed: $ea $9e $d3
	ld [$d39f], a                                    ; $5ef0: $ea $9f $d3
	ld [$d363], a                                    ; $5ef3: $ea $63 $d3

jr_001_5ef6:
	ld a, [$d363]                                    ; $5ef6: $fa $63 $d3
	sla a                                            ; $5ef9: $cb $27
	ld c, a                                          ; $5efb: $4f
	ld b, $00                                        ; $5efc: $06 $00
	ld hl, $d08f                                     ; $5efe: $21 $8f $d0
	add hl, bc                                       ; $5f01: $09
	ld a, [hl+]                                      ; $5f02: $2a
	or [hl]                                          ; $5f03: $b6
	and a                                            ; $5f04: $a7
	jr z, jr_001_5f17                                ; $5f05: $28 $10

	ld a, [hl]                                       ; $5f07: $7e
	and $80                                          ; $5f08: $e6 $80
	jr nz, jr_001_5f11                               ; $5f0a: $20 $05

	call Call_001_5f2c                               ; $5f0c: $cd $2c $5f
	jr jr_001_5f17                                   ; $5f0f: $18 $06

jr_001_5f11:
	call Call_001_5f2c                               ; $5f11: $cd $2c $5f
	or $80                                           ; $5f14: $f6 $80
	ld [hl], a                                       ; $5f16: $77

jr_001_5f17:
	ld a, [$d363]                                    ; $5f17: $fa $63 $d3
	inc a                                            ; $5f1a: $3c
	ld [$d363], a                                    ; $5f1b: $ea $63 $d3
	cp $09                                           ; $5f1e: $fe $09
	jr nz, jr_001_5ef6                               ; $5f20: $20 $d4

	ld a, $01                                        ; $5f22: $3e $01
	ld [$d365], a                                    ; $5f24: $ea $65 $d3
	ld a, $01                                        ; $5f27: $3e $01
	ldh [$8c], a                                     ; $5f29: $e0 $8c
	ret                                              ; $5f2b: $c9


Call_001_5f2c:
	ld a, [$d363]                                    ; $5f2c: $fa $63 $d3
	ld c, a                                          ; $5f2f: $4f
	ld b, $00                                        ; $5f30: $06 $00
	ld hl, $d397                                     ; $5f32: $21 $97 $d3
	add hl, bc                                       ; $5f35: $09
	srl a                                            ; $5f36: $cb $3f
	srl a                                            ; $5f38: $cb $3f
	srl a                                            ; $5f3a: $cb $3f
	srl a                                            ; $5f3c: $cb $3f
	add $16                                          ; $5f3e: $c6 $16
	ld [hl], a                                       ; $5f40: $77
	ret                                              ; $5f41: $c9


Call_001_5f42:
	ld hl, $4bc4                                     ; $5f42: $21 $c4 $4b
	call $0aab                                       ; $5f45: $cd $ab $0a
	ret                                              ; $5f48: $c9


Call_001_5f49:
	ld hl, $4bbd                                     ; $5f49: $21 $bd $4b
	call $0aab                                       ; $5f4c: $cd $ab $0a
	ret                                              ; $5f4f: $c9


	call Call_000_1bce                                       ; $5f50: $cd $ce $1b
	ld a, [$d370]                                    ; $5f53: $fa $70 $d3
	call wJumpTable                                       ; $5f56: $cd $80 $cf
	ld a, [hl]                                       ; $5f59: $7e
	ld e, a                                          ; $5f5a: $5f
	ld c, b                                          ; $5f5b: $48
	ld h, b                                          ; $5f5c: $60
	ld l, l                                          ; $5f5d: $6d
	ld h, b                                          ; $5f5e: $60
	adc d                                            ; $5f5f: $8a
	ld h, b                                          ; $5f60: $60
	sbc e                                            ; $5f61: $9b
	ld h, b                                          ; $5f62: $60
	cp $60                                           ; $5f63: $fe $60
	rra                                              ; $5f65: $1f
	ld h, c                                          ; $5f66: $61
	and d                                            ; $5f67: $a2
	ld h, c                                          ; $5f68: $61
	ret nc                                           ; $5f69: $d0

	ld h, c                                          ; $5f6a: $61
	jp hl                                            ; $5f6b: $e9


	ld h, c                                          ; $5f6c: $61
	rst FarCall                                          ; $5f6d: $f7
	ld h, c                                          ; $5f6e: $61
	ld h, h                                          ; $5f6f: $64
	ld h, e                                          ; $5f70: $63
	sub e                                            ; $5f71: $93
	ld h, e                                          ; $5f72: $63
	db $e4                                           ; $5f73: $e4
	ld h, e                                          ; $5f74: $63
	ld a, [hl]                                       ; $5f75: $7e
	ld h, h                                          ; $5f76: $64
	jp z, $0264                                      ; $5f77: $ca $64 $02

	inc bc                                           ; $5f7a: $03
	inc b                                            ; $5f7b: $04
	dec b                                            ; $5f7c: $05
	ld b, $af                                        ; $5f7d: $06 $af
	ldh [$8a], a                                     ; $5f7f: $e0 $8a
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5f81: $cd $ef $2d
	call $2de4                                       ; $5f84: $cd $e4 $2d
	ld a, $ff                                        ; $5f87: $3e $ff
	ld [$a14f], a                                    ; $5f89: $ea $4f $a1
	ld [$a150], a                                    ; $5f8c: $ea $50 $a1
	ld [$a154], a                                    ; $5f8f: $ea $54 $a1
	ld [$a155], a                                    ; $5f92: $ea $55 $a1
	ld [$a156], a                                    ; $5f95: $ea $56 $a1
	ld hl, $a112                                     ; $5f98: $21 $12 $a1
	ld a, [hl+]                                      ; $5f9b: $2a
	or [hl]                                          ; $5f9c: $b6
	jr nz, jr_001_5fa5                               ; $5f9d: $20 $06

	ld a, [$a125]                                    ; $5f9f: $fa $25 $a1
	or a                                             ; $5fa2: $b7
	jr z, jr_001_5faa                                ; $5fa3: $28 $05

jr_001_5fa5:
	ld a, $02                                        ; $5fa5: $3e $02
	ld [$a14f], a                                    ; $5fa7: $ea $4f $a1

jr_001_5faa:
	ld a, [$a1c4]                                    ; $5faa: $fa $c4 $a1
	or a                                             ; $5fad: $b7
	jr z, jr_001_5fba                                ; $5fae: $28 $0a

	ld a, $03                                        ; $5fb0: $3e $03
	ld [$a150], a                                    ; $5fb2: $ea $50 $a1
	ld a, $04                                        ; $5fb5: $3e $04
	ld [$a154], a                                    ; $5fb7: $ea $54 $a1

jr_001_5fba:
	ld hl, $a1c1                                     ; $5fba: $21 $c1 $a1
	ld a, [hl+]                                      ; $5fbd: $2a
	ld b, [hl]                                       ; $5fbe: $46
	inc hl                                           ; $5fbf: $23
	or b                                             ; $5fc0: $b0
	or [hl]                                          ; $5fc1: $b6
	jr z, jr_001_5fc9                                ; $5fc2: $28 $05

	ld a, $05                                        ; $5fc4: $3e $05
	ld [$a155], a                                    ; $5fc6: $ea $55 $a1

jr_001_5fc9:
	ld hl, $a146                                     ; $5fc9: $21 $46 $a1
	ld a, [hl+]                                      ; $5fcc: $2a
	or [hl]                                          ; $5fcd: $b6
	ld a, $ff                                        ; $5fce: $3e $ff
	jr z, jr_001_5fd7                                ; $5fd0: $28 $05

	ld a, $06                                        ; $5fd2: $3e $06
	ld [$a156], a                                    ; $5fd4: $ea $56 $a1

jr_001_5fd7:
	ld a, $ff                                        ; $5fd7: $3e $ff
	ld [$a148], a                                    ; $5fd9: $ea $48 $a1
	ld [$a149], a                                    ; $5fdc: $ea $49 $a1
	ld [$a14d], a                                    ; $5fdf: $ea $4d $a1
	ld [$a14e], a                                    ; $5fe2: $ea $4e $a1
	ld [$a152], a                                    ; $5fe5: $ea $52 $a1
	ld [$a153], a                                    ; $5fe8: $ea $53 $a1
	ld [$a157], a                                    ; $5feb: $ea $57 $a1
	ld [$a158], a                                    ; $5fee: $ea $58 $a1
	ld [$a14c], a                                    ; $5ff1: $ea $4c $a1
	ld [$a151], a                                    ; $5ff4: $ea $51 $a1
	xor a                                            ; $5ff7: $af
	ld [$d371], a                                    ; $5ff8: $ea $71 $d3
	ld [$d372], a                                    ; $5ffb: $ea $72 $d3
	ld b, $00                                        ; $5ffe: $06 $00
	ld a, [$a14f]                                    ; $6000: $fa $4f $a1
	cp $ff                                           ; $6003: $fe $ff
	jr nz, jr_001_6010                               ; $6005: $20 $09

	ld a, [$a150]                                    ; $6007: $fa $50 $a1
	cp $ff                                           ; $600a: $fe $ff
	jr nz, jr_001_6010                               ; $600c: $20 $02

	ld b, $ff                                        ; $600e: $06 $ff

jr_001_6010:
	ld a, b                                          ; $6010: $78
	ld [$a14a], a                                    ; $6011: $ea $4a $a1
	ld b, $01                                        ; $6014: $06 $01
	ld a, [$a154]                                    ; $6016: $fa $54 $a1
	cp $ff                                           ; $6019: $fe $ff
	jr nz, jr_001_602d                               ; $601b: $20 $10

	ld a, [$a155]                                    ; $601d: $fa $55 $a1
	cp $ff                                           ; $6020: $fe $ff
	jr nz, jr_001_602d                               ; $6022: $20 $09

	ld a, [$a156]                                    ; $6024: $fa $56 $a1
	cp $ff                                           ; $6027: $fe $ff
	jr nz, jr_001_602d                               ; $6029: $20 $02

	ld b, $ff                                        ; $602b: $06 $ff

jr_001_602d:
	ld a, b                                          ; $602d: $78
	ld [$a14b], a                                    ; $602e: $ea $4b $a1
	ld a, $01                                        ; $6031: $3e $01
	ld [$d811], a                                    ; $6033: $ea $11 $d8
	ld a, $11                                        ; $6036: $3e $11
	ld [$c186], a                                    ; $6038: $ea $86 $c1
	ld a, $02                                        ; $603b: $3e $02
	ld [$d378], a                                    ; $603d: $ea $78 $d3
	ld a, $02                                        ; $6040: $3e $02
	ld [$d379], a                                    ; $6042: $ea $79 $d3
	jp Jump_001_6582                                 ; $6045: $c3 $82 $65


	ld bc, $00d4                                     ; $6048: $01 $d4 $00
	call $3a12                                       ; $604b: $cd $12 $3a
	call $397f                                       ; $604e: $cd $7f $39
	call $388c                                       ; $6051: $cd $8c $38
	ld a, $e4                                        ; $6054: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $6056: $e0 $85
	ld a, $e4                                        ; $6058: $3e $e4
	ldh [hDisp0_OBP0], a                                     ; $605a: $e0 $86
	ld a, $e4                                        ; $605c: $3e $e4
	ldh [hDisp0_OBP1], a                                     ; $605e: $e0 $87
	ld bc, $67d2                                     ; $6060: $01 $d2 $67
	call $18c0                                       ; $6063: $cd $c0 $18
	ld a, $e3                                        ; $6066: $3e $e3
	ldh [hDisp0_LCDC], a                                     ; $6068: $e0 $82
	call Call_001_6582                               ; $606a: $cd $82 $65
	ld a, $00                                        ; $606d: $3e $00
	ld [$d7f9], a                                    ; $606f: $ea $f9 $d7
	ld a, $03                                        ; $6072: $3e $03
	ld [$d7fa], a                                    ; $6074: $ea $fa $d7
	ld h, $03                                        ; $6077: $26 $03
	ld l, $02                                        ; $6079: $2e $02
	ld b, $0d                                        ; $607b: $06 $0d
	ld c, $07                                        ; $607d: $0e $07
	rst FarCall                                          ; $607f: $f7
	ld [hl-], a                                      ; $6080: $32
	ld d, b                                          ; $6081: $50
	ld [bc], a                                       ; $6082: $02
	ld a, $e3                                        ; $6083: $3e $e3
	ldh [$8d], a                                     ; $6085: $e0 $8d
	jp Jump_001_6582                                 ; $6087: $c3 $82 $65


	call $199f                                       ; $608a: $cd $9f $19
	ret nz                                           ; $608d: $c0

	xor a                                            ; $608e: $af
	ld [$d374], a                                    ; $608f: $ea $74 $d3
	ld bc, $6268                                     ; $6092: $01 $68 $62
	call $18aa                                       ; $6095: $cd $aa $18
	jp Jump_001_6582                                 ; $6098: $c3 $82 $65


Jump_001_609b:
	ld a, $ff                                        ; $609b: $3e $ff
	ld [$d377], a                                    ; $609d: $ea $77 $d3
	ld a, [$d378]                                    ; $60a0: $fa $78 $d3
	ld c, a                                          ; $60a3: $4f
	ld b, $00                                        ; $60a4: $06 $00
	ld hl, $a14a                                     ; $60a6: $21 $4a $a1
	add hl, bc                                       ; $60a9: $09
	ld a, [hl-]                                      ; $60aa: $3a
	push hl                                          ; $60ab: $e5
	cp $ff                                           ; $60ac: $fe $ff
	jr z, jr_001_60b8                                ; $60ae: $28 $08

	call Call_001_65a6                               ; $60b0: $cd $a6 $65
	ld b, $02                                        ; $60b3: $06 $02
	call Call_001_6606                               ; $60b5: $cd $06 $66

jr_001_60b8:
	pop hl                                           ; $60b8: $e1
	ld a, [hl-]                                      ; $60b9: $3a
	push hl                                          ; $60ba: $e5
	cp $ff                                           ; $60bb: $fe $ff
	jr z, jr_001_60c7                                ; $60bd: $28 $08

	call Call_001_65a6                               ; $60bf: $cd $a6 $65
	ld b, $01                                        ; $60c2: $06 $01
	call Call_001_6606                               ; $60c4: $cd $06 $66

jr_001_60c7:
	pop hl                                           ; $60c7: $e1
	ld a, [hl]                                       ; $60c8: $7e
	cp $ff                                           ; $60c9: $fe $ff
	jr z, jr_001_60d5                                ; $60cb: $28 $08

	call Call_001_65a6                               ; $60cd: $cd $a6 $65
	ld b, $00                                        ; $60d0: $06 $00
	call Call_001_6606                               ; $60d2: $cd $06 $66

jr_001_60d5:
	ld a, [$d377]                                    ; $60d5: $fa $77 $d3
	cp $ff                                           ; $60d8: $fe $ff
	jr z, jr_001_60ed                                ; $60da: $28 $11

	rst FarCall                                          ; $60dc: $f7
	nop                                              ; $60dd: $00
	ld c, a                                          ; $60de: $4f
	dec b                                            ; $60df: $05
	ld hl, $c207                                     ; $60e0: $21 $07 $c2
	ld [hl], $a0                                     ; $60e3: $36 $a0
	ld hl, $c205                                     ; $60e5: $21 $05 $c2
	ld [hl], $a0                                     ; $60e8: $36 $a0
	jp Jump_001_6582                                 ; $60ea: $c3 $82 $65


jr_001_60ed:
	call $2de4                                       ; $60ed: $cd $e4 $2d
	ld b, $1e                                        ; $60f0: $06 $1e
	ld hl, $9e46                                     ; $60f2: $21 $46 $9e
	call Call_001_65c9                               ; $60f5: $cd $c9 $65
	call Call_001_6582                               ; $60f8: $cd $82 $65
	jp Jump_001_6582                                 ; $60fb: $c3 $82 $65


Jump_001_60fe:
	ld hl, $d374                                     ; $60fe: $21 $74 $d3
	ld a, [hl]                                       ; $6101: $7e
	or a                                             ; $6102: $b7
	jr z, jr_001_6116                                ; $6103: $28 $11

	ld a, [wInitialA]                                    ; $6105: $fa $00 $c1
	cp $11                                           ; $6108: $fe $11
	jr nz, jr_001_6114                               ; $610a: $20 $08

	ldh a, [$9f]                                     ; $610c: $f0 $9f
	cp $01                                           ; $610e: $fe $01
	jr nz, jr_001_6114                               ; $6110: $20 $02

	dec [hl]                                         ; $6112: $35
	ret                                              ; $6113: $c9


jr_001_6114:
	ld [hl], $00                                     ; $6114: $36 $00

jr_001_6116:
	call Call_001_65ed                               ; $6116: $cd $ed $65
	call Call_001_65b6                               ; $6119: $cd $b6 $65
	jp Jump_001_6582                                 ; $611c: $c3 $82 $65


	call Call_001_6644                               ; $611f: $cd $44 $66
	ld hl, $d37a                                     ; $6122: $21 $7a $d3
	bit 5, [hl]                                      ; $6125: $cb $6e
	jr nz, jr_001_613c                               ; $6127: $20 $13

	ld a, [$d377]                                    ; $6129: $fa $77 $d3
	cp $ff                                           ; $612c: $fe $ff
	ret z                                            ; $612e: $c8

	bit 4, [hl]                                      ; $612f: $cb $66
	jr nz, jr_001_6141                               ; $6131: $20 $0e

	bit 2, [hl]                                      ; $6133: $cb $56
	jr nz, jr_001_615b                               ; $6135: $20 $24

	bit 3, [hl]                                      ; $6137: $cb $5e
	jr nz, jr_001_6188                               ; $6139: $20 $4d

	ret                                              ; $613b: $c9


jr_001_613c:
	ld hl, $5000                                     ; $613c: $21 $00 $50
	jr jr_001_6149                                   ; $613f: $18 $08

jr_001_6141:
	ld a, $32                                        ; $6141: $3e $32
	call $1e2e                                       ; $6143: $cd $2e $1e
	ld hl, $5008                                     ; $6146: $21 $08 $50

jr_001_6149:
	ld a, [$d377]                                    ; $6149: $fa $77 $d3
	inc a                                            ; $614c: $3c
	ld b, $00                                        ; $614d: $06 $00
	ld c, a                                          ; $614f: $4f
	add hl, bc                                       ; $6150: $09
	ld a, [hl]                                       ; $6151: $7e
	call Call_001_658e                               ; $6152: $cd $8e $65
	ld a, $80                                        ; $6155: $3e $80
	ld [$c201], a                                    ; $6157: $ea $01 $c2
	ret                                              ; $615a: $c9


jr_001_615b:
	ld a, [$d377]                                    ; $615b: $fa $77 $d3
	ld b, a                                          ; $615e: $47
	ld a, [$d379]                                    ; $615f: $fa $79 $d3
	add b                                            ; $6162: $80
	ld c, a                                          ; $6163: $4f
	ld b, $00                                        ; $6164: $06 $00
	ld hl, $a147                                     ; $6166: $21 $47 $a1
	add hl, bc                                       ; $6169: $09
	ld a, [hl-]                                      ; $616a: $3a
	cp $ff                                           ; $616b: $fe $ff
	jr nz, jr_001_6173                               ; $616d: $20 $04

	ld a, [hl]                                       ; $616f: $7e
	cp $ff                                           ; $6170: $fe $ff
	ret z                                            ; $6172: $c8

jr_001_6173:
	push af                                          ; $6173: $f5
	call Call_001_65a3                               ; $6174: $cd $a3 $65
	pop af                                           ; $6177: $f1
	ld [$d377], a                                    ; $6178: $ea $77 $d3
	ld a, $05                                        ; $617b: $3e $05
	call Call_001_658e                               ; $617d: $cd $8e $65
	ld a, $67                                        ; $6180: $3e $67
	call $1e2e                                       ; $6182: $cd $2e $1e
	jp Jump_001_60fe                                 ; $6185: $c3 $fe $60


jr_001_6188:
	ld a, [$d377]                                    ; $6188: $fa $77 $d3
	ld b, a                                          ; $618b: $47
	ld a, [$d379]                                    ; $618c: $fa $79 $d3
	add b                                            ; $618f: $80
	ld c, a                                          ; $6190: $4f
	ld b, $00                                        ; $6191: $06 $00
	ld hl, $a149                                     ; $6193: $21 $49 $a1
	add hl, bc                                       ; $6196: $09
	ld a, [hl+]                                      ; $6197: $2a
	cp $ff                                           ; $6198: $fe $ff
	jr nz, jr_001_6173                               ; $619a: $20 $d7

	ld a, [hl]                                       ; $619c: $7e
	cp $ff                                           ; $619d: $fe $ff
	jr nz, jr_001_6173                               ; $619f: $20 $d2

	ret                                              ; $61a1: $c9


	ld a, [$d371]                                    ; $61a2: $fa $71 $d3
	call wJumpTable                                       ; $61a5: $cd $80 $cf
	xor h                                            ; $61a8: $ac
	ld h, c                                          ; $61a9: $61
	cp b                                             ; $61aa: $b8
	ld h, c                                          ; $61ab: $61
	ld bc, $67c8                                     ; $61ac: $01 $c8 $67
	call $188c                                       ; $61af: $cd $8c $18
	call $2de4                                       ; $61b2: $cd $e4 $2d
	call Call_001_6599                               ; $61b5: $cd $99 $65
	call $1983                                       ; $61b8: $cd $83 $19
	ret nz                                           ; $61bb: $c0

	ld a, $00                                        ; $61bc: $3e $00
	call $1e2e                                       ; $61be: $cd $2e $1e
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $61c1: $cd $ef $2d
	call $0963                                       ; $61c4: $cd $63 $09
	xor a                                            ; $61c7: $af
	call $068e                                       ; $61c8: $cd $8e $06
	ld a, $05                                        ; $61cb: $3e $05
	jp $291f                                         ; $61cd: $c3 $1f $29


Jump_001_61d0:
	call $2de4                                       ; $61d0: $cd $e4 $2d
	call Call_001_6616                               ; $61d3: $cd $16 $66
	ld b, $1e                                        ; $61d6: $06 $1e
	ld hl, $9ec0                                     ; $61d8: $21 $c0 $9e
	call Call_001_65c9                               ; $61db: $cd $c9 $65
	xor a                                            ; $61de: $af
	ld [$d374], a                                    ; $61df: $ea $74 $d3
	ld a, $02                                        ; $61e2: $3e $02
	ld b, $02                                        ; $61e4: $06 $02
	jp Jump_001_6355                                 ; $61e6: $c3 $55 $63


	call Call_001_6616                               ; $61e9: $cd $16 $66
	xor a                                            ; $61ec: $af
	ld [$d374], a                                    ; $61ed: $ea $74 $d3
	ld a, $07                                        ; $61f0: $3e $07
	ld b, $05                                        ; $61f2: $06 $05
	jp Jump_001_6355                                 ; $61f4: $c3 $55 $63


	ld a, [$d371]                                    ; $61f7: $fa $71 $d3
	call wJumpTable                                       ; $61fa: $cd $80 $cf
	rlca                                             ; $61fd: $07
	ld h, d                                          ; $61fe: $62
	ld [hl-], a                                      ; $61ff: $32
	ld h, d                                          ; $6200: $62
	xor h                                            ; $6201: $ac
	ld h, d                                          ; $6202: $62
	db $db                                           ; $6203: $db
	ld h, d                                          ; $6204: $62
	ld a, [bc]                                       ; $6205: $0a
	ld h, e                                          ; $6206: $63
	xor a                                            ; $6207: $af
	ld [$c139], a                                    ; $6208: $ea $39 $c1
	call $2d8f                                       ; $620b: $cd $8f $2d
	ld a, [$c139]                                    ; $620e: $fa $39 $c1
	and a                                            ; $6211: $a7
	jr nz, jr_001_6220                               ; $6212: $20 $0c

	ld b, $1e                                        ; $6214: $06 $1e
	ld hl, $9edf                                     ; $6216: $21 $df $9e
	call Call_001_65c9                               ; $6219: $cd $c9 $65
	call Call_001_6599                               ; $621c: $cd $99 $65
	ret                                              ; $621f: $c9


jr_001_6220:
	ld b, $1e                                        ; $6220: $06 $1e
	ld hl, $9e80                                     ; $6222: $21 $80 $9e
	call Call_001_65c9                               ; $6225: $cd $c9 $65
	xor a                                            ; $6228: $af
	ld [$c201], a                                    ; $6229: $ea $01 $c2
	ld a, $06                                        ; $622c: $3e $06
	call Call_001_658e                               ; $622e: $cd $8e $65
	ret                                              ; $6231: $c9


	ld hl, wButtonsPressed                                     ; $6232: $21 $25 $c1
	bit 5, [hl]                                      ; $6235: $cb $6e
	jr nz, jr_001_625e                               ; $6237: $20 $25

	xor a                                            ; $6239: $af
	ld [$c139], a                                    ; $623a: $ea $39 $c1
	call $2d84                                       ; $623d: $cd $84 $2d
	ld a, [$c139]                                    ; $6240: $fa $39 $c1
	and a                                            ; $6243: $a7
	ret z                                            ; $6244: $c8

	cp $02                                           ; $6245: $fe $02
	jr z, jr_001_6273                                ; $6247: $28 $2a

	call $2de4                                       ; $6249: $cd $e4 $2d
	ld b, $1e                                        ; $624c: $06 $1e
	ld hl, $9f43                                     ; $624e: $21 $43 $9f
	call Call_001_65c9                               ; $6251: $cd $c9 $65
	xor a                                            ; $6254: $af
	ld [$c201], a                                    ; $6255: $ea $01 $c2
	ld a, $06                                        ; $6258: $3e $06
	call Call_001_658e                               ; $625a: $cd $8e $65
	ret                                              ; $625d: $c9


jr_001_625e:
	call $2de4                                       ; $625e: $cd $e4 $2d
	ld b, $1e                                        ; $6261: $06 $1e
	ld hl, $9f95                                     ; $6263: $21 $95 $9f
	call Call_001_65c9                               ; $6266: $cd $c9 $65
	xor a                                            ; $6269: $af
	ld [$c201], a                                    ; $626a: $ea $01 $c2
	ld a, $06                                        ; $626d: $3e $06
	call Call_001_658e                               ; $626f: $cd $8e $65
	ret                                              ; $6272: $c9


jr_001_6273:
	xor a                                            ; $6273: $af
	ld [$d37b], a                                    ; $6274: $ea $7b $d3
	ld a, [$a154]                                    ; $6277: $fa $54 $a1
	cp $ff                                           ; $627a: $fe $ff
	jr z, jr_001_6283                                ; $627c: $28 $05

	ld a, $01                                        ; $627e: $3e $01
	ld [$d37b], a                                    ; $6280: $ea $7b $d3

jr_001_6283:
	ld a, [$a155]                                    ; $6283: $fa $55 $a1
	cp $ff                                           ; $6286: $fe $ff
	jr z, jr_001_6293                                ; $6288: $28 $09

	ld b, $02                                        ; $628a: $06 $02
	ld a, [$d37b]                                    ; $628c: $fa $7b $d3
	or b                                             ; $628f: $b0
	ld [$d37b], a                                    ; $6290: $ea $7b $d3

jr_001_6293:
	ld a, [$a156]                                    ; $6293: $fa $56 $a1
	cp $ff                                           ; $6296: $fe $ff
	jr z, jr_001_62a3                                ; $6298: $28 $09

	ld b, $04                                        ; $629a: $06 $04
	ld a, [$d37b]                                    ; $629c: $fa $7b $d3
	or b                                             ; $629f: $b0
	ld [$d37b], a                                    ; $62a0: $ea $7b $d3

jr_001_62a3:
	call Call_001_6599                               ; $62a3: $cd $99 $65
	ld a, $04                                        ; $62a6: $3e $04
	ld [$d374], a                                    ; $62a8: $ea $74 $d3
	ret                                              ; $62ab: $c9


	ld hl, $d374                                     ; $62ac: $21 $74 $d3
	ld a, [hl]                                       ; $62af: $7e
	or a                                             ; $62b0: $b7
	jr z, jr_001_62b5                                ; $62b1: $28 $02

	dec [hl]                                         ; $62b3: $35
	ret                                              ; $62b4: $c9


jr_001_62b5:
	ldh a, [$9f]                                     ; $62b5: $f0 $9f
	cp $01                                           ; $62b7: $fe $01
	jr nz, jr_001_62cc                               ; $62b9: $20 $11

	ld a, [wFrameCounter]                                    ; $62bb: $fa $1f $c1
	and $07                                          ; $62be: $e6 $07
	ret nz                                           ; $62c0: $c0

	ld a, [$d37b]                                    ; $62c1: $fa $7b $d3
	inc a                                            ; $62c4: $3c
	call $2d9f                                       ; $62c5: $cd $9f $2d
	call Call_001_6599                               ; $62c8: $cd $99 $65
	ret                                              ; $62cb: $c9


jr_001_62cc:
	ld a, [$c138]                                    ; $62cc: $fa $38 $c1
	and a                                            ; $62cf: $a7
	ret z                                            ; $62d0: $c8

	ldh a, [$9d]                                     ; $62d1: $f0 $9d
	dec a                                            ; $62d3: $3d
	ld [$d37c], a                                    ; $62d4: $ea $7c $d3
	call Call_001_6599                               ; $62d7: $cd $99 $65
	ret                                              ; $62da: $c9


	ldh a, [$9f]                                     ; $62db: $f0 $9f
	cp $02                                           ; $62dd: $fe $02
	jr z, jr_001_62ff                                ; $62df: $28 $1e

	ld a, [$c138]                                    ; $62e1: $fa $38 $c1
	and a                                            ; $62e4: $a7
	jr nz, jr_001_62f5                               ; $62e5: $20 $0e

	ld a, [wFrameCounter]                                    ; $62e7: $fa $1f $c1
	and $07                                          ; $62ea: $e6 $07
	ret nz                                           ; $62ec: $c0

	ld a, [$d37b]                                    ; $62ed: $fa $7b $d3
	inc a                                            ; $62f0: $3c
	call $2d9f                                       ; $62f1: $cd $9f $2d
	ret                                              ; $62f4: $c9


jr_001_62f5:
	ldh a, [$9d]                                     ; $62f5: $f0 $9d
	dec a                                            ; $62f7: $3d
	ld [$d37c], a                                    ; $62f8: $ea $7c $d3
	call Call_001_6599                               ; $62fb: $cd $99 $65
	ret                                              ; $62fe: $c9


jr_001_62ff:
	ld a, [$d37b]                                    ; $62ff: $fa $7b $d3
	inc a                                            ; $6302: $3c
	call $2d9f                                       ; $6303: $cd $9f $2d
	call Call_001_6599                               ; $6306: $cd $99 $65
	ret                                              ; $6309: $c9


	ld a, $ff                                        ; $630a: $3e $ff
	ld [$a154], a                                    ; $630c: $ea $54 $a1
	ld [$a155], a                                    ; $630f: $ea $55 $a1
	ld [$a156], a                                    ; $6312: $ea $56 $a1
	ld a, [$d37b]                                    ; $6315: $fa $7b $d3
	ld b, a                                          ; $6318: $47
	ld a, [$d37c]                                    ; $6319: $fa $7c $d3
	and b                                            ; $631c: $a0
	ld [$d37b], a                                    ; $631d: $ea $7b $d3
	and $01                                          ; $6320: $e6 $01
	jr z, jr_001_6329                                ; $6322: $28 $05

	ld a, $04                                        ; $6324: $3e $04
	ld [$a154], a                                    ; $6326: $ea $54 $a1

jr_001_6329:
	ld a, [$d37b]                                    ; $6329: $fa $7b $d3
	and $02                                          ; $632c: $e6 $02
	jr z, jr_001_6335                                ; $632e: $28 $05

	ld a, $05                                        ; $6330: $3e $05
	ld [$a155], a                                    ; $6332: $ea $55 $a1

jr_001_6335:
	ld a, [$d37b]                                    ; $6335: $fa $7b $d3
	and $04                                          ; $6338: $e6 $04
	jr z, jr_001_6341                                ; $633a: $28 $05

	ld a, $06                                        ; $633c: $3e $06
	ld [$a156], a                                    ; $633e: $ea $56 $a1

jr_001_6341:
	call Call_001_6616                               ; $6341: $cd $16 $66
	ld b, $1e                                        ; $6344: $06 $1e
	ld hl, $9ec0                                     ; $6346: $21 $c0 $9e
	call Call_001_65c9                               ; $6349: $cd $c9 $65
	ld a, $3c                                        ; $634c: $3e $3c
	ld [$d374], a                                    ; $634e: $ea $74 $d3
	ld a, $0c                                        ; $6351: $3e $0c
	ld b, $08                                        ; $6353: $06 $08

Jump_001_6355:
	ld [$d378], a                                    ; $6355: $ea $78 $d3
	ld a, b                                          ; $6358: $78
	ld [$d379], a                                    ; $6359: $ea $79 $d3
	ld a, $04                                        ; $635c: $3e $04
	call Call_001_658e                               ; $635e: $cd $8e $65
	jp Jump_001_609b                                 ; $6361: $c3 $9b $60


	ld a, [$d371]                                    ; $6364: $fa $71 $d3
	call wJumpTable                                       ; $6367: $cd $80 $cf
	ld l, [hl]                                       ; $636a: $6e
	ld h, e                                          ; $636b: $63
	ld [hl], l                                       ; $636c: $75
	ld h, e                                          ; $636d: $63
	xor a                                            ; $636e: $af
	ld [$d33c], a                                    ; $636f: $ea $3c $d3
	call Call_001_6599                               ; $6372: $cd $99 $65
	rst FarCall                                          ; $6375: $f7
	db $ed                                           ; $6376: $ed
	ld [hl], b                                       ; $6377: $70
	ld bc, $3cfa                                     ; $6378: $01 $fa $3c
	db $d3                                           ; $637b: $d3
	or a                                             ; $637c: $b7
	ret nz                                           ; $637d: $c0

	ld a, [wMenuOptionSelected]                                    ; $637e: $fa $5f $c1
	cp $ff                                           ; $6381: $fe $ff
	jr z, jr_001_6389                                ; $6383: $28 $04

	ld a, $07                                        ; $6385: $3e $07
	jr jr_001_638f                                   ; $6387: $18 $06

jr_001_6389:
	ld d, $ff                                        ; $6389: $16 $ff
	call $1a69                                       ; $638b: $cd $69 $1a
	xor a                                            ; $638e: $af

jr_001_638f:
	call Call_001_658e                               ; $638f: $cd $8e $65
	ret                                              ; $6392: $c9


	ld a, [$d371]                                    ; $6393: $fa $71 $d3
	call wJumpTable                                       ; $6396: $cd $80 $cf
	sbc a                                            ; $6399: $9f
	ld h, e                                          ; $639a: $63
	cp d                                             ; $639b: $ba
	ld h, e                                          ; $639c: $63
	sub $63                                          ; $639d: $d6 $63
	xor a                                            ; $639f: $af
	ld [$c171], a                                    ; $63a0: $ea $71 $c1
	ld [$c146], a                                    ; $63a3: $ea $46 $c1
	ld [$c151], a                                    ; $63a6: $ea $51 $c1
	ld [$c152], a                                    ; $63a9: $ea $52 $c1
	ld bc, $67fc                                     ; $63ac: $01 $fc $67
	call $188c                                       ; $63af: $cd $8c $18
	ld a, $4b                                        ; $63b2: $3e $4b
	ld [$d374], a                                    ; $63b4: $ea $74 $d3
	call Call_001_6599                               ; $63b7: $cd $99 $65
	ld hl, $d374                                     ; $63ba: $21 $74 $d3
	ld a, [hl]                                       ; $63bd: $7e
	or a                                             ; $63be: $b7
	jr z, jr_001_63c3                                ; $63bf: $28 $02

	dec [hl]                                         ; $63c1: $35
	ret                                              ; $63c2: $c9


jr_001_63c3:
	call $1983                                       ; $63c3: $cd $83 $19
	ret nz                                           ; $63c6: $c0

	ld hl, $6b7b                                     ; $63c7: $21 $7b $6b
	rst FarCall                                          ; $63ca: $f7
	ld c, c                                          ; $63cb: $49
	ld l, c                                          ; $63cc: $69
	dec b                                            ; $63cd: $05
	call Call_001_6599                               ; $63ce: $cd $99 $65
	xor a                                            ; $63d1: $af
	call $068e                                       ; $63d2: $cd $8e $06
	ret                                              ; $63d5: $c9


	call $3dfb                                       ; $63d6: $cd $fb $3d
	ld a, [$c151]                                    ; $63d9: $fa $51 $c1
	and a                                            ; $63dc: $a7
	ret z                                            ; $63dd: $c8

	ld a, $07                                        ; $63de: $3e $07
	call Call_001_658e                               ; $63e0: $cd $8e $65
	ret                                              ; $63e3: $c9


	ld a, [$d371]                                    ; $63e4: $fa $71 $d3
	call wJumpTable                                       ; $63e7: $cd $80 $cf
	dw $63f8
	dw $63ff
	dw $6421
	dw $643b
	dw $6444
	dw $6454
	dw $6470


	xor a                                            ; $63f8: $af
	ld [$d372], a                                    ; $63f9: $ea $72 $d3
	call Call_001_6599                               ; $63fc: $cd $99 $65
	ld a, $02                                        ; $63ff: $3e $02
	call Call_001_6516                               ; $6401: $cd $16 $65
	cp $00                                           ; $6404: $fe $00
	ret z                                            ; $6406: $c8

	cp $01                                           ; $6407: $fe $01
	jr z, jr_001_6413                                ; $6409: $28 $08

	ld a, $08                                        ; $640b: $3e $08
	call Call_001_658e                               ; $640d: $cd $8e $65
	jp Jump_001_61d0                                 ; $6410: $c3 $d0 $61


jr_001_6413:
	ld bc, $67fc                                     ; $6413: $01 $fc $67
	call $188c                                       ; $6416: $cd $8c $18
	ld a, $4b                                        ; $6419: $3e $4b
	ld [$d374], a                                    ; $641b: $ea $74 $d3
	call Call_001_6599                               ; $641e: $cd $99 $65
	ld hl, $d374                                     ; $6421: $21 $74 $d3
	ld a, [hl]                                       ; $6424: $7e
	or a                                             ; $6425: $b7
	jr z, jr_001_642a                                ; $6426: $28 $02

	dec [hl]                                         ; $6428: $35
	ret                                              ; $6429: $c9


jr_001_642a:
	call $1983                                       ; $642a: $cd $83 $19
	ret nz                                           ; $642d: $c0

	ld hl, $6b7b                                     ; $642e: $21 $7b $6b
	rst FarCall                                          ; $6431: $f7
	ld c, c                                          ; $6432: $49
	ld l, c                                          ; $6433: $69
	dec b                                            ; $6434: $05
	xor a                                            ; $6435: $af
	ldh [$9d], a                                     ; $6436: $e0 $9d
	jp Jump_001_6599                                 ; $6438: $c3 $99 $65


	xor a                                            ; $643b: $af
	ldh [$9d], a                                     ; $643c: $e0 $9d
	ld [$c13c], a                                    ; $643e: $ea $3c $c1
	jp Jump_001_6599                                 ; $6441: $c3 $99 $65


	call $2dc4                                       ; $6444: $cd $c4 $2d
	ld a, [$c13c]                                    ; $6447: $fa $3c $c1
	or a                                             ; $644a: $b7
	ret z                                            ; $644b: $c8

	ld a, $0c                                        ; $644c: $3e $0c
	ld [$d374], a                                    ; $644e: $ea $74 $d3
	jp Jump_001_6599                                 ; $6451: $c3 $99 $65


	ld hl, $d374                                     ; $6454: $21 $74 $d3
	dec [hl]                                         ; $6457: $35
	ret nz                                           ; $6458: $c0

	ld a, $80                                        ; $6459: $3e $80
	ld [$c171], a                                    ; $645b: $ea $71 $c1
	xor a                                            ; $645e: $af
	ld [$c146], a                                    ; $645f: $ea $46 $c1
	ld [$c151], a                                    ; $6462: $ea $51 $c1
	ld [$c152], a                                    ; $6465: $ea $52 $c1
	call Call_001_6599                               ; $6468: $cd $99 $65
	xor a                                            ; $646b: $af
	call $068e                                       ; $646c: $cd $8e $06
	ret                                              ; $646f: $c9


	call $3dfb                                       ; $6470: $cd $fb $3d
	ld a, [$c151]                                    ; $6473: $fa $51 $c1
	and a                                            ; $6476: $a7
	ret z                                            ; $6477: $c8

	ld a, $07                                        ; $6478: $3e $07
	call Call_001_658e                               ; $647a: $cd $8e $65
	ret                                              ; $647d: $c9


	ld a, [$d371]                                    ; $647e: $fa $71 $d3
	call wJumpTable                                       ; $6481: $cd $80 $cf
	dw Func_01_648c
	dw Func_01_6493
	dw Func_01_64aa
	dw Func_01_64b1


Func_01_648c:
	xor a                                            ; $648c: $af
	ld [$d372], a                                    ; $648d: $ea $72 $d3
	call Call_001_6599                               ; $6490: $cd $99 $65

Func_01_6493:
	ld a, $04                                        ; $6493: $3e $04
	call Call_001_6516                               ; $6495: $cd $16 $65
	cp $00                                           ; $6498: $fe $00
	ret z                                            ; $649a: $c8

	cp $01                                           ; $649b: $fe $01
	jr z, .br_64a7                                ; $649d: $28 $08

	ld a, $08                                        ; $649f: $3e $08
	call Call_001_658e                               ; $64a1: $cd $8e $65
	jp Jump_001_61d0                                 ; $64a4: $c3 $d0 $61

.br_64a7:
	call Call_001_6599                               ; $64a7: $cd $99 $65

Func_01_64aa:
	xor a                                            ; $64aa: $af
	ld [$d33c], a                                    ; $64ab: $ea $3c $d3
	call Call_001_6599                               ; $64ae: $cd $99 $65

Func_01_64b1:
	rst FarCall                                          ; $64b1: $f7
	AddrBank Func_01_7251
	ld a, [$d33c]                                     ; $64b5: $fa $3c $d3
	or a                                             ; $64b8: $b7
	ret nz                                           ; $64b9: $c0

	call $2de4                                       ; $64ba: $cd $e4 $2d
	ld a, [$d33d]                                    ; $64bd: $fa $3d $d3
	or a                                             ; $64c0: $b7
	ld a, $08                                        ; $64c1: $3e $08
	jr nz, :+                               ; $64c3: $20 $01
	xor a                                            ; $64c5: $af
:	call Call_001_658e                               ; $64c6: $cd $8e $65
	ret                                              ; $64c9: $c9


;
	ld a, [$d371]                                    ; $64ca: $fa $71 $d3
	call wJumpTable                                       ; $64cd: $cd $80 $cf
	ret c                                            ; $64d0: $d8

	ld h, h                                          ; $64d1: $64
	rst SubAFromDE                                          ; $64d2: $df
	ld h, h                                          ; $64d3: $64
	or $64                                           ; $64d4: $f6 $64
	db $fd                                           ; $64d6: $fd
	ld h, h                                          ; $64d7: $64
	xor a                                            ; $64d8: $af
	ld [$d372], a                                    ; $64d9: $ea $72 $d3
	call Call_001_6599                               ; $64dc: $cd $99 $65
	ld a, $01                                        ; $64df: $3e $01
	call Call_001_6516                               ; $64e1: $cd $16 $65
	cp $00                                           ; $64e4: $fe $00
	ret z                                            ; $64e6: $c8

	cp $01                                           ; $64e7: $fe $01
	jr z, jr_001_64f3                                ; $64e9: $28 $08

	ld a, $08                                        ; $64eb: $3e $08
	call Call_001_658e                               ; $64ed: $cd $8e $65
	jp Jump_001_61d0                                 ; $64f0: $c3 $d0 $61


jr_001_64f3:
	call Call_001_6599                               ; $64f3: $cd $99 $65
	xor a                                            ; $64f6: $af
	ld [$d33c], a                                    ; $64f7: $ea $3c $d3
	call Call_001_6599                               ; $64fa: $cd $99 $65
	rst FarCall                                          ; $64fd: $f7
	jr jr_001_6571                                   ; $64fe: $18 $71

	ld bc, $3cfa                                     ; $6500: $01 $fa $3c
	db $d3                                           ; $6503: $d3
	or a                                             ; $6504: $b7
	ret nz                                           ; $6505: $c0

	call $2de4                                       ; $6506: $cd $e4 $2d
	ld a, [$d33d]                                    ; $6509: $fa $3d $d3
	or a                                             ; $650c: $b7
	ld a, $08                                        ; $650d: $3e $08
	jr nz, jr_001_6512                               ; $650f: $20 $01

	xor a                                            ; $6511: $af

jr_001_6512:
	call Call_001_658e                               ; $6512: $cd $8e $65
	ret                                              ; $6515: $c9


Call_001_6516:
	ld [$d373], a                                    ; $6516: $ea $73 $d3
	ld a, [$d372]                                    ; $6519: $fa $72 $d3
	call wJumpTable                                       ; $651c: $cd $80 $cf
	dec h                                            ; $651f: $25
	ld h, l                                          ; $6520: $65
	ccf                                              ; $6521: $3f
	ld h, l                                          ; $6522: $65
	ld c, [hl]                                       ; $6523: $4e
	ld h, l                                          ; $6524: $65
	xor a                                            ; $6525: $af
	ld [$c13c], a                                    ; $6526: $ea $3c $c1
	ld [$c13d], a                                    ; $6529: $ea $3d $c1
	ld b, $1e                                        ; $652c: $06 $1e
	ld hl, $9f0b                                     ; $652e: $21 $0b $9f
	call Call_001_65c9                               ; $6531: $cd $c9 $65
	ld a, $1e                                        ; $6534: $3e $1e
	ld [$d374], a                                    ; $6536: $ea $74 $d3
	call Call_001_659e                               ; $6539: $cd $9e $65
	ld a, $00                                        ; $653c: $3e $00
	ret                                              ; $653e: $c9


	ld hl, $d374                                     ; $653f: $21 $74 $d3
	dec [hl]                                         ; $6542: $35
	ld a, $00                                        ; $6543: $3e $00
	ret nz                                           ; $6545: $c0

	ld a, $ff                                        ; $6546: $3e $ff
	ld [$d374], a                                    ; $6548: $ea $74 $d3
	call Call_001_659e                               ; $654b: $cd $9e $65
	ld a, [$d373]                                    ; $654e: $fa $73 $d3
	ld [$c13b], a                                    ; $6551: $ea $3b $c1
	call $2dd4                                       ; $6554: $cd $d4 $2d
	ld a, [$c13c]                                    ; $6557: $fa $3c $c1
	cp $01                                           ; $655a: $fe $01
	jr z, jr_001_657f                                ; $655c: $28 $21

	cp $02                                           ; $655e: $fe $02
	jr z, jr_001_6574                                ; $6560: $28 $12

	ld a, $00                                        ; $6562: $3e $00
	ld hl, $d374                                     ; $6564: $21 $74 $d3
	dec [hl]                                         ; $6567: $35
	ret nz                                           ; $6568: $c0

	ld b, $1e                                        ; $6569: $06 $1e
	ld hl, $9f43                                     ; $656b: $21 $43 $9f
	call Call_001_65c9                               ; $656e: $cd $c9 $65

jr_001_6571:
	ld a, $02                                        ; $6571: $3e $02
	ret                                              ; $6573: $c9


jr_001_6574:
	ld b, $1e                                        ; $6574: $06 $1e
	ld hl, $9f43                                     ; $6576: $21 $43 $9f
	call Call_001_65c9                               ; $6579: $cd $c9 $65
	ld a, $02                                        ; $657c: $3e $02
	ret                                              ; $657e: $c9


jr_001_657f:
	ld a, $01                                        ; $657f: $3e $01
	ret                                              ; $6581: $c9


Call_001_6582:
Jump_001_6582:
	ld hl, $d370                                     ; $6582: $21 $70 $d3
	inc [hl]                                         ; $6585: $34
	xor a                                            ; $6586: $af
	ld [$d371], a                                    ; $6587: $ea $71 $d3
	ld [$d372], a                                    ; $658a: $ea $72 $d3
	ret                                              ; $658d: $c9


Call_001_658e:
	ld [$d370], a                                    ; $658e: $ea $70 $d3
	xor a                                            ; $6591: $af
	ld [$d371], a                                    ; $6592: $ea $71 $d3
	ld [$d372], a                                    ; $6595: $ea $72 $d3
	ret                                              ; $6598: $c9


Call_001_6599:
Jump_001_6599:
	ld hl, $d371                                     ; $6599: $21 $71 $d3
	inc [hl]                                         ; $659c: $34
	ret                                              ; $659d: $c9


Call_001_659e:
	ld hl, $d372                                     ; $659e: $21 $72 $d3
	inc [hl]                                         ; $65a1: $34
	ret                                              ; $65a2: $c9


Call_001_65a3:
	ld a, [$d377]                                    ; $65a3: $fa $77 $d3

Call_001_65a6:
	call Call_001_65da                               ; $65a6: $cd $da $65

Call_001_65a9:
	ld a, $00                                        ; $65a9: $3e $00
	ld [$d7f9], a                                    ; $65ab: $ea $f9 $d7
	ld a, $03                                        ; $65ae: $3e $03
	ld [$d7fa], a                                    ; $65b0: $ea $fa $d7
	jp Func_1c32                                         ; $65b3: $c3 $32 $1c


Call_001_65b6:
	ld a, [$d377]                                    ; $65b6: $fa $77 $d3
	call Call_001_65da                               ; $65b9: $cd $da $65
	ld a, $01                                        ; $65bc: $3e $01
	ld [$d7f9], a                                    ; $65be: $ea $f9 $d7
	ld a, $03                                        ; $65c1: $3e $03
	ld [$d7fa], a                                    ; $65c3: $ea $fa $d7
	jp Func_1c32                                         ; $65c6: $c3 $32 $1c


Call_001_65c9:
	xor a                                            ; $65c9: $af
	ld [wUseRulesForTextLine1stOrLastChar], a                                    ; $65ca: $ea $0f $d8
	ld a, $00                                        ; $65cd: $3e $00
	ld [$d7fa], a                                    ; $65cf: $ea $fa $d7
	ld a, $03                                        ; $65d2: $3e $03
	ld [$d7f9], a                                    ; $65d4: $ea $f9 $d7
	jp Func_1c32                                         ; $65d7: $c3 $32 $1c


Call_001_65da:
	ld b, a                                          ; $65da: $47
	sla a                                            ; $65db: $cb $27
	add b                                            ; $65dd: $80
	ld c, a                                          ; $65de: $4f
	ld b, $00                                        ; $65df: $06 $00
	ld hl, $4feb                                     ; $65e1: $21 $eb $4f
	add hl, bc                                       ; $65e4: $09
	ld b, [hl]                                       ; $65e5: $46
	inc hl                                           ; $65e6: $23
	ld e, [hl]                                       ; $65e7: $5e
	inc hl                                           ; $65e8: $23
	ld d, [hl]                                       ; $65e9: $56
	ld h, d                                          ; $65ea: $62
	ld l, e                                          ; $65eb: $6b
	ret                                              ; $65ec: $c9


Call_001_65ed:
	xor a                                            ; $65ed: $af
	ld [$c201], a                                    ; $65ee: $ea $01 $c2
	ld a, [$d377]                                    ; $65f1: $fa $77 $d3
	sla a                                            ; $65f4: $cb $27
	ld c, a                                          ; $65f6: $4f
	ld b, $00                                        ; $65f7: $06 $00
	ld hl, $4fdd                                     ; $65f9: $21 $dd $4f
	add hl, bc                                       ; $65fc: $09
	ld a, [hl+]                                      ; $65fd: $2a
	ld [$c207], a                                    ; $65fe: $ea $07 $c2
	ld a, [hl+]                                      ; $6601: $2a
	ld [$c205], a                                    ; $6602: $ea $05 $c2
	ret                                              ; $6605: $c9


Call_001_6606:
	ld a, [$d378]                                    ; $6606: $fa $78 $d3
	add b                                            ; $6609: $80
	ld c, a                                          ; $660a: $4f
	ld b, $00                                        ; $660b: $06 $00
	ld hl, $a148                                     ; $660d: $21 $48 $a1
	add hl, bc                                       ; $6610: $09
	ld a, [hl]                                       ; $6611: $7e
	ld [$d377], a                                    ; $6612: $ea $77 $d3
	ret                                              ; $6615: $c9


Call_001_6616:
	ld h, $28                                        ; $6616: $26 $28
	ld l, $03                                        ; $6618: $2e $03
	call Func_1ceb                                       ; $661a: $cd $eb $1c
	ld b, $1e                                        ; $661d: $06 $1e
	ld hl, $9e39                                     ; $661f: $21 $39 $9e
	call Call_001_65a9                               ; $6622: $cd $a9 $65
	ld h, $28                                        ; $6625: $26 $28
	ld l, $05                                        ; $6627: $2e $05
	call Func_1ceb                                       ; $6629: $cd $eb $1c
	ld b, $1e                                        ; $662c: $06 $1e
	ld hl, $9e39                                     ; $662e: $21 $39 $9e
	call Call_001_65a9                               ; $6631: $cd $a9 $65
	ld h, $28                                        ; $6634: $26 $28
	ld l, $07                                        ; $6636: $2e $07
	call Func_1ceb                                       ; $6638: $cd $eb $1c
	ld b, $1e                                        ; $663b: $06 $1e
	ld hl, $9e39                                     ; $663d: $21 $39 $9e
	call Call_001_65a9                               ; $6640: $cd $a9 $65
	ret                                              ; $6643: $c9


Call_001_6644:
	xor a                                            ; $6644: $af
	ld [$d37a], a                                    ; $6645: $ea $7a $d3
	ld a, [$c139]                                    ; $6648: $fa $39 $c1
	cp $02                                           ; $664b: $fe $02
	jr nz, jr_001_6661                               ; $664d: $20 $12

	ldh a, [$9f]                                     ; $664f: $f0 $9f
	cp $01                                           ; $6651: $fe $01
	jr nz, jr_001_6668                               ; $6653: $20 $13

	ld a, [wButtonsPressed]                                    ; $6655: $fa $25 $c1
	and a                                            ; $6658: $a7
	jr z, jr_001_6661                                ; $6659: $28 $06

	and $3f                                          ; $665b: $e6 $3f
	inc a                                            ; $665d: $3c
	call $2d9f                                       ; $665e: $cd $9f $2d

jr_001_6661:
	ld a, [wButtonsPressed]                                    ; $6661: $fa $25 $c1
	ld [$d37a], a                                    ; $6664: $ea $7a $d3
	ret                                              ; $6667: $c9


jr_001_6668:
	ld a, [$c138]                                    ; $6668: $fa $38 $c1
	and a                                            ; $666b: $a7
	ret z                                            ; $666c: $c8

	ldh a, [$9d]                                     ; $666d: $f0 $9d
	dec a                                            ; $666f: $3d
	ld [$d37a], a                                    ; $6670: $ea $7a $d3
	xor a                                            ; $6673: $af
	ldh [$9d], a                                     ; $6674: $e0 $9d
	ret                                              ; $6676: $c9


	ld a, [$c184]                                    ; $6677: $fa $84 $c1
	rst JumpTable                                          ; $667a: $c7
	ld a, a                                          ; $667b: $7f
	ld h, [hl]                                       ; $667c: $66
	sbc e                                            ; $667d: $9b
	ld h, [hl]                                       ; $667e: $66
	ld a, $05                                        ; $667f: $3e $05
	ld [$c186], a                                    ; $6681: $ea $86 $c1
	xor a                                            ; $6684: $af
	call $068e                                       ; $6685: $cd $8e $06
	ld a, $f7                                        ; $6688: $3e $f7
	ldh [hDisp0_LCDC], a                                     ; $668a: $e0 $82
	ld hl, $c184                                     ; $668c: $21 $84 $c1
	inc [hl]                                         ; $668f: $34
	ld a, $00                                        ; $6690: $3e $00
	ld [$d841], a                                    ; $6692: $ea $41 $d8
	ld a, $00                                        ; $6695: $3e $00
	call Call_001_6eb0                               ; $6697: $cd $b0 $6e
	ret                                              ; $669a: $c9


	call $2e21                                       ; $669b: $cd $21 $2e
	ld a, [$d84f]                                    ; $669e: $fa $4f $d8
	or a                                             ; $66a1: $b7
	ret z                                            ; $66a2: $c8

	call Call_001_6ecb                               ; $66a3: $cd $cb $6e
	xor a                                            ; $66a6: $af
	ld [$c184], a                                    ; $66a7: $ea $84 $c1
	jp $2983                                         ; $66aa: $c3 $83 $29


	ld a, [$d840]                                    ; $66ad: $fa $40 $d8
	rst JumpTable                                          ; $66b0: $c7
	db $ec                                           ; $66b1: $ec
	ld l, e                                          ; $66b2: $6b
	rlca                                             ; $66b3: $07
	ld l, d                                          ; $66b4: $6a
	ld c, $69                                        ; $66b5: $0e $69
	ld a, h                                          ; $66b7: $7c
	ld l, c                                          ; $66b8: $69
	sub a                                            ; $66b9: $97
	ld h, a                                          ; $66ba: $67
	inc sp                                           ; $66bb: $33
	ld h, a                                          ; $66bc: $67
	ld a, e                                          ; $66bd: $7b
	ld l, l                                          ; $66be: $6d
	sbc b                                            ; $66bf: $98
	ld l, d                                          ; $66c0: $6a
	jp Jump_001_7e66                                 ; $66c1: $c3 $66 $7e


	rst JumpTable                                          ; $66c4: $c7
	ret                                              ; $66c5: $c9


	ld h, [hl]                                       ; $66c6: $66
	db $ec                                           ; $66c7: $ec
	ld h, [hl]                                       ; $66c8: $66
	inc [hl]                                         ; $66c9: $34
	push hl                                          ; $66ca: $e5
	ld hl, $66ed                                     ; $66cb: $21 $ed $66
	call Call_001_6eec                               ; $66ce: $cd $ec $6e
	ld bc, $64ba                                     ; $66d1: $01 $ba $64
	call $18c4                                       ; $66d4: $cd $c4 $18
	pop hl                                           ; $66d7: $e1
	call $3d58                                       ; $66d8: $cd $58 $3d
	ld hl, $c200                                     ; $66db: $21 $00 $c2
	ld a, $33                                        ; $66de: $3e $33
	ld b, $06                                        ; $66e0: $06 $06

jr_001_66e2:
	inc h                                            ; $66e2: $24
	ld l, $00                                        ; $66e3: $2e $00
	ld [hl], a                                       ; $66e5: $77
	ld l, $30                                        ; $66e6: $2e $30
	dec b                                            ; $66e8: $05
	ld [hl], b                                       ; $66e9: $70
	jr nz, jr_001_66e2                               ; $66ea: $20 $f6

	ret                                              ; $66ec: $c9


	rra                                              ; $66ed: $1f
	ld b, e                                          ; $66ee: $43
	ld l, l                                          ; $66ef: $6d
	rst JumpTable                                          ; $66f0: $c7
	push af                                          ; $66f1: $f5
	ld h, [hl]                                       ; $66f2: $66
	inc c                                            ; $66f3: $0c
	ld h, a                                          ; $66f4: $67
	inc [hl]                                         ; $66f5: $34
	ld l, $30                                        ; $66f6: $2e $30
	ld a, [hl]                                       ; $66f8: $7e
	push hl                                          ; $66f9: $e5
	ld hl, $671b                                     ; $66fa: $21 $1b $67
	add a                                            ; $66fd: $87
	add a                                            ; $66fe: $87
	rst AddAOntoHL                                          ; $66ff: $ef
	ld a, [hl+]                                      ; $6700: $2a
	ld c, a                                          ; $6701: $4f
	ld a, [hl+]                                      ; $6702: $2a
	ld b, a                                          ; $6703: $47
	ld a, [hl+]                                      ; $6704: $2a
	ld d, a                                          ; $6705: $57
	ld e, [hl]                                       ; $6706: $5e
	pop hl                                           ; $6707: $e1
	xor a                                            ; $6708: $af
	call $3d99                                       ; $6709: $cd $99 $3d
	ld a, [$d842]                                    ; $670c: $fa $42 $d8
	or a                                             ; $670f: $b7
	ld bc, $fc00                                     ; $6710: $01 $00 $fc
	jr z, jr_001_6718                                ; $6713: $28 $03

	ld bc, $fa00                                     ; $6715: $01 $00 $fa

jr_001_6718:
	jp $3be4                                         ; $6718: $c3 $e4 $3b


	ld l, l                                          ; $671b: $6d
	ld h, [hl]                                       ; $671c: $66
	ld a, [bc]                                       ; $671d: $0a
	call c, $6665                                    ; $671e: $dc $65 $66
	inc d                                            ; $6721: $14
	inc a                                            ; $6722: $3c
	ld l, l                                          ; $6723: $6d
	ld h, [hl]                                       ; $6724: $66
	inc hl                                           ; $6725: $23
	ld a, b                                          ; $6726: $78
	ld h, l                                          ; $6727: $65
	ld h, [hl]                                       ; $6728: $66
	add d                                            ; $6729: $82
	inc d                                            ; $672a: $14
	ld l, l                                          ; $672b: $6d
	ld h, [hl]                                       ; $672c: $66
	sub [hl]                                         ; $672d: $96
	inc a                                            ; $672e: $3c
	ld l, l                                          ; $672f: $6d
	ld h, [hl]                                       ; $6730: $66
	adc h                                            ; $6731: $8c
	or h                                             ; $6732: $b4
	ld a, [hl]                                       ; $6733: $7e
	rst JumpTable                                          ; $6734: $c7
	dec sp                                           ; $6735: $3b
	ld h, a                                          ; $6736: $67
	ld l, h                                          ; $6737: $6c
	ld h, a                                          ; $6738: $67
	adc e                                            ; $6739: $8b
	ld h, a                                          ; $673a: $67
	inc [hl]                                         ; $673b: $34
	push hl                                          ; $673c: $e5
	ld a, [$d841]                                    ; $673d: $fa $41 $d8
	cp $01                                           ; $6740: $fe $01
	ld bc, $64b6                                     ; $6742: $01 $b6 $64
	jr c, jr_001_674f                                ; $6745: $38 $08

	ld bc, $64ae                                     ; $6747: $01 $ae $64
	jr z, jr_001_674f                                ; $674a: $28 $03

	ld bc, $64b2                                     ; $674c: $01 $b2 $64

jr_001_674f:
	call $18c4                                       ; $674f: $cd $c4 $18
	ld hl, $6791                                     ; $6752: $21 $91 $67
	call Call_001_6eec                               ; $6755: $cd $ec $6e
	call Call_001_6f15                               ; $6758: $cd $15 $6f
	pop hl                                           ; $675b: $e1
	ld bc, $602b                                     ; $675c: $01 $2b $60
	call $3bfb                                       ; $675f: $cd $fb $3b
	ld de, $c066                                     ; $6762: $11 $66 $c0
	call $3bf4                                       ; $6765: $cd $f4 $3b
	call $16d0                                       ; $6768: $cd $d0 $16
	ret                                              ; $676b: $c9


	call $16d0                                       ; $676c: $cd $d0 $16
	ld a, [wButtonsHeld]                                    ; $676f: $fa $23 $c1
	and $30                                          ; $6772: $e6 $30
	ld de, $fe80                                     ; $6774: $11 $80 $fe
	jr z, jr_001_677c                                ; $6777: $28 $03

	ld de, $fd00                                     ; $6779: $11 $00 $fd

jr_001_677c:
	call $3bd9                                       ; $677c: $cd $d9 $3b
	ld l, $07                                        ; $677f: $2e $07
	ld a, [hl]                                       ; $6781: $7e
	cp $c0                                           ; $6782: $fe $c0
	ret c                                            ; $6784: $d8

	cp $c8                                           ; $6785: $fe $c8
	ret nc                                           ; $6787: $d0

	ld l, $0a                                        ; $6788: $2e $0a
	inc [hl]                                         ; $678a: $34
	ld a, $01                                        ; $678b: $3e $01
	ld [$d84f], a                                    ; $678d: $ea $4f $d8
	ret                                              ; $6790: $c9


	rra                                              ; $6791: $1f
	ldh a, [c]                                       ; $6792: $f2
	ld e, [hl]                                       ; $6793: $5e
	rra                                              ; $6794: $1f
	ld [$7e60], a                                    ; $6795: $ea $60 $7e
	or a                                             ; $6798: $b7
	jr z, jr_001_67a3                                ; $6799: $28 $08

	ld a, [wButtonsPressed]                                    ; $679b: $fa $25 $c1
	and $a0                                          ; $679e: $e6 $a0
	jp nz, Jump_001_689f                             ; $67a0: $c2 $9f $68

jr_001_67a3:
	ld a, [hl]                                       ; $67a3: $7e
	rst JumpTable                                          ; $67a4: $c7
	cp c                                             ; $67a5: $b9
	ld h, a                                          ; $67a6: $67
	db $e4                                           ; $67a7: $e4
	ld h, a                                          ; $67a8: $67
	inc h                                            ; $67a9: $24
	ld l, b                                          ; $67aa: $68
	dec [hl]                                         ; $67ab: $35
	ld l, b                                          ; $67ac: $68
	inc h                                            ; $67ad: $24
	ld l, b                                          ; $67ae: $68
	ld c, h                                          ; $67af: $4c
	ld l, b                                          ; $67b0: $68
	ld h, h                                          ; $67b1: $64
	ld l, b                                          ; $67b2: $68
	ld a, l                                          ; $67b3: $7d
	ld l, b                                          ; $67b4: $68
	adc a                                            ; $67b5: $8f
	ld l, b                                          ; $67b6: $68
	sbc [hl]                                         ; $67b7: $9e
	ld l, b                                          ; $67b8: $68
	inc [hl]                                         ; $67b9: $34
	ld l, $30                                        ; $67ba: $2e $30
	ld [hl], $f0                                     ; $67bc: $36 $f0
	push hl                                          ; $67be: $e5
	ld hl, $6f3e                                     ; $67bf: $21 $3e $6f
	ld a, [$d841]                                    ; $67c2: $fa $41 $d8
	call Call_001_6ece                               ; $67c5: $cd $ce $6e
	ld hl, $68f0                                     ; $67c8: $21 $f0 $68
	ld a, [$d841]                                    ; $67cb: $fa $41 $d8
	call $3c8f                                       ; $67ce: $cd $8f $3c
	pop hl                                           ; $67d1: $e1
	ld de, $5366                                     ; $67d2: $11 $66 $53
	xor a                                            ; $67d5: $af
	call $3d99                                       ; $67d6: $cd $99 $3d
	ld a, $00                                        ; $67d9: $3e $00
	call $1e2e                                       ; $67db: $cd $2e $1e
	ld a, $31                                        ; $67de: $3e $31
	call $1e2e                                       ; $67e0: $cd $2e $1e
	ret                                              ; $67e3: $c9


	ld l, $30                                        ; $67e4: $2e $30
	dec [hl]                                         ; $67e6: $35
	ret nz                                           ; $67e7: $c0

	call $16d0                                       ; $67e8: $cd $d0 $16
	ld l, $0a                                        ; $67eb: $2e $0a
	ld [hl], $06                                     ; $67ed: $36 $06
	ld a, [$a22a]                                    ; $67ef: $fa $2a $a2
	push af                                          ; $67f2: $f5
	cp $01                                           ; $67f3: $fe $01
	ld a, $10                                        ; $67f5: $3e $10
	jr c, jr_001_67ff                                ; $67f7: $38 $06

	ld a, $11                                        ; $67f9: $3e $11
	jr z, jr_001_67ff                                ; $67fb: $28 $02

	ld a, $12                                        ; $67fd: $3e $12

jr_001_67ff:
	call Jump_000_1af7                                       ; $67ff: $cd $f7 $1a
	pop af                                           ; $6802: $f1
	push hl                                          ; $6803: $e5
	ld hl, $6908                                     ; $6804: $21 $08 $69
	call $3c8f                                       ; $6807: $cd $8f $3c
	pop hl                                           ; $680a: $e1
	call Call_001_68ae                               ; $680b: $cd $ae $68
	ld a, [$a22a]                                    ; $680e: $fa $2a $a2
	cp $01                                           ; $6811: $fe $01
	ret nz                                           ; $6813: $c0

	ld a, [$d841]                                    ; $6814: $fa $41 $d8
	cp $03                                           ; $6817: $fe $03
	ret nz                                           ; $6819: $c0

	ld l, $0a                                        ; $681a: $2e $0a
	ld [hl], $02                                     ; $681c: $36 $02
	ld bc, $03dd                                     ; $681e: $01 $dd $03
	jp Jump_001_68ae                                 ; $6821: $c3 $ae $68


	call Call_001_68b4                               ; $6824: $cd $b4 $68
	ret nz                                           ; $6827: $c0

	ld l, $0a                                        ; $6828: $2e $0a
	inc [hl]                                         ; $682a: $34
	ld l, $31                                        ; $682b: $2e $31
	ld [hl], $1e                                     ; $682d: $36 $1e
	ld bc, $67f0                                     ; $682f: $01 $f0 $67
	jp $18c0                                         ; $6832: $c3 $c0 $18


	call $16d0                                       ; $6835: $cd $d0 $16
	ld l, $31                                        ; $6838: $2e $31
	dec [hl]                                         ; $683a: $35
	ret nz                                           ; $683b: $c0

	ld l, $0a                                        ; $683c: $2e $0a
	inc [hl]                                         ; $683e: $34
	ld bc, $01d0                                     ; $683f: $01 $d0 $01
	call Call_001_68ae                               ; $6842: $cd $ae $68
	call $3d58                                       ; $6845: $cd $58 $3d
	xor a                                            ; $6848: $af
	jp Jump_001_68c7                                 ; $6849: $c3 $c7 $68


	call $16d0                                       ; $684c: $cd $d0 $16
	ld l, $31                                        ; $684f: $2e $31
	dec [hl]                                         ; $6851: $35
	ret nz                                           ; $6852: $c0

	ld l, $0a                                        ; $6853: $2e $0a
	inc [hl]                                         ; $6855: $34
	ld bc, $0288                                     ; $6856: $01 $88 $02
	call Call_001_68ae                               ; $6859: $cd $ae $68
	call $3d53                                       ; $685c: $cd $53 $3d
	ld a, $01                                        ; $685f: $3e $01
	jp Jump_001_68c7                                 ; $6861: $c3 $c7 $68


	call Call_001_68b4                               ; $6864: $cd $b4 $68
	ret nz                                           ; $6867: $c0

	ld l, $0a                                        ; $6868: $2e $0a
	inc [hl]                                         ; $686a: $34
	ld l, $30                                        ; $686b: $2e $30
	ld [hl], $1e                                     ; $686d: $36 $1e
	push hl                                          ; $686f: $e5
	ld hl, $68fc                                     ; $6870: $21 $fc $68
	ld a, [$d841]                                    ; $6873: $fa $41 $d8
	call $3c8f                                       ; $6876: $cd $8f $3c
	pop hl                                           ; $6879: $e1
	call $3bfb                                       ; $687a: $cd $fb $3b
	call $16d0                                       ; $687d: $cd $d0 $16
	ld l, $30                                        ; $6880: $2e $30
	dec [hl]                                         ; $6882: $35
	ret nz                                           ; $6883: $c0

	ld [hl], $f0                                     ; $6884: $36 $f0
	ld l, $0a                                        ; $6886: $2e $0a
	inc [hl]                                         ; $6888: $34
	ld a, $31                                        ; $6889: $3e $31
	call $1e2e                                       ; $688b: $cd $2e $1e
	ret                                              ; $688e: $c9


	call $16d0                                       ; $688f: $cd $d0 $16
	ld l, $30                                        ; $6892: $2e $30
	dec [hl]                                         ; $6894: $35
	ret nz                                           ; $6895: $c0

	ld l, $0a                                        ; $6896: $2e $0a
	inc [hl]                                         ; $6898: $34
	ld a, $01                                        ; $6899: $3e $01
	ld [$d84f], a                                    ; $689b: $ea $4f $d8
	ret                                              ; $689e: $c9


Jump_001_689f:
	ld a, $20                                        ; $689f: $3e $20
	ld [$c2c7], a                                    ; $68a1: $ea $c7 $c2
	ld l, $0a                                        ; $68a4: $2e $0a
	ld [hl], $09                                     ; $68a6: $36 $09
	ld a, $01                                        ; $68a8: $3e $01
	ld [$d84f], a                                    ; $68aa: $ea $4f $d8
	ret                                              ; $68ad: $c9


Call_001_68ae:
Jump_001_68ae:
	ld l, $31                                        ; $68ae: $2e $31
	ld [hl], c                                       ; $68b0: $71
	inc l                                            ; $68b1: $2c
	ld [hl], b                                       ; $68b2: $70
	ret                                              ; $68b3: $c9


Call_001_68b4:
	call $16d0                                       ; $68b4: $cd $d0 $16
	ld l, $31                                        ; $68b7: $2e $31
	ld c, [hl]                                       ; $68b9: $4e
	inc l                                            ; $68ba: $2c
	ld b, [hl]                                       ; $68bb: $46
	dec bc                                           ; $68bc: $0b
	ld a, b                                          ; $68bd: $78
	or c                                             ; $68be: $b1
	ret z                                            ; $68bf: $c8

	ld [hl], b                                       ; $68c0: $70
	dec l                                            ; $68c1: $2d
	ld [hl], c                                       ; $68c2: $71
	ld a, $01                                        ; $68c3: $3e $01
	or a                                             ; $68c5: $b7
	ret                                              ; $68c6: $c9


Jump_001_68c7:
	push hl                                          ; $68c7: $e5
	or a                                             ; $68c8: $b7
	ld bc, $0110                                     ; $68c9: $01 $10 $01
	jr z, jr_001_68d1                                ; $68cc: $28 $03

	ld bc, $0131                                     ; $68ce: $01 $31 $01

jr_001_68d1:
	call $3a12                                       ; $68d1: $cd $12 $3a
	ld d, $ff                                        ; $68d4: $16 $ff
	call $1a38                                       ; $68d6: $cd $38 $1a
	call $3974                                       ; $68d9: $cd $74 $39
	call $388c                                       ; $68dc: $cd $8c $38
	ld bc, $6496                                     ; $68df: $01 $96 $64
	call $18c4                                       ; $68e2: $cd $c4 $18
	call Call_001_6ec2                               ; $68e5: $cd $c2 $6e
	ld bc, $680c                                     ; $68e8: $01 $0c $68
	call $18b3                                       ; $68eb: $cd $b3 $18
	pop hl                                           ; $68ee: $e1
	ret                                              ; $68ef: $c9


	ld h, e                                          ; $68f0: $63
	ret c                                            ; $68f1: $d8

	ld h, e                                          ; $68f2: $63
	ret c                                            ; $68f3: $d8

	ld h, e                                          ; $68f4: $63
	ret c                                            ; $68f5: $d8

	ld h, e                                          ; $68f6: $63
	ret c                                            ; $68f7: $d8

	ld h, e                                          ; $68f8: $63
	ret c                                            ; $68f9: $d8

	ld h, e                                          ; $68fa: $63
	ret c                                            ; $68fb: $d8

	ld e, $60                                        ; $68fc: $1e $60
	ld hl, $2260                                     ; $68fe: $21 $60 $22
	ld h, b                                          ; $6901: $60
	rra                                              ; $6902: $1f
	ld h, b                                          ; $6903: $60
	jr nz, jr_001_6966                               ; $6904: $20 $60

	inc hl                                           ; $6906: $23
	ld h, b                                          ; $6907: $60
	inc e                                            ; $6908: $1c
	db $10                                           ; $6909: $10
	ld [hl], c                                       ; $690a: $71
	ld [$0b50], sp                                   ; $690b: $08 $50 $0b
	ld a, [hl]                                       ; $690e: $7e
	rst JumpTable                                          ; $690f: $c7
	ld d, $69                                        ; $6910: $16 $69
	dec l                                            ; $6912: $2d
	ld l, c                                          ; $6913: $69
	ld b, b                                          ; $6914: $40
	ld l, c                                          ; $6915: $69
	inc [hl]                                         ; $6916: $34
	push hl                                          ; $6917: $e5
	ld hl, $6f7a                                     ; $6918: $21 $7a $6f
	ld a, [$d841]                                    ; $691b: $fa $41 $d8
	call Call_001_6ece                               ; $691e: $cd $ce $6e
	pop hl                                           ; $6921: $e1
	ld de, $5066                                     ; $6922: $11 $66 $50
	call $3bf4                                       ; $6925: $cd $f4 $3b
	xor a                                            ; $6928: $af
	ld l, $30                                        ; $6929: $2e $30
	ld [hl+], a                                      ; $692b: $22
	ld [hl], a                                       ; $692c: $77
	call Call_001_6941                               ; $692d: $cd $41 $69
	call $16d0                                       ; $6930: $cd $d0 $16
	ld l, $0c                                        ; $6933: $2e $0c
	ld a, [hl]                                       ; $6935: $7e
	or a                                             ; $6936: $b7
	ret nz                                           ; $6937: $c0

	ld l, $0a                                        ; $6938: $2e $0a
	inc [hl]                                         ; $693a: $34
	ld a, $01                                        ; $693b: $3e $01
	ld [$d84f], a                                    ; $693d: $ea $4f $d8
	ret                                              ; $6940: $c9


Call_001_6941:
	ld l, $31                                        ; $6941: $2e $31
	ld a, [hl]                                       ; $6943: $7e
	or a                                             ; $6944: $b7
	jr z, jr_001_6949                                ; $6945: $28 $02

	dec [hl]                                         ; $6947: $35
	ret                                              ; $6948: $c9


jr_001_6949:
	ld l, $30                                        ; $6949: $2e $30
	ld b, [hl]                                       ; $694b: $46
	push hl                                          ; $694c: $e5
	ld a, [$d841]                                    ; $694d: $fa $41 $d8
	cp $02                                           ; $6950: $fe $02
	ld hl, $696e                                     ; $6952: $21 $6e $69
	jr nz, jr_001_695a                               ; $6955: $20 $03

	ld hl, $6975                                     ; $6957: $21 $75 $69

jr_001_695a:
	ld a, b                                          ; $695a: $78
	rst AddAOntoHL                                          ; $695b: $ef
	ld a, [hl]                                       ; $695c: $7e
	pop hl                                           ; $695d: $e1
	or a                                             ; $695e: $b7
	ret z                                            ; $695f: $c8

	ld b, [hl]                                       ; $6960: $46
	inc [hl]                                         ; $6961: $34
	ld l, $31                                        ; $6962: $2e $31
	ld [hl], a                                       ; $6964: $77
	ld a, b                                          ; $6965: $78

jr_001_6966:
	or a                                             ; $6966: $b7
	ret z                                            ; $6967: $c8

	ld a, $06                                        ; $6968: $3e $06
	call $1e2e                                       ; $696a: $cd $2e $1e
	ret                                              ; $696d: $c9


	ld e, b                                          ; $696e: $58
	inc a                                            ; $696f: $3c
	inc a                                            ; $6970: $3c
	ld a, [hl]                                       ; $6971: $7e
	inc a                                            ; $6972: $3c
	inc a                                            ; $6973: $3c
	nop                                              ; $6974: $00
	ld e, d                                          ; $6975: $5a
	inc a                                            ; $6976: $3c
	inc a                                            ; $6977: $3c
	ld a, [hl]                                       ; $6978: $7e
	inc a                                            ; $6979: $3c
	inc a                                            ; $697a: $3c
	nop                                              ; $697b: $00
	ld a, [hl]                                       ; $697c: $7e
	rst JumpTable                                          ; $697d: $c7
	adc b                                            ; $697e: $88
	ld l, c                                          ; $697f: $69
	and h                                            ; $6980: $a4
	ld l, c                                          ; $6981: $69
	call nz, $da69                                   ; $6982: $c4 $69 $da
	ld l, c                                          ; $6985: $69
	ldh a, [c]                                       ; $6986: $f2
	ld l, c                                          ; $6987: $69
	inc [hl]                                         ; $6988: $34
	push hl                                          ; $6989: $e5
	ld hl, $6fa2                                     ; $698a: $21 $a2 $6f
	ld a, [$d841]                                    ; $698d: $fa $41 $d8
	call Call_001_6ece                               ; $6990: $cd $ce $6e
	pop hl                                           ; $6993: $e1
	ld de, $5066                                     ; $6994: $11 $66 $50
	call $3bf4                                       ; $6997: $cd $f4 $3b
	ld a, [$d841]                                    ; $699a: $fa $41 $d8
	cp $04                                           ; $699d: $fe $04
	ret nz                                           ; $699f: $c0

	call $16d0                                       ; $69a0: $cd $d0 $16
	ret                                              ; $69a3: $c9


	call $16d0                                       ; $69a4: $cd $d0 $16
	ld l, $0c                                        ; $69a7: $2e $0c
	ld a, [hl]                                       ; $69a9: $7e
	or a                                             ; $69aa: $b7
	ret nz                                           ; $69ab: $c0

	ld l, $0a                                        ; $69ac: $2e $0a
	inc [hl]                                         ; $69ae: $34
	push hl                                          ; $69af: $e5
	ld hl, $69f3                                     ; $69b0: $21 $f3 $69
	ld a, [$d841]                                    ; $69b3: $fa $41 $d8
	call $3c8f                                       ; $69b6: $cd $8f $3c
	pop hl                                           ; $69b9: $e1
	xor a                                            ; $69ba: $af
	call $3d9f                                       ; $69bb: $cd $9f $3d
	ld a, $01                                        ; $69be: $3e $01
	ld [$d84f], a                                    ; $69c0: $ea $4f $d8
	ret                                              ; $69c3: $c9


	ld a, [$d842]                                    ; $69c4: $fa $42 $d8
	or a                                             ; $69c7: $b7
	ret z                                            ; $69c8: $c8

	ld l, $0a                                        ; $69c9: $2e $0a
	inc [hl]                                         ; $69cb: $34
	push hl                                          ; $69cc: $e5
	ld hl, $69fd                                     ; $69cd: $21 $fd $69
	ld a, [$d841]                                    ; $69d0: $fa $41 $d8
	call $3c8f                                       ; $69d3: $cd $8f $3c
	pop hl                                           ; $69d6: $e1
	call $3bfb                                       ; $69d7: $cd $fb $3b
	call $16d0                                       ; $69da: $cd $d0 $16
	ld l, $0c                                        ; $69dd: $2e $0c
	ld a, [hl]                                       ; $69df: $7e
	or a                                             ; $69e0: $b7
	ret nz                                           ; $69e1: $c0

	ld l, $0a                                        ; $69e2: $2e $0a
	inc [hl]                                         ; $69e4: $34
	ld a, [$d841]                                    ; $69e5: $fa $41 $d8
	cp $04                                           ; $69e8: $fe $04
	call nz, $3d58                                   ; $69ea: $c4 $58 $3d
	ld a, $01                                        ; $69ed: $3e $01
	ld [$d84f], a                                    ; $69ef: $ea $4f $d8
	ret                                              ; $69f2: $c9


	ld c, a                                          ; $69f3: $4f
	reti                                             ; $69f4: $d9


	ld c, e                                          ; $69f5: $4b
	reti                                             ; $69f6: $d9


	ld c, e                                          ; $69f7: $4b
	reti                                             ; $69f8: $d9


	ld c, a                                          ; $69f9: $4f
	reti                                             ; $69fa: $d9


	rla                                              ; $69fb: $17
	reti                                             ; $69fc: $d9


	inc d                                            ; $69fd: $14
	ld h, b                                          ; $69fe: $60
	dec d                                            ; $69ff: $15
	ld h, b                                          ; $6a00: $60
	ld d, $60                                        ; $6a01: $16 $60
	jr jr_001_6a65                                   ; $6a03: $18 $60

	rla                                              ; $6a05: $17
	ld h, b                                          ; $6a06: $60
	ld a, [hl]                                       ; $6a07: $7e
	rst JumpTable                                          ; $6a08: $c7
	rla                                              ; $6a09: $17
	ld l, d                                          ; $6a0a: $6a
	cpl                                              ; $6a0b: $2f
	ld l, d                                          ; $6a0c: $6a
	ld b, b                                          ; $6a0d: $40
	ld l, d                                          ; $6a0e: $6a
	ld e, d                                          ; $6a0f: $5a
	ld l, d                                          ; $6a10: $6a
	ld l, c                                          ; $6a11: $69
	ld l, d                                          ; $6a12: $6a
	ld a, l                                          ; $6a13: $7d
	ld l, d                                          ; $6a14: $6a
	adc l                                            ; $6a15: $8d
	ld l, d                                          ; $6a16: $6a
	inc [hl]                                         ; $6a17: $34
	push hl                                          ; $6a18: $e5
	ld hl, $6fd4                                     ; $6a19: $21 $d4 $6f
	ld a, [$d841]                                    ; $6a1c: $fa $41 $d8
	cp $03                                           ; $6a1f: $fe $03
	jr c, jr_001_6a25                                ; $6a21: $38 $02

	ld a, $03                                        ; $6a23: $3e $03

jr_001_6a25:
	call Call_001_6ece                               ; $6a25: $cd $ce $6e
	pop hl                                           ; $6a28: $e1
	ld de, $5066                                     ; $6a29: $11 $66 $50
	call $3bf4                                       ; $6a2c: $cd $f4 $3b
	call $16d0                                       ; $6a2f: $cd $d0 $16
	ld l, $0c                                        ; $6a32: $2e $0c
	ld a, [hl]                                       ; $6a34: $7e
	or a                                             ; $6a35: $b7
	ret nz                                           ; $6a36: $c0

	ld l, $0a                                        ; $6a37: $2e $0a
	inc [hl]                                         ; $6a39: $34
	ld bc, $67b8                                     ; $6a3a: $01 $b8 $67
	jp $18c0                                         ; $6a3d: $c3 $c0 $18


	call $199f                                       ; $6a40: $cd $9f $19
	ret nz                                           ; $6a43: $c0

	ld l, $0a                                        ; $6a44: $2e $0a
	inc [hl]                                         ; $6a46: $34
	push hl                                          ; $6a47: $e5
	ld hl, $6a8e                                     ; $6a48: $21 $8e $6a
	ld a, [$d841]                                    ; $6a4b: $fa $41 $d8
	rst AddAOntoHL                                          ; $6a4e: $ef
	ld a, [hl]                                       ; $6a4f: $7e
	ld hl, $6fd4                                     ; $6a50: $21 $d4 $6f
	call Call_001_6ece                               ; $6a53: $cd $ce $6e
	pop hl                                           ; $6a56: $e1
	call Call_001_6ec2                               ; $6a57: $cd $c2 $6e
	call $16d0                                       ; $6a5a: $cd $d0 $16
	ld l, $0c                                        ; $6a5d: $2e $0c
	ld a, [hl]                                       ; $6a5f: $7e
	or a                                             ; $6a60: $b7
	ret nz                                           ; $6a61: $c0

	ld l, $0a                                        ; $6a62: $2e $0a
	inc [hl]                                         ; $6a64: $34

jr_001_6a65:
	call $3d58                                       ; $6a65: $cd $58 $3d
	ret                                              ; $6a68: $c9


	inc [hl]                                         ; $6a69: $34
	push hl                                          ; $6a6a: $e5
	ld hl, $6a93                                     ; $6a6b: $21 $93 $6a
	ld a, [$d841]                                    ; $6a6e: $fa $41 $d8
	rst AddAOntoHL                                          ; $6a71: $ef
	ld a, [hl]                                       ; $6a72: $7e
	ld hl, $6fd4                                     ; $6a73: $21 $d4 $6f
	call Call_001_6ece                               ; $6a76: $cd $ce $6e
	pop hl                                           ; $6a79: $e1
	call $3d53                                       ; $6a7a: $cd $53 $3d
	call $16d0                                       ; $6a7d: $cd $d0 $16
	ld l, $0c                                        ; $6a80: $2e $0c
	ld a, [hl]                                       ; $6a82: $7e
	or a                                             ; $6a83: $b7
	ret nz                                           ; $6a84: $c0

	ld l, $0a                                        ; $6a85: $2e $0a
	inc [hl]                                         ; $6a87: $34
	ld a, $01                                        ; $6a88: $3e $01
	ld [$d84f], a                                    ; $6a8a: $ea $4f $d8
	ret                                              ; $6a8d: $c9


	inc b                                            ; $6a8e: $04
	inc b                                            ; $6a8f: $04
	ld b, $04                                        ; $6a90: $06 $04
	ld b, $08                                        ; $6a92: $06 $08
	ld [$0507], sp                                   ; $6a94: $08 $07 $05
	add hl, bc                                       ; $6a97: $09
	ld a, [hl]                                       ; $6a98: $7e
	rst JumpTable                                          ; $6a99: $c7
	xor b                                            ; $6a9a: $a8
	ld l, d                                          ; $6a9b: $6a
	pop de                                           ; $6a9c: $d1
	ld l, d                                          ; $6a9d: $6a
	ldh [rOCPS], a                                   ; $6a9e: $e0 $6a
	add hl, hl                                       ; $6aa0: $29
	ld l, e                                          ; $6aa1: $6b
	ld d, h                                          ; $6aa2: $54
	ld l, e                                          ; $6aa3: $6b
	ld l, l                                          ; $6aa4: $6d
	ld l, e                                          ; $6aa5: $6b
	adc e                                            ; $6aa6: $8b
	ld l, e                                          ; $6aa7: $6b
	inc [hl]                                         ; $6aa8: $34
	push hl                                          ; $6aa9: $e5
	ld bc, $64aa                                     ; $6aaa: $01 $aa $64
	call $18c4                                       ; $6aad: $cd $c4 $18
	ld hl, $6ba0                                     ; $6ab0: $21 $a0 $6b
	call Call_001_6eec                               ; $6ab3: $cd $ec $6e
	call Call_001_6f15                               ; $6ab6: $cd $15 $6f
	pop hl                                           ; $6ab9: $e1
	ld bc, $d863                                     ; $6aba: $01 $63 $d8
	ld de, $5010                                     ; $6abd: $11 $10 $50
	xor a                                            ; $6ac0: $af
	call $3d99                                       ; $6ac1: $cd $99 $3d
	inc h                                            ; $6ac4: $24
	ld l, $00                                        ; $6ac5: $2e $00
	ld a, $35                                        ; $6ac7: $3e $35
	ld [hl], a                                       ; $6ac9: $77
	inc h                                            ; $6aca: $24
	ld [hl], a                                       ; $6acb: $77
	ld l, $30                                        ; $6acc: $2e $30
	ld [hl], $01                                     ; $6ace: $36 $01
	ret                                              ; $6ad0: $c9


	ld a, [$d842]                                    ; $6ad1: $fa $42 $d8
	or a                                             ; $6ad4: $b7
	ret z                                            ; $6ad5: $c8

	inc [hl]                                         ; $6ad6: $34
	ld de, $fe00                                     ; $6ad7: $11 $00 $fe
	ld bc, $0000                                     ; $6ada: $01 $00 $00
	call $3d32                                       ; $6add: $cd $32 $3d
	call $3d1b                                       ; $6ae0: $cd $1b $3d
	ld l, $07                                        ; $6ae3: $2e $07
	bit 4, [hl]                                      ; $6ae5: $cb $66
	ld a, $00                                        ; $6ae7: $3e $00
	jr z, jr_001_6aed                                ; $6ae9: $28 $02

	ld a, $10                                        ; $6aeb: $3e $10

jr_001_6aed:
	ldh [hDisp0_SCX], a                                     ; $6aed: $e0 $84
	ld a, [hl]                                       ; $6aef: $7e
	cp $18                                           ; $6af0: $fe $18
	jr c, jr_001_6afc                                ; $6af2: $38 $08

	cp $88                                           ; $6af4: $fe $88
	jr c, jr_001_6b19                                ; $6af6: $38 $21

	ld [hl], $88                                     ; $6af8: $36 $88
	jr jr_001_6afe                                   ; $6afa: $18 $02

jr_001_6afc:
	ld [hl], $18                                     ; $6afc: $36 $18

jr_001_6afe:
	ld l, $30                                        ; $6afe: $2e $30
	inc [hl]                                         ; $6b00: $34
	ld a, [hl]                                       ; $6b01: $7e
	and $fe                                          ; $6b02: $e6 $fe
	rrca                                             ; $6b04: $0f
	cp $05                                           ; $6b05: $fe $05
	jr c, jr_001_6b0b                                ; $6b07: $38 $02

	dec [hl]                                         ; $6b09: $35
	dec [hl]                                         ; $6b0a: $35

jr_001_6b0b:
	push hl                                          ; $6b0b: $e5
	ld hl, $6b8c                                     ; $6b0c: $21 $8c $6b
	call $3c89                                       ; $6b0f: $cd $89 $3c
	pop hl                                           ; $6b12: $e1
	ld bc, $0000                                     ; $6b13: $01 $00 $00
	call $3d32                                       ; $6b16: $cd $32 $3d

jr_001_6b19:
	ld a, [$d842]                                    ; $6b19: $fa $42 $d8
	cp $01                                           ; $6b1c: $fe $01

Jump_001_6b1e:
	ret z                                            ; $6b1e: $c8

	ld l, $0a                                        ; $6b1f: $2e $0a
	inc [hl]                                         ; $6b21: $34
	ld l, $31                                        ; $6b22: $2e $31
	ld [hl], $0a                                     ; $6b24: $36 $0a
	xor a                                            ; $6b26: $af
	ldh [hDisp0_SCX], a                                     ; $6b27: $e0 $84
	ld l, $07                                        ; $6b29: $2e $07
	ld a, [hl]                                       ; $6b2b: $7e
	ld b, $50                                        ; $6b2c: $06 $50
	cp b                                             ; $6b2e: $b8
	jr c, jr_001_6b3b                                ; $6b2f: $38 $0a

	jr z, jr_001_6b43                                ; $6b31: $28 $10

	dec [hl]                                         ; $6b33: $35
	dec [hl]                                         ; $6b34: $35
	dec [hl]                                         ; $6b35: $35
	ld a, [hl]                                       ; $6b36: $7e
	cp b                                             ; $6b37: $b8
	ret nc                                           ; $6b38: $d0

	ld [hl], b                                       ; $6b39: $70
	ret                                              ; $6b3a: $c9


jr_001_6b3b:
	inc [hl]                                         ; $6b3b: $34
	inc [hl]                                         ; $6b3c: $34
	inc [hl]                                         ; $6b3d: $34
	ld a, [hl]                                       ; $6b3e: $7e
	cp b                                             ; $6b3f: $b8
	ret c                                            ; $6b40: $d8

	ld [hl], b                                       ; $6b41: $70
	ret                                              ; $6b42: $c9


jr_001_6b43:
	ld l, $05                                        ; $6b43: $2e $05
	dec [hl]                                         ; $6b45: $35
	dec [hl]                                         ; $6b46: $35
	ld l, $31                                        ; $6b47: $2e $31
	dec [hl]                                         ; $6b49: $35
	ret nz                                           ; $6b4a: $c0

	ld l, $0a                                        ; $6b4b: $2e $0a
	inc [hl]                                         ; $6b4d: $34
	ld bc, $6029                                     ; $6b4e: $01 $29 $60
	call $3bfb                                       ; $6b51: $cd $fb $3b
	call $16d0                                       ; $6b54: $cd $d0 $16
	ld l, $0c                                        ; $6b57: $2e $0c
	ld a, [hl]                                       ; $6b59: $7e
	or a                                             ; $6b5a: $b7
	ret nz                                           ; $6b5b: $c0

	ld a, $01                                        ; $6b5c: $3e $01
	ld [$d84f], a                                    ; $6b5e: $ea $4f $d8
	ld a, [$d842]                                    ; $6b61: $fa $42 $d8
	cp $02                                           ; $6b64: $fe $02
	ret z                                            ; $6b66: $c8

	ld l, $0a                                        ; $6b67: $2e $0a
	inc [hl]                                         ; $6b69: $34
	call $3d58                                       ; $6b6a: $cd $58 $3d
	ld a, [$d842]                                    ; $6b6d: $fa $42 $d8
	cp $03                                           ; $6b70: $fe $03
	ret z                                            ; $6b72: $c8

	ld l, $0a                                        ; $6b73: $2e $0a
	inc [hl]                                         ; $6b75: $34
	push hl                                          ; $6b76: $e5
	ld hl, $6ba6                                     ; $6b77: $21 $a6 $6b
	ld a, [$d841]                                    ; $6b7a: $fa $41 $d8
	call $3c8f                                       ; $6b7d: $cd $8f $3c
	pop hl                                           ; $6b80: $e1
	ld de, $5028                                     ; $6b81: $11 $28 $50
	xor a                                            ; $6b84: $af
	call $3d99                                       ; $6b85: $cd $99 $3d
	call $3d53                                       ; $6b88: $cd $53 $3d
	ret                                              ; $6b8b: $c9


	nop                                              ; $6b8c: $00
	ld [bc], a                                       ; $6b8d: $02
	nop                                              ; $6b8e: $00
	db $fc                                           ; $6b8f: $fc
	nop                                              ; $6b90: $00
	ld b, $00                                        ; $6b91: $06 $00
	ld hl, sp+$00                                    ; $6b93: $f8 $00
	ld a, [bc]                                       ; $6b95: $0a
	nop                                              ; $6b96: $00
	db $f4                                           ; $6b97: $f4
	nop                                              ; $6b98: $00
	ld c, $00                                        ; $6b99: $0e $00
	ldh a, [rP1]                                     ; $6b9b: $f0 $00
	stop                                             ; $6b9d: $10 $00
	ldh a, [$1f]                                     ; $6b9f: $f0 $1f
	add sp, $61                                      ; $6ba1: $e8 $61
	rra                                              ; $6ba3: $1f
	ld a, c                                          ; $6ba4: $79
	ld h, l                                          ; $6ba5: $65
	db $db                                           ; $6ba6: $db
	ret c                                            ; $6ba7: $d8

	dec bc                                           ; $6ba8: $0b
	reti                                             ; $6ba9: $d9


	dec sp                                           ; $6baa: $3b
	reti                                             ; $6bab: $d9


	set 3, c                                         ; $6bac: $cb $d9
	ei                                               ; $6bae: $fb
	reti                                             ; $6baf: $d9


	ld l, e                                          ; $6bb0: $6b
	reti                                             ; $6bb1: $d9


	sbc e                                            ; $6bb2: $9b
	reti                                             ; $6bb3: $d9


	rst JumpTable                                          ; $6bb4: $c7
	cp e                                             ; $6bb5: $bb
	ld l, e                                          ; $6bb6: $6b
	push de                                          ; $6bb7: $d5
	ld l, e                                          ; $6bb8: $6b
	db $eb                                           ; $6bb9: $eb
	ld l, e                                          ; $6bba: $6b
	inc [hl]                                         ; $6bbb: $34
	ld bc, $602a                                     ; $6bbc: $01 $2a $60
	call $3bfb                                       ; $6bbf: $cd $fb $3b
	ld l, $30                                        ; $6bc2: $2e $30
	ld a, [hl]                                       ; $6bc4: $7e
	or a                                             ; $6bc5: $b7
	ld de, $1864                                     ; $6bc6: $11 $64 $18
	jr z, jr_001_6bce                                ; $6bc9: $28 $03

	ld de, $8864                                     ; $6bcb: $11 $64 $88

jr_001_6bce:
	call $3bf4                                       ; $6bce: $cd $f4 $3b
	call $16d0                                       ; $6bd1: $cd $d0 $16
	ret                                              ; $6bd4: $c9


	ld a, [$d842]                                    ; $6bd5: $fa $42 $d8
	cp $02                                           ; $6bd8: $fe $02
	jp c, $16d0                                      ; $6bda: $da $d0 $16

	cp $04                                           ; $6bdd: $fe $04
	ret c                                            ; $6bdf: $d8

	ld l, $0a                                        ; $6be0: $2e $0a
	inc [hl]                                         ; $6be2: $34
	ld bc, $da2b                                     ; $6be3: $01 $2b $da
	ld a, $00                                        ; $6be6: $3e $00
	call $3d9f                                       ; $6be8: $cd $9f $3d
	ret                                              ; $6beb: $c9


	ld a, [hl]                                       ; $6bec: $7e
	rst JumpTable                                          ; $6bed: $c7
	ld hl, sp+$6b                                    ; $6bee: $f8 $6b
	dec e                                            ; $6bf0: $1d
	ld l, h                                          ; $6bf1: $6c
	ld d, e                                          ; $6bf2: $53
	ld l, h                                          ; $6bf3: $6c
	ld e, h                                          ; $6bf4: $5c
	ld l, h                                          ; $6bf5: $6c
	rst JumpTable                                          ; $6bf6: $c7
	ld l, h                                          ; $6bf7: $6c
	inc [hl]                                         ; $6bf8: $34
	call Call_000_1309                                       ; $6bf9: $cd $09 $13
	ld l, $31                                        ; $6bfc: $2e $31
	ld [hl], a                                       ; $6bfe: $77
	push hl                                          ; $6bff: $e5
	ld hl, $6ccc                                     ; $6c00: $21 $cc $6c
	call Call_001_6eec                               ; $6c03: $cd $ec $6e
	ld bc, $645a                                     ; $6c06: $01 $5a $64
	call $18c4                                       ; $6c09: $cd $c4 $18
	pop hl                                           ; $6c0c: $e1
	ld bc, $6671                                     ; $6c0d: $01 $71 $66
	ld de, $3e58                                     ; $6c10: $11 $58 $3e
	ld a, $00                                        ; $6c13: $3e $00
	call $3d99                                       ; $6c15: $cd $99 $3d
	ld l, $30                                        ; $6c18: $2e $30
	ld [hl], $01                                     ; $6c1a: $36 $01
	ret                                              ; $6c1c: $c9


	ld l, $31                                        ; $6c1d: $2e $31
	inc [hl]                                         ; $6c1f: $34
	ld a, [wButtonsPressed]                                    ; $6c20: $fa $25 $c1
	ld b, a                                          ; $6c23: $47
	ld l, $30                                        ; $6c24: $2e $30
	ld a, [hl]                                       ; $6c26: $7e
	bit 1, b                                         ; $6c27: $cb $48
	jr nz, jr_001_6c39                               ; $6c29: $20 $0e

	bit 0, b                                         ; $6c2b: $cb $40
	jr nz, jr_001_6c3e                               ; $6c2d: $20 $0f

	bit 4, b                                         ; $6c2f: $cb $60
	ret z                                            ; $6c31: $c8

	ld l, $0a                                        ; $6c32: $2e $0a
	inc [hl]                                         ; $6c34: $34
	call $3d58                                       ; $6c35: $cd $58 $3d
	ret                                              ; $6c38: $c9


jr_001_6c39:
	or a                                             ; $6c39: $b7
	ret z                                            ; $6c3a: $c8

	dec [hl]                                         ; $6c3b: $35
	jr jr_001_6c42                                   ; $6c3c: $18 $04

jr_001_6c3e:
	cp $03                                           ; $6c3e: $fe $03
	ret nc                                           ; $6c40: $d0

	inc [hl]                                         ; $6c41: $34

jr_001_6c42:
	ld a, [hl]                                       ; $6c42: $7e
	ld de, $6cc8                                     ; $6c43: $11 $c8 $6c
	call $1327                                       ; $6c46: $cd $27 $13
	ld a, [de]                                       ; $6c49: $1a
	ld l, $07                                        ; $6c4a: $2e $07
	ld [hl], a                                       ; $6c4c: $77
	ld a, $68                                        ; $6c4d: $3e $68
	call $1e2e                                       ; $6c4f: $cd $2e $1e
	ret                                              ; $6c52: $c9


	inc [hl]                                         ; $6c53: $34
	ld a, $01                                        ; $6c54: $3e $01
	ld [$c16a], a                                    ; $6c56: $ea $6a $c1
	jp $3ba8                                         ; $6c59: $c3 $a8 $3b


	inc [hl]                                         ; $6c5c: $34
	ld l, $31                                        ; $6c5d: $2e $31
	ld a, [hl]                                       ; $6c5f: $7e
	and $03                                          ; $6c60: $e6 $03
	or a                                             ; $6c62: $b7
	jr z, jr_001_6c76                                ; $6c63: $28 $11

	cp $02                                           ; $6c65: $fe $02
	jr c, jr_001_6c74                                ; $6c67: $38 $0b

	ld a, [$d841]                                    ; $6c69: $fa $41 $d8
	jr z, jr_001_6c70                                ; $6c6c: $28 $02

	swap a                                           ; $6c6e: $cb $37

jr_001_6c70:
	and $0f                                          ; $6c70: $e6 $0f
	jr jr_001_6c76                                   ; $6c72: $18 $02

jr_001_6c74:
	ld a, $0f                                        ; $6c74: $3e $0f

jr_001_6c76:
	ld [$d841], a                                    ; $6c76: $ea $41 $d8
	push hl                                          ; $6c79: $e5
	push af                                          ; $6c7a: $f5
	ld hl, $6cdf                                     ; $6c7b: $21 $df $6c
	call Call_001_6f15                               ; $6c7e: $cd $15 $6f
	pop af                                           ; $6c81: $f1
	ld hl, $6ccf                                     ; $6c82: $21 $cf $6c
	rst AddAOntoHL                                          ; $6c85: $ef
	ld a, [hl]                                       ; $6c86: $7e
	push af                                          ; $6c87: $f5
	ld hl, $6d69                                     ; $6c88: $21 $69 $6d
	call $3c8f                                       ; $6c8b: $cd $8f $3c
	call $18c4                                       ; $6c8e: $cd $c4 $18
	pop af                                           ; $6c91: $f1
	ld b, a                                          ; $6c92: $47
	add a                                            ; $6c93: $87
	add b                                            ; $6c94: $80
	ld b, a                                          ; $6c95: $47
	ld a, [$a22a]                                    ; $6c96: $fa $2a $a2
	add b                                            ; $6c99: $80
	ld hl, $6ce2                                     ; $6c9a: $21 $e2 $6c
	ld b, a                                          ; $6c9d: $47
	add a                                            ; $6c9e: $87
	add a                                            ; $6c9f: $87
	add b                                            ; $6ca0: $80
	rst AddAOntoHL                                          ; $6ca1: $ef
	call Call_001_6eec                               ; $6ca2: $cd $ec $6e
	ld c, [hl]                                       ; $6ca5: $4e
	inc hl                                           ; $6ca6: $23
	ld b, [hl]                                       ; $6ca7: $46
	ld de, $5030                                     ; $6ca8: $11 $30 $50
	ld a, $00                                        ; $6cab: $3e $00
	pop hl                                           ; $6cad: $e1
	call $3d99                                       ; $6cae: $cd $99 $3d
	call $3d53                                       ; $6cb1: $cd $53 $3d
	ld a, $01                                        ; $6cb4: $3e $01
	ld [$d84f], a                                    ; $6cb6: $ea $4f $d8
	ld a, [$d841]                                    ; $6cb9: $fa $41 $d8
	cp $0f                                           ; $6cbc: $fe $0f
	ld a, $7f                                        ; $6cbe: $3e $7f
	jr nz, jr_001_6cc4                               ; $6cc0: $20 $02

	ld a, $7e                                        ; $6cc2: $3e $7e

jr_001_6cc4:
	call Jump_000_1af7                                       ; $6cc4: $cd $f7 $1a
	ret                                              ; $6cc7: $c9


	inc e                                            ; $6cc8: $1c
	ld a, $62                                        ; $6cc9: $3e $62
	add h                                            ; $6ccb: $84
	ld e, $00                                        ; $6ccc: $1e $00
	ld b, b                                          ; $6cce: $40
	nop                                              ; $6ccf: $00
	ld [bc], a                                       ; $6cd0: $02
	inc bc                                           ; $6cd1: $03
	inc b                                            ; $6cd2: $04
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	dec b                                            ; $6cd6: $05
	ld b, $00                                        ; $6cd7: $06 $00
	rlca                                             ; $6cd9: $07
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	ld [$0100], sp                                   ; $6cdc: $08 $00 $01
	ld e, $a3                                        ; $6cdf: $1e $a3
	ld d, a                                          ; $6ce1: $57
	ld e, $3c                                        ; $6ce2: $1e $3c
	ld b, b                                          ; $6ce4: $40
	ld h, e                                          ; $6ce5: $63
	ret c                                            ; $6ce6: $d8

	ld e, $46                                        ; $6ce7: $1e $46
	ld b, c                                          ; $6ce9: $41
	and e                                            ; $6cea: $a3
	ret c                                            ; $6ceb: $d8

	ld e, $f9                                        ; $6cec: $1e $f9
	ld b, c                                          ; $6cee: $41
	db $d3                                           ; $6cef: $d3
	ret c                                            ; $6cf0: $d8

	ld e, $6f                                        ; $6cf1: $1e $6f
	ld b, d                                          ; $6cf3: $42
	rst SubAFromBC                                          ; $6cf4: $e7
	ret c                                            ; $6cf5: $d8

	ld e, $d0                                        ; $6cf6: $1e $d0
	ld b, e                                          ; $6cf8: $43
	cpl                                              ; $6cf9: $2f
	reti                                             ; $6cfa: $d9


	ld e, $16                                        ; $6cfb: $1e $16
	ld b, l                                          ; $6cfd: $45
	ld [hl], e                                       ; $6cfe: $73
	reti                                             ; $6cff: $d9


	ld e, $df                                        ; $6d00: $1e $df
	ld d, d                                          ; $6d02: $52
	or e                                             ; $6d03: $b3
	reti                                             ; $6d04: $d9


	ld e, $bb                                        ; $6d05: $1e $bb
	ld d, e                                          ; $6d07: $53
	db $db                                           ; $6d08: $db
	reti                                             ; $6d09: $d9


	ld e, $9a                                        ; $6d0a: $1e $9a
	ld d, h                                          ; $6d0c: $54
	rrca                                             ; $6d0d: $0f
	jp c, Jump_001_6b1e                              ; $6d0e: $da $1e $6b

	ld c, b                                          ; $6d11: $48
	scf                                              ; $6d12: $37
	jp c, $021e                                      ; $6d13: $da $1e $02

	ld c, c                                          ; $6d16: $49
	ld d, e                                          ; $6d17: $53
	jp c, $d21e                                      ; $6d18: $da $1e $d2

	ld c, c                                          ; $6d1b: $49
	ld a, a                                          ; $6d1c: $7f
	jp c, $2f1e                                      ; $6d1d: $da $1e $2f

	ld d, b                                          ; $6d20: $50
	cp a                                             ; $6d21: $bf
	jp c, $351e                                      ; $6d22: $da $1e $35

	ld d, c                                          ; $6d25: $51
	rst FarCall                                          ; $6d26: $f7
	jp c, $0a1e                                      ; $6d27: $da $1e $0a

	ld d, d                                          ; $6d2a: $52
	inc hl                                           ; $6d2b: $23
	db $db                                           ; $6d2c: $db
	ld e, $35                                        ; $6d2d: $1e $35
	ld c, l                                          ; $6d2f: $4d
	ld c, a                                          ; $6d30: $4f
	db $db                                           ; $6d31: $db
	ld e, $38                                        ; $6d32: $1e $38
	ld c, [hl]                                       ; $6d34: $4e
	add e                                            ; $6d35: $83
	db $db                                           ; $6d36: $db
	ld e, $0c                                        ; $6d37: $1e $0c
	ld c, a                                          ; $6d39: $4f
	xor e                                            ; $6d3a: $ab
	db $db                                           ; $6d3b: $db
	ld e, $4d                                        ; $6d3c: $1e $4d
	ld b, [hl]                                       ; $6d3e: $46
	rst SubAFromBC                                          ; $6d3f: $e7
	db $db                                           ; $6d40: $db
	ld e, $18                                        ; $6d41: $1e $18
	ld b, a                                          ; $6d43: $47
	inc de                                           ; $6d44: $13
	call c, $ae1e                                    ; $6d45: $dc $1e $ae
	ld b, a                                          ; $6d48: $47
	dec sp                                           ; $6d49: $3b
	call c, Call_001_791e                            ; $6d4a: $dc $1e $79
	ld d, l                                          ; $6d4d: $55
	add e                                            ; $6d4e: $83
	call c, Call_001_791e                            ; $6d4f: $dc $1e $79
	ld d, l                                          ; $6d52: $55
	add e                                            ; $6d53: $83
	call c, Call_001_531e                            ; $6d54: $dc $1e $53
	ld d, [hl]                                       ; $6d57: $56
	or e                                             ; $6d58: $b3
	call c, $c71e                                    ; $6d59: $dc $1e $c7
	ld c, d                                          ; $6d5c: $4a
	di                                               ; $6d5d: $f3
	call c, $e11e                                    ; $6d5e: $dc $1e $e1
	ld c, e                                          ; $6d61: $4b
	dec hl                                           ; $6d62: $2b
	db $dd                                           ; $6d63: $dd
	ld e, $85                                        ; $6d64: $1e $85
	ld c, h                                          ; $6d66: $4c
	ld e, a                                          ; $6d67: $5f
	db $dd                                           ; $6d68: $dd
	ld e, [hl]                                       ; $6d69: $5e
	ld h, h                                          ; $6d6a: $64
	ld h, d                                          ; $6d6b: $62
	ld h, h                                          ; $6d6c: $64
	ld h, [hl]                                       ; $6d6d: $66
	ld h, h                                          ; $6d6e: $64
	ld l, d                                          ; $6d6f: $6a
	ld h, h                                          ; $6d70: $64
	ld l, [hl]                                       ; $6d71: $6e
	ld h, h                                          ; $6d72: $64
	ld [hl], d                                       ; $6d73: $72
	ld h, h                                          ; $6d74: $64
	halt                                             ; $6d75: $76
	ld h, h                                          ; $6d76: $64
	ld a, d                                          ; $6d77: $7a
	ld h, h                                          ; $6d78: $64
	ld a, [hl]                                       ; $6d79: $7e
	ld h, h                                          ; $6d7a: $64
	ld a, [hl]                                       ; $6d7b: $7e
	rst JumpTable                                          ; $6d7c: $c7
	add e                                            ; $6d7d: $83
	ld l, l                                          ; $6d7e: $6d
	adc l                                            ; $6d7f: $8d
	ld l, l                                          ; $6d80: $6d
	call nz, $346d                                   ; $6d81: $c4 $6d $34
	call $3d58                                       ; $6d84: $cd $58 $3d
	ld a, $01                                        ; $6d87: $3e $01
	call Call_001_6dd1                               ; $6d89: $cd $d1 $6d
	ret                                              ; $6d8c: $c9


	ld l, $30                                        ; $6d8d: $2e $30
	ld a, [hl]                                       ; $6d8f: $7e
	or a                                             ; $6d90: $b7
	jr z, jr_001_6d95                                ; $6d91: $28 $02

	dec [hl]                                         ; $6d93: $35
	ret                                              ; $6d94: $c9


jr_001_6d95:
	ld l, $31                                        ; $6d95: $2e $31
	ld a, [hl]                                       ; $6d97: $7e
	cp $07                                           ; $6d98: $fe $07
	jr c, jr_001_6da3                                ; $6d9a: $38 $07

	jr nz, jr_001_6dbd                               ; $6d9c: $20 $1f

	xor a                                            ; $6d9e: $af
	call Call_001_6dd1                               ; $6d9f: $cd $d1 $6d
	ld a, [hl]                                       ; $6da2: $7e

jr_001_6da3:
	ld b, a                                          ; $6da3: $47
	inc [hl]                                         ; $6da4: $34
	ld de, $6e90                                     ; $6da5: $11 $90 $6e
	add a                                            ; $6da8: $87
	add a                                            ; $6da9: $87
	call $1327                                       ; $6daa: $cd $27 $13
	ld a, [de]                                       ; $6dad: $1a
	ld l, $30                                        ; $6dae: $2e $30
	ld [hl], a                                       ; $6db0: $77
	ld a, b                                          ; $6db1: $78
	inc a                                            ; $6db2: $3c
	add h                                            ; $6db3: $84
	ld h, a                                          ; $6db4: $67
	ld l, $00                                        ; $6db5: $2e $00
	ld [hl], $34                                     ; $6db7: $36 $34
	ld l, $30                                        ; $6db9: $2e $30
	ld [hl], b                                       ; $6dbb: $70
	ret                                              ; $6dbc: $c9


jr_001_6dbd:
	ld l, $0a                                        ; $6dbd: $2e $0a
	inc [hl]                                         ; $6dbf: $34
	ld l, $30                                        ; $6dc0: $2e $30
	ld [hl], $3c                                     ; $6dc2: $36 $3c
	ld l, $30                                        ; $6dc4: $2e $30
	ld a, [hl]                                       ; $6dc6: $7e
	or a                                             ; $6dc7: $b7
	ret z                                            ; $6dc8: $c8

	dec [hl]                                         ; $6dc9: $35
	ret nz                                           ; $6dca: $c0

	ld a, $01                                        ; $6dcb: $3e $01
	ld [$d84f], a                                    ; $6dcd: $ea $4f $d8
	ret                                              ; $6dd0: $c9


Call_001_6dd1:
	push hl                                          ; $6dd1: $e5
	ld hl, $6de9                                     ; $6dd2: $21 $e9 $6d
	or a                                             ; $6dd5: $b7
	jr z, jr_001_6ddb                                ; $6dd6: $28 $03

	ld hl, $6df1                                     ; $6dd8: $21 $f1 $6d

jr_001_6ddb:
	call Call_001_6eec                               ; $6ddb: $cd $ec $6e
	call Call_001_6f15                               ; $6dde: $cd $15 $6f
	ld c, [hl]                                       ; $6de1: $4e
	inc hl                                           ; $6de2: $23
	ld b, [hl]                                       ; $6de3: $46
	call $18c4                                       ; $6de4: $cd $c4 $18
	pop hl                                           ; $6de7: $e1
	ret                                              ; $6de8: $c9


	rra                                              ; $6de9: $1f
	jp nc, $1f66                                     ; $6dea: $d2 $66 $1f

	adc e                                            ; $6ded: $8b
	ld l, c                                          ; $6dee: $69
	and d                                            ; $6def: $a2
	ld h, h                                          ; $6df0: $64
	rra                                              ; $6df1: $1f
	or c                                             ; $6df2: $b1
	ld l, d                                          ; $6df3: $6a
	rra                                              ; $6df4: $1f
	ld b, e                                          ; $6df5: $43
	ld l, h                                          ; $6df6: $6c
	and [hl]                                         ; $6df7: $a6
	ld h, h                                          ; $6df8: $64
	rst JumpTable                                          ; $6df9: $c7
	nop                                              ; $6dfa: $00
	ld l, [hl]                                       ; $6dfb: $6e
	ld c, h                                          ; $6dfc: $4c
	ld l, [hl]                                       ; $6dfd: $6e
	adc l                                            ; $6dfe: $8d
	ld l, [hl]                                       ; $6dff: $6e
	inc [hl]                                         ; $6e00: $34
	ld l, $30                                        ; $6e01: $2e $30
	ld a, [hl+]                                      ; $6e03: $2a
	ld de, $6e90                                     ; $6e04: $11 $90 $6e
	add a                                            ; $6e07: $87
	add a                                            ; $6e08: $87
	inc a                                            ; $6e09: $3c
	call $1327                                       ; $6e0a: $cd $27 $13
	ld a, [de]                                       ; $6e0d: $1a
	ld [hl], a                                       ; $6e0e: $77
	push de                                          ; $6e0f: $d5
	and $0f                                          ; $6e10: $e6 $0f
	cp $01                                           ; $6e12: $fe $01
	ld bc, $6024                                     ; $6e14: $01 $24 $60
	jr c, jr_001_6e1c                                ; $6e17: $38 $03

	ld bc, $6026                                     ; $6e19: $01 $26 $60

jr_001_6e1c:
	call $3bfb                                       ; $6e1c: $cd $fb $3b
	pop bc                                           ; $6e1f: $c1
	inc bc                                           ; $6e20: $03
	ld a, [bc]                                       ; $6e21: $0a
	ld d, a                                          ; $6e22: $57
	inc bc                                           ; $6e23: $03
	ld a, [bc]                                       ; $6e24: $0a
	ld e, a                                          ; $6e25: $5f
	call $3bf4                                       ; $6e26: $cd $f4 $3b
	ld l, $31                                        ; $6e29: $2e $31
	ld a, [hl]                                       ; $6e2b: $7e
	swap a                                           ; $6e2c: $cb $37
	and $0f                                          ; $6e2e: $e6 $0f
	ld de, $0000                                     ; $6e30: $11 $00 $00
	jr z, jr_001_6e3f                                ; $6e33: $28 $0a

	cp $01                                           ; $6e35: $fe $01
	ld de, $0010                                     ; $6e37: $11 $10 $00
	jr z, jr_001_6e3f                                ; $6e3a: $28 $03

	ld de, $fff0                                     ; $6e3c: $11 $f0 $ff

jr_001_6e3f:
	ld bc, $fe50                                     ; $6e3f: $01 $50 $fe
	call $3d32                                       ; $6e42: $cd $32 $3d
	ld l, $32                                        ; $6e45: $2e $32
	ld [hl], $6e                                     ; $6e47: $36 $6e
	jp $16d0                                         ; $6e49: $c3 $d0 $16


	call $3d1b                                       ; $6e4c: $cd $1b $3d
	call $16d0                                       ; $6e4f: $cd $d0 $16
	call $3d13                                       ; $6e52: $cd $13 $3d
	ld a, $03                                        ; $6e55: $3e $03
	call $132c                                       ; $6e57: $cd $2c $13
	call $3d0b                                       ; $6e5a: $cd $0b $3d
	call $3d32                                       ; $6e5d: $cd $32 $3d
	ld l, $32                                        ; $6e60: $2e $32
	ld a, [hl]                                       ; $6e62: $7e
	cp $4a                                           ; $6e63: $fe $4a
	jr nz, jr_001_6e6c                               ; $6e65: $20 $05

	ld a, $76                                        ; $6e67: $3e $76
	call $1e2e                                       ; $6e69: $cd $2e $1e

jr_001_6e6c:
	dec [hl]                                         ; $6e6c: $35
	ret nz                                           ; $6e6d: $c0

	ld l, $0a                                        ; $6e6e: $2e $0a
	inc [hl]                                         ; $6e70: $34
	ld l, $31                                        ; $6e71: $2e $31
	ld a, [hl]                                       ; $6e73: $7e
	and $0f                                          ; $6e74: $e6 $0f
	cp $01                                           ; $6e76: $fe $01
	ld bc, $6025                                     ; $6e78: $01 $25 $60
	jr c, jr_001_6e85                                ; $6e7b: $38 $08

	ld bc, $6027                                     ; $6e7d: $01 $27 $60
	jr z, jr_001_6e85                                ; $6e80: $28 $03

	ld bc, $6028                                     ; $6e82: $01 $28 $60

jr_001_6e85:
	call $3bfb                                       ; $6e85: $cd $fb $3b
	ld a, $77                                        ; $6e88: $3e $77
	call $1e2e                                       ; $6e8a: $cd $2e $1e
	jp $16d0                                         ; $6e8d: $c3 $d0 $16


	ld a, b                                          ; $6e90: $78
	ld bc, $a046                                     ; $6e91: $01 $46 $a0
	ld e, d                                          ; $6e94: $5a
	ld [de], a                                       ; $6e95: $12
	inc d                                            ; $6e96: $14
	xor d                                            ; $6e97: $aa
	ld d, b                                          ; $6e98: $50
	ld de, $af82                                     ; $6e99: $11 $82 $af
	ld h, h                                          ; $6e9c: $64
	ld [bc], a                                       ; $6e9d: $02
	ld h, h                                          ; $6e9e: $64
	sbc [hl]                                         ; $6e9f: $9e
	ld e, d                                          ; $6ea0: $5a
	ld [de], a                                       ; $6ea1: $12
	jr z, @-$54                                      ; $6ea2: $28 $aa

	ld [$8221], sp                                   ; $6ea4: $08 $21 $82
	xor d                                            ; $6ea7: $aa
	jp nc, $1802                                     ; $6ea8: $d2 $02 $18

	xor a                                            ; $6eab: $af
	ld a, [$4c00]                                    ; $6eac: $fa $00 $4c
	xor d                                            ; $6eaf: $aa

Call_001_6eb0:
	xor a                                            ; $6eb0: $af
	ld [$d84f], a                                    ; $6eb1: $ea $4f $d8
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6eb4: $cd $ef $2d
	ld a, $32                                        ; $6eb7: $3e $32
	ld [$c200], a                                    ; $6eb9: $ea $00 $c2
	call Call_001_6ec2                               ; $6ebc: $cd $c2 $6e
	jp $2e21                                         ; $6ebf: $c3 $21 $2e


Call_001_6ec2:
	ld a, $e4                                        ; $6ec2: $3e $e4
	ldh [hDisp0_OBP0], a                                     ; $6ec4: $e0 $86
	ld a, $d0                                        ; $6ec6: $3e $d0
	ldh [hDisp0_OBP1], a                                     ; $6ec8: $e0 $87
	ret                                              ; $6eca: $c9


Call_001_6ecb:
	jp todo_Clears40hBytesAtWramBank0Pages2Plus                                         ; $6ecb: $c3 $ef $2d


Call_001_6ece:
	add a                                            ; $6ece: $87
	ld b, a                                          ; $6ecf: $47
	add a                                            ; $6ed0: $87
	add a                                            ; $6ed1: $87
	add b                                            ; $6ed2: $80
	rst AddAOntoHL                                          ; $6ed3: $ef
	call Call_001_6eec                               ; $6ed4: $cd $ec $6e
	call Call_001_6f15                               ; $6ed7: $cd $15 $6f
	ld c, [hl]                                       ; $6eda: $4e
	inc hl                                           ; $6edb: $23
	ld b, [hl]                                       ; $6edc: $46
	inc hl                                           ; $6edd: $23
	push hl                                          ; $6ede: $e5
	call $18c4                                       ; $6edf: $cd $c4 $18
	pop hl                                           ; $6ee2: $e1
	ld c, [hl]                                       ; $6ee3: $4e
	inc hl                                           ; $6ee4: $23
	ld b, [hl]                                       ; $6ee5: $46
	ld hl, $c200                                     ; $6ee6: $21 $00 $c2
	jp $3bfb                                         ; $6ee9: $c3 $fb $3b


Call_001_6eec:
	ld a, $f9                                        ; $6eec: $3e $f9
	ld [$d850], a                                    ; $6eee: $ea $50 $d8
	ld a, [hl+]                                      ; $6ef1: $2a
	ld [$d851], a                                    ; $6ef2: $ea $51 $d8
	ld a, [hl+]                                      ; $6ef5: $2a
	ld [$d852], a                                    ; $6ef6: $ea $52 $d8
	ld a, [hl+]                                      ; $6ef9: $2a
	ld [$d853], a                                    ; $6efa: $ea $53 $d8
	ld a, $00                                        ; $6efd: $3e $00
	ld [$d854], a                                    ; $6eff: $ea $54 $d8
	ld a, $80                                        ; $6f02: $3e $80
	ld [$d855], a                                    ; $6f04: $ea $55 $d8
	ld a, $ff                                        ; $6f07: $3e $ff
	ld [$d856], a                                    ; $6f09: $ea $56 $d8
	push hl                                          ; $6f0c: $e5
	ld hl, $d850                                     ; $6f0d: $21 $50 $d8
	call $0aab                                       ; $6f10: $cd $ab $0a
	pop hl                                           ; $6f13: $e1
	ret                                              ; $6f14: $c9


Call_001_6f15:
	ld a, $fc                                        ; $6f15: $3e $fc
	ld [$d850], a                                    ; $6f17: $ea $50 $d8
	ld a, [hl+]                                      ; $6f1a: $2a
	ld [$d851], a                                    ; $6f1b: $ea $51 $d8
	ld a, [hl+]                                      ; $6f1e: $2a
	ld [$d852], a                                    ; $6f1f: $ea $52 $d8
	ld a, [hl+]                                      ; $6f22: $2a
	ld [$d853], a                                    ; $6f23: $ea $53 $d8
	ld a, $63                                        ; $6f26: $3e $63
	ld [$d854], a                                    ; $6f28: $ea $54 $d8
	ld a, $d8                                        ; $6f2b: $3e $d8
	ld [$d855], a                                    ; $6f2d: $ea $55 $d8
	ld a, $ff                                        ; $6f30: $3e $ff
	ld [$d856], a                                    ; $6f32: $ea $56 $d8
	push hl                                          ; $6f35: $e5
	ld hl, $d850                                     ; $6f36: $21 $50 $d8
	call $0aab                                       ; $6f39: $cd $ab $0a
	pop hl                                           ; $6f3c: $e1
	ret                                              ; $6f3d: $c9


	rra                                              ; $6f3e: $1f
	nop                                              ; $6f3f: $00
	ld b, b                                          ; $6f40: $40
	rra                                              ; $6f41: $1f
	ld e, d                                          ; $6f42: $5a
	ld b, l                                          ; $6f43: $45
	sub d                                            ; $6f44: $92
	ld h, h                                          ; $6f45: $64
	add hl, de                                       ; $6f46: $19
	ld h, b                                          ; $6f47: $60
	rra                                              ; $6f48: $1f
	nop                                              ; $6f49: $00
	ld b, b                                          ; $6f4a: $40
	rra                                              ; $6f4b: $1f
	ld a, h                                          ; $6f4c: $7c
	ld c, b                                          ; $6f4d: $48
	sub d                                            ; $6f4e: $92
	ld h, h                                          ; $6f4f: $64
	inc e                                            ; $6f50: $1c
	ld h, b                                          ; $6f51: $60
	rra                                              ; $6f52: $1f
	nop                                              ; $6f53: $00
	ld b, b                                          ; $6f54: $40
	rra                                              ; $6f55: $1f
	jr jr_001_6fa1                                   ; $6f56: $18 $49

	sub d                                            ; $6f58: $92
	ld h, h                                          ; $6f59: $64
	dec e                                            ; $6f5a: $1d
	ld h, b                                          ; $6f5b: $60
	rra                                              ; $6f5c: $1f
	add hl, hl                                       ; $6f5d: $29
	ld b, e                                          ; $6f5e: $43
	rra                                              ; $6f5f: $1f
	ld c, c                                          ; $6f60: $49
	ld b, [hl]                                       ; $6f61: $46
	sub [hl]                                         ; $6f62: $96
	ld h, h                                          ; $6f63: $64
	ld a, [de]                                       ; $6f64: $1a
	ld h, b                                          ; $6f65: $60
	rra                                              ; $6f66: $1f
	add hl, hl                                       ; $6f67: $29
	ld b, e                                          ; $6f68: $43
	rra                                              ; $6f69: $1f
	push hl                                          ; $6f6a: $e5
	ld b, a                                          ; $6f6b: $47
	sub [hl]                                         ; $6f6c: $96
	ld h, h                                          ; $6f6d: $64
	dec de                                           ; $6f6e: $1b
	ld h, b                                          ; $6f6f: $60
	rra                                              ; $6f70: $1f
	nop                                              ; $6f71: $00
	ld b, b                                          ; $6f72: $40
	rra                                              ; $6f73: $1f
	ld e, d                                          ; $6f74: $5a
	ld b, l                                          ; $6f75: $45
	sub d                                            ; $6f76: $92
	ld h, h                                          ; $6f77: $64
	add hl, de                                       ; $6f78: $19
	ld h, b                                          ; $6f79: $60
	ld e, $ab                                        ; $6f7a: $1e $ab
	ld e, d                                          ; $6f7c: $5a
	ld e, $20                                        ; $6f7d: $1e $20
	ld h, l                                          ; $6f7f: $65
	adc d                                            ; $6f80: $8a
	ld h, h                                          ; $6f81: $64
	ld bc, $1e60                                     ; $6f82: $01 $60 $1e
	ld d, h                                          ; $6f85: $54
	ld e, l                                          ; $6f86: $5d
	ld e, $c9                                        ; $6f87: $1e $c9
	ld h, [hl]                                       ; $6f89: $66
	adc [hl]                                         ; $6f8a: $8e
	ld h, h                                          ; $6f8b: $64
	ld [bc], a                                       ; $6f8c: $02
	ld h, b                                          ; $6f8d: $60
	ld e, $d5                                        ; $6f8e: $1e $d5
	ld e, a                                          ; $6f90: $5f
	ld e, $75                                        ; $6f91: $1e $75
	ld l, b                                          ; $6f93: $68
	adc d                                            ; $6f94: $8a
	ld h, h                                          ; $6f95: $64
	inc bc                                           ; $6f96: $03
	ld h, b                                          ; $6f97: $60
	ld e, $86                                        ; $6f98: $1e $86
	ld h, d                                          ; $6f9a: $62
	ld e, $0d                                        ; $6f9b: $1e $0d
	ld l, d                                          ; $6f9d: $6a
	adc d                                            ; $6f9e: $8a
	ld h, h                                          ; $6f9f: $64
	inc b                                            ; $6fa0: $04

jr_001_6fa1:
	ld h, b                                          ; $6fa1: $60
	ld e, $b8                                        ; $6fa2: $1e $b8
	ld l, e                                          ; $6fa4: $6b
	ld e, $13                                        ; $6fa5: $1e $13
	ld [hl], h                                       ; $6fa7: $74
	sbc d                                            ; $6fa8: $9a
	ld h, h                                          ; $6fa9: $64
	rrca                                             ; $6faa: $0f
	ld h, b                                          ; $6fab: $60
	ld e, $b8                                        ; $6fac: $1e $b8
	ld l, e                                          ; $6fae: $6b
	ld e, $31                                        ; $6faf: $1e $31
	ld [hl], l                                       ; $6fb1: $75
	sbc d                                            ; $6fb2: $9a
	ld h, h                                          ; $6fb3: $64
	db $10                                           ; $6fb4: $10
	ld h, b                                          ; $6fb5: $60
	ld e, $7f                                        ; $6fb6: $1e $7f
	ld l, a                                          ; $6fb8: $6f
	ld e, $71                                        ; $6fb9: $1e $71
	halt                                             ; $6fbb: $76
	sbc [hl]                                         ; $6fbc: $9e
	ld h, h                                          ; $6fbd: $64
	ld de, $1e60                                     ; $6fbe: $11 $60 $1e
	ld c, h                                          ; $6fc1: $4c
	ld [hl], d                                       ; $6fc2: $72
	ld e, $57                                        ; $6fc3: $1e $57
	ld a, b                                          ; $6fc5: $78
	sbc d                                            ; $6fc6: $9a
	ld h, h                                          ; $6fc7: $64
	inc de                                           ; $6fc8: $13
	ld h, b                                          ; $6fc9: $60
	ld e, $7f                                        ; $6fca: $1e $7f
	ld l, a                                          ; $6fcc: $6f
	ld e, $90                                        ; $6fcd: $1e $90
	ld [hl], a                                       ; $6fcf: $77
	sbc [hl]                                         ; $6fd0: $9e
	ld h, h                                          ; $6fd1: $64
	ld [de], a                                       ; $6fd2: $12
	ld h, b                                          ; $6fd3: $60
	rra                                              ; $6fd4: $1f
	cp d                                             ; $6fd5: $ba
	ld c, c                                          ; $6fd6: $49
	rra                                              ; $6fd7: $1f
	or l                                             ; $6fd8: $b5
	ld d, a                                          ; $6fd9: $57
	add d                                            ; $6fda: $82
	ld h, h                                          ; $6fdb: $64
	dec b                                            ; $6fdc: $05
	ld h, b                                          ; $6fdd: $60
	rra                                              ; $6fde: $1f
	dec l                                            ; $6fdf: $2d
	ld c, h                                          ; $6fe0: $4c
	rra                                              ; $6fe1: $1f
	ld hl, $8658                                     ; $6fe2: $21 $58 $86
	ld h, h                                          ; $6fe5: $64
	ld b, $60                                        ; $6fe6: $06 $60
	rra                                              ; $6fe8: $1f
	dec l                                            ; $6fe9: $2d
	ld c, h                                          ; $6fea: $4c
	rra                                              ; $6feb: $1f
	xor [hl]                                         ; $6fec: $ae
	ld e, b                                          ; $6fed: $58
	add [hl]                                         ; $6fee: $86
	ld h, h                                          ; $6fef: $64
	rlca                                             ; $6ff0: $07
	ld h, b                                          ; $6ff1: $60
	rra                                              ; $6ff2: $1f
	cp d                                             ; $6ff3: $ba
	ld c, c                                          ; $6ff4: $49
	rra                                              ; $6ff5: $1f
	dec h                                            ; $6ff6: $25
	ld e, c                                          ; $6ff7: $59
	add d                                            ; $6ff8: $82
	ld h, h                                          ; $6ff9: $64
	ld [$1f60], sp                                   ; $6ffa: $08 $60 $1f
	ld h, c                                          ; $6ffd: $61
	ld d, c                                          ; $6ffe: $51
	rra                                              ; $6fff: $1f
	and c                                            ; $7000: $a1
	ld e, d                                          ; $7001: $5a
	add [hl]                                         ; $7002: $86
	ld h, h                                          ; $7003: $64
	add hl, bc                                       ; $7004: $09
	ld h, b                                          ; $7005: $60
	rra                                              ; $7006: $1f
	add a                                            ; $7007: $87
	ld c, [hl]                                       ; $7008: $4e
	rra                                              ; $7009: $1f
	adc a                                            ; $700a: $8f
	ld e, c                                          ; $700b: $59
	add [hl]                                         ; $700c: $86
	ld h, h                                          ; $700d: $64
	ld a, [bc]                                       ; $700e: $0a
	ld h, b                                          ; $700f: $60
	rra                                              ; $7010: $1f
	ld e, b                                          ; $7011: $58
	ld d, e                                          ; $7012: $53
	rra                                              ; $7013: $1f
	cpl                                              ; $7014: $2f
	ld e, h                                          ; $7015: $5c
	add [hl]                                         ; $7016: $86
	ld h, h                                          ; $7017: $64
	dec bc                                           ; $7018: $0b
	ld h, b                                          ; $7019: $60
	rra                                              ; $701a: $1f
	ld l, [hl]                                       ; $701b: $6e
	ld d, l                                          ; $701c: $55
	rra                                              ; $701d: $1f
	ldh [$5d], a                                     ; $701e: $e0 $5d
	add [hl]                                         ; $7020: $86
	ld h, h                                          ; $7021: $64
	inc c                                            ; $7022: $0c
	ld h, b                                          ; $7023: $60
	rra                                              ; $7024: $1f
	add a                                            ; $7025: $87
	ld c, [hl]                                       ; $7026: $4e
	rra                                              ; $7027: $1f
	adc a                                            ; $7028: $8f
	ld e, c                                          ; $7029: $59
	add [hl]                                         ; $702a: $86
	ld h, h                                          ; $702b: $64
	dec c                                            ; $702c: $0d
	ld h, b                                          ; $702d: $60
	rra                                              ; $702e: $1f
	ld l, [hl]                                       ; $702f: $6e
	ld d, l                                          ; $7030: $55
	rra                                              ; $7031: $1f
	ldh [$5d], a                                     ; $7032: $e0 $5d
	add [hl]                                         ; $7034: $86
	ld h, h                                          ; $7035: $64
	ld c, $60                                        ; $7036: $0e $60
	ld a, [$c180]                                    ; $7038: $fa $80 $c1
	or a                                             ; $703b: $b7
	jr nz, jr_001_704b                               ; $703c: $20 $0d

	ld a, [$c189]                                    ; $703e: $fa $89 $c1
	ld hl, $a146                                     ; $7041: $21 $46 $a1
	ld [hl], a                                       ; $7044: $77
	inc hl                                           ; $7045: $23
	ld [hl], a                                       ; $7046: $77
	call $3e33                                       ; $7047: $cd $33 $3e
	ret                                              ; $704a: $c9


jr_001_704b:
	xor a                                            ; $704b: $af
	ld [$c171], a                                    ; $704c: $ea $71 $c1
	ld a, $01                                        ; $704f: $3e $01
	ld [$c154], a                                    ; $7051: $ea $54 $c1
	xor a                                            ; $7054: $af
	ld [$c158], a                                    ; $7055: $ea $58 $c1
	ld a, [$c189]                                    ; $7058: $fa $89 $c1
	call Call_001_706a                               ; $705b: $cd $6a $70
	ret                                              ; $705e: $c9


	ld hl, $c150                                     ; $705f: $21 $50 $c1
	ld b, $31                                        ; $7062: $06 $31
	xor a                                            ; $7064: $af

jr_001_7065:
	ld [hl+], a                                      ; $7065: $22
	dec b                                            ; $7066: $05
	jr nz, jr_001_7065                               ; $7067: $20 $fc

	ret                                              ; $7069: $c9


Call_001_706a::
	ld [$d323], a                                    ; $706a: $ea $23 $d3
	cp $02                                           ; $706d: $fe $02
	jr nz, jr_001_7078                               ; $706f: $20 $07

	ld hl, $6b7b                                     ; $7071: $21 $7b $6b
	rst FarCall                                          ; $7074: $f7
	ld c, c                                          ; $7075: $49
	ld l, c                                          ; $7076: $69
	dec b                                            ; $7077: $05

jr_001_7078:
	xor a                                            ; $7078: $af
	ld [$c146], a                                    ; $7079: $ea $46 $c1
	ld [$c151], a                                    ; $707c: $ea $51 $c1
	ld [$c150], a                                    ; $707f: $ea $50 $c1
	ld [$c152], a                                    ; $7082: $ea $52 $c1
	ld hl, $0790                                     ; $7085: $21 $90 $07
	call $095c                                       ; $7088: $cd $5c $09

jr_001_708b:
	ld hl, wFrameCounter                                     ; $708b: $21 $1f $c1
	ld a, [$d80a]                                    ; $708e: $fa $0a $d8
	cp [hl]                                          ; $7091: $be
	jr z, jr_001_708b                                ; $7092: $28 $f7

	call SafelyExecuteDataCopies                                       ; $7094: $cd $8b $14
	ld hl, $c120                                     ; $7097: $21 $20 $c1
	inc [hl]                                         ; $709a: $34
	xor a                                            ; $709b: $af
	ld [$c110], a                                    ; $709c: $ea $10 $c1
	call Call_001_70d7                               ; $709f: $cd $d7 $70
	call Call_000_1ca1                                       ; $70a2: $cd $a1 $1c
	ld a, [$c151]                                    ; $70a5: $fa $51 $c1
	or a                                             ; $70a8: $b7
	jr z, jr_001_708b                                ; $70a9: $28 $e0

	ld a, [$d323]                                    ; $70ab: $fa $23 $d3
	cp $02                                           ; $70ae: $fe $02
	jr nz, jr_001_70bc                               ; $70b0: $20 $0a

	ld hl, $6b4c                                     ; $70b2: $21 $4c $6b
	rst FarCall                                          ; $70b5: $f7
	ld c, c                                          ; $70b6: $49
	ld l, c                                          ; $70b7: $69
	dec b                                            ; $70b8: $05
	call $09cb                                       ; $70b9: $cd $cb $09

jr_001_70bc:
	xor a                                            ; $70bc: $af
	call $068e                                       ; $70bd: $cd $8e $06
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $70c0: $cd $ef $2d
	call $0963                                       ; $70c3: $cd $63 $09
	rst FarCall                                          ; $70c6: $f7
	pop bc                                           ; $70c7: $c1
	ld a, [de]                                       ; $70c8: $1a
	nop                                              ; $70c9: $00
	rst FarCall                                          ; $70ca: $f7
	rr d                                             ; $70cb: $cb $1a
	nop                                              ; $70cd: $00
	ld a, $00                                        ; $70ce: $3e $00
	call Jump_000_1af7                                       ; $70d0: $cd $f7 $1a
	ld a, [$c150]                                    ; $70d3: $fa $50 $c1
	ret                                              ; $70d6: $c9


Call_001_70d7:
	ld a, [$d323]                                    ; $70d7: $fa $23 $d3
	call wJumpTable                                       ; $70da: $cd $80 $cf
	dw $3c0d
	dw $3dae
	dw $3df0
	dw $3db9
	dw $3dc4
	dw $3dcf
	dw $3dda
	dw $3de5


;
	ld a, [$d33c]                                    ; $70ed: $fa $3c $d3
	rst JumpTable                                          ; $70f0: $c7
	dw Func_01_70f5
	dw Func_01_70fd


Func_01_70f5:
	call Call_001_7326                               ; $70f5: $cd $26 $73
	rst FarCall                                          ; $70f8: $f7
	ld a, a                                          ; $70f9: $7f
	ld c, l                                          ; $70fa: $4d
	dec b                                            ; $70fb: $05
	ret                                              ; $70fc: $c9


Func_01_70fd:
	ld a, $02                                        ; $70fd: $3e $02
	ld [$d0af], a                                    ; $70ff: $ea $af $d0
	ld a, $01                                        ; $7102: $3e $01
	ld [$c186], a                                    ; $7104: $ea $86 $c1
	rst FarCall                                          ; $7107: $f7
	AddrBank Func_03_5331
	rst FarCall                                          ; $710b: $f7
	AddrBank Func_03_536f
	rst FarCall                                          ; $710f: $f7
	AddrBank StartScriptEngine
	xor a                                            ; $7113: $af
	ld [$d33c], a                                    ; $7114: $ea $3c $d3
	ret                                              ; $7117: $c9


;
	ld a, [$d33c]                                    ; $7118: $fa $3c $d3
	rst JumpTable                                          ; $711b: $c7
	ld a, [hl+]                                      ; $711c: $2a
	ld [hl], c                                       ; $711d: $71
	ld e, b                                          ; $711e: $58
	ld [hl], c                                       ; $711f: $71
	cp a                                             ; $7120: $bf
	ld [hl], c                                       ; $7121: $71
	and $71                                          ; $7122: $e6 $71
	ei                                               ; $7124: $fb
	ld [hl], c                                       ; $7125: $71
	cpl                                              ; $7126: $2f
	ld [hl], d                                       ; $7127: $72
	ld b, l                                          ; $7128: $45
	ld [hl], d                                       ; $7129: $72
	ldh a, [$9f]                                     ; $712a: $f0 $9f
	or a                                             ; $712c: $b7
	jp z, Jump_001_7145                              ; $712d: $ca $45 $71

	xor a                                            ; $7130: $af
	ld [$d7ef], a                                    ; $7131: $ea $ef $d7
	ldh [$9d], a                                     ; $7134: $e0 $9d
	ld [$d33d], a                                    ; $7136: $ea $3d $d3
	ld b, $1e                                        ; $7139: $06 $1e
	ld hl, $78a3                                     ; $713b: $21 $a3 $78
	rst FarCall                                          ; $713e: $f7
	ret                                              ; $713f: $c9


	ld h, l                                          ; $7140: $65
	ld bc, $26c3                                     ; $7141: $01 $c3 $26
	ld [hl], e                                       ; $7144: $73

Jump_001_7145:
	ld b, $1e                                        ; $7145: $06 $1e
	ld hl, $9f43                                     ; $7147: $21 $43 $9f
	rst FarCall                                          ; $714a: $f7
	ret                                              ; $714b: $c9


	ld h, l                                          ; $714c: $65
	ld bc, $eaaf                                     ; $714d: $01 $af $ea
	inc a                                            ; $7150: $3c
	db $d3                                           ; $7151: $d3
	ld a, $ff                                        ; $7152: $3e $ff
	ld [$d33d], a                                    ; $7154: $ea $3d $d3
	ret                                              ; $7157: $c9


	ld a, [wButtonsPressed]                                    ; $7158: $fa $25 $c1
	bit 5, a                                         ; $715b: $cb $6f
	jp nz, Jump_001_71ac                             ; $715d: $c2 $ac $71

	ldh a, [$9f]                                     ; $7160: $f0 $9f
	cp $01                                           ; $7162: $fe $01
	jr nz, jr_001_7185                               ; $7164: $20 $1f

	ldh a, [$9d]                                     ; $7166: $f0 $9d
	cp $aa                                           ; $7168: $fe $aa
	jr nz, jr_001_7178                               ; $716a: $20 $0c

	ld a, [$c138]                                    ; $716c: $fa $38 $c1
	or a                                             ; $716f: $b7
	ret nz                                           ; $7170: $c0

	ld a, $0f                                        ; $7171: $3e $0f
	call $2d9f                                       ; $7173: $cd $9f $2d
	jr jr_001_719f                                   ; $7176: $18 $27

jr_001_7178:
	ld a, [wButtonsPressed]                                    ; $7178: $fa $25 $c1
	bit 7, a                                         ; $717b: $cb $7f
	ret z                                            ; $717d: $c8

	ld a, $55                                        ; $717e: $3e $55
	call $2d9f                                       ; $7180: $cd $9f $2d
	jr jr_001_719b                                   ; $7183: $18 $16

jr_001_7185:
	ldh a, [$9d]                                     ; $7185: $f0 $9d
	cp $55                                           ; $7187: $fe $55
	jr z, jr_001_719f                                ; $7189: $28 $14

	cp $0f                                           ; $718b: $fe $0f
	jr z, jr_001_719b                                ; $718d: $28 $0c

	ld a, [wButtonsPressed]                                    ; $718f: $fa $25 $c1
	bit 7, a                                         ; $7192: $cb $7f
	ret z                                            ; $7194: $c8

	ld a, $aa                                        ; $7195: $3e $aa
	call $2d9f                                       ; $7197: $cd $9f $2d
	ret                                              ; $719a: $c9


jr_001_719b:
	ld a, $01                                        ; $719b: $3e $01
	jr jr_001_71a0                                   ; $719d: $18 $01

jr_001_719f:
	xor a                                            ; $719f: $af

jr_001_71a0:
	ld [$d34e], a                                    ; $71a0: $ea $4e $d3
	or a                                             ; $71a3: $b7
	jr nz, jr_001_71a9                               ; $71a4: $20 $03

	call Call_001_7326                               ; $71a6: $cd $26 $73

jr_001_71a9:
	jp Jump_001_7326                                 ; $71a9: $c3 $26 $73


Jump_001_71ac:
	ld b, $1e                                        ; $71ac: $06 $1e
	ld hl, $9f95                                     ; $71ae: $21 $95 $9f
	rst FarCall                                          ; $71b1: $f7
	ret                                              ; $71b2: $c9


	ld h, l                                          ; $71b3: $65
	ld bc, $eaaf                                     ; $71b4: $01 $af $ea
	inc a                                            ; $71b7: $3c
	db $d3                                           ; $71b8: $d3
	ld a, $ff                                        ; $71b9: $3e $ff
	ld [$d33d], a                                    ; $71bb: $ea $3d $d3
	ret                                              ; $71be: $c9


	ld a, $01                                        ; $71bf: $3e $01
	ldh [$8a], a                                     ; $71c1: $e0 $8a
	rst FarCall                                          ; $71c3: $f7
	ld h, l                                          ; $71c4: $65
	ld h, [hl]                                       ; $71c5: $66
	dec b                                            ; $71c6: $05
	ld a, [$d7ef]                                    ; $71c7: $fa $ef $d7
	or a                                             ; $71ca: $b7
	ret nz                                           ; $71cb: $c0

	xor a                                            ; $71cc: $af
	ldh [$8a], a                                     ; $71cd: $e0 $8a
	ld a, [wMenuOptionSelected]                                    ; $71cf: $fa $5f $c1
	cp $10                                           ; $71d2: $fe $10
	jr c, jr_001_71da                                ; $71d4: $38 $04

	cp $5a                                           ; $71d6: $fe $5a
	jr nz, jr_001_71e0                               ; $71d8: $20 $06

jr_001_71da:
	ld [$d34f], a                                    ; $71da: $ea $4f $d3
	jp Jump_001_7326                                 ; $71dd: $c3 $26 $73


jr_001_71e0:
	ld a, $05                                        ; $71e0: $3e $05
	ld [$d33c], a                                    ; $71e2: $ea $3c $d3
	ret                                              ; $71e5: $c9


	ld a, $10                                        ; $71e6: $3e $10
	ld [$c186], a                                    ; $71e8: $ea $86 $c1
	xor a                                            ; $71eb: $af
	ld [$c146], a                                    ; $71ec: $ea $46 $c1
	ld [$c151], a                                    ; $71ef: $ea $51 $c1
	ld [$c150], a                                    ; $71f2: $ea $50 $c1
	xor a                                            ; $71f5: $af
	ldh [$8a], a                                     ; $71f6: $e0 $8a
	call Call_001_7326                               ; $71f8: $cd $26 $73
	call $3e3e                                       ; $71fb: $cd $3e $3e
	ld a, [$c151]                                    ; $71fe: $fa $51 $c1
	or a                                             ; $7201: $b7
	ret z                                            ; $7202: $c8

	ld a, [$c150]                                    ; $7203: $fa $50 $c1
	or a                                             ; $7206: $b7
	jr z, jr_001_7239                                ; $7207: $28 $30

	ld a, [$d34e]                                    ; $7209: $fa $4e $d3
	or a                                             ; $720c: $b7
	ld a, $03                                        ; $720d: $3e $03
	jr z, jr_001_722b                                ; $720f: $28 $1a

	ld d, $ff                                        ; $7211: $16 $ff
	call $1a7d                                       ; $7213: $cd $7d $1a
	rst FarCall                                          ; $7216: $f7
	ld a, a                                          ; $7217: $7f
	ld c, l                                          ; $7218: $4d
	dec b                                            ; $7219: $05
	ld a, $03                                        ; $721a: $3e $03
	rst FarCall                                          ; $721c: $f7
	xor d                                            ; $721d: $aa
	ld b, [hl]                                       ; $721e: $46
	inc bc                                           ; $721f: $03
	call Call_000_1bce                                       ; $7220: $cd $ce $1b
	ld bc, $4217                                     ; $7223: $01 $17 $42
	call $1926                                       ; $7226: $cd $26 $19
	ld a, $02                                        ; $7229: $3e $02

jr_001_722b:
	ld [$d33c], a                                    ; $722b: $ea $3c $d3
	ret                                              ; $722e: $c9


	ld a, [$c138]                                    ; $722f: $fa $38 $c1
	or a                                             ; $7232: $b7
	ret nz                                           ; $7233: $c0

	ld a, $fb                                        ; $7234: $3e $fb
	call $2d9f                                       ; $7236: $cd $9f $2d

jr_001_7239:
	ld bc, $67f2                                     ; $7239: $01 $f2 $67
	call $18c0                                       ; $723c: $cd $c0 $18
	ld a, $06                                        ; $723f: $3e $06
	ld [$d33c], a                                    ; $7241: $ea $3c $d3
	ret                                              ; $7244: $c9


	call $199f                                       ; $7245: $cd $9f $19
	ret nz                                           ; $7248: $c0

	xor a                                            ; $7249: $af
	ld [$d33d], a                                    ; $724a: $ea $3d $d3
	ld [$d33c], a                                    ; $724d: $ea $3c $d3
	ret                                              ; $7250: $c9


Func_01_7251::
	ld a, [$d33c]                                    ; $7251: $fa $3c $d3
	rst JumpTable                                          ; $7254: $c7
	dw $7261
	dw $726e
	dw $728a
	dw $72a9
	dw Func_01_72d7
	dw $72fb


;
	ld a, $03                                        ; $7261: $3e $03
	ld [$a226], a                                    ; $7263: $ea $26 $a2
	ld a, $10                                        ; $7266: $3e $10
	ld [$d330], a                                    ; $7268: $ea $30 $d3
	jp Jump_001_7326                                 ; $726b: $c3 $26 $73


	ld hl, $d330                                     ; $726e: $21 $30 $d3
	dec [hl]                                         ; $7271: $35
	ret nz                                           ; $7272: $c0

	ldh a, [$9f]                                     ; $7273: $f0 $9f
	or a                                             ; $7275: $b7
	jp z, Jump_001_7313                              ; $7276: $ca $13 $73

	xor a                                            ; $7279: $af
	ldh [$9d], a                                     ; $727a: $e0 $9d
	ld [$c13c], a                                    ; $727c: $ea $3c $c1
	ld [$d7ef], a                                    ; $727f: $ea $ef $d7
	ld a, $b4                                        ; $7282: $3e $b4
	ld [$d330], a                                    ; $7284: $ea $30 $d3
	jp Jump_001_7326                                 ; $7287: $c3 $26 $73


	call $2dc4                                       ; $728a: $cd $c4 $2d
	ld a, [$c13c]                                    ; $728d: $fa $3c $c1
	or a                                             ; $7290: $b7
	jr nz, jr_001_729a                               ; $7291: $20 $07

	ld hl, $d330                                     ; $7293: $21 $30 $d3
	dec [hl]                                         ; $7296: $35
	ret nz                                           ; $7297: $c0

	jr jr_001_7313                                   ; $7298: $18 $79

jr_001_729a:
	ld hl, $a1c1                                     ; $729a: $21 $c1 $a1
	ld de, $d329                                     ; $729d: $11 $29 $d3
	ld a, $03                                        ; $72a0: $3e $03
	rst FarCall                                          ; $72a2: $f7
	or c                                             ; $72a3: $b1
	ld [hl], e                                       ; $72a4: $73
	ld bc, $26c3                                     ; $72a5: $01 $c3 $26
	ld [hl], e                                       ; $72a8: $73
	rst FarCall                                          ; $72a9: $f7
	dec hl                                           ; $72aa: $2b
	ld [hl], e                                       ; $72ab: $73
	ld bc, $3afa                                     ; $72ac: $01 $fa $3a
	db $d3                                           ; $72af: $d3
	cp $01                                           ; $72b0: $fe $01
	ret c                                            ; $72b2: $d8

	jr nz, jr_001_7313                               ; $72b3: $20 $5e

	ld hl, $a1c1                                     ; $72b5: $21 $c1 $a1
	ld de, $d329                                     ; $72b8: $11 $29 $d3
	ld a, [de]                                       ; $72bb: $1a
	and [hl]                                         ; $72bc: $a6
	ld [$d32c], a                                    ; $72bd: $ea $2c $d3
	ld b, a                                          ; $72c0: $47
	inc hl                                           ; $72c1: $23
	inc de                                           ; $72c2: $13
	ld a, [de]                                       ; $72c3: $1a
	and [hl]                                         ; $72c4: $a6
	ld [$d32d], a                                    ; $72c5: $ea $2d $d3
	or b                                             ; $72c8: $b0
	ld b, a                                          ; $72c9: $47
	inc hl                                           ; $72ca: $23
	inc de                                           ; $72cb: $13
	ld a, [de]                                       ; $72cc: $1a
	and [hl]                                         ; $72cd: $a6
	ld [$d32e], a                                    ; $72ce: $ea $2e $d3
	or b                                             ; $72d1: $b0
	jr z, jr_001_730c                                ; $72d2: $28 $38

	jp Jump_001_7326                                 ; $72d4: $c3 $26 $73


Func_01_72d7:
	ld a, $01                                        ; $72d7: $3e $01
	ld [$d0af], a                                    ; $72d9: $ea $af $d0
	ld a, $01                                        ; $72dc: $3e $01
	ld [$c186], a                                    ; $72de: $ea $86 $c1
	rst FarCall                                          ; $72e1: $f7
	AddrBank Func_03_5331
	rst FarCall                                          ; $72e5: $f7
	AddrBank Func_03_536f
	rst FarCall                                          ; $72e9: $f7
	AddrBank StartScriptEngine
	ld a, $20                                        ; $72ed: $3e $20
	ld [$c2c7], a                                    ; $72ef: $ea $c7 $c2
	ld bc, $67e6                                     ; $72f2: $01 $e6 $67
	call $188c                                       ; $72f5: $cd $8c $18
	jp Jump_001_7326                                 ; $72f8: $c3 $26 $73


	call $1983                                       ; $72fb: $cd $83 $19
	ret nz                                           ; $72fe: $c0

	ld a, $00                                        ; $72ff: $3e $00
	call $1e2e                                       ; $7301: $cd $2e $1e
	xor a                                            ; $7304: $af
	ld [$d33c], a                                    ; $7305: $ea $3c $d3
	ld [$d33d], a                                    ; $7308: $ea $3d $d3
	ret                                              ; $730b: $c9


jr_001_730c:
	ld b, $1e                                        ; $730c: $06 $1e
	ld hl, $7946                                     ; $730e: $21 $46 $79
	jr jr_001_7318                                   ; $7311: $18 $05

Jump_001_7313:
jr_001_7313:
	ld b, $1e                                        ; $7313: $06 $1e
	ld hl, $9f43                                     ; $7315: $21 $43 $9f

jr_001_7318:
	rst FarCall                                          ; $7318: $f7
	ret                                              ; $7319: $c9


	ld h, l                                          ; $731a: $65
	ld bc, $eaaf                                     ; $731b: $01 $af $ea
	inc a                                            ; $731e: $3c
	db $d3                                           ; $731f: $d3
	ld a, $ff                                        ; $7320: $3e $ff
	ld [$d33d], a                                    ; $7322: $ea $3d $d3
	ret                                              ; $7325: $c9


Call_001_7326:
Jump_001_7326:
	ld hl, $d33c                                     ; $7326: $21 $3c $d3
	inc [hl]                                         ; $7329: $34
	ret                                              ; $732a: $c9


	ld hl, $d334                                     ; $732b: $21 $34 $d3
	rst GetHLinHL                                          ; $732e: $cf
	ld a, [$d338]                                    ; $732f: $fa $38 $d3
	dec a                                            ; $7332: $3d
	srl a                                            ; $7333: $cb $3f
	push af                                          ; $7335: $f5
	rst AddAOntoHL                                          ; $7336: $ef
	pop af                                           ; $7337: $f1
	ld a, [hl]                                       ; $7338: $7e
	jr nc, jr_001_733d                               ; $7339: $30 $02

	swap a                                           ; $733b: $cb $37

jr_001_733d:
	and $0f                                          ; $733d: $e6 $0f
	ld b, a                                          ; $733f: $47
	ld a, [$d338]                                    ; $7340: $fa $38 $d3
	swap a                                           ; $7343: $cb $37
	and $f0                                          ; $7345: $e6 $f0
	or b                                             ; $7347: $b0
	call $2db1                                       ; $7348: $cd $b1 $2d
	ldh a, [$9f]                                     ; $734b: $f0 $9f
	dec a                                            ; $734d: $3d
	jr z, jr_001_7358                                ; $734e: $28 $08

	ld a, [$c13d]                                    ; $7350: $fa $3d $c1
	or a                                             ; $7353: $b7
	jr z, jr_001_73a3                                ; $7354: $28 $4d

	jr jr_001_735e                                   ; $7356: $18 $06

jr_001_7358:
	ld a, [$c138]                                    ; $7358: $fa $38 $c1
	or a                                             ; $735b: $b7
	jr z, jr_001_73a3                                ; $735c: $28 $45

jr_001_735e:
	ld hl, $d336                                     ; $735e: $21 $36 $d3
	rst GetHLinHL                                          ; $7361: $cf
	ldh a, [$9d]                                     ; $7362: $f0 $9d
	and $f0                                          ; $7364: $e6 $f0
	swap a                                           ; $7366: $cb $37
	ld b, a                                          ; $7368: $47
	ld a, [$d338]                                    ; $7369: $fa $38 $d3
	cp b                                             ; $736c: $b8
	jr nz, jr_001_73ab                               ; $736d: $20 $3c

	dec a                                            ; $736f: $3d
	srl a                                            ; $7370: $cb $3f
	push af                                          ; $7372: $f5
	rst AddAOntoHL                                          ; $7373: $ef
	pop af                                           ; $7374: $f1
	jr nc, jr_001_7385                               ; $7375: $30 $0e

	ldh a, [$9d]                                     ; $7377: $f0 $9d
	and $0f                                          ; $7379: $e6 $0f
	swap a                                           ; $737b: $cb $37
	ld b, a                                          ; $737d: $47
	ld a, [hl]                                       ; $737e: $7e
	and $0f                                          ; $737f: $e6 $0f
	or b                                             ; $7381: $b0
	ld [hl], a                                       ; $7382: $77
	jr jr_001_738f                                   ; $7383: $18 $0a

jr_001_7385:
	ldh a, [$9d]                                     ; $7385: $f0 $9d
	and $0f                                          ; $7387: $e6 $0f
	ld b, a                                          ; $7389: $47
	ld a, [hl]                                       ; $738a: $7e
	and $f0                                          ; $738b: $e6 $f0
	or b                                             ; $738d: $b0
	ld [hl], a                                       ; $738e: $77

jr_001_738f:
	ld a, [$d338]                                    ; $738f: $fa $38 $d3
	inc a                                            ; $7392: $3c
	ld [$d338], a                                    ; $7393: $ea $38 $d3
	ld b, a                                          ; $7396: $47
	ld a, [$d339]                                    ; $7397: $fa $39 $d3
	add a                                            ; $739a: $87
	cp b                                             ; $739b: $b8
	ret nc                                           ; $739c: $d0

	ld a, $01                                        ; $739d: $3e $01
	ld [$d33a], a                                    ; $739f: $ea $3a $d3
	ret                                              ; $73a2: $c9


jr_001_73a3:
	ld hl, $d33b                                     ; $73a3: $21 $3b $d3
	inc [hl]                                         ; $73a6: $34
	ld a, [hl]                                       ; $73a7: $7e
	cp $3c                                           ; $73a8: $fe $3c
	ret c                                            ; $73aa: $d8

jr_001_73ab:
	ld a, $02                                        ; $73ab: $3e $02
	ld [$d33a], a                                    ; $73ad: $ea $3a $d3
	ret                                              ; $73b0: $c9


	ld [$d339], a                                    ; $73b1: $ea $39 $d3
	ld a, l                                          ; $73b4: $7d
	ld [$d334], a                                    ; $73b5: $ea $34 $d3
	ld a, h                                          ; $73b8: $7c
	ld [$d335], a                                    ; $73b9: $ea $35 $d3
	ld a, e                                          ; $73bc: $7b
	ld [$d336], a                                    ; $73bd: $ea $36 $d3
	ld a, d                                          ; $73c0: $7a
	ld [$d337], a                                    ; $73c1: $ea $37 $d3
	xor a                                            ; $73c4: $af
	ld [$c13c], a                                    ; $73c5: $ea $3c $c1
	ld [$d33a], a                                    ; $73c8: $ea $3a $d3
	ld [$d33b], a                                    ; $73cb: $ea $3b $d3
	inc a                                            ; $73ce: $3c
	ld [$d338], a                                    ; $73cf: $ea $38 $d3
	ret                                              ; $73d2: $c9


	cp $10                                           ; $73d3: $fe $10
	jr c, jr_001_73d9                                ; $73d5: $38 $02

	ld a, $10                                        ; $73d7: $3e $10

jr_001_73d9:
	ld [$d324], a                                    ; $73d9: $ea $24 $d3
	ld hl, $d325                                     ; $73dc: $21 $25 $d3
	rst GetHLinHL                                          ; $73df: $cf
	push hl                                          ; $73e0: $e5
	ld hl, $d327                                     ; $73e1: $21 $27 $d3
	rst GetHLinHL                                          ; $73e4: $cf
	pop de                                           ; $73e5: $d1
	call wCpHLtoDE                                       ; $73e6: $cd $80 $ce
	jr c, jr_001_7422                                ; $73e9: $38 $37

	jr z, jr_001_7432                                ; $73eb: $28 $45

	ld hl, $a18e                                     ; $73ed: $21 $8e $a1
	call Call_001_743b                               ; $73f0: $cd $3b $74
	ld hl, $a1b0                                     ; $73f3: $21 $b0 $a1
	ld a, [$d324]                                    ; $73f6: $fa $24 $d3
	rst AddAOntoHL                                          ; $73f9: $ef
	ld a, [hl]                                       ; $73fa: $7e
	inc a                                            ; $73fb: $3c
	cp $03                                           ; $73fc: $fe $03
	jr nc, jr_001_7404                               ; $73fe: $30 $04

	ld [hl], a                                       ; $7400: $77
	ld a, $01                                        ; $7401: $3e $01
	ret                                              ; $7403: $c9


jr_001_7404:
	xor a                                            ; $7404: $af
	ld [hl], a                                       ; $7405: $77
	ld hl, $a1c1                                     ; $7406: $21 $c1 $a1
	ld a, [$d324]                                    ; $7409: $fa $24 $d3
	cp $08                                           ; $740c: $fe $08
	jr c, jr_001_741a                                ; $740e: $38 $0a

	inc hl                                           ; $7410: $23
	sub $08                                          ; $7411: $d6 $08
	cp $08                                           ; $7413: $fe $08
	jr c, jr_001_741a                                ; $7415: $38 $03

	inc hl                                           ; $7417: $23
	sub $08                                          ; $7418: $d6 $08

jr_001_741a:
	call Call_001_7619                               ; $741a: $cd $19 $76
	and [hl]                                         ; $741d: $a6
	ld [hl], a                                       ; $741e: $77
	ld a, $02                                        ; $741f: $3e $02
	ret                                              ; $7421: $c9


jr_001_7422:
	ld hl, $a17d                                     ; $7422: $21 $7d $a1
	call Call_001_743b                               ; $7425: $cd $3b $74
	ld hl, $a1b0                                     ; $7428: $21 $b0 $a1
	ld a, [$d324]                                    ; $742b: $fa $24 $d3
	rst AddAOntoHL                                          ; $742e: $ef
	xor a                                            ; $742f: $af
	ld [hl], a                                       ; $7430: $77
	ret                                              ; $7431: $c9


jr_001_7432:
	ld hl, $a19f                                     ; $7432: $21 $9f $a1
	call Call_001_743b                               ; $7435: $cd $3b $74
	ld a, $03                                        ; $7438: $3e $03
	ret                                              ; $743a: $c9


Call_001_743b:
	ld a, [$d324]                                    ; $743b: $fa $24 $d3
	rst AddAOntoHL                                          ; $743e: $ef
	ld a, [hl]                                       ; $743f: $7e
	inc a                                            ; $7440: $3c
	cp $63                                           ; $7441: $fe $63
	jr c, jr_001_7447                                ; $7443: $38 $02

	ld a, $63                                        ; $7445: $3e $63

jr_001_7447:
	ld [hl], a                                       ; $7447: $77
	ret                                              ; $7448: $c9


	push af                                          ; $7449: $f5
	ld hl, $a15a                                     ; $744a: $21 $5a $a1
	add a                                            ; $744d: $87
	rst AddAOntoHL                                          ; $744e: $ef
	rst GetHLinHL                                          ; $744f: $cf
	ld a, h                                          ; $7450: $7c
	cp $20                                           ; $7451: $fe $20
	jr c, jr_001_7462                                ; $7453: $38 $0d

	pop af                                           ; $7455: $f1
	push af                                          ; $7456: $f5
	ld hl, $a15a                                     ; $7457: $21 $5a $a1
	add a                                            ; $745a: $87
	rst AddAOntoHL                                          ; $745b: $ef
	xor a                                            ; $745c: $af
	ld [hl+], a                                      ; $745d: $22
	ld [hl], a                                       ; $745e: $77
	ld hl, $0000                                     ; $745f: $21 $00 $00

jr_001_7462:
	pop af                                           ; $7462: $f1
	cp $0e                                           ; $7463: $fe $0e
	ret nc                                           ; $7465: $d0

	push hl                                          ; $7466: $e5
	call Call_001_751f                               ; $7467: $cd $1f $75
	pop de                                           ; $746a: $d1
	add hl, de                                       ; $746b: $19
	ret                                              ; $746c: $c9


Call_001_746d:
	push af                                          ; $746d: $f5
	call Call_001_74aa                               ; $746e: $cd $aa $74
	pop af                                           ; $7471: $f1
	push hl                                          ; $7472: $e5
	cp $10                                           ; $7473: $fe $10
	jr c, jr_001_7479                                ; $7475: $38 $02

	ld a, $10                                        ; $7477: $3e $10

jr_001_7479:
	ld b, a                                          ; $7479: $47
	ld hl, $a15a                                     ; $747a: $21 $5a $a1
	add a                                            ; $747d: $87
	rst AddAOntoHL                                          ; $747e: $ef
	rst GetHLinHL                                          ; $747f: $cf
	pop de                                           ; $7480: $d1
	call wCpHLtoDE                                       ; $7481: $cd $80 $ce
	ld a, b                                          ; $7484: $78
	jr c, jr_001_7495                                ; $7485: $38 $0e

	ret nz                                           ; $7487: $c0

	cp $0e                                           ; $7488: $fe $0e
	ret nz                                           ; $748a: $c0

	call Call_001_7514                               ; $748b: $cd $14 $75
	ld hl, $a17c                                     ; $748e: $21 $7c $a1
	cp [hl]                                          ; $7491: $be
	ret c                                            ; $7492: $d8

	ld [hl], a                                       ; $7493: $77
	ret                                              ; $7494: $c9


jr_001_7495:
	cp $0e                                           ; $7495: $fe $0e
	jr nz, jr_001_74a1                               ; $7497: $20 $08

	call Call_001_7514                               ; $7499: $cd $14 $75
	ld [$a17c], a                                    ; $749c: $ea $7c $a1
	ld a, $0e                                        ; $749f: $3e $0e

jr_001_74a1:
	ld hl, $a15a                                     ; $74a1: $21 $5a $a1
	add a                                            ; $74a4: $87
	rst AddAOntoHL                                          ; $74a5: $ef
	ld [hl], e                                       ; $74a6: $73
	inc hl                                           ; $74a7: $23
	ld [hl], d                                       ; $74a8: $72
	ret                                              ; $74a9: $c9


Call_001_74aa:
	cp $0e                                           ; $74aa: $fe $0e
	jr z, jr_001_74fe                                ; $74ac: $28 $50

	cp $0f                                           ; $74ae: $fe $0f
	jr z, jr_001_7502                                ; $74b0: $28 $50

	jr nc, jr_001_750b                               ; $74b2: $30 $57

	ld [$c0e8], a                                    ; $74b4: $ea $e8 $c0
	ld hl, $0000                                     ; $74b7: $21 $00 $00
	push hl                                          ; $74ba: $e5
	ld a, [$c0e8]                                    ; $74bb: $fa $e8 $c0
	call Call_001_754a                               ; $74be: $cd $4a $75
	pop de                                           ; $74c1: $d1
	add hl, de                                       ; $74c2: $19
	push hl                                          ; $74c3: $e5
	ld a, [$c0e8]                                    ; $74c4: $fa $e8 $c0
	ld hl, $a349                                     ; $74c7: $21 $49 $a3
	rst AddAOntoHL                                          ; $74ca: $ef
	ld a, [hl]                                       ; $74cb: $7e
	pop hl                                           ; $74cc: $e1
	rst AddAOntoHL                                          ; $74cd: $ef
	push hl                                          ; $74ce: $e5
	ld a, [$c0e8]                                    ; $74cf: $fa $e8 $c0
	ld hl, $a33b                                     ; $74d2: $21 $3b $a3
	rst AddAOntoHL                                          ; $74d5: $ef
	ld a, [hl]                                       ; $74d6: $7e
	pop hl                                           ; $74d7: $e1
	rst AddAOntoHL                                          ; $74d8: $ef
	push hl                                          ; $74d9: $e5
	call Call_001_7572                               ; $74da: $cd $72 $75
	pop hl                                           ; $74dd: $e1
	add hl, de                                       ; $74de: $19
	push hl                                          ; $74df: $e5
	ld a, [$a3a1]                                    ; $74e0: $fa $a1 $a3
	or a                                             ; $74e3: $b7
	jr z, jr_001_74eb                                ; $74e4: $28 $05

	ld a, $32                                        ; $74e6: $3e $32
	pop hl                                           ; $74e8: $e1
	rst AddAOntoHL                                          ; $74e9: $ef
	push hl                                          ; $74ea: $e5

jr_001_74eb:
	ld a, [$c0e8]                                    ; $74eb: $fa $e8 $c0
	ld hl, $a357                                     ; $74ee: $21 $57 $a3
	rst AddAOntoHL                                          ; $74f1: $ef
	ld e, [hl]                                       ; $74f2: $5e
	ld d, $00                                        ; $74f3: $16 $00
	pop hl                                           ; $74f5: $e1
	call wHLminusEquDE                                       ; $74f6: $cd $9e $ce
	ret nc                                           ; $74f9: $d0

	ld hl, $0000                                     ; $74fa: $21 $00 $00
	ret                                              ; $74fd: $c9


jr_001_74fe:
	xor a                                            ; $74fe: $af
	jp Jump_001_754a                                 ; $74ff: $c3 $4a $75


jr_001_7502:
	ld hl, $a2fd                                     ; $7502: $21 $fd $a2
	rst GetHLinHL                                          ; $7505: $cf
	ld a, [$a397]                                    ; $7506: $fa $97 $a3
	rst AddAOntoHL                                          ; $7509: $ef
	ret                                              ; $750a: $c9


jr_001_750b:
	ld hl, $a2f9                                     ; $750b: $21 $f9 $a2
	rst GetHLinHL                                          ; $750e: $cf
	ld a, [$a397]                                    ; $750f: $fa $97 $a3
	rst AddAOntoHL                                          ; $7512: $ef
	ret                                              ; $7513: $c9


Call_001_7514:
	push bc                                          ; $7514: $c5
	ld a, [$a399]                                    ; $7515: $fa $99 $a3
	ld b, a                                          ; $7518: $47
	ld a, [$a39a]                                    ; $7519: $fa $9a $a3
	add b                                            ; $751c: $80
	pop bc                                           ; $751d: $c1
	ret                                              ; $751e: $c9


Call_001_751f:
	push af                                          ; $751f: $f5
	ld hl, $a126                                     ; $7520: $21 $26 $a1
	add a                                            ; $7523: $87
	rst AddAOntoHL                                          ; $7524: $ef
	ld a, [hl+]                                      ; $7525: $2a
	ld c, $00                                        ; $7526: $0e $00
	call Call_001_7540                               ; $7528: $cd $40 $75
	ld a, [hl]                                       ; $752b: $7e
	call Call_001_7540                               ; $752c: $cd $40 $75
	ld a, c                                          ; $752f: $79
	add a                                            ; $7530: $87
	add a                                            ; $7531: $87
	add c                                            ; $7532: $81
	ld b, a                                          ; $7533: $47
	pop af                                           ; $7534: $f1
	ld hl, $a114                                     ; $7535: $21 $14 $a1
	rst AddAOntoHL                                          ; $7538: $ef
	ld l, [hl]                                       ; $7539: $6e
	ld h, $00                                        ; $753a: $26 $00
	add hl, hl                                       ; $753c: $29
	ld a, b                                          ; $753d: $78
	rst AddAOntoHL                                          ; $753e: $ef
	ret                                              ; $753f: $c9


Call_001_7540:
	ld b, $08                                        ; $7540: $06 $08

jr_001_7542:
	rrca                                             ; $7542: $0f
	jr nc, jr_001_7546                               ; $7543: $30 $01

	inc c                                            ; $7545: $0c

jr_001_7546:
	dec b                                            ; $7546: $05
	jr nz, jr_001_7542                               ; $7547: $20 $f9

	ret                                              ; $7549: $c9


Call_001_754a:
Jump_001_754a:
	ld hl, $758c                                     ; $754a: $21 $8c $75
	rst AddAOntoHL                                          ; $754d: $ef
	ld c, [hl]                                       ; $754e: $4e
	ld hl, $a2f1                                     ; $754f: $21 $f1 $a2
	ld de, $0000                                     ; $7552: $11 $00 $00
	ld b, $00                                        ; $7555: $06 $00

jr_001_7557:
	inc hl                                           ; $7557: $23
	inc hl                                           ; $7558: $23
	srl c                                            ; $7559: $cb $39
	jr c, jr_001_7561                                ; $755b: $38 $04

	jr z, jr_001_756a                                ; $755d: $28 $0b

	jr nc, jr_001_7557                               ; $755f: $30 $f6

jr_001_7561:
	push hl                                          ; $7561: $e5
	rst GetHLinHL                                          ; $7562: $cf
	add hl, de                                       ; $7563: $19
	ld d, h                                          ; $7564: $54
	ld e, l                                          ; $7565: $5d
	inc b                                            ; $7566: $04
	pop hl                                           ; $7567: $e1
	jr jr_001_7557                                   ; $7568: $18 $ed

jr_001_756a:
	ld h, d                                          ; $756a: $62
	ld l, e                                          ; $756b: $6b
	ld c, b                                          ; $756c: $48
	ld b, $00                                        ; $756d: $06 $00
	jp BCHLequHLdivModBC                                         ; $756f: $c3 $c1 $12


Call_001_7572:
	ld b, $00                                        ; $7572: $06 $00
	ld a, b                                          ; $7574: $78
	ld de, $0000                                     ; $7575: $11 $00 $00

jr_001_7578:
	ld hl, $a30d                                     ; $7578: $21 $0d $a3
	add a                                            ; $757b: $87
	rst AddAOntoHL                                          ; $757c: $ef
	rst GetHLinHL                                          ; $757d: $cf
	call wCpHLtoDE                                       ; $757e: $cd $80 $ce
	jr c, jr_001_7585                                ; $7581: $38 $02

	ld d, h                                          ; $7583: $54
	ld e, l                                          ; $7584: $5d

jr_001_7585:
	inc b                                            ; $7585: $04
	ld a, b                                          ; $7586: $78
	cp $09                                           ; $7587: $fe $09
	jr c, jr_001_7578                                ; $7589: $38 $ed

	ret                                              ; $758b: $c9


	ld a, a                                          ; $758c: $7f
	ld hl, $2422                                     ; $758d: $21 $22 $24
	ld l, b                                          ; $7590: $68
	jr z, jr_001_75db                                ; $7591: $28 $48

	inc [hl]                                         ; $7593: $34
	jr nc, @+$39                                     ; $7594: $30 $37

	jr c, jr_001_75be                                ; $7596: $38 $26
	db $31, $4a


Func_01_759a::
	ld hl, $d345                                    ; $759a: $21 $45 $d3
	res 7, [hl]                                      ; $759d: $cb $be
	ld a, [$d043]                                    ; $759f: $fa $43 $d0
	cp $01                                           ; $75a2: $fe $01
	jr z, jr_001_75b1                                ; $75a4: $28 $0b

	cp $21                                           ; $75a6: $fe $21
	jr nz, jr_001_75bb                               ; $75a8: $20 $11

	ld a, [$a159]                                    ; $75aa: $fa $59 $a1
	or $82                                           ; $75ad: $f6 $82
	jr jr_001_75b8                                   ; $75af: $18 $07

jr_001_75b1:
	ld a, [$a159]                                    ; $75b1: $fa $59 $a1
	and $7f                                          ; $75b4: $e6 $7f
	or $01                                           ; $75b6: $f6 $01

jr_001_75b8:
	ld [$a159], a                                    ; $75b8: $ea $59 $a1

jr_001_75bb:
	ld a, [$d043]                                    ; $75bb: $fa $43 $d0

jr_001_75be:
	and $0f                                          ; $75be: $e6 $0f
	ld hl, $a114                                     ; $75c0: $21 $14 $a1
	rst AddAOntoHL                                          ; $75c3: $ef
	call Call_001_763a                               ; $75c4: $cd $3a $76
	ld a, [$d043]                                    ; $75c7: $fa $43 $d0
	and $0f                                          ; $75ca: $e6 $0f
	cp $08                                           ; $75cc: $fe $08
	ld hl, $a112                                     ; $75ce: $21 $12 $a1
	jr c, jr_001_75d6                                ; $75d1: $38 $03

	inc hl                                           ; $75d3: $23
	sub $08                                          ; $75d4: $d6 $08

jr_001_75d6:
	call Call_001_7609                               ; $75d6: $cd $09 $76
	ld b, a                                          ; $75d9: $47
	and [hl]                                         ; $75da: $a6

jr_001_75db:
	jr nz, jr_001_75e4                               ; $75db: $20 $07

	ld a, b                                          ; $75dd: $78
	or [hl]                                          ; $75de: $b6
	ld [hl], a                                       ; $75df: $77
	ld hl, $a110                                     ; $75e0: $21 $10 $a1
	inc [hl]                                         ; $75e3: $34

jr_001_75e4:
	ld a, [$d043]                                    ; $75e4: $fa $43 $d0
	and $0f                                          ; $75e7: $e6 $0f
	ld [$a111], a                                    ; $75e9: $ea $11 $a1
	ld a, [$d043]                                    ; $75ec: $fa $43 $d0
	and $0f                                          ; $75ef: $e6 $0f
	call Call_001_746d                               ; $75f1: $cd $6d $74
	ld a, [$d043]                                    ; $75f4: $fa $43 $d0
	and $0f                                          ; $75f7: $e6 $0f
	ld hl, $a1c1                                     ; $75f9: $21 $c1 $a1
	cp $08                                           ; $75fc: $fe $08
	jr c, jr_001_7603                                ; $75fe: $38 $03

	inc hl                                           ; $7600: $23
	sub $08                                          ; $7601: $d6 $08

jr_001_7603:
	call Call_001_7609                               ; $7603: $cd $09 $76
	or [hl]                                          ; $7606: $b6
	ld [hl], a                                       ; $7607: $77
	ret                                              ; $7608: $c9


Call_001_7609:
	push hl                                          ; $7609: $e5
	ld hl, $7611                                     ; $760a: $21 $11 $76
	rst AddAOntoHL                                          ; $760d: $ef
	ld a, [hl]                                       ; $760e: $7e
	pop hl                                           ; $760f: $e1
	ret                                              ; $7610: $c9


	ld bc, $0402                                     ; $7611: $01 $02 $04
	ld [$2010], sp                                   ; $7614: $08 $10 $20
	ld b, b                                          ; $7617: $40
	add b                                            ; $7618: $80

Call_001_7619:
	push hl                                          ; $7619: $e5
	ld hl, $7621                                     ; $761a: $21 $21 $76
	rst AddAOntoHL                                          ; $761d: $ef
	ld a, [hl]                                       ; $761e: $7e
	pop hl                                           ; $761f: $e1
	ret                                              ; $7620: $c9


	cp $fd                                           ; $7621: $fe $fd
	ei                                               ; $7623: $fb
	rst FarCall                                          ; $7624: $f7
	rst AddAOntoHL                                          ; $7625: $ef
	rst SubAFromDE                                          ; $7626: $df
	cp a                                             ; $7627: $bf
	ld a, a                                          ; $7628: $7f


Func_01_7629::
	ld hl, $a124                                     ; $7629: $21 $24 $a1
	call Call_001_763a                               ; $762c: $cd $3a $76
	ld a, $11                                        ; $762f: $3e $11
	call Call_001_746d                               ; $7631: $cd $6d $74
	ld a, $01                                        ; $7634: $3e $01
	ld [$a1c3], a                                    ; $7636: $ea $c3 $a1
	ret                                              ; $7639: $c9


Call_001_763a:
	ld a, [hl]                                       ; $763a: $7e
	cp $05                                           ; $763b: $fe $05
	jr c, jr_001_7642                                ; $763d: $38 $03

	ld [hl], $05                                     ; $763f: $36 $05
	ret                                              ; $7641: $c9


jr_001_7642:
	inc [hl]                                         ; $7642: $34
	ret                                              ; $7643: $c9


	ld [$d333], a                                    ; $7644: $ea $33 $d3
	xor a                                            ; $7647: $af
	ld [$d331], a                                    ; $7648: $ea $31 $d3

jr_001_764b:
	ld hl, wFrameCounter                                     ; $764b: $21 $1f $c1
	ld a, [$d80a]                                    ; $764e: $fa $0a $d8
	cp [hl]                                          ; $7651: $be
	jr z, jr_001_764b                                ; $7652: $28 $f7

	xor a                                            ; $7654: $af
	ld [$c110], a                                    ; $7655: $ea $10 $c1
	call Call_001_7668                               ; $7658: $cd $68 $76
	call Call_000_1ca1                                       ; $765b: $cd $a1 $1c
	ld a, [$d331]                                    ; $765e: $fa $31 $d3
	or a                                             ; $7661: $b7
	jr nz, jr_001_764b                               ; $7662: $20 $e7

	ld a, [$d332]                                    ; $7664: $fa $32 $d3
	ret                                              ; $7667: $c9


Call_001_7668:
	ld a, [$d333]                                    ; $7668: $fa $33 $d3
	call wJumpTable                                       ; $766b: $cd $80 $cf
	ld a, b                                          ; $766e: $78
	halt                                             ; $766f: $76
	xor l                                            ; $7670: $ad
	halt                                             ; $7671: $76
	jp hl                                            ; $7672: $e9


	ld [hl], a                                       ; $7673: $77
	ld b, a                                          ; $7674: $47
	ld a, b                                          ; $7675: $78
	ld h, d                                          ; $7676: $62
	ld a, b                                          ; $7677: $78
	ld a, [$d331]                                    ; $7678: $fa $31 $d3
	rst JumpTable                                          ; $767b: $c7
	add d                                            ; $767c: $82
	halt                                             ; $767d: $76
	adc h                                            ; $767e: $8c
	halt                                             ; $767f: $76
	and b                                            ; $7680: $a0
	halt                                             ; $7681: $76
	xor a                                            ; $7682: $af
	ld [$c13c], a                                    ; $7683: $ea $3c $c1
	ld [$c13d], a                                    ; $7686: $ea $3d $c1
	jp Jump_001_787e                                 ; $7689: $c3 $7e $78


	call $2dd4                                       ; $768c: $cd $d4 $2d
	ld a, [$c13c]                                    ; $768f: $fa $3c $c1
	cp $01                                           ; $7692: $fe $01
	ret c                                            ; $7694: $d8

	ld [$d332], a                                    ; $7695: $ea $32 $d3
	ld a, $10                                        ; $7698: $3e $10
	ld [$c13c], a                                    ; $769a: $ea $3c $c1
	jp Jump_001_787e                                 ; $769d: $c3 $7e $78


	call $2dd4                                       ; $76a0: $cd $d4 $2d
	ld hl, $c13c                                     ; $76a3: $21 $3c $c1
	dec [hl]                                         ; $76a6: $35
	ret nz                                           ; $76a7: $c0

	xor a                                            ; $76a8: $af
	ld [$d331], a                                    ; $76a9: $ea $31 $d3
	ret                                              ; $76ac: $c9


	ld a, [$d331]                                    ; $76ad: $fa $31 $d3
	rst JumpTable                                          ; $76b0: $c7
	cp l                                             ; $76b1: $bd
	halt                                             ; $76b2: $76
	rst GetHLinHL                                          ; $76b3: $cf
	halt                                             ; $76b4: $76
	dec c                                            ; $76b5: $0d
	ld [hl], a                                       ; $76b6: $77
	ld e, a                                          ; $76b7: $5f
	ld [hl], a                                       ; $76b8: $77
	add [hl]                                         ; $76b9: $86
	ld [hl], a                                       ; $76ba: $77
	db $db                                           ; $76bb: $db
	ld [hl], a                                       ; $76bc: $77
	xor a                                            ; $76bd: $af
	ldh [$9d], a                                     ; $76be: $e0 $9d
	ld [$c13d], a                                    ; $76c0: $ea $3d $c1
	ld [$c13c], a                                    ; $76c3: $ea $3c $c1
	ld [$d32f], a                                    ; $76c6: $ea $2f $d3
	ld [$d7ef], a                                    ; $76c9: $ea $ef $d7
	jp Jump_001_787e                                 ; $76cc: $c3 $7e $78


	ld a, [$c138]                                    ; $76cf: $fa $38 $c1
	or a                                             ; $76d2: $b7
	jr nz, jr_001_76eb                               ; $76d3: $20 $16

	rst FarCall                                          ; $76d5: $f7
	xor d                                            ; $76d6: $aa
	ld h, a                                          ; $76d7: $67
	dec b                                            ; $76d8: $05
	ld a, [$d7ef]                                    ; $76d9: $fa $ef $d7
	or a                                             ; $76dc: $b7
	ret nz                                           ; $76dd: $c0

	ld a, [wMenuOptionSelected]                                    ; $76de: $fa $5f $c1
	ld [$c13b], a                                    ; $76e1: $ea $3b $c1
	inc a                                            ; $76e4: $3c
	call $2d9f                                       ; $76e5: $cd $9f $2d
	jp Jump_001_787e                                 ; $76e8: $c3 $7e $78


jr_001_76eb:
	ldh a, [$9d]                                     ; $76eb: $f0 $9d
	dec a                                            ; $76ed: $3d
	ld [$d324], a                                    ; $76ee: $ea $24 $d3
	ld a, $01                                        ; $76f1: $3e $01
	ld [$d32f], a                                    ; $76f3: $ea $2f $d3
	ldh a, [$9f]                                     ; $76f6: $f0 $9f
	dec a                                            ; $76f8: $3d
	ld a, $51                                        ; $76f9: $3e $51
	jr z, jr_001_76ff                                ; $76fb: $28 $02

	ld a, $52                                        ; $76fd: $3e $52

jr_001_76ff:
	ld [$c13b], a                                    ; $76ff: $ea $3b $c1
	ld a, $01                                        ; $7702: $3e $01
	ld [$c13d], a                                    ; $7704: $ea $3d $c1
	call Call_001_787e                               ; $7707: $cd $7e $78
	jp Jump_001_787e                                 ; $770a: $c3 $7e $78


	ld a, [$c138]                                    ; $770d: $fa $38 $c1
	or a                                             ; $7710: $b7
	jr nz, jr_001_7720                               ; $7711: $20 $0d

	ld a, [wFrameCounter]                                    ; $7713: $fa $1f $c1
	and $03                                          ; $7716: $e6 $03
	ret nz                                           ; $7718: $c0

	ld a, [$c13b]                                    ; $7719: $fa $3b $c1
	inc a                                            ; $771c: $3c
	jp $2d9f                                         ; $771d: $c3 $9f $2d


jr_001_7720:
	ldh a, [$9f]                                     ; $7720: $f0 $9f
	dec a                                            ; $7722: $3d
	jr nz, jr_001_7737                               ; $7723: $20 $12

	ldh a, [$9d]                                     ; $7725: $f0 $9d
	dec a                                            ; $7727: $3d
	cp $52                                           ; $7728: $fe $52
	ret nz                                           ; $772a: $c0

	ld a, [$c13b]                                    ; $772b: $fa $3b $c1
	ld [$d324], a                                    ; $772e: $ea $24 $d3
	call Call_001_787e                               ; $7731: $cd $7e $78
	jp Jump_001_787e                                 ; $7734: $c3 $7e $78


jr_001_7737:
	ldh a, [$9d]                                     ; $7737: $f0 $9d
	dec a                                            ; $7739: $3d
	cp $51                                           ; $773a: $fe $51
	jr z, jr_001_7753                                ; $773c: $28 $15

	ld [$d324], a                                    ; $773e: $ea $24 $d3
	ld a, $01                                        ; $7741: $3e $01
	ld [$d32f], a                                    ; $7743: $ea $2f $d3
	ld a, $52                                        ; $7746: $3e $52
	ld [$c13b], a                                    ; $7748: $ea $3b $c1
	ld a, $01                                        ; $774b: $3e $01
	ld [$c13d], a                                    ; $774d: $ea $3d $c1
	jp Jump_001_787e                                 ; $7750: $c3 $7e $78


jr_001_7753:
	ld a, [$c13b]                                    ; $7753: $fa $3b $c1
	ld [$d324], a                                    ; $7756: $ea $24 $d3
	call Call_001_787e                               ; $7759: $cd $7e $78
	jp Jump_001_787e                                 ; $775c: $c3 $7e $78


	ld hl, $c13c                                     ; $775f: $21 $3c $c1
	inc [hl]                                         ; $7762: $34
	ld a, [hl]                                       ; $7763: $7e
	cp $1e                                           ; $7764: $fe $1e
	jp nc, Jump_001_787e                             ; $7766: $d2 $7e $78

	ld a, [$c138]                                    ; $7769: $fa $38 $c1
	or a                                             ; $776c: $b7
	jr nz, jr_001_7780                               ; $776d: $20 $11

	ld a, [$c13d]                                    ; $776f: $fa $3d $c1
	or a                                             ; $7772: $b7
	ret z                                            ; $7773: $c8

	xor a                                            ; $7774: $af
	ld [$c13d], a                                    ; $7775: $ea $3d $c1
	ld a, [$c13b]                                    ; $7778: $fa $3b $c1
	inc a                                            ; $777b: $3c
	call $2d9f                                       ; $777c: $cd $9f $2d
	ret                                              ; $777f: $c9


jr_001_7780:
	ld a, $01                                        ; $7780: $3e $01
	ld [$c13d], a                                    ; $7782: $ea $3d $c1
	ret                                              ; $7785: $c9


	xor a                                            ; $7786: $af
	ld [$d322], a                                    ; $7787: $ea $22 $d3
	rst FarCall                                          ; $778a: $f7
	ld h, l                                          ; $778b: $65
	ld c, a                                          ; $778c: $4f
	dec b                                            ; $778d: $05
	ld a, [$d324]                                    ; $778e: $fa $24 $d3
	cp $11                                           ; $7791: $fe $11
	jr c, jr_001_779d                                ; $7793: $38 $08

	cp $12                                           ; $7795: $fe $12
	jr z, jr_001_77b1                                ; $7797: $28 $18

	ld a, $80                                        ; $7799: $3e $80
	jr jr_001_77b1                                   ; $779b: $18 $14

jr_001_779d:
	push af                                          ; $779d: $f5
	rst FarCall                                          ; $779e: $f7
	ld c, c                                          ; $779f: $49
	ld [hl], h                                       ; $77a0: $74
	ld bc, $ea7d                                     ; $77a1: $01 $7d $ea
	dec h                                            ; $77a4: $25
	db $d3                                           ; $77a5: $d3
	ld a, h                                          ; $77a6: $7c
	ld [$d326], a                                    ; $77a7: $ea $26 $d3
	pop af                                           ; $77aa: $f1
	cp $10                                           ; $77ab: $fe $10
	jr nz, jr_001_77b1                               ; $77ad: $20 $02

	ld a, $11                                        ; $77af: $3e $11

jr_001_77b1:
	ld [$d332], a                                    ; $77b1: $ea $32 $d3
	ld bc, $67f0                                     ; $77b4: $01 $f0 $67
	call $18b3                                       ; $77b7: $cd $b3 $18
	ld a, $03                                        ; $77ba: $3e $03
	ld [$d819], a                                    ; $77bc: $ea $19 $d8
	ld [$d81a], a                                    ; $77bf: $ea $1a $d8
	ld [$d81b], a                                    ; $77c2: $ea $1b $d8
	ld [$d7fb], a                                    ; $77c5: $ea $fb $d7
	ld [$d7f9], a                                    ; $77c8: $ea $f9 $d7
	ld a, $00                                        ; $77cb: $3e $00
	ld [$d7fa], a                                    ; $77cd: $ea $fa $d7
	ld b, $1e                                        ; $77d0: $06 $1e
	ld hl, $7973                                     ; $77d2: $21 $73 $79
	call Func_1c32                                       ; $77d5: $cd $32 $1c
	jp Jump_001_787e                                 ; $77d8: $c3 $7e $78


	call $1998                                       ; $77db: $cd $98 $19
	ret nz                                           ; $77de: $c0

	ld a, $01                                        ; $77df: $3e $01
	ld [$c186], a                                    ; $77e1: $ea $86 $c1
	xor a                                            ; $77e4: $af
	ld [$d331], a                                    ; $77e5: $ea $31 $d3
	ret                                              ; $77e8: $c9


	ld a, [$d331]                                    ; $77e9: $fa $31 $d3
	rst JumpTable                                          ; $77ec: $c7
	push af                                          ; $77ed: $f5
	ld [hl], a                                       ; $77ee: $77
	db $fd                                           ; $77ef: $fd
	ld [hl], a                                       ; $77f0: $77
	db $10                                           ; $77f1: $10
	ld a, b                                          ; $77f2: $78
	cpl                                              ; $77f3: $2f
	ld a, b                                          ; $77f4: $78
	ld a, $08                                        ; $77f5: $3e $08
	ld [$d330], a                                    ; $77f7: $ea $30 $d3
	jp Jump_001_787e                                 ; $77fa: $c3 $7e $78


	ld hl, $d330                                     ; $77fd: $21 $30 $d3
	dec [hl]                                         ; $7800: $35
	ret nz                                           ; $7801: $c0

	xor a                                            ; $7802: $af
	ldh [$9d], a                                     ; $7803: $e0 $9d
	ld [$c13c], a                                    ; $7805: $ea $3c $c1
	ld a, $b4                                        ; $7808: $3e $b4
	ld [$d330], a                                    ; $780a: $ea $30 $d3
	jp Jump_001_787e                                 ; $780d: $c3 $7e $78


	call $2dc4                                       ; $7810: $cd $c4 $2d
	ld a, [$c13c]                                    ; $7813: $fa $3c $c1
	or a                                             ; $7816: $b7
	jr nz, jr_001_7820                               ; $7817: $20 $07

	ld hl, $d330                                     ; $7819: $21 $30 $d3
	dec [hl]                                         ; $781c: $35
	ret nz                                           ; $781d: $c0

	jr jr_001_783d                                   ; $781e: $18 $1d

jr_001_7820:
	ld hl, $d325                                     ; $7820: $21 $25 $d3
	ld de, $d327                                     ; $7823: $11 $27 $d3
	ld a, $02                                        ; $7826: $3e $02
	rst FarCall                                          ; $7828: $f7
	or c                                             ; $7829: $b1
	ld [hl], e                                       ; $782a: $73
	ld bc, $7ec3                                     ; $782b: $01 $c3 $7e
	ld a, b                                          ; $782e: $78
	rst FarCall                                          ; $782f: $f7
	dec hl                                           ; $7830: $2b
	ld [hl], e                                       ; $7831: $73
	ld bc, $3afa                                     ; $7832: $01 $fa $3a
	db $d3                                           ; $7835: $d3
	cp $01                                           ; $7836: $fe $01
	ret c                                            ; $7838: $d8

	jr z, jr_001_783f                                ; $7839: $28 $04

	ld a, $01                                        ; $783b: $3e $01

jr_001_783d:
	ld a, $02                                        ; $783d: $3e $02

jr_001_783f:
	ld [$d332], a                                    ; $783f: $ea $32 $d3
	xor a                                            ; $7842: $af
	ld [$d331], a                                    ; $7843: $ea $31 $d3
	ret                                              ; $7846: $c9


	ld a, [$d331]                                    ; $7847: $fa $31 $d3
	rst JumpTable                                          ; $784a: $c7
	ld c, a                                          ; $784b: $4f
	ld a, b                                          ; $784c: $78
	ld d, d                                          ; $784d: $52
	ld a, b                                          ; $784e: $78
	call Call_001_787e                               ; $784f: $cd $7e $78
	ld a, [$c138]                                    ; $7852: $fa $38 $c1
	or a                                             ; $7855: $b7
	ret z                                            ; $7856: $c8

	ldh a, [$9d]                                     ; $7857: $f0 $9d
	dec a                                            ; $7859: $3d
	ld [$d332], a                                    ; $785a: $ea $32 $d3
	xor a                                            ; $785d: $af
	ld [$d331], a                                    ; $785e: $ea $31 $d3
	ret                                              ; $7861: $c9


	ld a, [$d331]                                    ; $7862: $fa $31 $d3
	rst JumpTable                                          ; $7865: $c7
	ld l, d                                          ; $7866: $6a
	ld a, b                                          ; $7867: $78
	ld l, l                                          ; $7868: $6d
	ld a, b                                          ; $7869: $78
	call Call_001_787e                               ; $786a: $cd $7e $78
	ld a, [$c138]                                    ; $786d: $fa $38 $c1
	or a                                             ; $7870: $b7
	ret nz                                           ; $7871: $c0

	ld a, [$c13b]                                    ; $7872: $fa $3b $c1
	inc a                                            ; $7875: $3c
	call $2d9f                                       ; $7876: $cd $9f $2d
	xor a                                            ; $7879: $af
	ld [$d331], a                                    ; $787a: $ea $31 $d3
	ret                                              ; $787d: $c9


Call_001_787e:
Jump_001_787e:
	ld hl, $d331                                     ; $787e: $21 $31 $d3
	inc [hl]                                         ; $7881: $34
	ret                                              ; $7882: $c9


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

Call_001_791e:
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

Jump_001_7e66:
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
