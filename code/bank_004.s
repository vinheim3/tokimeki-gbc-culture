; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

Call_004_4000:
	push de                                          ; $4000: $d5
	ld hl, $a2f1                                     ; $4001: $21 $f1 $a2
	call $ce99                                       ; $4004: $cd $99 $ce
	ld a, [hl+]                                      ; $4007: $2a
	ld d, a                                          ; $4008: $57
	ld a, [hl]                                       ; $4009: $7e
	ld e, a                                          ; $400a: $5f
	ld h, d                                          ; $400b: $62
	ld l, e                                          ; $400c: $6b
	pop de                                           ; $400d: $d1
	ret                                              ; $400e: $c9


Call_004_400f:
	call Call_004_4051                               ; $400f: $cd $51 $40
	bit 7, a                                         ; $4012: $cb $7f
	jr z, jr_004_401e                                ; $4014: $28 $08

	bit 0, a                                         ; $4016: $cb $47
	jr nz, jr_004_401e                               ; $4018: $20 $04

	ld a, $01                                        ; $401a: $3e $01
	scf                                              ; $401c: $37
	ret                                              ; $401d: $c9


jr_004_401e:
	ld a, $00                                        ; $401e: $3e $00
	or a                                             ; $4020: $b7
	ret                                              ; $4021: $c9


	call Call_004_4051                               ; $4022: $cd $51 $40
	bit 7, a                                         ; $4025: $cb $7f
	jr z, jr_004_402d                                ; $4027: $28 $04

	ld a, $01                                        ; $4029: $3e $01
	scf                                              ; $402b: $37
	ret                                              ; $402c: $c9


jr_004_402d:
	ld a, $00                                        ; $402d: $3e $00
	or a                                             ; $402f: $b7
	ret                                              ; $4030: $c9


Call_004_4031:
	call Call_004_4051                               ; $4031: $cd $51 $40
	and $01                                          ; $4034: $e6 $01
	jr z, jr_004_403c                                ; $4036: $28 $04

	ld a, $01                                        ; $4038: $3e $01
	scf                                              ; $403a: $37
	ret                                              ; $403b: $c9


jr_004_403c:
	ld a, $00                                        ; $403c: $3e $00
	or a                                             ; $403e: $b7
	ret                                              ; $403f: $c9


	push hl                                          ; $4040: $e5
	call Call_004_4049                               ; $4041: $cd $49 $40
	or $01                                           ; $4044: $f6 $01
	ld [hl], a                                       ; $4046: $77
	pop hl                                           ; $4047: $e1
	ret                                              ; $4048: $c9


Call_004_4049:
	ld hl, $a365                                     ; $4049: $21 $65 $a3
	call $ce99                                       ; $404c: $cd $99 $ce
	ld a, [hl]                                       ; $404f: $7e
	ret                                              ; $4050: $c9


Call_004_4051:
	push hl                                          ; $4051: $e5
	call Call_004_4049                               ; $4052: $cd $49 $40
	pop hl                                           ; $4055: $e1
	ret                                              ; $4056: $c9


	push hl                                          ; $4057: $e5
	call Call_004_4049                               ; $4058: $cd $49 $40
	and $fe                                          ; $405b: $e6 $fe
	ld [hl], a                                       ; $405d: $77
	pop hl                                           ; $405e: $e1
	ret                                              ; $405f: $c9


	call Call_004_4051                               ; $4060: $cd $51 $40
	bit 1, a                                         ; $4063: $cb $4f
	jr z, jr_004_406b                                ; $4065: $28 $04

	ld a, $01                                        ; $4067: $3e $01
	scf                                              ; $4069: $37
	ret                                              ; $406a: $c9


jr_004_406b:
	ld a, $00                                        ; $406b: $3e $00
	or a                                             ; $406d: $b7
	ret                                              ; $406e: $c9


	call Call_004_4049                               ; $406f: $cd $49 $40
	or $02                                           ; $4072: $f6 $02
	ld [hl], a                                       ; $4074: $77
	ret                                              ; $4075: $c9


	call Call_004_4051                               ; $4076: $cd $51 $40
	bit 2, a                                         ; $4079: $cb $57
	jr z, jr_004_4081                                ; $407b: $28 $04

	ld a, $01                                        ; $407d: $3e $01
	scf                                              ; $407f: $37
	ret                                              ; $4080: $c9


jr_004_4081:
	ld a, $00                                        ; $4081: $3e $00
	or a                                             ; $4083: $b7
	ret                                              ; $4084: $c9


	call Call_004_4049                               ; $4085: $cd $49 $40
	or $04                                           ; $4088: $f6 $04
	ld [hl], a                                       ; $408a: $77
	ret                                              ; $408b: $c9


Call_004_408c:
	call Call_004_4051                               ; $408c: $cd $51 $40
	bit 3, a                                         ; $408f: $cb $5f
	jr z, jr_004_4097                                ; $4091: $28 $04

	ld a, $01                                        ; $4093: $3e $01
	scf                                              ; $4095: $37
	ret                                              ; $4096: $c9


jr_004_4097:
	ld a, $00                                        ; $4097: $3e $00
	or a                                             ; $4099: $b7
	ret                                              ; $409a: $c9


	call Call_004_4049                               ; $409b: $cd $49 $40
	or $08                                           ; $409e: $f6 $08
	ld [hl], a                                       ; $40a0: $77
	ret                                              ; $40a1: $c9


Call_004_40a2:
	cp $0a                                           ; $40a2: $fe $0a
	jr nz, jr_004_40ad                               ; $40a4: $20 $07

	ld a, $08                                        ; $40a6: $3e $08
	ret                                              ; $40a8: $c9


	cp $07                                           ; $40a9: $fe $07
	jr nc, jr_004_40b5                               ; $40ab: $30 $08

jr_004_40ad:
	ld hl, $a37c                                     ; $40ad: $21 $7c $a3
	call $ce99                                       ; $40b0: $cd $99 $ce
	ld a, [hl]                                       ; $40b3: $7e
	ret                                              ; $40b4: $c9


jr_004_40b5:
	ld a, $ff                                        ; $40b5: $3e $ff
	ret                                              ; $40b7: $c9


	ld hl, $a373                                     ; $40b8: $21 $73 $a3
	call $ce99                                       ; $40bb: $cd $99 $ce
	ld a, [hl]                                       ; $40be: $7e
	ret                                              ; $40bf: $c9


Call_004_40c0:
	push bc                                          ; $40c0: $c5
	call Call_004_4218                               ; $40c1: $cd $18 $42
	ld b, $28                                        ; $40c4: $06 $28
	call $12b5                                       ; $40c6: $cd $b5 $12
	inc a                                            ; $40c9: $3c
	call Call_000_12fc                                       ; $40ca: $cd $fc $12
	pop bc                                           ; $40cd: $c1
	ret                                              ; $40ce: $c9


	call Call_004_40ea                               ; $40cf: $cd $ea $40
	ld b, a                                          ; $40d2: $47
	call Call_000_1309                                       ; $40d3: $cd $09 $13
	call $12b5                                       ; $40d6: $cd $b5 $12
	inc b                                            ; $40d9: $04
	ld c, $00                                        ; $40da: $0e $00

jr_004_40dc:
	ld a, c                                          ; $40dc: $79
	call Call_004_4031                               ; $40dd: $cd $31 $40
	jr nc, jr_004_40e5                               ; $40e0: $30 $03

	dec b                                            ; $40e2: $05
	jr z, jr_004_40e8                                ; $40e3: $28 $03

jr_004_40e5:
	inc c                                            ; $40e5: $0c
	jr jr_004_40dc                                   ; $40e6: $18 $f4

jr_004_40e8:
	ld a, c                                          ; $40e8: $79
	ret                                              ; $40e9: $c9


Call_004_40ea:
	ld bc, $0000                                     ; $40ea: $01 $00 $00

jr_004_40ed:
	ld a, c                                          ; $40ed: $79
	call Call_004_4031                               ; $40ee: $cd $31 $40
	jr nc, jr_004_40f4                               ; $40f1: $30 $01

	inc b                                            ; $40f3: $04

jr_004_40f4:
	inc c                                            ; $40f4: $0c
	ld a, c                                          ; $40f5: $79
	cp $0e                                           ; $40f6: $fe $0e
	jr c, jr_004_40ed                                ; $40f8: $38 $f3

	ld a, b                                          ; $40fa: $78
	ret                                              ; $40fb: $c9


	ld [$c0d0], a                                    ; $40fc: $ea $d0 $c0
	ld a, $ff                                        ; $40ff: $3e $ff
	ld [$c0d1], a                                    ; $4101: $ea $d1 $c0
	call Call_004_40ea                               ; $4104: $cd $ea $40
	dec a                                            ; $4107: $3d
	jr z, jr_004_412f                                ; $4108: $28 $25

	ld b, a                                          ; $410a: $47
	call Call_000_1309                                       ; $410b: $cd $09 $13
	call $12b5                                       ; $410e: $cd $b5 $12
	inc b                                            ; $4111: $04
	ld c, $01                                        ; $4112: $0e $01

jr_004_4114:
	ld a, c                                          ; $4114: $79
	call Call_004_4031                               ; $4115: $cd $31 $40
	jr nc, jr_004_412c                               ; $4118: $30 $12

	ld a, c                                          ; $411a: $79
	ld [$c0d1], a                                    ; $411b: $ea $d1 $c0
	ld a, [$c0d0]                                    ; $411e: $fa $d0 $c0
	cp c                                             ; $4121: $b9
	jr nz, jr_004_4129                               ; $4122: $20 $05

	ld a, $ff                                        ; $4124: $3e $ff
	ld [$c0d1], a                                    ; $4126: $ea $d1 $c0

jr_004_4129:
	dec b                                            ; $4129: $05
	jr z, jr_004_412f                                ; $412a: $28 $03

jr_004_412c:
	inc c                                            ; $412c: $0c
	jr jr_004_4114                                   ; $412d: $18 $e5

jr_004_412f:
	ld a, [$c0d1]                                    ; $412f: $fa $d1 $c0
	ret                                              ; $4132: $c9


	ld a, $ff                                        ; $4133: $3e $ff
	ld [$c0d0], a                                    ; $4135: $ea $d0 $c0
	call Call_004_4167                               ; $4138: $cd $67 $41
	or a                                             ; $413b: $b7
	jr z, jr_004_4163                                ; $413c: $28 $25

	call Call_000_1309                                       ; $413e: $cd $09 $13
	call $12b5                                       ; $4141: $cd $b5 $12
	inc b                                            ; $4144: $04
	ld c, $01                                        ; $4145: $0e $01

jr_004_4147:
	ld a, c                                          ; $4147: $79
	call Call_004_400f                               ; $4148: $cd $0f $40
	jr nc, jr_004_4160                               ; $414b: $30 $13

	ld a, c                                          ; $414d: $79
	cp $09                                           ; $414e: $fe $09
	jr z, jr_004_4160                                ; $4150: $28 $0e

	cp $0a                                           ; $4152: $fe $0a
	jr z, jr_004_4160                                ; $4154: $28 $0a

	cp $0c                                           ; $4156: $fe $0c
	jr z, jr_004_4160                                ; $4158: $28 $06

	ld [$c0d0], a                                    ; $415a: $ea $d0 $c0
	dec b                                            ; $415d: $05
	jr z, jr_004_4163                                ; $415e: $28 $03

jr_004_4160:
	inc c                                            ; $4160: $0c
	jr jr_004_4147                                   ; $4161: $18 $e4

jr_004_4163:
	ld a, [$c0d0]                                    ; $4163: $fa $d0 $c0
	ret                                              ; $4166: $c9


Call_004_4167:
	ld b, $00                                        ; $4167: $06 $00
	ld c, $01                                        ; $4169: $0e $01

jr_004_416b:
	ld a, c                                          ; $416b: $79
	call Call_004_4031                               ; $416c: $cd $31 $40
	jr nc, jr_004_417f                               ; $416f: $30 $0e

	ld a, c                                          ; $4171: $79
	cp $09                                           ; $4172: $fe $09
	jr z, jr_004_417f                                ; $4174: $28 $09

	cp $0a                                           ; $4176: $fe $0a
	jr z, jr_004_417f                                ; $4178: $28 $05

	cp $0c                                           ; $417a: $fe $0c
	jr z, jr_004_417f                                ; $417c: $28 $01

	inc b                                            ; $417e: $04

jr_004_417f:
	inc c                                            ; $417f: $0c
	ld a, c                                          ; $4180: $79
	cp $0e                                           ; $4181: $fe $0e
	jr c, jr_004_416b                                ; $4183: $38 $e6

	ld a, b                                          ; $4185: $78
	ret                                              ; $4186: $c9


	call Call_004_42bb                               ; $4187: $cd $bb $42
	cp $3c                                           ; $418a: $fe $3c
	jr nc, jr_004_4190                               ; $418c: $30 $02

jr_004_418e:
	xor a                                            ; $418e: $af
	ret                                              ; $418f: $c9


jr_004_4190:
	cp $80                                           ; $4190: $fe $80
	jr nc, jr_004_418e                               ; $4192: $30 $fa

	ld a, $01                                        ; $4194: $3e $01
	scf                                              ; $4196: $37
	ret                                              ; $4197: $c9


	ld a, [$a339]                                    ; $4198: $fa $39 $a3
	and $01                                          ; $419b: $e6 $01
	jr nz, jr_004_41a3                               ; $419d: $20 $04

	ld a, $01                                        ; $419f: $3e $01
	scf                                              ; $41a1: $37
	ret                                              ; $41a2: $c9


jr_004_41a3:
	xor a                                            ; $41a3: $af
	ret                                              ; $41a4: $c9


	ld a, [$a339]                                    ; $41a5: $fa $39 $a3
	or $01                                           ; $41a8: $f6 $01
	ld [$a339], a                                    ; $41aa: $ea $39 $a3
	ret                                              ; $41ad: $c9


	ld hl, $a365                                     ; $41ae: $21 $65 $a3
	call $ce99                                       ; $41b1: $cd $99 $ce
	ld a, [hl]                                       ; $41b4: $7e
	or $10                                           ; $41b5: $f6 $10
	ld [hl], a                                       ; $41b7: $77
	ret                                              ; $41b8: $c9


	call Call_004_4051                               ; $41b9: $cd $51 $40
	and $10                                          ; $41bc: $e6 $10
	jr nz, jr_004_41c2                               ; $41be: $20 $02

	xor a                                            ; $41c0: $af
	ret                                              ; $41c1: $c9


jr_004_41c2:
	ld a, $01                                        ; $41c2: $3e $01
	scf                                              ; $41c4: $37
	ret                                              ; $41c5: $c9


Call_004_41c6:
	ld c, $0e                                        ; $41c6: $0e $0e
	ld hl, $a365                                     ; $41c8: $21 $65 $a3

jr_004_41cb:
	ld a, [hl]                                       ; $41cb: $7e
	and $ef                                          ; $41cc: $e6 $ef
	ld [hl+], a                                      ; $41ce: $22
	dec c                                            ; $41cf: $0d
	jr nz, jr_004_41cb                               ; $41d0: $20 $f9

	ret                                              ; $41d2: $c9


	ld a, b                                          ; $41d3: $78
	cp $04                                           ; $41d4: $fe $04
	jr z, jr_004_41f0                                ; $41d6: $28 $18

	cp $06                                           ; $41d8: $fe $06
	jr z, jr_004_41f0                                ; $41da: $28 $14

	cp $05                                           ; $41dc: $fe $05
	jr z, jr_004_41f0                                ; $41de: $28 $10

	cp $09                                           ; $41e0: $fe $09
	jr z, jr_004_41f0                                ; $41e2: $28 $0c

	cp $0b                                           ; $41e4: $fe $0b
	jr z, jr_004_41f0                                ; $41e6: $28 $08

	cp $0c                                           ; $41e8: $fe $0c
	jr z, jr_004_41f0                                ; $41ea: $28 $04

	ld a, $01                                        ; $41ec: $3e $01
	scf                                              ; $41ee: $37
	ret                                              ; $41ef: $c9


jr_004_41f0:
	xor a                                            ; $41f0: $af
	ret                                              ; $41f1: $c9


Call_004_41f2:
	push hl                                          ; $41f2: $e5
	push bc                                          ; $41f3: $c5
	push af                                          ; $41f4: $f5
	ld hl, $450a                                     ; $41f5: $21 $0a $45
	call $ce99                                       ; $41f8: $cd $99 $ce
	ld a, [hl]                                       ; $41fb: $7e
	ld b, a                                          ; $41fc: $47
	pop af                                           ; $41fd: $f1
	ld hl, $a33b                                     ; $41fe: $21 $3b $a3
	call $ce99                                       ; $4201: $cd $99 $ce
	ld a, [hl]                                       ; $4204: $7e
	ld c, a                                          ; $4205: $4f
	call BCequBtimesC                                       ; $4206: $cd $5f $12
	sla c                                            ; $4209: $cb $21
	ld a, b                                          ; $420b: $78
	rla                                              ; $420c: $17
	cp $64                                           ; $420d: $fe $64
	jr c, jr_004_4215                                ; $420f: $38 $04

	jr z, jr_004_4215                                ; $4211: $28 $02

	ld a, $64                                        ; $4213: $3e $64

jr_004_4215:
	pop bc                                           ; $4215: $c1
	pop hl                                           ; $4216: $e1
	ret                                              ; $4217: $c9


Call_004_4218:
	push hl                                          ; $4218: $e5
	push bc                                          ; $4219: $c5
	push de                                          ; $421a: $d5
	ld [$c0d1], a                                    ; $421b: $ea $d1 $c0
	ld hl, $4518                                     ; $421e: $21 $18 $45
	call $ce99                                       ; $4221: $cd $99 $ce
	ld a, [hl]                                       ; $4224: $7e
	ld b, a                                          ; $4225: $47
	ld a, [$c0d1]                                    ; $4226: $fa $d1 $c0
	ld hl, $a349                                     ; $4229: $21 $49 $a3
	call $ce99                                       ; $422c: $cd $99 $ce
	ld a, [hl]                                       ; $422f: $7e
	ld c, a                                          ; $4230: $4f
	call BCequBtimesC                                       ; $4231: $cd $5f $12
	sla c                                            ; $4234: $cb $21
	ld a, b                                          ; $4236: $78
	rla                                              ; $4237: $17
	cp $64                                           ; $4238: $fe $64
	jr c, jr_004_4240                                ; $423a: $38 $04

	jr z, jr_004_4240                                ; $423c: $28 $02

	ld a, $64                                        ; $423e: $3e $64

jr_004_4240:
	ld [$c0d2], a                                    ; $4240: $ea $d2 $c0
	ld a, [$c0d1]                                    ; $4243: $fa $d1 $c0
	sla a                                            ; $4246: $cb $27
	ld hl, $4534                                     ; $4248: $21 $34 $45
	call $ce99                                       ; $424b: $cd $99 $ce
	ld e, [hl]                                       ; $424e: $5e
	inc hl                                           ; $424f: $23
	ld d, [hl]                                       ; $4250: $56
	ld a, [$c0d1]                                    ; $4251: $fa $d1 $c0
	ld hl, $4526                                     ; $4254: $21 $26 $45
	call $ce99                                       ; $4257: $cd $99 $ce
	ld a, [hl]                                       ; $425a: $7e
	ld [$c0d3], a                                    ; $425b: $ea $d3 $c0
	ld hl, $a2f1                                     ; $425e: $21 $f1 $a2

jr_004_4261:
	inc hl                                           ; $4261: $23
	inc hl                                           ; $4262: $23
	ld a, [$c0d3]                                    ; $4263: $fa $d3 $c0
	or a                                             ; $4266: $b7
	jr z, jr_004_42ac                                ; $4267: $28 $43

	srl a                                            ; $4269: $cb $3f
	ld [$c0d3], a                                    ; $426b: $ea $d3 $c0
	jr nc, jr_004_4261                               ; $426e: $30 $f1

	push de                                          ; $4270: $d5
	ld c, [hl]                                       ; $4271: $4e
	inc hl                                           ; $4272: $23
	ld b, [hl]                                       ; $4273: $46
	dec hl                                           ; $4274: $2b
	push hl                                          ; $4275: $e5

jr_004_4276:
	ld a, [de]                                       ; $4276: $1a
	or a                                             ; $4277: $b7
	jr z, jr_004_4286                                ; $4278: $28 $0c

	ld l, a                                          ; $427a: $6f
	xor a                                            ; $427b: $af
	ld h, a                                          ; $427c: $67
	call wCpHLtoBC                                       ; $427d: $cd $86 $ce
	jr c, jr_004_4286                                ; $4280: $38 $04

	inc de                                           ; $4282: $13
	inc de                                           ; $4283: $13
	jr jr_004_4276                                   ; $4284: $18 $f0

jr_004_4286:
	pop hl                                           ; $4286: $e1
	inc de                                           ; $4287: $13
	ld a, [de]                                       ; $4288: $1a
	or a                                             ; $4289: $b7
	jr z, jr_004_42a9                                ; $428a: $28 $1d

	ld b, a                                          ; $428c: $47
	bit 7, a                                         ; $428d: $cb $7f
	jr nz, jr_004_429a                               ; $428f: $20 $09

	ld a, [$c0d2]                                    ; $4291: $fa $d2 $c0
	add b                                            ; $4294: $80
	ld [$c0d2], a                                    ; $4295: $ea $d2 $c0
	jr jr_004_42a9                                   ; $4298: $18 $0f

jr_004_429a:
	ld a, $ff                                        ; $429a: $3e $ff
	sub b                                            ; $429c: $90
	inc a                                            ; $429d: $3c
	ld b, a                                          ; $429e: $47
	ld a, [$c0d2]                                    ; $429f: $fa $d2 $c0
	sub b                                            ; $42a2: $90
	jr nc, jr_004_42a6                               ; $42a3: $30 $01

	xor a                                            ; $42a5: $af

jr_004_42a6:
	ld [$c0d2], a                                    ; $42a6: $ea $d2 $c0

jr_004_42a9:
	pop de                                           ; $42a9: $d1
	jr jr_004_4261                                   ; $42aa: $18 $b5

jr_004_42ac:
	ld a, [$c0d2]                                    ; $42ac: $fa $d2 $c0
	cp $64                                           ; $42af: $fe $64
	jr c, jr_004_42b7                                ; $42b1: $38 $04

	jr z, jr_004_42b7                                ; $42b3: $28 $02

	ld a, $64                                        ; $42b5: $3e $64

jr_004_42b7:
	pop de                                           ; $42b7: $d1
	pop bc                                           ; $42b8: $c1
	pop hl                                           ; $42b9: $e1
	ret                                              ; $42ba: $c9


Call_004_42bb:
	push hl                                          ; $42bb: $e5
	ld hl, $a357                                     ; $42bc: $21 $57 $a3
	call $ce99                                       ; $42bf: $cd $99 $ce
	ld a, [hl]                                       ; $42c2: $7e
	pop hl                                           ; $42c3: $e1
	ret                                              ; $42c4: $c9


Call_004_42c5:
	push af                                          ; $42c5: $f5
	call Call_004_41f2                               ; $42c6: $cd $f2 $41
	ld [$c0d0], a                                    ; $42c9: $ea $d0 $c0
	cp $0a                                           ; $42cc: $fe $0a
	jr c, jr_004_42e1                                ; $42ce: $38 $11

	pop af                                           ; $42d0: $f1
	call Call_004_4218                               ; $42d1: $cd $18 $42
	cp $0f                                           ; $42d4: $fe $0f
	jr c, jr_004_42e6                                ; $42d6: $38 $0e

	ld b, a                                          ; $42d8: $47
	ld a, [$c0d0]                                    ; $42d9: $fa $d0 $c0
	cp b                                             ; $42dc: $b8
	jr c, jr_004_42e0                                ; $42dd: $38 $01

	ld a, b                                          ; $42df: $78

jr_004_42e0:
	ret                                              ; $42e0: $c9


jr_004_42e1:
	pop af                                           ; $42e1: $f1
	ld a, [$c0d0]                                    ; $42e2: $fa $d0 $c0
	ret                                              ; $42e5: $c9


jr_004_42e6:
	ld a, [$c0d0]                                    ; $42e6: $fa $d0 $c0
	cp $0f                                           ; $42e9: $fe $0f
	jr c, jr_004_42ef                                ; $42eb: $38 $02

	ld a, $0f                                        ; $42ed: $3e $0f

jr_004_42ef:
	ret                                              ; $42ef: $c9


Func_04_42f0::
	push hl                                          ; $42f0: $e5
	push bc                                          ; $42f1: $c5
	ld b, $2a                                        ; $42f2: $06 $2a
	ld hl, $a33b                                     ; $42f4: $21 $3b $a3
	xor a                                            ; $42f7: $af

jr_004_42f8:
	ld [hl+], a                                      ; $42f8: $22
	dec b                                            ; $42f9: $05
	jr nz, jr_004_42f8                               ; $42fa: $20 $fc

	ld b, $0e                                        ; $42fc: $06 $0e
	ld hl, $a365                                     ; $42fe: $21 $65 $a3
	ld a, $80                                        ; $4301: $3e $80

jr_004_4303:
	ld [hl+], a                                      ; $4303: $22
	dec b                                            ; $4304: $05
	jr nz, jr_004_4303                               ; $4305: $20 $fc

	call Call_004_430d                               ; $4307: $cd $0d $43
	pop bc                                           ; $430a: $c1
	pop hl                                           ; $430b: $e1
	ret                                              ; $430c: $c9


Call_004_430d:
	push hl                                          ; $430d: $e5
	ld a, [$a223]                                    ; $430e: $fa $23 $a2
	ld b, a                                          ; $4311: $47
	ld a, [$a21e]                                    ; $4312: $fa $1e $a2
	sla a                                            ; $4315: $cb $27
	sla a                                            ; $4317: $cb $27
	or b                                             ; $4319: $b0
	sla a                                            ; $431a: $cb $27
	sla a                                            ; $431c: $cb $27
	ld hl, $4630                                     ; $431e: $21 $30 $46
	call $ce99                                       ; $4321: $cd $99 $ce
	ld a, [hl+]                                      ; $4324: $2a
	ld [$a33b], a                                    ; $4325: $ea $3b $a3
	ld a, [hl+]                                      ; $4328: $2a
	ld [$a349], a                                    ; $4329: $ea $49 $a3
	ld a, [hl]                                       ; $432c: $7e
	ld [$a357], a                                    ; $432d: $ea $57 $a3
	pop hl                                           ; $4330: $e1
	ret                                              ; $4331: $c9


	ld a, [$a352]                                    ; $4332: $fa $52 $a3
	ret                                              ; $4335: $c9


	ld a, [$a33b]                                    ; $4336: $fa $3b $a3
	ret                                              ; $4339: $c9


	ld a, [$a349]                                    ; $433a: $fa $49 $a3
	ret                                              ; $433d: $c9


Call_004_433e:
	ld hl, $a33b                                     ; $433e: $21 $3b $a3
	call $ce99                                       ; $4341: $cd $99 $ce
	ld a, [hl]                                       ; $4344: $7e
	ret                                              ; $4345: $c9


Call_004_4346:
	ld hl, $a357                                     ; $4346: $21 $57 $a3
	call $ce99                                       ; $4349: $cd $99 $ce
	ld a, [hl]                                       ; $434c: $7e
	ret                                              ; $434d: $c9


	push hl                                          ; $434e: $e5
	push bc                                          ; $434f: $c5
	ld c, $00                                        ; $4350: $0e $00
	ld hl, $a365                                     ; $4352: $21 $65 $a3

jr_004_4355:
	ld a, [hl+]                                      ; $4355: $2a
	and $01                                          ; $4356: $e6 $01
	jr z, jr_004_4371                                ; $4358: $28 $17

	push hl                                          ; $435a: $e5
	ld a, c                                          ; $435b: $79
	call Call_004_41f2                               ; $435c: $cd $f2 $41
	cp $0a                                           ; $435f: $fe $0a
	jr nc, jr_004_4370                               ; $4361: $30 $0d

	ld a, c                                          ; $4363: $79
	call Call_004_4346                               ; $4364: $cd $46 $43
	add $05                                          ; $4367: $c6 $05
	cp $7f                                           ; $4369: $fe $7f
	jr c, jr_004_436f                                ; $436b: $38 $02

	ld a, $7f                                        ; $436d: $3e $7f

jr_004_436f:
	ld [hl], a                                       ; $436f: $77

jr_004_4370:
	pop hl                                           ; $4370: $e1

jr_004_4371:
	inc c                                            ; $4371: $0c
	ld a, c                                          ; $4372: $79
	cp $0e                                           ; $4373: $fe $0e
	jr nc, jr_004_4379                               ; $4375: $30 $02

	jr jr_004_4355                                   ; $4377: $18 $dc

jr_004_4379:
	pop bc                                           ; $4379: $c1
	pop hl                                           ; $437a: $e1
	ret                                              ; $437b: $c9


	push hl                                          ; $437c: $e5
	push bc                                          ; $437d: $c5
	ld c, $01                                        ; $437e: $0e $01
	ld hl, $a366                                     ; $4380: $21 $66 $a3

jr_004_4383:
	ld a, [hl+]                                      ; $4383: $2a
	and $01                                          ; $4384: $e6 $01
	jr z, jr_004_4394                                ; $4386: $28 $0c

	push hl                                          ; $4388: $e5
	ld a, c                                          ; $4389: $79
	call Call_004_433e                               ; $438a: $cd $3e $43
	sub $01                                          ; $438d: $d6 $01
	jr nc, jr_004_4392                               ; $438f: $30 $01

	xor a                                            ; $4391: $af

jr_004_4392:
	ld [hl], a                                       ; $4392: $77
	pop hl                                           ; $4393: $e1

jr_004_4394:
	inc c                                            ; $4394: $0c
	ld a, c                                          ; $4395: $79
	cp $0e                                           ; $4396: $fe $0e
	jr nc, jr_004_43a0                               ; $4398: $30 $06

	cp $0b                                           ; $439a: $fe $0b
	jr z, jr_004_4394                                ; $439c: $28 $f6

	jr jr_004_4383                                   ; $439e: $18 $e3

jr_004_43a0:
	pop bc                                           ; $43a0: $c1
	pop hl                                           ; $43a1: $e1
	ret                                              ; $43a2: $c9


	ld a, [$a33b]                                    ; $43a3: $fa $3b $a3
	sub $01                                          ; $43a6: $d6 $01
	jr nc, jr_004_43ab                               ; $43a8: $30 $01

	xor a                                            ; $43aa: $af

jr_004_43ab:
	ld [$a33b], a                                    ; $43ab: $ea $3b $a3
	ld a, [$a370]                                    ; $43ae: $fa $70 $a3
	and $01                                          ; $43b1: $e6 $01
	ret z                                            ; $43b3: $c8

	ld a, [$a346]                                    ; $43b4: $fa $46 $a3
	sub $01                                          ; $43b7: $d6 $01
	jr nc, jr_004_43bc                               ; $43b9: $30 $01

	xor a                                            ; $43bb: $af

jr_004_43bc:
	ld [$a346], a                                    ; $43bc: $ea $46 $a3
	ret                                              ; $43bf: $c9


Call_004_43c0::
	call Call_004_44c0                               ; $43c0: $cd $c0 $44
	ld hl, $43d7                                     ; $43c3: $21 $d7 $43
	rst AddAOntoHL                                          ; $43c6: $ef
	ld a, [hl]                                       ; $43c7: $7e
	call wJumpTable                                       ; $43c8: $cd $80 $cf
	dw $44ef
	dw $44f3
	dw $44f7
	dw $44fb
	dw $44ff
	dw $4503


;
	dec b                                            ; $43d7: $05
	inc b                                            ; $43d8: $04
	inc b                                            ; $43d9: $04
	inc b                                            ; $43da: $04
	inc b                                            ; $43db: $04
	inc b                                            ; $43dc: $04
	inc b                                            ; $43dd: $04
	inc bc                                           ; $43de: $03
	ld [bc], a                                       ; $43df: $02
	dec b                                            ; $43e0: $05
	inc b                                            ; $43e1: $04
	inc b                                            ; $43e2: $04
	inc b                                            ; $43e3: $04
	inc b                                            ; $43e4: $04
	inc b                                            ; $43e5: $04
	inc bc                                           ; $43e6: $03
	inc bc                                           ; $43e7: $03
	ld [bc], a                                       ; $43e8: $02
	dec b                                            ; $43e9: $05
	inc b                                            ; $43ea: $04
	inc b                                            ; $43eb: $04
	inc b                                            ; $43ec: $04
	inc b                                            ; $43ed: $04
	inc b                                            ; $43ee: $04
	inc bc                                           ; $43ef: $03
	inc bc                                           ; $43f0: $03
	ld [bc], a                                       ; $43f1: $02
	dec b                                            ; $43f2: $05
	inc b                                            ; $43f3: $04
	inc b                                            ; $43f4: $04
	inc b                                            ; $43f5: $04
	inc b                                            ; $43f6: $04
	inc bc                                           ; $43f7: $03
	inc bc                                           ; $43f8: $03
	inc bc                                           ; $43f9: $03
	ld [bc], a                                       ; $43fa: $02
	dec b                                            ; $43fb: $05
	inc b                                            ; $43fc: $04
	inc b                                            ; $43fd: $04
	inc b                                            ; $43fe: $04
	inc bc                                           ; $43ff: $03
	inc bc                                           ; $4400: $03
	inc bc                                           ; $4401: $03
	inc bc                                           ; $4402: $03
	ld [bc], a                                       ; $4403: $02
	dec b                                            ; $4404: $05
	inc b                                            ; $4405: $04
	inc b                                            ; $4406: $04
	inc bc                                           ; $4407: $03
	inc bc                                           ; $4408: $03
	inc bc                                           ; $4409: $03
	inc bc                                           ; $440a: $03
	inc bc                                           ; $440b: $03
	ld [bc], a                                       ; $440c: $02
	dec b                                            ; $440d: $05
	inc b                                            ; $440e: $04
	inc b                                            ; $440f: $04
	inc bc                                           ; $4410: $03
	inc bc                                           ; $4411: $03
	inc bc                                           ; $4412: $03
	inc bc                                           ; $4413: $03
	inc bc                                           ; $4414: $03
	ld bc, $0405                                     ; $4415: $01 $05 $04
	inc b                                            ; $4418: $04
	inc bc                                           ; $4419: $03
	inc bc                                           ; $441a: $03
	inc bc                                           ; $441b: $03
	inc bc                                           ; $441c: $03
	ld bc, $0501                                     ; $441d: $01 $01 $05
	inc b                                            ; $4420: $04
	inc b                                            ; $4421: $04
	inc bc                                           ; $4422: $03
	inc bc                                           ; $4423: $03
	inc bc                                           ; $4424: $03
	ld bc, $0001                                     ; $4425: $01 $01 $00
	call Call_004_44c0                               ; $4428: $cd $c0 $44
	ld hl, $443d                                     ; $442b: $21 $3d $44
	rst AddAOntoHL                                          ; $442e: $ef
	ld a, [hl]                                       ; $442f: $7e
	call wJumpTable                                       ; $4430: $cd $80 $cf
	rst AddAOntoHL                                          ; $4433: $ef
	ld b, h                                          ; $4434: $44
	di                                               ; $4435: $f3
	ld b, h                                          ; $4436: $44
	rst FarCall                                          ; $4437: $f7
	ld b, h                                          ; $4438: $44
	ei                                               ; $4439: $fb
	ld b, h                                          ; $443a: $44
	rst $38                                          ; $443b: $ff
	ld b, h                                          ; $443c: $44
	inc b                                            ; $443d: $04
	inc bc                                           ; $443e: $03
	inc bc                                           ; $443f: $03
	inc bc                                           ; $4440: $03
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	ld bc, $0304                                     ; $4445: $01 $04 $03
	inc bc                                           ; $4448: $03
	inc bc                                           ; $4449: $03
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	ld bc, $0401                                     ; $444d: $01 $01 $04
	inc bc                                           ; $4450: $03
	inc bc                                           ; $4451: $03
	inc bc                                           ; $4452: $03
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	ld bc, $0401                                     ; $4456: $01 $01 $04
	inc bc                                           ; $4459: $03
	inc bc                                           ; $445a: $03
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	ld bc, $0101                                     ; $445e: $01 $01 $01
	inc b                                            ; $4461: $04
	inc bc                                           ; $4462: $03
	inc bc                                           ; $4463: $03
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	ld bc, $0101                                     ; $4466: $01 $01 $01
	ld bc, $0304                                     ; $4469: $01 $04 $03
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	ld bc, $0101                                     ; $446f: $01 $01 $01
	ld bc, $0304                                     ; $4472: $01 $04 $03
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	ld bc, $0101                                     ; $4477: $01 $01 $01
	ld bc, $0402                                     ; $447a: $01 $02 $04
	inc bc                                           ; $447d: $03
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	ld bc, $0101                                     ; $4480: $01 $01 $01
	ld [bc], a                                       ; $4483: $02
	ld [bc], a                                       ; $4484: $02
	inc b                                            ; $4485: $04
	inc bc                                           ; $4486: $03
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	ld bc, $0201                                     ; $4489: $01 $01 $02
	ld [bc], a                                       ; $448c: $02
	ld [bc], a                                       ; $448d: $02
	push af                                          ; $448e: $f5
	call Call_004_4218                               ; $448f: $cd $18 $42
	ld [$c0d0], a                                    ; $4492: $ea $d0 $c0
	pop af                                           ; $4495: $f1
	call Call_004_41f2                               ; $4496: $cd $f2 $41
	ld b, a                                          ; $4499: $47
	cp $50                                           ; $449a: $fe $50
	jr c, jr_004_44a5                                ; $449c: $38 $07

	ld a, [$c0d0]                                    ; $449e: $fa $d0 $c0
	cp $50                                           ; $44a1: $fe $50
	jr nc, jr_004_44ef                               ; $44a3: $30 $4a

jr_004_44a5:
	ld a, [$c0d0]                                    ; $44a5: $fa $d0 $c0
	add b                                            ; $44a8: $80
	rra                                              ; $44a9: $1f
	cp $0a                                           ; $44aa: $fe $0a
	jr c, jr_004_4507                                ; $44ac: $38 $59

	cp $0f                                           ; $44ae: $fe $0f
	jr c, jr_004_4503                                ; $44b0: $38 $51

	cp $14                                           ; $44b2: $fe $14
	jr c, jr_004_44ff                                ; $44b4: $38 $49

	cp $2d                                           ; $44b6: $fe $2d
	jr c, jr_004_44fb                                ; $44b8: $38 $41

	cp $46                                           ; $44ba: $fe $46
	jr c, jr_004_44f7                                ; $44bc: $38 $39

	jr jr_004_44f3                                   ; $44be: $18 $33

Call_004_44c0:
	push af                                          ; $44c0: $f5
	call Call_004_41f2                               ; $44c1: $cd $f2 $41
	ld [$c0d0], a                                    ; $44c4: $ea $d0 $c0
	pop af                                           ; $44c7: $f1
	call Call_004_4218                               ; $44c8: $cd $18 $42
	push de                                          ; $44cb: $d5
	ld b, $0a                                        ; $44cc: $06 $0a
	call $12b5                                       ; $44ce: $cd $b5 $12
	cp $08                                           ; $44d1: $fe $08
	jr c, jr_004_44d7                                ; $44d3: $38 $02

	ld a, $08                                        ; $44d5: $3e $08

jr_004_44d7:
	ld b, a                                          ; $44d7: $47
	ld c, $09                                        ; $44d8: $0e $09
	call BCequBtimesC                                       ; $44da: $cd $5f $12
	ld d, c                                          ; $44dd: $51
	ld a, [$c0d0]                                    ; $44de: $fa $d0 $c0
	ld b, $0a                                        ; $44e1: $06 $0a
	call $12b5                                       ; $44e3: $cd $b5 $12
	cp $08                                           ; $44e6: $fe $08
	jr c, jr_004_44ec                                ; $44e8: $38 $02

	ld a, $08                                        ; $44ea: $3e $08

jr_004_44ec:
	add d                                            ; $44ec: $82
	pop de                                           ; $44ed: $d1
	ret                                              ; $44ee: $c9


jr_004_44ef:
	ld a, $00                                        ; $44ef: $3e $00
	jr jr_004_4509                                   ; $44f1: $18 $16

jr_004_44f3:
	ld a, $01                                        ; $44f3: $3e $01
	jr jr_004_4509                                   ; $44f5: $18 $12

jr_004_44f7:
	ld a, $02                                        ; $44f7: $3e $02
	jr jr_004_4509                                   ; $44f9: $18 $0e

jr_004_44fb:
	ld a, $03                                        ; $44fb: $3e $03
	jr jr_004_4509                                   ; $44fd: $18 $0a

jr_004_44ff:
	ld a, $04                                        ; $44ff: $3e $04
	jr jr_004_4509                                   ; $4501: $18 $06

jr_004_4503:
	ld a, $05                                        ; $4503: $3e $05
	jr jr_004_4509                                   ; $4505: $18 $02

jr_004_4507:
	ld a, $06                                        ; $4507: $3e $06

jr_004_4509:
	ret                                              ; $4509: $c9


	ld l, d                                          ; $450a: $6a
	sub b                                            ; $450b: $90
	ret nz                                           ; $450c: $c0

	sbc b                                            ; $450d: $98
	and a                                            ; $450e: $a7
	add a                                            ; $450f: $87
	or b                                             ; $4510: $b0
	add b                                            ; $4511: $80
	and b                                            ; $4512: $a0
	ret nz                                           ; $4513: $c0

	or b                                             ; $4514: $b0
	and [hl]                                         ; $4515: $a6
	cp c                                             ; $4516: $b9
	sbc c                                            ; $4517: $99
	ld l, d                                          ; $4518: $6a
	sub b                                            ; $4519: $90
	add e                                            ; $451a: $83
	sbc b                                            ; $451b: $98
	and b                                            ; $451c: $a0
	add a                                            ; $451d: $87
	sbc b                                            ; $451e: $98
	sub b                                            ; $451f: $90
	adc e                                            ; $4520: $8b
	add a                                            ; $4521: $87
	ret nz                                           ; $4522: $c0

	sbc c                                            ; $4523: $99
	and [hl]                                         ; $4524: $a6
	adc h                                            ; $4525: $8c
	ld a, a                                          ; $4526: $7f
	ld hl, $2422                                     ; $4527: $21 $22 $24
	ld l, b                                          ; $452a: $68
	jr z, jr_004_4575                                ; $452b: $28 $48

	inc [hl]                                         ; $452d: $34
	jr nc, jr_004_4567                               ; $452e: $30 $37

	jr c, jr_004_4558                                ; $4530: $38 $26

	ld sp, $504a                                     ; $4532: $31 $4a $50
	ld b, l                                          ; $4535: $45
	ld h, b                                          ; $4536: $60
	ld b, l                                          ; $4537: $45
	ld [hl], b                                       ; $4538: $70
	ld b, l                                          ; $4539: $45
	add b                                            ; $453a: $80
	ld b, l                                          ; $453b: $45
	sub b                                            ; $453c: $90
	ld b, l                                          ; $453d: $45
	and b                                            ; $453e: $a0
	ld b, l                                          ; $453f: $45
	or b                                             ; $4540: $b0
	ld b, l                                          ; $4541: $45
	ret nz                                           ; $4542: $c0

	ld b, l                                          ; $4543: $45
	ret nc                                           ; $4544: $d0

	ld b, l                                          ; $4545: $45
	ldh [rLYC], a                                    ; $4546: $e0 $45
	ldh a, [rLYC]                                    ; $4548: $f0 $45
	nop                                              ; $454a: $00
	ld b, [hl]                                       ; $454b: $46
	db $10                                           ; $454c: $10
	ld b, [hl]                                       ; $454d: $46
	jr nz, jr_004_4596                               ; $454e: $20 $46

	or d                                             ; $4550: $b2
	inc b                                            ; $4551: $04
	add a                                            ; $4552: $87
	inc bc                                           ; $4553: $03
	ld l, [hl]                                       ; $4554: $6e
	ld [bc], a                                       ; $4555: $02
	ld e, d                                          ; $4556: $5a
	ld [bc], a                                       ; $4557: $02

jr_004_4558:
	scf                                              ; $4558: $37
	ld bc, $0023                                     ; $4559: $01 $23 $00
	ld a, [bc]                                       ; $455c: $0a
	cp $00                                           ; $455d: $fe $00
	db $fc                                           ; $455f: $fc
	add b                                            ; $4560: $80
	ld de, $0964                                     ; $4561: $11 $64 $09
	ld e, d                                          ; $4564: $5a
	ld b, $46                                        ; $4565: $06 $46

jr_004_4567:
	inc bc                                           ; $4567: $03
	ld [hl-], a                                      ; $4568: $32
	ld bc, $001e                                     ; $4569: $01 $1e $00
	ld a, [bc]                                       ; $456c: $0a
	ei                                               ; $456d: $fb
	nop                                              ; $456e: $00
	pop af                                           ; $456f: $f1
	or d                                             ; $4570: $b2
	inc d                                            ; $4571: $14
	sub [hl]                                         ; $4572: $96
	rrca                                             ; $4573: $0f
	adc h                                            ; $4574: $8c

jr_004_4575:
	add hl, bc                                       ; $4575: $09
	ld e, d                                          ; $4576: $5a
	dec b                                            ; $4577: $05
	ld b, [hl]                                       ; $4578: $46
	ld [bc], a                                       ; $4579: $02
	ld [hl-], a                                      ; $457a: $32
	nop                                              ; $457b: $00
	ld e, $f6                                        ; $457c: $1e $f6
	nop                                              ; $457e: $00
	db $ec                                           ; $457f: $ec
	adc d                                            ; $4580: $8a
	ld c, $6e                                        ; $4581: $0e $6e
	dec bc                                           ; $4583: $0b
	ld h, h                                          ; $4584: $64
	ld [$0550], sp                                   ; $4585: $08 $50 $05
	ld [hl-], a                                      ; $4588: $32
	ld [bc], a                                       ; $4589: $02
	ld e, $00                                        ; $458a: $1e $00
	ld a, [bc]                                       ; $458c: $0a
	db $fd                                           ; $458d: $fd
	nop                                              ; $458e: $00
	ld a, [$0a80]                                    ; $458f: $fa $80 $0a
	ld h, h                                          ; $4592: $64
	ld b, $5a                                        ; $4593: $06 $5a
	inc b                                            ; $4595: $04

jr_004_4596:
	ld b, [hl]                                       ; $4596: $46
	ld bc, $0132                                     ; $4597: $01 $32 $01
	ld e, $00                                        ; $459a: $1e $00
	ld a, [bc]                                       ; $459c: $0a
	db $fd                                           ; $459d: $fd
	nop                                              ; $459e: $00
	ld a, [$1080]                                    ; $459f: $fa $80 $10
	ld h, h                                          ; $45a2: $64
	ld a, [bc]                                       ; $45a3: $0a
	ld e, d                                          ; $45a4: $5a
	rlca                                             ; $45a5: $07
	ld b, [hl]                                       ; $45a6: $46
	dec b                                            ; $45a7: $05
	ld [hl-], a                                      ; $45a8: $32
	ld [bc], a                                       ; $45a9: $02
	ld e, $00                                        ; $45aa: $1e $00
	ld a, [bc]                                       ; $45ac: $0a
	cp $00                                           ; $45ad: $fe $00
	ld sp, hl                                        ; $45af: $f9
	add b                                            ; $45b0: $80
	db $10                                           ; $45b1: $10
	ld h, h                                          ; $45b2: $64
	inc c                                            ; $45b3: $0c
	ld e, d                                          ; $45b4: $5a
	ld [$0446], sp                                   ; $45b5: $08 $46 $04
	ld [hl-], a                                      ; $45b8: $32
	nop                                              ; $45b9: $00
	ld e, $fc                                        ; $45ba: $1e $fc
	ld a, [bc]                                       ; $45bc: $0a
	rst FarCall                                          ; $45bd: $f7
	nop                                              ; $45be: $00
	ldh a, [$b2]                                     ; $45bf: $f0 $b2
	dec c                                            ; $45c1: $0d
	sub [hl]                                         ; $45c2: $96
	dec bc                                           ; $45c3: $0b
	adc h                                            ; $45c4: $8c
	rlca                                             ; $45c5: $07
	ld e, d                                          ; $45c6: $5a
	inc b                                            ; $45c7: $04
	ld b, [hl]                                       ; $45c8: $46
	ld [bc], a                                       ; $45c9: $02
	ld [hl-], a                                      ; $45ca: $32
	nop                                              ; $45cb: $00
	ld e, $fa                                        ; $45cc: $1e $fa
	nop                                              ; $45ce: $00
	di                                               ; $45cf: $f3
	add b                                            ; $45d0: $80
	dec c                                            ; $45d1: $0d
	ld h, h                                          ; $45d2: $64
	ld a, [bc]                                       ; $45d3: $0a
	ld e, d                                          ; $45d4: $5a
	rlca                                             ; $45d5: $07
	ld b, [hl]                                       ; $45d6: $46
	dec b                                            ; $45d7: $05
	ld [hl-], a                                      ; $45d8: $32
	ld [bc], a                                       ; $45d9: $02
	ld e, $00                                        ; $45da: $1e $00
	ld a, [bc]                                       ; $45dc: $0a
	ld a, [$f300]                                    ; $45dd: $fa $00 $f3
	sub h                                            ; $45e0: $94
	add hl, bc                                       ; $45e1: $09
	ld a, b                                          ; $45e2: $78
	ld [$066e], sp                                   ; $45e3: $08 $6e $06
	ld e, d                                          ; $45e6: $5a
	inc b                                            ; $45e7: $04
	ld [hl-], a                                      ; $45e8: $32
	ld [bc], a                                       ; $45e9: $02
	add hl, de                                       ; $45ea: $19
	nop                                              ; $45eb: $00
	ld a, [bc]                                       ; $45ec: $0a
	db $fc                                           ; $45ed: $fc
	nop                                              ; $45ee: $00
	ld hl, sp-$80                                    ; $45ef: $f8 $80
	add hl, bc                                       ; $45f1: $09
	ld h, h                                          ; $45f2: $64
	rlca                                             ; $45f3: $07
	ld e, d                                          ; $45f4: $5a
	dec b                                            ; $45f5: $05
	ld b, [hl]                                       ; $45f6: $46
	inc bc                                           ; $45f7: $03
	ld [hl-], a                                      ; $45f8: $32
	ld bc, $0019                                     ; $45f9: $01 $19 $00
	dec b                                            ; $45fc: $05
	db $fc                                           ; $45fd: $fc
	nop                                              ; $45fe: $00
	ld hl, sp-$80                                    ; $45ff: $f8 $80
	ld a, [bc]                                       ; $4601: $0a
	ld h, h                                          ; $4602: $64
	ld b, $5a                                        ; $4603: $06 $5a
	inc b                                            ; $4605: $04
	ld b, [hl]                                       ; $4606: $46
	ld bc, $0132                                     ; $4607: $01 $32 $01
	ld e, $00                                        ; $460a: $1e $00
	ld a, [bc]                                       ; $460c: $0a
	db $fd                                           ; $460d: $fd
	nop                                              ; $460e: $00
	ld a, [$0980]                                    ; $460f: $fa $80 $09
	ld h, h                                          ; $4612: $64
	rlca                                             ; $4613: $07
	ld e, d                                          ; $4614: $5a
	dec b                                            ; $4615: $05
	ld b, [hl]                                       ; $4616: $46
	inc bc                                           ; $4617: $03
	ld [hl-], a                                      ; $4618: $32
	ld bc, $0019                                     ; $4619: $01 $19 $00
	dec b                                            ; $461c: $05
	db $fc                                           ; $461d: $fc
	nop                                              ; $461e: $00
	ld hl, sp-$80                                    ; $461f: $f8 $80
	ld a, [bc]                                       ; $4621: $0a
	ld h, h                                          ; $4622: $64
	ld b, $5a                                        ; $4623: $06 $5a
	inc b                                            ; $4625: $04
	ld b, [hl]                                       ; $4626: $46
	ld bc, $0132                                     ; $4627: $01 $32 $01
	ld e, $00                                        ; $462a: $1e $00
	ld a, [bc]                                       ; $462c: $0a
	db $fd                                           ; $462d: $fd
	nop                                              ; $462e: $00
	ld a, [$0a2d]                                    ; $462f: $fa $2d $0a
	ld a, [bc]                                       ; $4632: $0a
	nop                                              ; $4633: $00
	ld [hl-], a                                      ; $4634: $32
	inc d                                            ; $4635: $14
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	ld [hl-], a                                      ; $4638: $32
	inc d                                            ; $4639: $14
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	ld [hl-], a                                      ; $463c: $32
	add hl, de                                       ; $463d: $19
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	ld [hl-], a                                      ; $4640: $32
	add hl, de                                       ; $4641: $19
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	ld [hl-], a                                      ; $4644: $32
	add hl, de                                       ; $4645: $19
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	scf                                              ; $4648: $37
	add hl, de                                       ; $4649: $19
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	ld [hl-], a                                      ; $464c: $32
	inc d                                            ; $464d: $14
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	ld [hl-], a                                      ; $4650: $32
	inc d                                            ; $4651: $14
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	ld [hl-], a                                      ; $4654: $32
	add hl, de                                       ; $4655: $19
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	dec l                                            ; $4658: $2d
	ld a, [bc]                                       ; $4659: $0a
	ld a, [bc]                                       ; $465a: $0a
	nop                                              ; $465b: $00
	ld [hl-], a                                      ; $465c: $32
	add hl, de                                       ; $465d: $19
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	scf                                              ; $4660: $37
	add hl, de                                       ; $4661: $19
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	ld [hl-], a                                      ; $4664: $32
	add hl, de                                       ; $4665: $19
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	ld [hl-], a                                      ; $4668: $32
	inc d                                            ; $4669: $14
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	dec l                                            ; $466c: $2d
	ld a, [bc]                                       ; $466d: $0a
	ld a, [bc]                                       ; $466e: $0a
	nop                                              ; $466f: $00

Call_004_4670:
	push hl                                          ; $4670: $e5
	ld hl, $a365                                     ; $4671: $21 $65 $a3
	rst AddAOntoHL                                          ; $4674: $ef
	ld a, [hl]                                       ; $4675: $7e
	and $01                                          ; $4676: $e6 $01
	pop hl                                           ; $4678: $e1
	ret                                              ; $4679: $c9


	ld hl, $a33b                                     ; $467a: $21 $3b $a3
	call Call_004_4692                               ; $467d: $cd $92 $46
	ld [hl], a                                       ; $4680: $77
	ret                                              ; $4681: $c9


	ld hl, $a349                                     ; $4682: $21 $49 $a3
	call Call_004_4692                               ; $4685: $cd $92 $46
	ld [hl], a                                       ; $4688: $77
	ret                                              ; $4689: $c9


	ld hl, $a357                                     ; $468a: $21 $57 $a3
	call Call_004_4692                               ; $468d: $cd $92 $46
	ld [hl], a                                       ; $4690: $77
	ret                                              ; $4691: $c9


Call_004_4692:
	push af                                          ; $4692: $f5
	ld a, b                                          ; $4693: $78
	call $ce99                                       ; $4694: $cd $99 $ce
	ld a, [hl]                                       ; $4697: $7e
	ld b, a                                          ; $4698: $47
	pop af                                           ; $4699: $f1
	ret                                              ; $469a: $c9


Call_004_469b:
	ld hl, $a33b                                     ; $469b: $21 $3b $a3
	jr jr_004_46a8                                   ; $469e: $18 $08

Call_004_46a0:
	ld hl, $a349                                     ; $46a0: $21 $49 $a3
	jr jr_004_46a8                                   ; $46a3: $18 $03

Call_004_46a5:
	ld hl, $a357                                     ; $46a5: $21 $57 $a3

jr_004_46a8:
	call Call_004_4692                               ; $46a8: $cd $92 $46
	add b                                            ; $46ab: $80
	cp $80                                           ; $46ac: $fe $80
	jr c, jr_004_46b2                                ; $46ae: $38 $02

	ld a, $80                                        ; $46b0: $3e $80

jr_004_46b2:
	ld [hl], a                                       ; $46b2: $77
	ret                                              ; $46b3: $c9


Call_004_46b4:
	ld hl, $a33b                                     ; $46b4: $21 $3b $a3
	jr jr_004_46c1                                   ; $46b7: $18 $08

Call_004_46b9:
	ld hl, $a349                                     ; $46b9: $21 $49 $a3
	jr jr_004_46c1                                   ; $46bc: $18 $03

Call_004_46be:
	ld hl, $a357                                     ; $46be: $21 $57 $a3

jr_004_46c1:
	call Call_004_4692                               ; $46c1: $cd $92 $46
	ld c, a                                          ; $46c4: $4f
	ld a, b                                          ; $46c5: $78
	sub c                                            ; $46c6: $91
	jr nc, jr_004_46ca                               ; $46c7: $30 $01

	xor a                                            ; $46c9: $af

jr_004_46ca:
	ld [hl], a                                       ; $46ca: $77
	ret                                              ; $46cb: $c9


	ld hl, $a33b                                     ; $46cc: $21 $3b $a3
	jr jr_004_46db                                   ; $46cf: $18 $0a

	ld hl, $a349                                     ; $46d1: $21 $49 $a3
	jr jr_004_46db                                   ; $46d4: $18 $05

	ld hl, $a357                                     ; $46d6: $21 $57 $a3
	jr jr_004_46db                                   ; $46d9: $18 $00

jr_004_46db:
	ld b, $0e                                        ; $46db: $06 $0e
	ld c, a                                          ; $46dd: $4f

jr_004_46de:
	ld a, [hl]                                       ; $46de: $7e
	add c                                            ; $46df: $81
	jr nc, jr_004_46e3                               ; $46e0: $30 $01

	xor a                                            ; $46e2: $af

jr_004_46e3:
	cp $80                                           ; $46e3: $fe $80
	jr c, jr_004_46e9                                ; $46e5: $38 $02

	ld a, $80                                        ; $46e7: $3e $80

jr_004_46e9:
	ld [hl+], a                                      ; $46e9: $22
	dec b                                            ; $46ea: $05
	jr nz, jr_004_46de                               ; $46eb: $20 $f1

	ret                                              ; $46ed: $c9


	ld hl, $a33b                                     ; $46ee: $21 $3b $a3
	jr jr_004_46fd                                   ; $46f1: $18 $0a

	ld hl, $a349                                     ; $46f3: $21 $49 $a3
	jr jr_004_46fd                                   ; $46f6: $18 $05

	ld hl, $a357                                     ; $46f8: $21 $57 $a3
	jr jr_004_46fd                                   ; $46fb: $18 $00

jr_004_46fd:
	ld b, $0e                                        ; $46fd: $06 $0e
	ld c, a                                          ; $46ff: $4f

jr_004_4700:
	ld a, [hl]                                       ; $4700: $7e
	sub c                                            ; $4701: $91
	jr nc, jr_004_4705                               ; $4702: $30 $01

	xor a                                            ; $4704: $af

jr_004_4705:
	ld [hl+], a                                      ; $4705: $22
	dec b                                            ; $4706: $05
	jr nz, jr_004_4700                               ; $4707: $20 $f7

	ret                                              ; $4709: $c9


	ld hl, $a33b                                     ; $470a: $21 $3b $a3
	jr jr_004_4740                                   ; $470d: $18 $31

	ld hl, $a33b                                     ; $470f: $21 $3b $a3
	jr jr_004_4728                                   ; $4712: $18 $14

	ld hl, $a349                                     ; $4714: $21 $49 $a3
	jr jr_004_4740                                   ; $4717: $18 $27

	ld hl, $a349                                     ; $4719: $21 $49 $a3
	jr jr_004_4728                                   ; $471c: $18 $0a

	ld hl, $a357                                     ; $471e: $21 $57 $a3
	jr jr_004_4740                                   ; $4721: $18 $1d

	ld hl, $a357                                     ; $4723: $21 $57 $a3
	jr jr_004_4728                                   ; $4726: $18 $00

jr_004_4728:
	ld d, $00                                        ; $4728: $16 $00
	ld c, a                                          ; $472a: $4f

jr_004_472b:
	ld a, d                                          ; $472b: $7a
	cp b                                             ; $472c: $b8
	jr z, jr_004_4738                                ; $472d: $28 $09

	ld a, [hl]                                       ; $472f: $7e
	add c                                            ; $4730: $81
	cp $80                                           ; $4731: $fe $80
	jr c, jr_004_4737                                ; $4733: $38 $02

	ld a, $80                                        ; $4735: $3e $80

jr_004_4737:
	ld [hl], a                                       ; $4737: $77

jr_004_4738:
	inc hl                                           ; $4738: $23
	inc d                                            ; $4739: $14
	ld a, d                                          ; $473a: $7a
	cp $0e                                           ; $473b: $fe $0e
	jr nz, jr_004_472b                               ; $473d: $20 $ec

	ret                                              ; $473f: $c9


jr_004_4740:
	ld d, $00                                        ; $4740: $16 $00
	ld c, a                                          ; $4742: $4f

jr_004_4743:
	ld a, d                                          ; $4743: $7a
	cp b                                             ; $4744: $b8
	jr z, jr_004_474d                                ; $4745: $28 $06

	ld a, [hl]                                       ; $4747: $7e
	sub c                                            ; $4748: $91
	jr nc, jr_004_474c                               ; $4749: $30 $01

	xor a                                            ; $474b: $af

jr_004_474c:
	ld [hl], a                                       ; $474c: $77

jr_004_474d:
	inc hl                                           ; $474d: $23
	inc d                                            ; $474e: $14
	ld a, d                                          ; $474f: $7a
	cp $0e                                           ; $4750: $fe $0e
	jr nz, jr_004_4743                               ; $4752: $20 $ef

	ret                                              ; $4754: $c9


	push hl                                          ; $4755: $e5
	push af                                          ; $4756: $f5
	ld a, b                                          ; $4757: $78
	call Call_004_40c0                               ; $4758: $cd $c0 $40
	ld c, a                                          ; $475b: $4f
	pop af                                           ; $475c: $f1
	add c                                            ; $475d: $81
	ld hl, $a357                                     ; $475e: $21 $57 $a3
	call Call_004_4692                               ; $4761: $cd $92 $46
	add b                                            ; $4764: $80
	cp $80                                           ; $4765: $fe $80
	jr c, jr_004_476b                                ; $4767: $38 $02

	ld a, $80                                        ; $4769: $3e $80

jr_004_476b:
	ld [hl], a                                       ; $476b: $77
	pop hl                                           ; $476c: $e1
	ret                                              ; $476d: $c9


	ld d, $00                                        ; $476e: $16 $00
	ld c, a                                          ; $4770: $4f

jr_004_4771:
	ld a, d                                          ; $4771: $7a
	call Call_004_4670                               ; $4772: $cd $70 $46
	jr z, jr_004_478f                                ; $4775: $28 $18

	ld a, b                                          ; $4777: $78
	cp d                                             ; $4778: $ba
	jr z, jr_004_478f                                ; $4779: $28 $14

	ld a, d                                          ; $477b: $7a
	call Call_004_40c0                               ; $477c: $cd $c0 $40
	add c                                            ; $477f: $81
	ld e, a                                          ; $4780: $5f
	ld hl, $a357                                     ; $4781: $21 $57 $a3
	ld a, d                                          ; $4784: $7a
	rst AddAOntoHL                                          ; $4785: $ef
	ld a, [hl]                                       ; $4786: $7e
	add e                                            ; $4787: $83
	cp $80                                           ; $4788: $fe $80
	jr c, jr_004_478e                                ; $478a: $38 $02

	ld a, $80                                        ; $478c: $3e $80

jr_004_478e:
	ld [hl], a                                       ; $478e: $77

jr_004_478f:
	inc d                                            ; $478f: $14
	ld a, d                                          ; $4790: $7a
	cp $0e                                           ; $4791: $fe $0e
	jr nz, jr_004_4771                               ; $4793: $20 $dc

	ret                                              ; $4795: $c9


	ld hl, $a33b                                     ; $4796: $21 $3b $a3
	jr jr_004_47ce                                   ; $4799: $18 $33

	ld hl, $a33b                                     ; $479b: $21 $3b $a3
	jr jr_004_47b4                                   ; $479e: $18 $14

	ld hl, $a349                                     ; $47a0: $21 $49 $a3
	jr jr_004_47ce                                   ; $47a3: $18 $29

	ld hl, $a349                                     ; $47a5: $21 $49 $a3
	jr jr_004_47b4                                   ; $47a8: $18 $0a

	ld hl, $a357                                     ; $47aa: $21 $57 $a3
	jr jr_004_47ce                                   ; $47ad: $18 $1f

	ld hl, $a357                                     ; $47af: $21 $57 $a3
	jr jr_004_47b4                                   ; $47b2: $18 $00

jr_004_47b4:
	ld d, $00                                        ; $47b4: $16 $00
	ld c, a                                          ; $47b6: $4f

jr_004_47b7:
	ld a, d                                          ; $47b7: $7a
	call Call_004_4670                               ; $47b8: $cd $70 $46
	jr z, jr_004_47c6                                ; $47bb: $28 $09

	ld a, [hl]                                       ; $47bd: $7e
	add c                                            ; $47be: $81
	cp $80                                           ; $47bf: $fe $80
	jr c, jr_004_47c5                                ; $47c1: $38 $02

	ld a, $80                                        ; $47c3: $3e $80

jr_004_47c5:
	ld [hl], a                                       ; $47c5: $77

jr_004_47c6:
	inc hl                                           ; $47c6: $23
	inc d                                            ; $47c7: $14
	ld a, d                                          ; $47c8: $7a
	cp $0e                                           ; $47c9: $fe $0e
	jr nz, jr_004_47b7                               ; $47cb: $20 $ea

	ret                                              ; $47cd: $c9


jr_004_47ce:
	ld d, $00                                        ; $47ce: $16 $00
	ld c, a                                          ; $47d0: $4f

jr_004_47d1:
	ld a, d                                          ; $47d1: $7a
	call Call_004_4670                               ; $47d2: $cd $70 $46
	jr z, jr_004_47dd                                ; $47d5: $28 $06

	ld a, [hl]                                       ; $47d7: $7e
	sub c                                            ; $47d8: $91
	jr nc, jr_004_47dc                               ; $47d9: $30 $01

	xor a                                            ; $47db: $af

jr_004_47dc:
	ld [hl], a                                       ; $47dc: $77

jr_004_47dd:
	inc hl                                           ; $47dd: $23
	inc d                                            ; $47de: $14
	ld a, d                                          ; $47df: $7a
	cp $0e                                           ; $47e0: $fe $0e
	jr nz, jr_004_47d1                               ; $47e2: $20 $ed

	ret                                              ; $47e4: $c9


	ld hl, $a33b                                     ; $47e5: $21 $3b $a3
	jr jr_004_4820                                   ; $47e8: $18 $36

	ld hl, $a33b                                     ; $47ea: $21 $3b $a3
	jr jr_004_4803                                   ; $47ed: $18 $14

	ld hl, $a349                                     ; $47ef: $21 $49 $a3
	jr jr_004_4820                                   ; $47f2: $18 $2c

	ld hl, $a349                                     ; $47f4: $21 $49 $a3
	jr jr_004_4803                                   ; $47f7: $18 $0a

	ld hl, $a357                                     ; $47f9: $21 $57 $a3
	jr jr_004_4820                                   ; $47fc: $18 $22

	ld hl, $a357                                     ; $47fe: $21 $57 $a3
	jr jr_004_4803                                   ; $4801: $18 $00

jr_004_4803:
	ld d, $00                                        ; $4803: $16 $00
	ld c, a                                          ; $4805: $4f

jr_004_4806:
	ld a, d                                          ; $4806: $7a
	cp b                                             ; $4807: $b8
	jr z, jr_004_4818                                ; $4808: $28 $0e

	call Call_004_4670                               ; $480a: $cd $70 $46
	jr z, jr_004_4818                                ; $480d: $28 $09

	ld a, [hl]                                       ; $480f: $7e
	add c                                            ; $4810: $81
	cp $80                                           ; $4811: $fe $80
	jr c, jr_004_4817                                ; $4813: $38 $02

	ld a, $80                                        ; $4815: $3e $80

jr_004_4817:
	ld [hl], a                                       ; $4817: $77

jr_004_4818:
	inc hl                                           ; $4818: $23
	inc d                                            ; $4819: $14
	ld a, d                                          ; $481a: $7a
	cp $0e                                           ; $481b: $fe $0e
	jr nz, jr_004_4806                               ; $481d: $20 $e7

	ret                                              ; $481f: $c9


jr_004_4820:
	ld d, $00                                        ; $4820: $16 $00
	ld c, a                                          ; $4822: $4f

jr_004_4823:
	ld a, d                                          ; $4823: $7a
	cp b                                             ; $4824: $b8
	jr z, jr_004_4832                                ; $4825: $28 $0b

	call Call_004_4670                               ; $4827: $cd $70 $46
	jr z, jr_004_4832                                ; $482a: $28 $06

	ld a, [hl]                                       ; $482c: $7e
	sub c                                            ; $482d: $91
	jr nc, jr_004_4831                               ; $482e: $30 $01

	xor a                                            ; $4830: $af

jr_004_4831:
	ld [hl], a                                       ; $4831: $77

jr_004_4832:
	inc hl                                           ; $4832: $23
	inc d                                            ; $4833: $14
	ld a, d                                          ; $4834: $7a
	cp $0e                                           ; $4835: $fe $0e
	jr nz, jr_004_4823                               ; $4837: $20 $ea

	ret                                              ; $4839: $c9


	ld b, a                                          ; $483a: $47
	ld a, $06                                        ; $483b: $3e $06
	call Call_004_4000                               ; $483d: $cd $00 $40
	ld c, $00                                        ; $4840: $0e $00
	ld de, $0046                                     ; $4842: $11 $46 $00
	call wCpHLtoDE                                       ; $4845: $cd $80 $ce
	jr c, jr_004_487e                                ; $4848: $38 $34

	ld c, $03                                        ; $484a: $0e $03
	ld de, $0080                                     ; $484c: $11 $80 $00
	call wCpHLtoDE                                       ; $484f: $cd $80 $ce
	jr c, jr_004_487e                                ; $4852: $38 $2a

	ld c, $05                                        ; $4854: $0e $05
	ld de, $00a0                                     ; $4856: $11 $a0 $00
	call wCpHLtoDE                                       ; $4859: $cd $80 $ce
	jr c, jr_004_487e                                ; $485c: $38 $20

	ld c, $07                                        ; $485e: $0e $07
	ld de, $00c0                                     ; $4860: $11 $c0 $00
	call wCpHLtoDE                                       ; $4863: $cd $80 $ce
	jr c, jr_004_487e                                ; $4866: $38 $16

	ld c, $09                                        ; $4868: $0e $09
	ld de, $00e0                                     ; $486a: $11 $e0 $00
	call wCpHLtoDE                                       ; $486d: $cd $80 $ce
	jr c, jr_004_487e                                ; $4870: $38 $0c

	ld c, $0b                                        ; $4872: $0e $0b
	ld de, $0100                                     ; $4874: $11 $00 $01
	call wCpHLtoDE                                       ; $4877: $cd $80 $ce
	jr c, jr_004_487e                                ; $487a: $38 $02

	ld c, $10                                        ; $487c: $0e $10

jr_004_487e:
	ld a, c                                          ; $487e: $79
	call Call_004_46a0                               ; $487f: $cd $a0 $46
	ret                                              ; $4882: $c9


	push hl                                          ; $4883: $e5
	ld [$c0d8], a                                    ; $4884: $ea $d8 $c0
	xor a                                            ; $4887: $af
	ld [$c0d6], a                                    ; $4888: $ea $d6 $c0
	ld a, [$c0d8]                                    ; $488b: $fa $d8 $c0
	ld hl, $4a34                                     ; $488e: $21 $34 $4a
	call $ce99                                       ; $4891: $cd $99 $ce
	ld a, [hl]                                       ; $4894: $7e
	call Call_004_4000                               ; $4895: $cd $00 $40
	ld bc, $0014                                     ; $4898: $01 $14 $00
	call BCHLequHLdivModBC                                       ; $489b: $cd $c1 $12
	ld a, l                                          ; $489e: $7d
	ld b, a                                          ; $489f: $47
	ld a, [$c0d8]                                    ; $48a0: $fa $d8 $c0
	ld hl, $a31f                                     ; $48a3: $21 $1f $a3
	call $ce99                                       ; $48a6: $cd $99 $ce
	ld a, [hl]                                       ; $48a9: $7e
	srl a                                            ; $48aa: $cb $3f
	srl a                                            ; $48ac: $cb $3f
	srl a                                            ; $48ae: $cb $3f
	add b                                            ; $48b0: $80
	cp $0a                                           ; $48b1: $fe $0a
	jr c, jr_004_48b7                                ; $48b3: $38 $02

	ld a, $0a                                        ; $48b5: $3e $0a

jr_004_48b7:
	ld [$c0d9], a                                    ; $48b7: $ea $d9 $c0

jr_004_48ba:
	ld a, [$c0d6]                                    ; $48ba: $fa $d6 $c0
	ld b, a                                          ; $48bd: $47
	ld a, [$c0d8]                                    ; $48be: $fa $d8 $c0
	call Call_004_48fb                               ; $48c1: $cd $fb $48
	srl a                                            ; $48c4: $cb $3f
	ld b, a                                          ; $48c6: $47
	ld a, [$c0d9]                                    ; $48c7: $fa $d9 $c0
	add b                                            ; $48ca: $80
	ld b, a                                          ; $48cb: $47
	ld a, [$a33a]                                    ; $48cc: $fa $3a $a3
	and $02                                          ; $48cf: $e6 $02
	jr z, jr_004_48d6                                ; $48d1: $28 $03

	ld a, b                                          ; $48d3: $78
	srl a                                            ; $48d4: $cb $3f

jr_004_48d6:
	ld [$c0d9], a                                    ; $48d6: $ea $d9 $c0
	ld a, [$c0d6]                                    ; $48d9: $fa $d6 $c0
	ld b, a                                          ; $48dc: $47
	ld a, [$c0d9]                                    ; $48dd: $fa $d9 $c0
	call Call_004_46a0                               ; $48e0: $cd $a0 $46
	ld a, [$c0d6]                                    ; $48e3: $fa $d6 $c0
	inc a                                            ; $48e6: $3c
	ld [$c0d6], a                                    ; $48e7: $ea $d6 $c0
	cp $0e                                           ; $48ea: $fe $0e
	jr nz, jr_004_48ba                               ; $48ec: $20 $cc

	pop hl                                           ; $48ee: $e1
	ret                                              ; $48ef: $c9


	push hl                                          ; $48f0: $e5
	call Call_004_48fb                               ; $48f1: $cd $fb $48
	sub $01                                          ; $48f4: $d6 $01
	jr nc, jr_004_48f9                               ; $48f6: $30 $01

	xor a                                            ; $48f8: $af

jr_004_48f9:
	pop hl                                           ; $48f9: $e1
	ret                                              ; $48fa: $c9


Call_004_48fb:
	ld c, a                                          ; $48fb: $4f
	ld a, [$a224]                                    ; $48fc: $fa $24 $a2
	sla a                                            ; $48ff: $cb $27
	ld hl, $4a38                                     ; $4901: $21 $38 $4a
	call $ce99                                       ; $4904: $cd $99 $ce
	ld d, [hl]                                       ; $4907: $56
	inc hl                                           ; $4908: $23
	ld e, [hl]                                       ; $4909: $5e
	sla b                                            ; $490a: $cb $20
	ld a, b                                          ; $490c: $78
	add e                                            ; $490d: $83
	ld e, a                                          ; $490e: $5f
	jr nc, jr_004_4912                               ; $490f: $30 $01

	inc d                                            ; $4911: $14

jr_004_4912:
	ld a, c                                          ; $4912: $79
	add e                                            ; $4913: $83
	jr nc, jr_004_4917                               ; $4914: $30 $01

	inc d                                            ; $4916: $14

jr_004_4917:
	ld a, [de]                                       ; $4917: $1a
	ret                                              ; $4918: $c9


	push hl                                          ; $4919: $e5
	call Call_004_4bf5                               ; $491a: $cd $f5 $4b
	call Call_004_4e04                               ; $491d: $cd $04 $4e
	ld a, $09                                        ; $4920: $3e $09
	ld hl, $d002                                     ; $4922: $21 $02 $d0
	rst AddAOntoHL                                          ; $4925: $ef
	ld a, [hl]                                       ; $4926: $7e
	pop hl                                           ; $4927: $e1
	ret                                              ; $4928: $c9


	call Call_004_4c7a                               ; $4929: $cd $7a $4c
	call Call_004_4e04                               ; $492c: $cd $04 $4e
	ld a, [$d002]                                    ; $492f: $fa $02 $d0
	ret                                              ; $4932: $c9


	call Call_004_4948                               ; $4933: $cd $48 $49
	ld a, [$d002]                                    ; $4936: $fa $02 $d0
	ret                                              ; $4939: $c9


	call Call_004_4948                               ; $493a: $cd $48 $49
	ld a, [$d005]                                    ; $493d: $fa $05 $d0
	ret                                              ; $4940: $c9


	call Call_004_4948                               ; $4941: $cd $48 $49
	ld a, [$d008]                                    ; $4944: $fa $08 $d0
	ret                                              ; $4947: $c9


Call_004_4948:
	call Call_004_4d91                               ; $4948: $cd $91 $4d
	jp Jump_004_4e04                                 ; $494b: $c3 $04 $4e


	call Call_004_4c33                               ; $494e: $cd $33 $4c
	call Call_004_4e04                               ; $4951: $cd $04 $4e
	ld b, $00                                        ; $4954: $06 $00
	ld hl, $d002                                     ; $4956: $21 $02 $d0

jr_004_4959:
	ld a, [hl]                                       ; $4959: $7e
	cp $ff                                           ; $495a: $fe $ff
	jr z, jr_004_4964                                ; $495c: $28 $06

	inc b                                            ; $495e: $04
	inc hl                                           ; $495f: $23
	inc hl                                           ; $4960: $23
	inc hl                                           ; $4961: $23
	jr jr_004_4959                                   ; $4962: $18 $f5

jr_004_4964:
	ld a, b                                          ; $4964: $78
	ret                                              ; $4965: $c9


	push af                                          ; $4966: $f5
	call Call_004_4c33                               ; $4967: $cd $33 $4c
	call Call_004_4e04                               ; $496a: $cd $04 $4e
	pop af                                           ; $496d: $f1
	dec a                                            ; $496e: $3d
	ld hl, $d002                                     ; $496f: $21 $02 $d0
	ld b, a                                          ; $4972: $47
	sla a                                            ; $4973: $cb $27
	add b                                            ; $4975: $80
	rst AddAOntoHL                                          ; $4976: $ef
	ld a, [hl]                                       ; $4977: $7e
	ret                                              ; $4978: $c9


	ld a, $00                                        ; $4979: $3e $00
	call Call_004_42c5                               ; $497b: $cd $c5 $42
	cp $50                                           ; $497e: $fe $50
	jr c, jr_004_49bc                                ; $4980: $38 $3a

	ld a, $00                                        ; $4982: $3e $00
	call Call_004_42bb                               ; $4984: $cd $bb $42
	cp $32                                           ; $4987: $fe $32
	jr nc, jr_004_49bc                               ; $4989: $30 $31

	ld a, [$a2f1]                                    ; $498b: $fa $f1 $a2
	ld l, a                                          ; $498e: $6f
	ld a, [$a2f2]                                    ; $498f: $fa $f2 $a2
	ld h, a                                          ; $4992: $67
	ld bc, $0032                                     ; $4993: $01 $32 $00
	call wCpHLtoBC                                       ; $4996: $cd $86 $ce
	jr c, jr_004_49bc                                ; $4999: $38 $21

	ld a, [$a301]                                    ; $499b: $fa $01 $a3
	ld l, a                                          ; $499e: $6f
	ld a, [$a302]                                    ; $499f: $fa $02 $a3
	ld h, a                                          ; $49a2: $67
	ld bc, $0032                                     ; $49a3: $01 $32 $00
	call wCpHLtoBC                                       ; $49a6: $cd $86 $ce
	jr nc, jr_004_49bc                               ; $49a9: $30 $11

	ld a, [$a263]                                    ; $49ab: $fa $63 $a2
	cp $05                                           ; $49ae: $fe $05
	jr c, jr_004_49bc                                ; $49b0: $38 $0a

	ld a, $00                                        ; $49b2: $3e $00
	call Call_004_4a10                               ; $49b4: $cd $10 $4a
	and a                                            ; $49b7: $a7
	jr nz, jr_004_49bc                               ; $49b8: $20 $02

jr_004_49ba:
	xor a                                            ; $49ba: $af
	ret                                              ; $49bb: $c9


jr_004_49bc:
	ld a, $01                                        ; $49bc: $3e $01
	ret                                              ; $49be: $c9


	ld a, [$a399]                                    ; $49bf: $fa $99 $a3
	and a                                            ; $49c2: $a7
	jr z, jr_004_49bc                                ; $49c3: $28 $f7

	ld b, a                                          ; $49c5: $47
	ld a, [$a39a]                                    ; $49c6: $fa $9a $a3
	add b                                            ; $49c9: $80
	add $04                                          ; $49ca: $c6 $04
	cp $11                                           ; $49cc: $fe $11
	jr c, jr_004_49d2                                ; $49ce: $38 $02

	ld a, $11                                        ; $49d0: $3e $11

jr_004_49d2:
	ld hl, $49df                                     ; $49d2: $21 $df $49
	rst AddAOntoHL                                          ; $49d5: $ef
	ld b, [hl]                                       ; $49d6: $46
	call Call_000_1309                                       ; $49d7: $cd $09 $13
	cp b                                             ; $49da: $b8
	jr nc, jr_004_49bc                               ; $49db: $30 $df

	jr jr_004_49ba                                   ; $49dd: $18 $db

	ld bc, $321e                                     ; $49df: $01 $1e $32
	inc a                                            ; $49e2: $3c
	ld b, [hl]                                       ; $49e3: $46
	ld d, b                                          ; $49e4: $50
	ld e, d                                          ; $49e5: $5a
	ld e, a                                          ; $49e6: $5f
	ld h, h                                          ; $49e7: $64
	ld l, c                                          ; $49e8: $69
	ld l, [hl]                                       ; $49e9: $6e
	ld [hl], e                                       ; $49ea: $73
	ld a, b                                          ; $49eb: $78
	ld a, l                                          ; $49ec: $7d
	add d                                            ; $49ed: $82
	add a                                            ; $49ee: $87
	adc h                                            ; $49ef: $8c
	rst $38                                          ; $49f0: $ff
	call Call_004_4cc5                               ; $49f1: $cd $c5 $4c
	call Call_004_4e04                               ; $49f4: $cd $04 $4e
	ld hl, $d002                                     ; $49f7: $21 $02 $d0

jr_004_49fa:
	ld a, [hl]                                       ; $49fa: $7e
	cp $ff                                           ; $49fb: $fe $ff
	ret z                                            ; $49fd: $c8

	push hl                                          ; $49fe: $e5
	call Call_004_4a10                               ; $49ff: $cd $10 $4a
	pop hl                                           ; $4a02: $e1
	and a                                            ; $4a03: $a7
	jr z, jr_004_4a0e                                ; $4a04: $28 $08

	inc hl                                           ; $4a06: $23
	inc hl                                           ; $4a07: $23
	inc hl                                           ; $4a08: $23
	jr jr_004_49fa                                   ; $4a09: $18 $ef

	ld a, $ff                                        ; $4a0b: $3e $ff
	ret                                              ; $4a0d: $c9


jr_004_4a0e:
	ld a, [hl]                                       ; $4a0e: $7e
	ret                                              ; $4a0f: $c9


Call_004_4a10:
	ld hl, $4b3a                                     ; $4a10: $21 $3a $4b
	sla a                                            ; $4a13: $cb $27
	rst AddAOntoHL                                          ; $4a15: $ef
	ld a, [hl+]                                      ; $4a16: $2a
	ld h, [hl]                                       ; $4a17: $66
	ld l, a                                          ; $4a18: $6f
	ld de, $a2f3                                     ; $4a19: $11 $f3 $a2
	ld c, $07                                        ; $4a1c: $0e $07

jr_004_4a1e:
	inc de                                           ; $4a1e: $13
	ld a, [de]                                       ; $4a1f: $1a
	dec de                                           ; $4a20: $1b
	and a                                            ; $4a21: $a7
	jr nz, jr_004_4a29                               ; $4a22: $20 $05

	ld b, [hl]                                       ; $4a24: $46
	ld a, [de]                                       ; $4a25: $1a
	cp b                                             ; $4a26: $b8
	jr c, jr_004_4a31                                ; $4a27: $38 $08

jr_004_4a29:
	inc hl                                           ; $4a29: $23
	inc de                                           ; $4a2a: $13
	inc de                                           ; $4a2b: $13
	dec c                                            ; $4a2c: $0d
	jr nz, jr_004_4a1e                               ; $4a2d: $20 $ef

	xor a                                            ; $4a2f: $af
	ret                                              ; $4a30: $c9


jr_004_4a31:
	ld a, $01                                        ; $4a31: $3e $01
	ret                                              ; $4a33: $c9


	ld bc, $0302                                     ; $4a34: $01 $02 $03
	inc bc                                           ; $4a37: $03
	ld a, $4a                                        ; $4a38: $3e $4a
	ld e, d                                          ; $4a3a: $5a
	ld c, d                                          ; $4a3b: $4a
	halt                                             ; $4a3c: $76
	ld c, d                                          ; $4a3d: $4a
	sub d                                            ; $4a3e: $92
	ld c, d                                          ; $4a3f: $4a
	sub [hl]                                         ; $4a40: $96
	ld c, d                                          ; $4a41: $4a
	sbc d                                            ; $4a42: $9a
	ld c, d                                          ; $4a43: $4a
	sbc [hl]                                         ; $4a44: $9e
	ld c, d                                          ; $4a45: $4a
	and d                                            ; $4a46: $a2
	ld c, d                                          ; $4a47: $4a
	and [hl]                                         ; $4a48: $a6
	ld c, d                                          ; $4a49: $4a
	xor d                                            ; $4a4a: $aa
	ld c, d                                          ; $4a4b: $4a
	xor [hl]                                         ; $4a4c: $ae
	ld c, d                                          ; $4a4d: $4a
	or d                                             ; $4a4e: $b2
	ld c, d                                          ; $4a4f: $4a
	or [hl]                                          ; $4a50: $b6
	ld c, d                                          ; $4a51: $4a
	cp d                                             ; $4a52: $ba
	ld c, d                                          ; $4a53: $4a
	cp [hl]                                          ; $4a54: $be
	ld c, d                                          ; $4a55: $4a
	jp nz, $c64a                                     ; $4a56: $c2 $4a $c6

	ld c, d                                          ; $4a59: $4a
	jp z, $ce4a                                      ; $4a5a: $ca $4a $ce

	ld c, d                                          ; $4a5d: $4a
	jp nc, $d64a                                     ; $4a5e: $d2 $4a $d6

	ld c, d                                          ; $4a61: $4a
	jp c, $de4a                                      ; $4a62: $da $4a $de

	ld c, d                                          ; $4a65: $4a
	ldh [c], a                                       ; $4a66: $e2
	ld c, d                                          ; $4a67: $4a
	and $4a                                          ; $4a68: $e6 $4a
	ld [$ee4a], a                                    ; $4a6a: $ea $4a $ee
	ld c, d                                          ; $4a6d: $4a
	ldh a, [c]                                       ; $4a6e: $f2
	ld c, d                                          ; $4a6f: $4a
	or $4a                                           ; $4a70: $f6 $4a
	ld a, [$fe4a]                                    ; $4a72: $fa $4a $fe
	ld c, d                                          ; $4a75: $4a
	ld [bc], a                                       ; $4a76: $02
	ld c, e                                          ; $4a77: $4b
	ld b, $4b                                        ; $4a78: $06 $4b
	ld a, [bc]                                       ; $4a7a: $0a
	ld c, e                                          ; $4a7b: $4b
	ld c, $4b                                        ; $4a7c: $0e $4b
	ld [de], a                                       ; $4a7e: $12
	ld c, e                                          ; $4a7f: $4b
	ld d, $4b                                        ; $4a80: $16 $4b
	ld a, [de]                                       ; $4a82: $1a
	ld c, e                                          ; $4a83: $4b
	ld e, $4b                                        ; $4a84: $1e $4b
	ld [hl+], a                                      ; $4a86: $22
	ld c, e                                          ; $4a87: $4b
	ld h, $4b                                        ; $4a88: $26 $4b
	ld a, [hl+]                                      ; $4a8a: $2a
	ld c, e                                          ; $4a8b: $4b
	ld l, $4b                                        ; $4a8c: $2e $4b
	ld [hl-], a                                      ; $4a8e: $32
	ld c, e                                          ; $4a8f: $4b
	ld [hl], $4b                                     ; $4a90: $36 $4b
	ld bc, $0202                                     ; $4a92: $01 $02 $02
	ld [bc], a                                       ; $4a95: $02
	nop                                              ; $4a96: $00
	nop                                              ; $4a97: $00
	nop                                              ; $4a98: $00
	ld [bc], a                                       ; $4a99: $02
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	ld [bc], a                                       ; $4a9c: $02
	ld bc, $0200                                     ; $4a9d: $01 $00 $02
	nop                                              ; $4aa0: $00
	ld [bc], a                                       ; $4aa1: $02
	ld [bc], a                                       ; $4aa2: $02
	ld [bc], a                                       ; $4aa3: $02
	ld bc, $0201                                     ; $4aa4: $01 $01 $02
	nop                                              ; $4aa7: $00
	ld bc, $0101                                     ; $4aa8: $01 $01 $01
	ld bc, $0102                                     ; $4aab: $01 $02 $01
	ld bc, $0300                                     ; $4aae: $01 $00 $03
	ld bc, $0300                                     ; $4ab1: $01 $00 $03
	ld [bc], a                                       ; $4ab4: $02
	ld [bc], a                                       ; $4ab5: $02
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	nop                                              ; $4ab8: $00
	nop                                              ; $4ab9: $00
	nop                                              ; $4aba: $00
	nop                                              ; $4abb: $00
	nop                                              ; $4abc: $00
	nop                                              ; $4abd: $00
	nop                                              ; $4abe: $00
	inc bc                                           ; $4abf: $03
	ld bc, $0003                                     ; $4ac0: $01 $03 $00
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	ld bc, $0200                                     ; $4ac7: $01 $00 $02
	ld bc, $0003                                     ; $4aca: $01 $03 $00
	inc bc                                           ; $4acd: $03
	nop                                              ; $4ace: $00
	ld [bc], a                                       ; $4acf: $02
	nop                                              ; $4ad0: $00
	inc bc                                           ; $4ad1: $03
	nop                                              ; $4ad2: $00
	nop                                              ; $4ad3: $00
	nop                                              ; $4ad4: $00
	inc bc                                           ; $4ad5: $03
	ld bc, $0001                                     ; $4ad6: $01 $01 $00
	ld [bc], a                                       ; $4ad9: $02
	ld [bc], a                                       ; $4ada: $02
	ld bc, $0200                                     ; $4adb: $01 $00 $02
	ld [bc], a                                       ; $4ade: $02
	ld [bc], a                                       ; $4adf: $02
	ld bc, $0102                                     ; $4ae0: $01 $02 $01
	inc bc                                           ; $4ae3: $03
	nop                                              ; $4ae4: $00
	ld [bc], a                                       ; $4ae5: $02
	ld bc, $0003                                     ; $4ae6: $01 $03 $00
	ld [bc], a                                       ; $4ae9: $02
	nop                                              ; $4aea: $00
	ld bc, $0100                                     ; $4aeb: $01 $00 $01
	ld [bc], a                                       ; $4aee: $02
	inc bc                                           ; $4aef: $03
	nop                                              ; $4af0: $00
	ld bc, $0200                                     ; $4af1: $01 $00 $02
	nop                                              ; $4af4: $00
	nop                                              ; $4af5: $00
	ld bc, $0101                                     ; $4af6: $01 $01 $01
	nop                                              ; $4af9: $00
	ld bc, $0002                                     ; $4afa: $01 $02 $00
	ld [bc], a                                       ; $4afd: $02
	nop                                              ; $4afe: $00
	ld [bc], a                                       ; $4aff: $02
	ld bc, $0202                                     ; $4b00: $01 $02 $02
	ld [bc], a                                       ; $4b03: $02
	inc bc                                           ; $4b04: $03
	ld bc, $0100                                     ; $4b05: $01 $00 $01
	ld bc, $0001                                     ; $4b08: $01 $01 $00
	nop                                              ; $4b0b: $00
	inc bc                                           ; $4b0c: $03
	nop                                              ; $4b0d: $00
	ld [bc], a                                       ; $4b0e: $02
	inc bc                                           ; $4b0f: $03
	nop                                              ; $4b10: $00
	inc bc                                           ; $4b11: $03
	ld [bc], a                                       ; $4b12: $02
	inc bc                                           ; $4b13: $03
	ld [bc], a                                       ; $4b14: $02
	ld bc, $0101                                     ; $4b15: $01 $01 $01
	ld [bc], a                                       ; $4b18: $02
	ld bc, $0203                                     ; $4b19: $01 $03 $02
	ld bc, $0101                                     ; $4b1c: $01 $01 $01
	ld [bc], a                                       ; $4b1f: $02
	ld [bc], a                                       ; $4b20: $02
	nop                                              ; $4b21: $00
	nop                                              ; $4b22: $00
	inc bc                                           ; $4b23: $03
	ld bc, $0202                                     ; $4b24: $01 $02 $02
	ld [bc], a                                       ; $4b27: $02
	ld [bc], a                                       ; $4b28: $02
	ld bc, $0302                                     ; $4b29: $01 $02 $03
	nop                                              ; $4b2c: $00
	ld [bc], a                                       ; $4b2d: $02
	ld bc, $0102                                     ; $4b2e: $01 $02 $01
	ld [bc], a                                       ; $4b31: $02
	ld bc, $0102                                     ; $4b32: $01 $02 $01
	ld bc, $0200                                     ; $4b35: $01 $00 $02
	nop                                              ; $4b38: $00
	ld [bc], a                                       ; $4b39: $02
	ld d, [hl]                                       ; $4b3a: $56
	ld c, e                                          ; $4b3b: $4b
	ld e, l                                          ; $4b3c: $5d
	ld c, e                                          ; $4b3d: $4b
	ld h, h                                          ; $4b3e: $64
	ld c, e                                          ; $4b3f: $4b
	ld l, e                                          ; $4b40: $6b
	ld c, e                                          ; $4b41: $4b
	ld [hl], d                                       ; $4b42: $72
	ld c, e                                          ; $4b43: $4b
	ld a, c                                          ; $4b44: $79
	ld c, e                                          ; $4b45: $4b
	add b                                            ; $4b46: $80
	ld c, e                                          ; $4b47: $4b
	add a                                            ; $4b48: $87
	ld c, e                                          ; $4b49: $4b
	adc [hl]                                         ; $4b4a: $8e
	ld c, e                                          ; $4b4b: $4b
	sub l                                            ; $4b4c: $95
	ld c, e                                          ; $4b4d: $4b
	sbc h                                            ; $4b4e: $9c
	ld c, e                                          ; $4b4f: $4b
	and e                                            ; $4b50: $a3
	ld c, e                                          ; $4b51: $4b
	xor d                                            ; $4b52: $aa
	ld c, e                                          ; $4b53: $4b
	or c                                             ; $4b54: $b1
	ld c, e                                          ; $4b55: $4b
	add d                                            ; $4b56: $82
	add d                                            ; $4b57: $82
	add d                                            ; $4b58: $82
	add d                                            ; $4b59: $82
	ld a, b                                          ; $4b5a: $78
	ld h, h                                          ; $4b5b: $64
	ld h, h                                          ; $4b5c: $64
	ld a, b                                          ; $4b5d: $78
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	ld h, h                                          ; $4b62: $64
	nop                                              ; $4b63: $00
	nop                                              ; $4b64: $00
	ld a, b                                          ; $4b65: $78
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	nop                                              ; $4b68: $00
	ld e, d                                          ; $4b69: $5a
	nop                                              ; $4b6a: $00
	nop                                              ; $4b6b: $00
	nop                                              ; $4b6c: $00
	ld a, b                                          ; $4b6d: $78
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	ld h, h                                          ; $4b70: $64
	nop                                              ; $4b71: $00
	nop                                              ; $4b72: $00
	nop                                              ; $4b73: $00
	nop                                              ; $4b74: $00
	ld a, b                                          ; $4b75: $78
	nop                                              ; $4b76: $00
	inc a                                            ; $4b77: $3c
	ld a, b                                          ; $4b78: $78
	nop                                              ; $4b79: $00
	nop                                              ; $4b7a: $00
	nop                                              ; $4b7b: $00
	ld a, b                                          ; $4b7c: $78
	nop                                              ; $4b7d: $00
	ld h, h                                          ; $4b7e: $64
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	ld a, b                                          ; $4b83: $78
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	ld b, [hl]                                       ; $4b86: $46
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	ld e, d                                          ; $4b89: $5a
	nop                                              ; $4b8a: $00
	ld h, h                                          ; $4b8b: $64
	adc h                                            ; $4b8c: $8c
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	ld a, b                                          ; $4b92: $78
	ld h, h                                          ; $4b93: $64
	nop                                              ; $4b94: $00
	ld d, b                                          ; $4b95: $50
	ld d, b                                          ; $4b96: $50
	ld d, b                                          ; $4b97: $50
	nop                                              ; $4b98: $00
	ld e, d                                          ; $4b99: $5a
	ld h, h                                          ; $4b9a: $64
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	ld e, d                                          ; $4b9f: $5a
	ld d, b                                          ; $4ba0: $50
	ld h, h                                          ; $4ba1: $64
	nop                                              ; $4ba2: $00
	nop                                              ; $4ba3: $00
	ld h, h                                          ; $4ba4: $64
	ld h, h                                          ; $4ba5: $64
	nop                                              ; $4ba6: $00
	nop                                              ; $4ba7: $00
	ld h, h                                          ; $4ba8: $64
	nop                                              ; $4ba9: $00
	adc h                                            ; $4baa: $8c
	nop                                              ; $4bab: $00
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	ld h, h                                          ; $4bae: $64
	ld l, [hl]                                       ; $4baf: $6e
	nop                                              ; $4bb0: $00
	nop                                              ; $4bb1: $00
	ld d, b                                          ; $4bb2: $50
	nop                                              ; $4bb3: $00
	add d                                            ; $4bb4: $82
	nop                                              ; $4bb5: $00
	nop                                              ; $4bb6: $00
	ld l, [hl]                                       ; $4bb7: $6e
	xor a                                            ; $4bb8: $af
	ld [$c0e8], a                                    ; $4bb9: $ea $e8 $c0
	ld hl, $d002                                     ; $4bbc: $21 $02 $d0

jr_004_4bbf:
	ld a, [$c0e8]                                    ; $4bbf: $fa $e8 $c0
	call Call_004_4031                               ; $4bc2: $cd $31 $40
	jr c, jr_004_4bce                                ; $4bc5: $38 $07

	ld a, $ff                                        ; $4bc7: $3e $ff
	ld [hl+], a                                      ; $4bc9: $22
	inc hl                                           ; $4bca: $23
	inc hl                                           ; $4bcb: $23
	jr jr_004_4be9                                   ; $4bcc: $18 $1b

jr_004_4bce:
	ld a, [$c0e8]                                    ; $4bce: $fa $e8 $c0
	ld [hl+], a                                      ; $4bd1: $22
	xor a                                            ; $4bd2: $af
	ld [hl+], a                                      ; $4bd3: $22
	ld a, [$c0e8]                                    ; $4bd4: $fa $e8 $c0
	call Call_004_41f2                               ; $4bd7: $cd $f2 $41
	ld [$c0e9], a                                    ; $4bda: $ea $e9 $c0
	ld a, [$c0e8]                                    ; $4bdd: $fa $e8 $c0
	call Call_004_4218                               ; $4be0: $cd $18 $42
	ld b, a                                          ; $4be3: $47
	ld a, [$c0e9]                                    ; $4be4: $fa $e9 $c0
	add b                                            ; $4be7: $80
	ld [hl+], a                                      ; $4be8: $22

jr_004_4be9:
	ld a, [$c0e8]                                    ; $4be9: $fa $e8 $c0
	inc a                                            ; $4bec: $3c
	ld [$c0e8], a                                    ; $4bed: $ea $e8 $c0
	cp $0e                                           ; $4bf0: $fe $0e
	jr c, jr_004_4bbf                                ; $4bf2: $38 $cb

	ret                                              ; $4bf4: $c9


Call_004_4bf5:
	xor a                                            ; $4bf5: $af
	ld [$c0e8], a                                    ; $4bf6: $ea $e8 $c0
	ld hl, $d002                                     ; $4bf9: $21 $02 $d0

jr_004_4bfc:
	ld a, [$c0e8]                                    ; $4bfc: $fa $e8 $c0
	call Call_004_4031                               ; $4bff: $cd $31 $40

Jump_004_4c02:
	jr nc, jr_004_4c13                               ; $4c02: $30 $0f

	ld a, [$c0e8]                                    ; $4c04: $fa $e8 $c0
	cp $00                                           ; $4c07: $fe $00
	jr z, jr_004_4c13                                ; $4c09: $28 $08

	cp $0b                                           ; $4c0b: $fe $0b
	jr z, jr_004_4c13                                ; $4c0d: $28 $04

	cp $0a                                           ; $4c0f: $fe $0a
	jr nz, jr_004_4c1a                               ; $4c11: $20 $07

jr_004_4c13:
	ld a, $ff                                        ; $4c13: $3e $ff
	ld [hl+], a                                      ; $4c15: $22
	inc hl                                           ; $4c16: $23
	inc hl                                           ; $4c17: $23
	jr jr_004_4c27                                   ; $4c18: $18 $0d

jr_004_4c1a:
	ld a, [$c0e8]                                    ; $4c1a: $fa $e8 $c0
	ld [hl+], a                                      ; $4c1d: $22
	xor a                                            ; $4c1e: $af
	ld [hl+], a                                      ; $4c1f: $22
	ld a, [$c0e8]                                    ; $4c20: $fa $e8 $c0
	call Call_004_42c5                               ; $4c23: $cd $c5 $42
	ld [hl+], a                                      ; $4c26: $22

jr_004_4c27:
	ld a, [$c0e8]                                    ; $4c27: $fa $e8 $c0
	inc a                                            ; $4c2a: $3c
	ld [$c0e8], a                                    ; $4c2b: $ea $e8 $c0
	cp $0e                                           ; $4c2e: $fe $0e
	jr c, jr_004_4bfc                                ; $4c30: $38 $ca

	ret                                              ; $4c32: $c9


Call_004_4c33:
	xor a                                            ; $4c33: $af
	ld [$c0e8], a                                    ; $4c34: $ea $e8 $c0
	ld hl, $d002                                     ; $4c37: $21 $02 $d0

jr_004_4c3a:
	ld a, [$c0e8]                                    ; $4c3a: $fa $e8 $c0
	call Call_004_4031                               ; $4c3d: $cd $31 $40
	jr c, jr_004_4c49                                ; $4c40: $38 $07

jr_004_4c42:
	ld a, $ff                                        ; $4c42: $3e $ff
	ld [hl+], a                                      ; $4c44: $22
	inc hl                                           ; $4c45: $23
	inc hl                                           ; $4c46: $23
	jr jr_004_4c6e                                   ; $4c47: $18 $25

jr_004_4c49:
	ld a, [$c0e8]                                    ; $4c49: $fa $e8 $c0
	call Call_004_41f2                               ; $4c4c: $cd $f2 $41
	cp $32                                           ; $4c4f: $fe $32
	jr c, jr_004_4c42                                ; $4c51: $38 $ef

	ld [$c0e9], a                                    ; $4c53: $ea $e9 $c0
	ld a, [$c0e8]                                    ; $4c56: $fa $e8 $c0
	call Call_004_4218                               ; $4c59: $cd $18 $42
	ld b, a                                          ; $4c5c: $47
	ld a, [$c0e9]                                    ; $4c5d: $fa $e9 $c0
	add b                                            ; $4c60: $80
	ld [$c0e9], a                                    ; $4c61: $ea $e9 $c0
	ld a, [$c0e8]                                    ; $4c64: $fa $e8 $c0
	ld [hl+], a                                      ; $4c67: $22
	xor a                                            ; $4c68: $af
	ld [hl+], a                                      ; $4c69: $22
	ld a, [$c0e9]                                    ; $4c6a: $fa $e9 $c0
	ld [hl+], a                                      ; $4c6d: $22

jr_004_4c6e:
	ld a, [$c0e8]                                    ; $4c6e: $fa $e8 $c0
	inc a                                            ; $4c71: $3c
	ld [$c0e8], a                                    ; $4c72: $ea $e8 $c0
	cp $0e                                           ; $4c75: $fe $0e
	jr c, jr_004_4c3a                                ; $4c77: $38 $c1

	ret                                              ; $4c79: $c9


Call_004_4c7a:
	xor a                                            ; $4c7a: $af
	ld [$c0e8], a                                    ; $4c7b: $ea $e8 $c0
	ld hl, $d002                                     ; $4c7e: $21 $02 $d0

jr_004_4c81:
	ld a, [$c0e8]                                    ; $4c81: $fa $e8 $c0
	call Call_004_4031                               ; $4c84: $cd $31 $40
	jr c, jr_004_4c90                                ; $4c87: $38 $07

jr_004_4c89:
	ld a, $ff                                        ; $4c89: $3e $ff
	ld [hl+], a                                      ; $4c8b: $22
	inc hl                                           ; $4c8c: $23
	inc hl                                           ; $4c8d: $23
	jr jr_004_4cb9                                   ; $4c8e: $18 $29

jr_004_4c90:
	ld a, [$c0e8]                                    ; $4c90: $fa $e8 $c0
	call Call_004_41f2                               ; $4c93: $cd $f2 $41
	ld [$c0e9], a                                    ; $4c96: $ea $e9 $c0
	cp $50                                           ; $4c99: $fe $50
	jr c, jr_004_4c89                                ; $4c9b: $38 $ec

	ld a, [$c0e8]                                    ; $4c9d: $fa $e8 $c0
	call Call_004_4218                               ; $4ca0: $cd $18 $42
	cp $32                                           ; $4ca3: $fe $32
	jr c, jr_004_4c89                                ; $4ca5: $38 $e2

	ld b, a                                          ; $4ca7: $47
	ld a, [$c0e9]                                    ; $4ca8: $fa $e9 $c0
	add b                                            ; $4cab: $80
	ld [$c0e9], a                                    ; $4cac: $ea $e9 $c0
	ld a, [$c0e8]                                    ; $4caf: $fa $e8 $c0
	ld [hl+], a                                      ; $4cb2: $22
	xor a                                            ; $4cb3: $af
	ld [hl+], a                                      ; $4cb4: $22
	ld a, [$c0e9]                                    ; $4cb5: $fa $e9 $c0
	ld [hl+], a                                      ; $4cb8: $22

jr_004_4cb9:
	ld a, [$c0e8]                                    ; $4cb9: $fa $e8 $c0
	inc a                                            ; $4cbc: $3c
	ld [$c0e8], a                                    ; $4cbd: $ea $e8 $c0
	cp $0e                                           ; $4cc0: $fe $0e
	jr c, jr_004_4c81                                ; $4cc2: $38 $bd

	ret                                              ; $4cc4: $c9


Call_004_4cc5:
	xor a                                            ; $4cc5: $af
	ld [$c0e8], a                                    ; $4cc6: $ea $e8 $c0
	ld hl, $d002                                     ; $4cc9: $21 $02 $d0

Call_004_4ccc:
jr_004_4ccc:
	ld a, [$c0e8]                                    ; $4ccc: $fa $e8 $c0
	call Call_004_4031                               ; $4ccf: $cd $31 $40
	jr c, jr_004_4cdb                                ; $4cd2: $38 $07

jr_004_4cd4:
	ld a, $ff                                        ; $4cd4: $3e $ff
	ld [hl+], a                                      ; $4cd6: $22
	inc hl                                           ; $4cd7: $23
	inc hl                                           ; $4cd8: $23
	jr jr_004_4d1a                                   ; $4cd9: $18 $3f

jr_004_4cdb:
	ld a, [$c0e8]                                    ; $4cdb: $fa $e8 $c0
	call Call_004_42bb                               ; $4cde: $cd $bb $42
	cp $4b                                           ; $4ce1: $fe $4b
	jr nc, jr_004_4cd4                               ; $4ce3: $30 $ef

	ld a, [$c0e8]                                    ; $4ce5: $fa $e8 $c0
	push hl                                          ; $4ce8: $e5
	call Call_004_4e5c                               ; $4ce9: $cd $5c $4e
	pop hl                                           ; $4cec: $e1
	cp $03                                           ; $4ced: $fe $03
	jr c, jr_004_4cd4                                ; $4cef: $38 $e3

	ld a, [$c0e8]                                    ; $4cf1: $fa $e8 $c0
	call Call_004_41f2                               ; $4cf4: $cd $f2 $41
	ld [$c0e9], a                                    ; $4cf7: $ea $e9 $c0
	cp $50                                           ; $4cfa: $fe $50
	jr c, jr_004_4cd4                                ; $4cfc: $38 $d6

	ld a, [$c0e8]                                    ; $4cfe: $fa $e8 $c0
	call Call_004_4218                               ; $4d01: $cd $18 $42
	cp $50                                           ; $4d04: $fe $50
	jr c, jr_004_4cd4                                ; $4d06: $38 $cc

	ld b, a                                          ; $4d08: $47
	ld a, [$c0e9]                                    ; $4d09: $fa $e9 $c0
	add b                                            ; $4d0c: $80
	ld [$c0e9], a                                    ; $4d0d: $ea $e9 $c0
	ld a, [$c0e8]                                    ; $4d10: $fa $e8 $c0
	ld [hl+], a                                      ; $4d13: $22
	xor a                                            ; $4d14: $af
	ld [hl+], a                                      ; $4d15: $22
	ld a, [$c0e9]                                    ; $4d16: $fa $e9 $c0
	ld [hl+], a                                      ; $4d19: $22

jr_004_4d1a:
	ld a, [$c0e8]                                    ; $4d1a: $fa $e8 $c0
	inc a                                            ; $4d1d: $3c
	ld [$c0e8], a                                    ; $4d1e: $ea $e8 $c0
	cp $0e                                           ; $4d21: $fe $0e
	jr c, jr_004_4ccc                                ; $4d23: $38 $a7

	ret                                              ; $4d25: $c9


Call_004_4d26:
	xor a                                            ; $4d26: $af
	ld [$c0e8], a                                    ; $4d27: $ea $e8 $c0
	ld hl, $d002                                     ; $4d2a: $21 $02 $d0

jr_004_4d2d:
	ld a, [$c0e8]                                    ; $4d2d: $fa $e8 $c0
	call Call_004_4031                               ; $4d30: $cd $31 $40
	jr nc, jr_004_4d40                               ; $4d33: $30 $0b

	ld a, [$c0e8]                                    ; $4d35: $fa $e8 $c0
	cp $00                                           ; $4d38: $fe $00
	jr z, jr_004_4d40                                ; $4d3a: $28 $04

	cp $0a                                           ; $4d3c: $fe $0a
	jr nz, jr_004_4d47                               ; $4d3e: $20 $07

jr_004_4d40:
	ld a, $ff                                        ; $4d40: $3e $ff
	ld [hl+], a                                      ; $4d42: $22
	inc hl                                           ; $4d43: $23
	inc hl                                           ; $4d44: $23
	jr jr_004_4d56                                   ; $4d45: $18 $0f

jr_004_4d47:
	ld a, [$c0e8]                                    ; $4d47: $fa $e8 $c0
	ld [hl+], a                                      ; $4d4a: $22
	xor a                                            ; $4d4b: $af
	ld [hl+], a                                      ; $4d4c: $22
	ld a, [$c0e8]                                    ; $4d4d: $fa $e8 $c0
	push hl                                          ; $4d50: $e5
	call Call_004_4e5c                               ; $4d51: $cd $5c $4e
	pop hl                                           ; $4d54: $e1
	ld [hl+], a                                      ; $4d55: $22

jr_004_4d56:
	ld a, [$c0e8]                                    ; $4d56: $fa $e8 $c0
	inc a                                            ; $4d59: $3c
	ld [$c0e8], a                                    ; $4d5a: $ea $e8 $c0
	cp $0e                                           ; $4d5d: $fe $0e
	jr c, jr_004_4d2d                                ; $4d5f: $38 $cc

	ret                                              ; $4d61: $c9


Call_004_4d62:
	xor a                                            ; $4d62: $af
	ld [$c0e8], a                                    ; $4d63: $ea $e8 $c0
	ld hl, $d002                                     ; $4d66: $21 $02 $d0

jr_004_4d69:
	ld a, [$c0e8]                                    ; $4d69: $fa $e8 $c0
	call Call_004_4031                               ; $4d6c: $cd $31 $40
	jr c, jr_004_4d78                                ; $4d6f: $38 $07

	ld a, $ff                                        ; $4d71: $3e $ff
	ld [hl+], a                                      ; $4d73: $22
	inc hl                                           ; $4d74: $23
	inc hl                                           ; $4d75: $23
	jr jr_004_4d85                                   ; $4d76: $18 $0d

jr_004_4d78:
	ld a, [$c0e8]                                    ; $4d78: $fa $e8 $c0
	ld [hl+], a                                      ; $4d7b: $22
	xor a                                            ; $4d7c: $af
	ld [hl+], a                                      ; $4d7d: $22
	ld a, [$c0e8]                                    ; $4d7e: $fa $e8 $c0
	call Call_004_42c5                               ; $4d81: $cd $c5 $42
	ld [hl+], a                                      ; $4d84: $22

jr_004_4d85:
	ld a, [$c0e8]                                    ; $4d85: $fa $e8 $c0
	inc a                                            ; $4d88: $3c
	ld [$c0e8], a                                    ; $4d89: $ea $e8 $c0
	cp $0e                                           ; $4d8c: $fe $0e
	jr c, jr_004_4d69                                ; $4d8e: $38 $d9

	ret                                              ; $4d90: $c9


Call_004_4d91:
	xor a                                            ; $4d91: $af
	ld [$c0e8], a                                    ; $4d92: $ea $e8 $c0
	ld hl, $d002                                     ; $4d95: $21 $02 $d0

jr_004_4d98:
	ld a, [$c0e8]                                    ; $4d98: $fa $e8 $c0
	call Call_004_4031                               ; $4d9b: $cd $31 $40
	jr c, jr_004_4da7                                ; $4d9e: $38 $07

jr_004_4da0:
	ld a, $ff                                        ; $4da0: $3e $ff
	ld [hl+], a                                      ; $4da2: $22
	inc hl                                           ; $4da3: $23
	inc hl                                           ; $4da4: $23
	jr jr_004_4dc8                                   ; $4da5: $18 $21

jr_004_4da7:
	ld a, [$c0e8]                                    ; $4da7: $fa $e8 $c0
	call Call_004_42bb                               ; $4daa: $cd $bb $42
	cp $3c                                           ; $4dad: $fe $3c
	jr nc, jr_004_4da0                               ; $4daf: $30 $ef

	ld a, [$c0e8]                                    ; $4db1: $fa $e8 $c0
	call Call_004_42c5                               ; $4db4: $cd $c5 $42
	ld [$c0e9], a                                    ; $4db7: $ea $e9 $c0
	cp $28                                           ; $4dba: $fe $28
	jr c, jr_004_4da0                                ; $4dbc: $38 $e2

	ld a, [$c0e8]                                    ; $4dbe: $fa $e8 $c0
	ld [hl+], a                                      ; $4dc1: $22
	xor a                                            ; $4dc2: $af
	ld [hl+], a                                      ; $4dc3: $22
	ld a, [$c0e9]                                    ; $4dc4: $fa $e9 $c0
	ld [hl+], a                                      ; $4dc7: $22

jr_004_4dc8:
	ld a, [$c0e8]                                    ; $4dc8: $fa $e8 $c0
	inc a                                            ; $4dcb: $3c
	ld [$c0e8], a                                    ; $4dcc: $ea $e8 $c0
	cp $0e                                           ; $4dcf: $fe $0e
	jr c, jr_004_4d98                                ; $4dd1: $38 $c5

	ret                                              ; $4dd3: $c9


	ld b, $00                                        ; $4dd4: $06 $00
	xor a                                            ; $4dd6: $af
	ld [$c0e8], a                                    ; $4dd7: $ea $e8 $c0
	ld hl, $d002                                     ; $4dda: $21 $02 $d0

jr_004_4ddd:
	ld a, [$c0e8]                                    ; $4ddd: $fa $e8 $c0
	call Call_004_4031                               ; $4de0: $cd $31 $40
	jr nc, jr_004_4df2                               ; $4de3: $30 $0d

	ld a, [$c0e8]                                    ; $4de5: $fa $e8 $c0
	ld [hl+], a                                      ; $4de8: $22
	xor a                                            ; $4de9: $af
	ld [hl+], a                                      ; $4dea: $22
	ld a, [$c0e8]                                    ; $4deb: $fa $e8 $c0
	ld [hl+], a                                      ; $4dee: $22
	inc b                                            ; $4def: $04
	jr jr_004_4df7                                   ; $4df0: $18 $05

jr_004_4df2:
	ld a, $ff                                        ; $4df2: $3e $ff
	ld [hl+], a                                      ; $4df4: $22
	inc hl                                           ; $4df5: $23
	inc hl                                           ; $4df6: $23

jr_004_4df7:
	ld a, [$c0e8]                                    ; $4df7: $fa $e8 $c0
	inc a                                            ; $4dfa: $3c
	ld [$c0e8], a                                    ; $4dfb: $ea $e8 $c0
	cp $0e                                           ; $4dfe: $fe $0e
	jr c, jr_004_4ddd                                ; $4e00: $38 $db

	ld a, b                                          ; $4e02: $78
	ret                                              ; $4e03: $c9


Call_004_4e04:
Jump_004_4e04:
	ld hl, $d002                                     ; $4e04: $21 $02 $d0

jr_004_4e07:
	ld d, h                                          ; $4e07: $54
	ld e, l                                          ; $4e08: $5d
	inc de                                           ; $4e09: $13
	inc de                                           ; $4e0a: $13
	inc de                                           ; $4e0b: $13

jr_004_4e0c:
	ld a, [hl]                                       ; $4e0c: $7e
	cp $ff                                           ; $4e0d: $fe $ff
	jr z, jr_004_4e2d                                ; $4e0f: $28 $1c

	ld a, [de]                                       ; $4e11: $1a
	cp $ff                                           ; $4e12: $fe $ff
	jr z, jr_004_4e3d                                ; $4e14: $28 $27

	push hl                                          ; $4e16: $e5
	push de                                          ; $4e17: $d5
	inc hl                                           ; $4e18: $23
	ld b, [hl]                                       ; $4e19: $46
	inc hl                                           ; $4e1a: $23
	ld c, [hl]                                       ; $4e1b: $4e
	ld h, b                                          ; $4e1c: $60
	ld l, c                                          ; $4e1d: $69
	inc de                                           ; $4e1e: $13
	ld a, [de]                                       ; $4e1f: $1a
	ld b, a                                          ; $4e20: $47
	inc de                                           ; $4e21: $13
	ld a, [de]                                       ; $4e22: $1a
	ld c, a                                          ; $4e23: $4f
	ld d, b                                          ; $4e24: $50
	ld e, c                                          ; $4e25: $59
	call wCpHLtoDE                                       ; $4e26: $cd $80 $ce
	pop de                                           ; $4e29: $d1
	pop hl                                           ; $4e2a: $e1
	jr nc, jr_004_4e3d                               ; $4e2b: $30 $10

jr_004_4e2d:
	push hl                                          ; $4e2d: $e5
	push de                                          ; $4e2e: $d5
	ld c, $03                                        ; $4e2f: $0e $03

jr_004_4e31:
	ld a, [de]                                       ; $4e31: $1a
	ld b, a                                          ; $4e32: $47
	ld a, [hl]                                       ; $4e33: $7e
	ld [de], a                                       ; $4e34: $12
	ld [hl], b                                       ; $4e35: $70
	inc hl                                           ; $4e36: $23
	inc de                                           ; $4e37: $13
	dec c                                            ; $4e38: $0d
	jr nz, jr_004_4e31                               ; $4e39: $20 $f6

	pop de                                           ; $4e3b: $d1
	pop hl                                           ; $4e3c: $e1

jr_004_4e3d:
	inc de                                           ; $4e3d: $13
	inc de                                           ; $4e3e: $13
	inc de                                           ; $4e3f: $13
	ld bc, $d02c                                     ; $4e40: $01 $2c $d0
	call wCpBCtoDE                                       ; $4e43: $cd $8c $ce
	jr nz, jr_004_4e0c                               ; $4e46: $20 $c4

	inc hl                                           ; $4e48: $23
	inc hl                                           ; $4e49: $23
	inc hl                                           ; $4e4a: $23
	ld bc, $d029                                     ; $4e4b: $01 $29 $d0
	call wCpHLtoBC                                       ; $4e4e: $cd $86 $ce
	jr nz, jr_004_4e07                               ; $4e51: $20 $b4

	ret                                              ; $4e53: $c9


	push hl                                          ; $4e54: $e5
	call Call_004_4e5c                               ; $4e55: $cd $5c $4e
	inc a                                            ; $4e58: $3c
	ld [hl], a                                       ; $4e59: $77
	pop hl                                           ; $4e5a: $e1
	ret                                              ; $4e5b: $c9


Call_004_4e5c:
	ld hl, $a263                                     ; $4e5c: $21 $63 $a2
	call $ce99                                       ; $4e5f: $cd $99 $ce
	ld a, [hl]                                       ; $4e62: $7e
	ret                                              ; $4e63: $c9


Call_004_4e64:
	call Call_004_4d26                               ; $4e64: $cd $26 $4d
	call Call_004_4e04                               ; $4e67: $cd $04 $4e
	ld a, [$d002]                                    ; $4e6a: $fa $02 $d0
	cp $ff                                           ; $4e6d: $fe $ff
	jr z, jr_004_4e8c                                ; $4e6f: $28 $1b

	ld hl, $d002                                     ; $4e71: $21 $02 $d0
	ld c, $0d                                        ; $4e74: $0e $0d
	ld b, $03                                        ; $4e76: $06 $03
	call BCequBtimesC                                       ; $4e78: $cd $5f $12
	add hl, bc                                       ; $4e7b: $09
	ld c, $0e                                        ; $4e7c: $0e $0e

jr_004_4e7e:
	ld a, [hl]                                       ; $4e7e: $7e
	cp $ff                                           ; $4e7f: $fe $ff
	jr nz, jr_004_4e8b                               ; $4e81: $20 $08

	dec c                                            ; $4e83: $0d
	jr z, jr_004_4e8c                                ; $4e84: $28 $06

	dec hl                                           ; $4e86: $2b
	dec hl                                           ; $4e87: $2b
	dec hl                                           ; $4e88: $2b
	jr jr_004_4e7e                                   ; $4e89: $18 $f3

jr_004_4e8b:
	ret                                              ; $4e8b: $c9


jr_004_4e8c:
	ld a, $ff                                        ; $4e8c: $3e $ff
	ret                                              ; $4e8e: $c9


	call Call_004_4f03                               ; $4e8f: $cd $03 $4f
	call Call_004_4ee7                               ; $4e92: $cd $e7 $4e
	ld [wGenericTileDataDest], a                                    ; $4e95: $ea $e2 $c0
	cp $00                                           ; $4e98: $fe $00
	jr z, jr_004_4edb                                ; $4e9a: $28 $3f

	ld a, [$c0e0]                                    ; $4e9c: $fa $e0 $c0
	call Call_004_41f2                               ; $4e9f: $cd $f2 $41
	ld [wGenericTileDataDest+1], a                                    ; $4ea2: $ea $e3 $c0
	ld a, [$c0e0]                                    ; $4ea5: $fa $e0 $c0
	call Call_004_4218                               ; $4ea8: $cd $18 $42
	ld b, a                                          ; $4eab: $47
	ld a, [wGenericTileDataDest+1]                                    ; $4eac: $fa $e3 $c0
	add b                                            ; $4eaf: $80
	srl a                                            ; $4eb0: $cb $3f
	ld b, a                                          ; $4eb2: $47
	ld a, [$a2fb]                                    ; $4eb3: $fa $fb $a2
	cp $64                                           ; $4eb6: $fe $64
	jr nc, jr_004_4ebc                               ; $4eb8: $30 $02

	ld a, $64                                        ; $4eba: $3e $64

jr_004_4ebc:
	cp b                                             ; $4ebc: $b8
	jr nc, jr_004_4ec0                               ; $4ebd: $30 $01

	ld a, b                                          ; $4ebf: $78

jr_004_4ec0:
	srl a                                            ; $4ec0: $cb $3f
	srl a                                            ; $4ec2: $cb $3f
	ld b, a                                          ; $4ec4: $47
	ld a, [wGenericTileDataDest]                                    ; $4ec5: $fa $e2 $c0
	add b                                            ; $4ec8: $80
	ld b, a                                          ; $4ec9: $47
	ld a, [$a2fd]                                    ; $4eca: $fa $fd $a2
	cp $28                                           ; $4ecd: $fe $28
	jr nc, jr_004_4ed5                               ; $4ecf: $30 $04

	sub $28                                          ; $4ed1: $d6 $28
	add b                                            ; $4ed3: $80
	ld b, a                                          ; $4ed4: $47

jr_004_4ed5:
	call Call_000_1309                                       ; $4ed5: $cd $09 $13
	cp b                                             ; $4ed8: $b8
	jr c, jr_004_4edf                                ; $4ed9: $38 $04

jr_004_4edb:
	ld a, $01                                        ; $4edb: $3e $01
	scf                                              ; $4edd: $37
	ret                                              ; $4ede: $c9


jr_004_4edf:
	ld a, [wGenericTileDataBytesToCopyUntil21h]                                    ; $4edf: $fa $e4 $c0
	and a                                            ; $4ee2: $a7
	jr nz, jr_004_4edb                               ; $4ee3: $20 $f6

	xor a                                            ; $4ee5: $af
	ret                                              ; $4ee6: $c9


Call_004_4ee7:
	ld [$c0e0], a                                    ; $4ee7: $ea $e0 $c0
	ld c, a                                          ; $4eea: $4f
	ld a, b                                          ; $4eeb: $78
	ld [$c0e1], a                                    ; $4eec: $ea $e1 $c0
	ld b, $02                                        ; $4eef: $06 $02
	call BCequBtimesC                                       ; $4ef1: $cd $5f $12
	ld hl, $5295                                     ; $4ef4: $21 $95 $52
	add hl, bc                                       ; $4ef7: $09
	ld a, [hl+]                                      ; $4ef8: $2a
	ld h, [hl]                                       ; $4ef9: $66
	ld l, a                                          ; $4efa: $6f
	ld a, [$c0e1]                                    ; $4efb: $fa $e1 $c0
	call $ce99                                       ; $4efe: $cd $99 $ce
	ld a, [hl]                                       ; $4f01: $7e
	ret                                              ; $4f02: $c9


Call_004_4f03:
	push af                                          ; $4f03: $f5
	push bc                                          ; $4f04: $c5
	cp $0d                                           ; $4f05: $fe $0d
	jr nz, jr_004_4f4d                               ; $4f07: $20 $44

	ld a, b                                          ; $4f09: $78
	cp $0c                                           ; $4f0a: $fe $0c
	jr nz, jr_004_4f4d                               ; $4f0c: $20 $3f

	ld a, [$d22e]                                    ; $4f0e: $fa $2e $d2
	cp $07                                           ; $4f11: $fe $07
	jr nc, jr_004_4f4d                               ; $4f13: $30 $38

	ld [$d083], a                                    ; $4f15: $ea $83 $d0
	ld a, [$d22c]                                    ; $4f18: $fa $2c $d2
	ld [$d082], a                                    ; $4f1b: $ea $82 $d0
	cp $0b                                           ; $4f1e: $fe $0b
	ld a, [$a224]                                    ; $4f20: $fa $24 $a2
	jr nz, jr_004_4f26                               ; $4f23: $20 $01

	inc a                                            ; $4f25: $3c

jr_004_4f26:
	ld [$d081], a                                    ; $4f26: $ea $81 $d0
	rst FarCall                                          ; $4f29: $f7
	rst SubAFromHL                                          ; $4f2a: $d7
	ld b, a                                          ; $4f2b: $47
	dec b                                            ; $4f2c: $05
	ld a, $0d                                        ; $4f2d: $3e $0d
	ld [$d08c], a                                    ; $4f2f: $ea $8c $d0
	ld a, $0c                                        ; $4f32: $3e $0c
	ld [$d08b], a                                    ; $4f34: $ea $8b $d0
	ld a, [$d084]                                    ; $4f37: $fa $84 $d0
	and a                                            ; $4f3a: $a7
	jr nz, jr_004_4f4d                               ; $4f3b: $20 $10

	ld a, $0d                                        ; $4f3d: $3e $0d
	call Call_004_43c0                               ; $4f3f: $cd $c0 $43
	and a                                            ; $4f42: $a7
	jr nz, jr_004_4f54                               ; $4f43: $20 $0f

	ld a, $02                                        ; $4f45: $3e $02
	call Call_000_12fc                                       ; $4f47: $cd $fc $12
	and a                                            ; $4f4a: $a7
	jr z, jr_004_4f54                                ; $4f4b: $28 $07

jr_004_4f4d:
	xor a                                            ; $4f4d: $af
	ld [wGenericTileDataBytesToCopyUntil21h], a                                    ; $4f4e: $ea $e4 $c0
	pop bc                                           ; $4f51: $c1
	pop af                                           ; $4f52: $f1
	ret                                              ; $4f53: $c9


jr_004_4f54:
	ld a, $01                                        ; $4f54: $3e $01
	ld [wGenericTileDataBytesToCopyUntil21h], a                                    ; $4f56: $ea $e4 $c0
	pop bc                                           ; $4f59: $c1
	pop af                                           ; $4f5a: $f1
	ret                                              ; $4f5b: $c9


	call z, $80b3                                    ; $4f5c: $cc $b3 $80
	ld h, [hl]                                       ; $4f5f: $66
	ld c, h                                          ; $4f60: $4c
	ld h, $00                                        ; $4f61: $26 $00
	nop                                              ; $4f63: $00
	ld bc, $0302                                     ; $4f64: $01 $02 $03
	inc b                                            ; $4f67: $04
	inc b                                            ; $4f68: $04
	dec b                                            ; $4f69: $05
	call Call_004_4ee7                               ; $4f6a: $cd $e7 $4e
	ld hl, $4f5c                                     ; $4f6d: $21 $5c $4f
	ld b, a                                          ; $4f70: $47
	ld c, $00                                        ; $4f71: $0e $00

jr_004_4f73:
	ld a, [hl+]                                      ; $4f73: $2a
	cp b                                             ; $4f74: $b8
	jr z, jr_004_4f7f                                ; $4f75: $28 $08

	inc c                                            ; $4f77: $0c
	ld a, c                                          ; $4f78: $79
	cp $07                                           ; $4f79: $fe $07
	jr nz, jr_004_4f73                               ; $4f7b: $20 $f6

	ld c, $06                                        ; $4f7d: $0e $06

jr_004_4f7f:
	ld a, c                                          ; $4f7f: $79
	ld hl, $4f63                                     ; $4f80: $21 $63 $4f
	call $ce99                                       ; $4f83: $cd $99 $ce
	ld a, [hl]                                       ; $4f86: $7e
	ret                                              ; $4f87: $c9


	ld hl, $a271                                     ; $4f88: $21 $71 $a2
	ld d, $20                                        ; $4f8b: $16 $20

Jump_004_4f8d:
	ld a, [hl]                                       ; $4f8d: $7e
	or a                                             ; $4f8e: $b7
	jp z, Jump_004_4f9e                              ; $4f8f: $ca $9e $4f

	dec a                                            ; $4f92: $3d
	ld [hl], a                                       ; $4f93: $77
	and a                                            ; $4f94: $a7
	jr nz, jr_004_4f9e                               ; $4f95: $20 $07

	push hl                                          ; $4f97: $e5
	inc hl                                           ; $4f98: $23
	xor a                                            ; $4f99: $af
	ld [hl+], a                                      ; $4f9a: $22
	ld [hl+], a                                      ; $4f9b: $22
	ld [hl], a                                       ; $4f9c: $77
	pop hl                                           ; $4f9d: $e1

Jump_004_4f9e:
jr_004_4f9e:
	inc hl                                           ; $4f9e: $23
	inc hl                                           ; $4f9f: $23
	inc hl                                           ; $4fa0: $23
	inc hl                                           ; $4fa1: $23
	dec d                                            ; $4fa2: $15
	jp nz, Jump_004_4f8d                             ; $4fa3: $c2 $8d $4f

	ret                                              ; $4fa6: $c9


	call Call_004_50a9                               ; $4fa7: $cd $a9 $50
	ld hl, $a271                                     ; $4faa: $21 $71 $a2
	ld d, $20                                        ; $4fad: $16 $20

Jump_004_4faf:
	ld a, [hl]                                       ; $4faf: $7e
	or a                                             ; $4fb0: $b7
	jp nz, Jump_004_5069                             ; $4fb1: $c2 $69 $50

	push hl                                          ; $4fb4: $e5
	inc hl                                           ; $4fb5: $23
	ld a, [$c0d0]                                    ; $4fb6: $fa $d0 $c0
	ld [hl+], a                                      ; $4fb9: $22
	ld a, [$c0d1]                                    ; $4fba: $fa $d1 $c0
	ld [hl+], a                                      ; $4fbd: $22
	ld a, [$c0d2]                                    ; $4fbe: $fa $d2 $c0
	ld [hl+], a                                      ; $4fc1: $22
	ld a, [$c0d1]                                    ; $4fc2: $fa $d1 $c0
	cp $0e                                           ; $4fc5: $fe $0e
	jr z, jr_004_4fcd                                ; $4fc7: $28 $04

	cp $0f                                           ; $4fc9: $fe $0f
	jr nz, jr_004_4fd2                               ; $4fcb: $20 $05

jr_004_4fcd:
	ld a, $18                                        ; $4fcd: $3e $18
	jp Jump_004_5065                                 ; $4fcf: $c3 $65 $50


jr_004_4fd2:
	cp $07                                           ; $4fd2: $fe $07
	jr nz, jr_004_4fe1                               ; $4fd4: $20 $0b

	ld a, [$c0d2]                                    ; $4fd6: $fa $d2 $c0
	or a                                             ; $4fd9: $b7
	jr z, jr_004_4fe1                                ; $4fda: $28 $05

	ld a, $18                                        ; $4fdc: $3e $18
	jp Jump_004_5065                                 ; $4fde: $c3 $65 $50


jr_004_4fe1:
	ld a, [$c0d1]                                    ; $4fe1: $fa $d1 $c0
	cp $00                                           ; $4fe4: $fe $00
	jr nz, jr_004_4fec                               ; $4fe6: $20 $04

	ld a, $00                                        ; $4fe8: $3e $00
	jr jr_004_5065                                   ; $4fea: $18 $79

jr_004_4fec:
	ld a, [$c0d0]                                    ; $4fec: $fa $d0 $c0
	cp $06                                           ; $4fef: $fe $06
	jr nz, jr_004_4ffe                               ; $4ff1: $20 $0b

	ld a, [$c0d1]                                    ; $4ff3: $fa $d1 $c0
	cp $11                                           ; $4ff6: $fe $11
	jr nz, jr_004_4ffe                               ; $4ff8: $20 $04

	ld a, $00                                        ; $4ffa: $3e $00
	jr jr_004_5065                                   ; $4ffc: $18 $67

jr_004_4ffe:
	ld a, [$c0d0]                                    ; $4ffe: $fa $d0 $c0
	cp $04                                           ; $5001: $fe $04
	jr z, jr_004_5009                                ; $5003: $28 $04

	cp $0b                                           ; $5005: $fe $0b
	jr nz, jr_004_501a                               ; $5007: $20 $11

jr_004_5009:
	ld a, [$c0d1]                                    ; $5009: $fa $d1 $c0
	cp $0d                                           ; $500c: $fe $0d
	jr nz, jr_004_501a                               ; $500e: $20 $0a

	ld a, [$c0d2]                                    ; $5010: $fa $d2 $c0
	or a                                             ; $5013: $b7
	jr nz, jr_004_501a                               ; $5014: $20 $04

	ld a, $04                                        ; $5016: $3e $04
	jr jr_004_5065                                   ; $5018: $18 $4b

jr_004_501a:
	ld a, [$c0d0]                                    ; $501a: $fa $d0 $c0
	cp $0a                                           ; $501d: $fe $0a
	jr nz, jr_004_5033                               ; $501f: $20 $12

	ld a, [$c0d1]                                    ; $5021: $fa $d1 $c0
	cp $0d                                           ; $5024: $fe $0d
	jr nz, jr_004_5033                               ; $5026: $20 $0b

	ld a, [$c0d2]                                    ; $5028: $fa $d2 $c0
	cp $01                                           ; $502b: $fe $01
	jr nz, jr_004_5033                               ; $502d: $20 $04

	ld a, $04                                        ; $502f: $3e $04
	jr jr_004_5065                                   ; $5031: $18 $32

jr_004_5033:
	ld a, [$c0d0]                                    ; $5033: $fa $d0 $c0
	cp $08                                           ; $5036: $fe $08
	jr nz, jr_004_5050                               ; $5038: $20 $16

	ld a, [$c0d1]                                    ; $503a: $fa $d1 $c0
	cp $0c                                           ; $503d: $fe $0c
	jr nz, jr_004_5050                               ; $503f: $20 $0f

	ld a, [$c0d2]                                    ; $5041: $fa $d2 $c0
	cp $04                                           ; $5044: $fe $04
	jr z, jr_004_504c                                ; $5046: $28 $04

	cp $05                                           ; $5048: $fe $05
	jr nz, jr_004_5050                               ; $504a: $20 $04

jr_004_504c:
	ld a, $04                                        ; $504c: $3e $04
	jr jr_004_5065                                   ; $504e: $18 $15

jr_004_5050:
	ld a, [$c0d1]                                    ; $5050: $fa $d1 $c0
	ld b, a                                          ; $5053: $47
	ld a, [$c0d2]                                    ; $5054: $fa $d2 $c0
	ld c, a                                          ; $5057: $4f
	ld a, [$c0d0]                                    ; $5058: $fa $d0 $c0
	call Call_004_53fe                               ; $505b: $cd $fe $53
	ld hl, $5266                                     ; $505e: $21 $66 $52
	call $ce99                                       ; $5061: $cd $99 $ce
	ld a, [hl]                                       ; $5064: $7e

Jump_004_5065:
jr_004_5065:
	pop hl                                           ; $5065: $e1
	ld [hl], a                                       ; $5066: $77
	jr jr_004_5071                                   ; $5067: $18 $08

Jump_004_5069:
	inc hl                                           ; $5069: $23
	inc hl                                           ; $506a: $23
	inc hl                                           ; $506b: $23
	inc hl                                           ; $506c: $23
	dec d                                            ; $506d: $15
	jp nz, Jump_004_4faf                             ; $506e: $c2 $af $4f

jr_004_5071:
	ret                                              ; $5071: $c9


Jump_004_5072:
	call Call_004_50a9                               ; $5072: $cd $a9 $50
	ld hl, $a271                                     ; $5075: $21 $71 $a2
	ld d, $20                                        ; $5078: $16 $20

jr_004_507a:
	push hl                                          ; $507a: $e5
	ld a, [hl+]                                      ; $507b: $2a
	or a                                             ; $507c: $b7
	jp z, Jump_004_509b                              ; $507d: $ca $9b $50

	ld a, [hl+]                                      ; $5080: $2a
	ld b, a                                          ; $5081: $47
	ld a, [$c0d0]                                    ; $5082: $fa $d0 $c0
	cp b                                             ; $5085: $b8
	jr nz, jr_004_509b                               ; $5086: $20 $13

	ld a, [hl+]                                      ; $5088: $2a
	ld b, a                                          ; $5089: $47
	ld a, [$c0d1]                                    ; $508a: $fa $d1 $c0
	cp b                                             ; $508d: $b8
	jr nz, jr_004_509b                               ; $508e: $20 $0b

	ld a, [hl]                                       ; $5090: $7e
	ld b, a                                          ; $5091: $47
	ld a, [$c0d2]                                    ; $5092: $fa $d2 $c0
	cp b                                             ; $5095: $b8
	jr nz, jr_004_509b                               ; $5096: $20 $03

	pop hl                                           ; $5098: $e1
	jr jr_004_50a5                                   ; $5099: $18 $0a

Jump_004_509b:
jr_004_509b:
	pop hl                                           ; $509b: $e1
	inc hl                                           ; $509c: $23
	inc hl                                           ; $509d: $23
	inc hl                                           ; $509e: $23
	inc hl                                           ; $509f: $23
	dec d                                            ; $50a0: $15
	jr nz, jr_004_507a                               ; $50a1: $20 $d7

	xor a                                            ; $50a3: $af
	ret                                              ; $50a4: $c9


jr_004_50a5:
	ld a, $01                                        ; $50a5: $3e $01
	scf                                              ; $50a7: $37
	ret                                              ; $50a8: $c9


Call_004_50a9:
	ld [$c0d0], a                                    ; $50a9: $ea $d0 $c0
	ld a, b                                          ; $50ac: $78
	ld [$c0d1], a                                    ; $50ad: $ea $d1 $c0
	ld a, c                                          ; $50b0: $79
	ld [$c0d2], a                                    ; $50b1: $ea $d2 $c0
	ret                                              ; $50b4: $c9


	push af                                          ; $50b5: $f5
	ld hl, $526b                                     ; $50b6: $21 $6b $52
	call $ce99                                       ; $50b9: $cd $99 $ce
	ld c, [hl]                                       ; $50bc: $4e
	ld b, $09                                        ; $50bd: $06 $09
	jr jr_004_50d7                                   ; $50bf: $18 $16

	push af                                          ; $50c1: $f5
	ld hl, $5279                                     ; $50c2: $21 $79 $52
	call $ce99                                       ; $50c5: $cd $99 $ce
	ld c, [hl]                                       ; $50c8: $4e
	ld b, $02                                        ; $50c9: $06 $02
	jr jr_004_50d7                                   ; $50cb: $18 $0a

	push af                                          ; $50cd: $f5
	ld hl, $5287                                     ; $50ce: $21 $87 $52
	call $ce99                                       ; $50d1: $cd $99 $ce
	ld c, [hl]                                       ; $50d4: $4e
	ld b, $0c                                        ; $50d5: $06 $0c

jr_004_50d7:
	pop af                                           ; $50d7: $f1
	jp Jump_004_5072                                 ; $50d8: $c3 $72 $50


Call_004_50db:
	ld a, [$a224]                                    ; $50db: $fa $24 $a2
	ld [$d081], a                                    ; $50de: $ea $81 $d0
	ld a, [$a226]                                    ; $50e1: $fa $26 $a2
	ld [$d082], a                                    ; $50e4: $ea $82 $d0
	ld a, [$a228]                                    ; $50e7: $fa $28 $a2
	ld [$d083], a                                    ; $50ea: $ea $83 $d0

jr_004_50ed:
	rst FarCall                                          ; $50ed: $f7
	rst SubAFromHL                                          ; $50ee: $d7
	ld b, a                                          ; $50ef: $47
	dec b                                            ; $50f0: $05
	ld a, [$d084]                                    ; $50f1: $fa $84 $d0
	and a                                            ; $50f4: $a7
	ret z                                            ; $50f5: $c8

	rst FarCall                                          ; $50f6: $f7
	and e                                            ; $50f7: $a3
	ld c, e                                          ; $50f8: $4b
	dec b                                            ; $50f9: $05
	jr jr_004_50ed                                   ; $50fa: $18 $f1

	ret                                              ; $50fc: $c9


	call Call_004_50db                               ; $50fd: $cd $db $50
	ld a, [$d089]                                    ; $5100: $fa $89 $d0
	and a                                            ; $5103: $a7
	jr nz, jr_004_510f                               ; $5104: $20 $09

	ld a, [$d08a]                                    ; $5106: $fa $8a $d0
	and a                                            ; $5109: $a7
	jr nz, jr_004_510f                               ; $510a: $20 $03

	xor a                                            ; $510c: $af
	jr jr_004_5111                                   ; $510d: $18 $02

jr_004_510f:
	ld a, $01                                        ; $510f: $3e $01

jr_004_5111:
	call $3b89                                       ; $5111: $cd $89 $3b
	ret                                              ; $5114: $c9


	push af                                          ; $5115: $f5
	push bc                                          ; $5116: $c5
	call Call_004_50db                               ; $5117: $cd $db $50
	pop bc                                           ; $511a: $c1
	pop af                                           ; $511b: $f1
	ld [$d08b], a                                    ; $511c: $ea $8b $d0
	ld a, b                                          ; $511f: $78
	ld [$d08c], a                                    ; $5120: $ea $8c $d0
	ld a, $01                                        ; $5123: $3e $01
	ld [$d08d], a                                    ; $5125: $ea $8d $d0
	rst FarCall                                          ; $5128: $f7
	and a                                            ; $5129: $a7
	ld c, c                                          ; $512a: $49
	dec b                                            ; $512b: $05
	call $3b89                                       ; $512c: $cd $89 $3b
	ret                                              ; $512f: $c9


	call Call_004_50db                               ; $5130: $cd $db $50
	ld a, [$d082]                                    ; $5133: $fa $82 $d0
	inc a                                            ; $5136: $3c
	call $3b89                                       ; $5137: $cd $89 $3b
	ret                                              ; $513a: $c9


	ld a, [$d22c]                                    ; $513b: $fa $2c $d2
	ld b, a                                          ; $513e: $47
	ld a, [$d22e]                                    ; $513f: $fa $2e $d2
	ld c, a                                          ; $5142: $4f
	push bc                                          ; $5143: $c5
	ld a, $ff                                        ; $5144: $3e $ff
	ld [wTaskParam5_word1], a                                    ; $5146: $ea $c6 $d0
	ld [wTaskParam5_word1+1], a                                    ; $5149: $ea $c7 $d0
	ld [$d0c8], a                                    ; $514c: $ea $c8 $d0
	ld a, [$a22e]                                    ; $514f: $fa $2e $a2
	and a                                            ; $5152: $a7
	jp z, Jump_004_51d9                              ; $5153: $ca $d9 $51

	rst FarCall                                          ; $5156: $f7
	db $e4                                           ; $5157: $e4
	ld c, c                                          ; $5158: $49
	dec b                                            ; $5159: $05
	ld a, [$a224]                                    ; $515a: $fa $24 $a2
	swap a                                           ; $515d: $cb $37
	ld d, a                                          ; $515f: $57
	ld a, [$a226]                                    ; $5160: $fa $26 $a2
	or d                                             ; $5163: $b2
	ld d, a                                          ; $5164: $57
	ld a, [$a228]                                    ; $5165: $fa $28 $a2
	ld e, a                                          ; $5168: $5f
	xor a                                            ; $5169: $af
	ld [$c0d0], a                                    ; $516a: $ea $d0 $c0
	ld hl, $a22f                                     ; $516d: $21 $2f $a2

jr_004_5170:
	ld a, [hl+]                                      ; $5170: $2a
	ld c, a                                          ; $5171: $4f
	ld b, [hl]                                       ; $5172: $46
	call wCpBCtoDE                                       ; $5173: $cd $8c $ce
	jr nc, jr_004_518b                               ; $5176: $30 $13

	ld a, $03                                        ; $5178: $3e $03
	rst AddAOntoHL                                          ; $517a: $ef
	ld a, [$c0d0]                                    ; $517b: $fa $d0 $c0
	inc a                                            ; $517e: $3c
	ld [$c0d0], a                                    ; $517f: $ea $d0 $c0
	ld b, a                                          ; $5182: $47
	ld a, [$a22e]                                    ; $5183: $fa $2e $a2
	cp b                                             ; $5186: $b8
	jr z, jr_004_51d9                                ; $5187: $28 $50

	jr jr_004_5170                                   ; $5189: $18 $e5

jr_004_518b:
	dec hl                                           ; $518b: $2b
	ld b, d                                          ; $518c: $42
	ld c, e                                          ; $518d: $4b
	call Call_004_520a                               ; $518e: $cd $0a $52
	cp $03                                           ; $5191: $fe $03
	jr z, jr_004_51d9                                ; $5193: $28 $44

	ld [$c0d1], a                                    ; $5195: $ea $d1 $c0
	ld e, $00                                        ; $5198: $1e $00

jr_004_519a:
	ld c, [hl]                                       ; $519a: $4e
	inc hl                                           ; $519b: $23
	ld b, [hl]                                       ; $519c: $46
	call Call_004_520a                               ; $519d: $cd $0a $52
	and a                                            ; $51a0: $a7
	jr z, jr_004_51aa                                ; $51a1: $28 $07

	ld b, a                                          ; $51a3: $47
	ld a, [$c0d1]                                    ; $51a4: $fa $d1 $c0
	cp b                                             ; $51a7: $b8
	jr nz, jr_004_51c8                               ; $51a8: $20 $1e

jr_004_51aa:
	push hl                                          ; $51aa: $e5
	ld a, [$c0d0]                                    ; $51ab: $fa $d0 $c0
	ld b, a                                          ; $51ae: $47
	ld c, $04                                        ; $51af: $0e $04
	call BCequBtimesC                                       ; $51b1: $cd $5f $12
	ld hl, $a232                                     ; $51b4: $21 $32 $a2
	add hl, bc                                       ; $51b7: $09
	ld a, [hl]                                       ; $51b8: $7e
	push af                                          ; $51b9: $f5
	ld hl, wTaskParam5_word1                                     ; $51ba: $21 $c6 $d0
	ld a, e                                          ; $51bd: $7b
	rst AddAOntoHL                                          ; $51be: $ef
	pop af                                           ; $51bf: $f1
	ld [hl], a                                       ; $51c0: $77
	pop hl                                           ; $51c1: $e1
	inc e                                            ; $51c2: $1c
	ld a, $03                                        ; $51c3: $3e $03
	cp e                                             ; $51c5: $bb
	jr z, jr_004_51d9                                ; $51c6: $28 $11

jr_004_51c8:
	ld a, $03                                        ; $51c8: $3e $03
	rst AddAOntoHL                                          ; $51ca: $ef
	ld a, [$c0d0]                                    ; $51cb: $fa $d0 $c0
	inc a                                            ; $51ce: $3c
	ld [$c0d0], a                                    ; $51cf: $ea $d0 $c0
	ld b, a                                          ; $51d2: $47
	ld a, [$a22e]                                    ; $51d3: $fa $2e $a2
	cp b                                             ; $51d6: $b8
	jr nz, jr_004_519a                               ; $51d7: $20 $c1

Jump_004_51d9:
jr_004_51d9:
	pop bc                                           ; $51d9: $c1
	ld a, b                                          ; $51da: $78
	ld [$d22c], a                                    ; $51db: $ea $2c $d2
	ld a, c                                          ; $51de: $79
	ld [$d22e], a                                    ; $51df: $ea $2e $d2
	ld hl, wTaskParam5_word1                                     ; $51e2: $21 $c6 $d0
	ld a, [hl+]                                      ; $51e5: $2a
	ld b, a                                          ; $51e6: $47
	ld a, [hl]                                       ; $51e7: $7e
	cp b                                             ; $51e8: $b8
	call z, Call_004_5207                            ; $51e9: $cc $07 $52
	inc hl                                           ; $51ec: $23
	ld a, [hl]                                       ; $51ed: $7e
	cp b                                             ; $51ee: $b8
	call z, Call_004_5207                            ; $51ef: $cc $07 $52
	dec hl                                           ; $51f2: $2b
	ld b, [hl]                                       ; $51f3: $46
	cp b                                             ; $51f4: $b8
	call z, Call_004_5207                            ; $51f5: $cc $07 $52
	ld a, [wTaskParam5_word1+1]                                    ; $51f8: $fa $c7 $d0
	cp $ff                                           ; $51fb: $fe $ff
	jr nz, jr_004_5206                               ; $51fd: $20 $07

	ld hl, $d0c8                                     ; $51ff: $21 $c8 $d0
	ld a, [hl-]                                      ; $5202: $3a
	ld [hl+], a                                      ; $5203: $22
	ld [hl], $ff                                     ; $5204: $36 $ff

jr_004_5206:
	ret                                              ; $5206: $c9


Call_004_5207:
	ld [hl], $ff                                     ; $5207: $36 $ff
	ret                                              ; $5209: $c9


Call_004_520a:
	ld a, b                                          ; $520a: $78
	and $0f                                          ; $520b: $e6 $0f
	ld [$d22c], a                                    ; $520d: $ea $2c $d2
	ld a, c                                          ; $5210: $79
	ld [$d22e], a                                    ; $5211: $ea $2e $d2
	ld a, b                                          ; $5214: $78
	and $0f                                          ; $5215: $e6 $0f
	cp $07                                           ; $5217: $fe $07
	jr nz, jr_004_5223                               ; $5219: $20 $08

	ld a, c                                          ; $521b: $79
	cp $07                                           ; $521c: $fe $07
	jr nc, jr_004_5223                               ; $521e: $30 $03

	ld a, $03                                        ; $5220: $3e $03
	ret                                              ; $5222: $c9


jr_004_5223:
	push hl                                          ; $5223: $e5
	push de                                          ; $5224: $d5
	rst FarCall                                          ; $5225: $f7
	pop hl                                           ; $5226: $e1
	ld d, [hl]                                       ; $5227: $56
	dec b                                            ; $5228: $05
	pop de                                           ; $5229: $d1
	pop hl                                           ; $522a: $e1
	ret                                              ; $522b: $c9


	ld hl, wTaskParam5_word1                                     ; $522c: $21 $c6 $d0
	ld b, $00                                        ; $522f: $06 $00
	ld c, $03                                        ; $5231: $0e $03

jr_004_5233:
	ld a, [hl+]                                      ; $5233: $2a
	cp $ff                                           ; $5234: $fe $ff
	jr z, jr_004_523c                                ; $5236: $28 $04

	inc b                                            ; $5238: $04
	dec c                                            ; $5239: $0d
	jr nz, jr_004_5233                               ; $523a: $20 $f7

jr_004_523c:
	ld a, b                                          ; $523c: $78
	ret                                              ; $523d: $c9


	dec a                                            ; $523e: $3d
	ld hl, wTaskParam5_word1                                     ; $523f: $21 $c6 $d0
	rst AddAOntoHL                                          ; $5242: $ef
	ld a, [hl]                                       ; $5243: $7e
	ret                                              ; $5244: $c9


	push af                                          ; $5245: $f5
	srl a                                            ; $5246: $cb $3f
	srl a                                            ; $5248: $cb $3f
	srl a                                            ; $524a: $cb $3f
	ld hl, $a39d                                     ; $524c: $21 $9d $a3
	rst AddAOntoHL                                          ; $524f: $ef
	ld b, [hl]                                       ; $5250: $46
	pop af                                           ; $5251: $f1
	and $07                                          ; $5252: $e6 $07
	ld hl, $525e                                     ; $5254: $21 $5e $52
	rst AddAOntoHL                                          ; $5257: $ef
	ld a, [hl]                                       ; $5258: $7e
	and b                                            ; $5259: $a0
	ret z                                            ; $525a: $c8

	ld a, $01                                        ; $525b: $3e $01
	ret                                              ; $525d: $c9


	ld bc, $0402                                     ; $525e: $01 $02 $04
	ld [$2010], sp                                   ; $5261: $08 $10 $20
	ld b, b                                          ; $5264: $40
	add b                                            ; $5265: $80
	inc c                                            ; $5266: $0c
	dec c                                            ; $5267: $0d
	ld c, $0f                                        ; $5268: $0e $0f
	db $10                                           ; $526a: $10
	ld [bc], a                                       ; $526b: $02
	ld [bc], a                                       ; $526c: $02
	ld [bc], a                                       ; $526d: $02
	ld [bc], a                                       ; $526e: $02
	ld [bc], a                                       ; $526f: $02
	ld [bc], a                                       ; $5270: $02
	ld [bc], a                                       ; $5271: $02
	ld [bc], a                                       ; $5272: $02
	ld bc, $0102                                     ; $5273: $01 $02 $01
	ld [bc], a                                       ; $5276: $02
	ld bc, $0002                                     ; $5277: $01 $02 $00
	ld bc, $0002                                     ; $527a: $01 $02 $00
	ld bc, $0101                                     ; $527d: $01 $01 $01
	nop                                              ; $5280: $00
	ld bc, $0101                                     ; $5281: $01 $01 $01
	nop                                              ; $5284: $00
	nop                                              ; $5285: $00
	ld bc, $0301                                     ; $5286: $01 $01 $03
	dec b                                            ; $5289: $05
	ld bc, $0302                                     ; $528a: $01 $02 $03
	ld bc, $0103                                     ; $528d: $01 $03 $01
	inc bc                                           ; $5290: $03
	ld bc, $0503                                     ; $5291: $01 $03 $05
	inc b                                            ; $5294: $04
	or c                                             ; $5295: $b1
	ld d, d                                          ; $5296: $52
	add $52                                          ; $5297: $c6 $52
	db $db                                           ; $5299: $db
	ld d, d                                          ; $529a: $52
	ldh a, [rHDMA2]                                  ; $529b: $f0 $52
	dec b                                            ; $529d: $05
	ld d, e                                          ; $529e: $53
	ld a, [de]                                       ; $529f: $1a
	ld d, e                                          ; $52a0: $53
	cpl                                              ; $52a1: $2f
	ld d, e                                          ; $52a2: $53
	ld b, h                                          ; $52a3: $44
	ld d, e                                          ; $52a4: $53
	ld e, c                                          ; $52a5: $59
	ld d, e                                          ; $52a6: $53
	ld l, [hl]                                       ; $52a7: $6e
	ld d, e                                          ; $52a8: $53
	add e                                            ; $52a9: $83
	ld d, e                                          ; $52aa: $53
	sbc b                                            ; $52ab: $98
	ld d, e                                          ; $52ac: $53
	xor l                                            ; $52ad: $ad
	ld d, e                                          ; $52ae: $53
	jp nz, $cc53                                     ; $52af: $c2 $53 $cc

	or e                                             ; $52b2: $b3
	or e                                             ; $52b3: $b3
	or e                                             ; $52b4: $b3
	or e                                             ; $52b5: $b3
	add b                                            ; $52b6: $80
	or e                                             ; $52b7: $b3
	add b                                            ; $52b8: $80
	add b                                            ; $52b9: $80
	ld h, [hl]                                       ; $52ba: $66
	add b                                            ; $52bb: $80
	add b                                            ; $52bc: $80
	or e                                             ; $52bd: $b3
	ld h, [hl]                                       ; $52be: $66
	or e                                             ; $52bf: $b3
	or e                                             ; $52c0: $b3
	or e                                             ; $52c1: $b3
	call z, $80cc                                    ; $52c2: $cc $cc $80
	call z, wMemCopies+3*(NUM_WRAM_MEM_COPIES-$20)                                    ; $52c5: $cc $80 $cc
	or e                                             ; $52c8: $b3
	or e                                             ; $52c9: $b3
	or e                                             ; $52ca: $b3
	or e                                             ; $52cb: $b3
	or e                                             ; $52cc: $b3
	or e                                             ; $52cd: $b3
	call z, $664c                                    ; $52ce: $cc $4c $66
	ld h, [hl]                                       ; $52d1: $66
	add b                                            ; $52d2: $80
	or e                                             ; $52d3: $b3
	call z, $6680                                    ; $52d4: $cc $80 $66
	ld h, [hl]                                       ; $52d7: $66
	call z, $0080                                    ; $52d8: $cc $80 $00
	ld h, [hl]                                       ; $52db: $66
	add b                                            ; $52dc: $80
	ld h, [hl]                                       ; $52dd: $66
	add b                                            ; $52de: $80
	or e                                             ; $52df: $b3
	or e                                             ; $52e0: $b3
	or e                                             ; $52e1: $b3
	add b                                            ; $52e2: $80
	or e                                             ; $52e3: $b3
	add b                                            ; $52e4: $80
	add b                                            ; $52e5: $80
	ld h, [hl]                                       ; $52e6: $66
	ld h, [hl]                                       ; $52e7: $66
	ld c, h                                          ; $52e8: $4c
	or e                                             ; $52e9: $b3
	add b                                            ; $52ea: $80
	add b                                            ; $52eb: $80
	add b                                            ; $52ec: $80
	add b                                            ; $52ed: $80
	ld h, [hl]                                       ; $52ee: $66
	nop                                              ; $52ef: $00
	add b                                            ; $52f0: $80
	or e                                             ; $52f1: $b3
	add b                                            ; $52f2: $80
	add b                                            ; $52f3: $80
	or e                                             ; $52f4: $b3
	add b                                            ; $52f5: $80
	or e                                             ; $52f6: $b3
	call z, $8066                                    ; $52f7: $cc $66 $80
	or e                                             ; $52fa: $b3
	call z, $8080                                    ; $52fb: $cc $80 $80
	add b                                            ; $52fe: $80
	or e                                             ; $52ff: $b3
	ld h, $26                                        ; $5300: $26 $26
	or e                                             ; $5302: $b3
	or e                                             ; $5303: $b3
	nop                                              ; $5304: $00
	or e                                             ; $5305: $b3
	or e                                             ; $5306: $b3
	add b                                            ; $5307: $80
	or e                                             ; $5308: $b3
	ld h, [hl]                                       ; $5309: $66
	ld h, [hl]                                       ; $530a: $66
	or e                                             ; $530b: $b3
	ld h, [hl]                                       ; $530c: $66
	add b                                            ; $530d: $80
	add b                                            ; $530e: $80
	or e                                             ; $530f: $b3
	ld h, [hl]                                       ; $5310: $66
	add b                                            ; $5311: $80
	call z, $8080                                    ; $5312: $cc $80 $80
	or e                                             ; $5315: $b3
	or e                                             ; $5316: $b3
	or e                                             ; $5317: $b3
	or e                                             ; $5318: $b3
	or e                                             ; $5319: $b3
	or e                                             ; $531a: $b3
	call z, $b3b3                                    ; $531b: $cc $b3 $b3
	or e                                             ; $531e: $b3
	or e                                             ; $531f: $b3
	or e                                             ; $5320: $b3
	or e                                             ; $5321: $b3
	or e                                             ; $5322: $b3
	ld c, h                                          ; $5323: $4c
	ld h, [hl]                                       ; $5324: $66
	ld h, [hl]                                       ; $5325: $66
	or e                                             ; $5326: $b3
	or e                                             ; $5327: $b3
	or e                                             ; $5328: $b3
	add b                                            ; $5329: $80
	or e                                             ; $532a: $b3
	or e                                             ; $532b: $b3
	call z, $8080                                    ; $532c: $cc $80 $80
	ld h, [hl]                                       ; $532f: $66
	add b                                            ; $5330: $80
	or e                                             ; $5331: $b3
	or e                                             ; $5332: $b3
	add b                                            ; $5333: $80
	or e                                             ; $5334: $b3
	add b                                            ; $5335: $80
	add b                                            ; $5336: $80
	ld h, [hl]                                       ; $5337: $66
	add b                                            ; $5338: $80
	or e                                             ; $5339: $b3
	add b                                            ; $533a: $80
	add b                                            ; $533b: $80
	ld h, [hl]                                       ; $533c: $66
	or e                                             ; $533d: $b3
	or e                                             ; $533e: $b3
	call z, $b3cc                                    ; $533f: $cc $cc $b3
	call z, Call_004_4ccc                            ; $5342: $cc $cc $4c
	ld h, [hl]                                       ; $5345: $66
	add b                                            ; $5346: $80
	add b                                            ; $5347: $80
	ld h, [hl]                                       ; $5348: $66
	ld h, [hl]                                       ; $5349: $66
	add b                                            ; $534a: $80
	add b                                            ; $534b: $80
	ld h, [hl]                                       ; $534c: $66
	or e                                             ; $534d: $b3
	ld h, [hl]                                       ; $534e: $66
	add b                                            ; $534f: $80
	add b                                            ; $5350: $80
	ld h, [hl]                                       ; $5351: $66
	or e                                             ; $5352: $b3
	or e                                             ; $5353: $b3
	or e                                             ; $5354: $b3
	call z, Call_004_66b3                            ; $5355: $cc $b3 $66
	call z, $664c                                    ; $5358: $cc $4c $66
	or e                                             ; $535b: $b3
	or e                                             ; $535c: $b3
	or e                                             ; $535d: $b3
	add b                                            ; $535e: $80
	add b                                            ; $535f: $80
	add b                                            ; $5360: $80
	ld h, [hl]                                       ; $5361: $66
	or e                                             ; $5362: $b3
	or e                                             ; $5363: $b3
	call z, Call_004_66b3                            ; $5364: $cc $b3 $66
	add b                                            ; $5367: $80
	call z, $ccb3                                    ; $5368: $cc $b3 $cc
	call z, $b380                                    ; $536b: $cc $80 $b3
	or e                                             ; $536e: $b3
	or e                                             ; $536f: $b3
	call z, $ccb3                                    ; $5370: $cc $b3 $cc
	or e                                             ; $5373: $b3
	call z, Call_004_6666                            ; $5374: $cc $66 $66
	or e                                             ; $5377: $b3
	add b                                            ; $5378: $80
	ld h, [hl]                                       ; $5379: $66
	or e                                             ; $537a: $b3
	ld h, [hl]                                       ; $537b: $66
	or e                                             ; $537c: $b3
	or e                                             ; $537d: $b3
	add b                                            ; $537e: $80
	add b                                            ; $537f: $80
	or e                                             ; $5380: $b3
	add b                                            ; $5381: $80
	nop                                              ; $5382: $00
	add b                                            ; $5383: $80
	or e                                             ; $5384: $b3
	or e                                             ; $5385: $b3
	or e                                             ; $5386: $b3
	or e                                             ; $5387: $b3
	ld h, [hl]                                       ; $5388: $66
	add b                                            ; $5389: $80
	ld c, h                                          ; $538a: $4c
	ld c, h                                          ; $538b: $4c
	call z, $b3b3                                    ; $538c: $cc $b3 $b3
	call z, $b3b3                                    ; $538f: $cc $b3 $b3
	add b                                            ; $5392: $80
	call z, $cccc                                    ; $5393: $cc $cc $cc
	or e                                             ; $5396: $b3
	call z, $8080                                    ; $5397: $cc $80 $80
	or e                                             ; $539a: $b3
	ld h, [hl]                                       ; $539b: $66
	ld c, h                                          ; $539c: $4c
	add b                                            ; $539d: $80
	or e                                             ; $539e: $b3
	or e                                             ; $539f: $b3
	or e                                             ; $53a0: $b3
	ld h, [hl]                                       ; $53a1: $66
	add b                                            ; $53a2: $80
	or e                                             ; $53a3: $b3
	or e                                             ; $53a4: $b3
	call z, $b3b3                                    ; $53a5: $cc $b3 $b3
	call z, $b3b3                                    ; $53a8: $cc $b3 $b3
	or e                                             ; $53ab: $b3
	or e                                             ; $53ac: $b3
	ld h, [hl]                                       ; $53ad: $66
	add b                                            ; $53ae: $80
	add b                                            ; $53af: $80
	add b                                            ; $53b0: $80
	ld h, [hl]                                       ; $53b1: $66
	add b                                            ; $53b2: $80
	or e                                             ; $53b3: $b3
	ld h, [hl]                                       ; $53b4: $66
	add b                                            ; $53b5: $80
	add b                                            ; $53b6: $80
	or e                                             ; $53b7: $b3
	or e                                             ; $53b8: $b3
	add b                                            ; $53b9: $80
	add b                                            ; $53ba: $80
	add b                                            ; $53bb: $80
	or e                                             ; $53bc: $b3
	or e                                             ; $53bd: $b3
	call z, $80cc                                    ; $53be: $cc $cc $80
	or e                                             ; $53c1: $b3
	or e                                             ; $53c2: $b3
	or e                                             ; $53c3: $b3
	add b                                            ; $53c4: $80
	or e                                             ; $53c5: $b3
	call z, $ccb3                                    ; $53c6: $cc $b3 $cc
	ld h, [hl]                                       ; $53c9: $66
	add b                                            ; $53ca: $80
	add b                                            ; $53cb: $80
	add b                                            ; $53cc: $80
	add b                                            ; $53cd: $80
	or e                                             ; $53ce: $b3
	add b                                            ; $53cf: $80
	add b                                            ; $53d0: $80
	add b                                            ; $53d1: $80
	add b                                            ; $53d2: $80
	or e                                             ; $53d3: $b3
	or e                                             ; $53d4: $b3
	ld h, [hl]                                       ; $53d5: $66
	or e                                             ; $53d6: $b3
	xor a                                            ; $53d7: $af
	ld [$d0a1], a                                    ; $53d8: $ea $a1 $d0
	ld [$d0a2], a                                    ; $53db: $ea $a2 $d0
	ld [$d0a3], a                                    ; $53de: $ea $a3 $d0
	ret                                              ; $53e1: $c9


	xor $ff                                          ; $53e2: $ee $ff
	inc a                                            ; $53e4: $3c
	ld hl, $d0a1                                     ; $53e5: $21 $a1 $d0
	jr jr_004_53fa                                   ; $53e8: $18 $10

	xor $ff                                          ; $53ea: $ee $ff
	inc a                                            ; $53ec: $3c
	ld hl, $d0a2                                     ; $53ed: $21 $a2 $d0
	jr jr_004_53fa                                   ; $53f0: $18 $08

	xor $ff                                          ; $53f2: $ee $ff
	inc a                                            ; $53f4: $3c
	ld hl, $d0a3                                     ; $53f5: $21 $a3 $d0
	jr jr_004_53fa                                   ; $53f8: $18 $00

jr_004_53fa:
	ld b, [hl]                                       ; $53fa: $46
	add b                                            ; $53fb: $80
	ld [hl], a                                       ; $53fc: $77
	ret                                              ; $53fd: $c9


Call_004_53fe:
	push af                                          ; $53fe: $f5
	push bc                                          ; $53ff: $c5
	ld hl, $541c                                     ; $5400: $21 $1c $54
	ld a, b                                          ; $5403: $78
	sla a                                            ; $5404: $cb $27
	call $ce99                                       ; $5406: $cd $99 $ce
	ld a, [hl+]                                      ; $5409: $2a
	ld h, [hl]                                       ; $540a: $66
	ld l, a                                          ; $540b: $6f
	pop bc                                           ; $540c: $c1
	ld a, c                                          ; $540d: $79
	sla a                                            ; $540e: $cb $27
	call $ce99                                       ; $5410: $cd $99 $ce
	ld a, [hl+]                                      ; $5413: $2a
	ld h, [hl]                                       ; $5414: $66
	ld l, a                                          ; $5415: $6f
	pop af                                           ; $5416: $f1
	call $ce99                                       ; $5417: $cd $99 $ce
	ld a, [hl]                                       ; $541a: $7e
	ret                                              ; $541b: $c9


	ld b, [hl]                                       ; $541c: $46
	ld d, h                                          ; $541d: $54
	ld c, b                                          ; $541e: $48
	ld d, h                                          ; $541f: $54
	ld c, h                                          ; $5420: $4c
	ld d, h                                          ; $5421: $54
	ld d, d                                          ; $5422: $52
	ld d, h                                          ; $5423: $54
	ld d, h                                          ; $5424: $54
	ld d, h                                          ; $5425: $54
	ld d, [hl]                                       ; $5426: $56
	ld d, h                                          ; $5427: $54
	ld e, b                                          ; $5428: $58
	ld d, h                                          ; $5429: $54
	ld e, d                                          ; $542a: $5a
	ld d, h                                          ; $542b: $54
	ld h, d                                          ; $542c: $62
	ld d, h                                          ; $542d: $54
	ld h, h                                          ; $542e: $64
	ld d, h                                          ; $542f: $54
	ld l, d                                          ; $5430: $6a
	ld d, h                                          ; $5431: $54
	ld l, h                                          ; $5432: $6c
	ld d, h                                          ; $5433: $54
	ld l, [hl]                                       ; $5434: $6e
	ld d, h                                          ; $5435: $54
	ld a, [hl]                                       ; $5436: $7e
	ld d, h                                          ; $5437: $54
	add d                                            ; $5438: $82
	ld d, h                                          ; $5439: $54
	sbc b                                            ; $543a: $98
	ld d, h                                          ; $543b: $54
	xor h                                            ; $543c: $ac
	ld d, h                                          ; $543d: $54
	xor [hl]                                         ; $543e: $ae
	ld d, h                                          ; $543f: $54
	or b                                             ; $5440: $b0
	ld d, h                                          ; $5441: $54
	or h                                             ; $5442: $b4
	ld d, h                                          ; $5443: $54
	or [hl]                                          ; $5444: $b6
	ld d, h                                          ; $5445: $54
	cp b                                             ; $5446: $b8
	ld d, h                                          ; $5447: $54
	add $54                                          ; $5448: $c6 $54
	call nc, $e254                                   ; $544a: $d4 $54 $e2
	ld d, h                                          ; $544d: $54
	ldh a, [rHDMA4]                                  ; $544e: $f0 $54
	cp $54                                           ; $5450: $fe $54
	inc c                                            ; $5452: $0c
	ld d, l                                          ; $5453: $55
	ld a, [de]                                       ; $5454: $1a
	ld d, l                                          ; $5455: $55
	jr z, jr_004_54ad                                ; $5456: $28 $55

	ld [hl], $55                                     ; $5458: $36 $55
	ld b, h                                          ; $545a: $44
	ld d, l                                          ; $545b: $55
	ld d, d                                          ; $545c: $52
	ld d, l                                          ; $545d: $55
	ld h, b                                          ; $545e: $60
	ld d, l                                          ; $545f: $55
	ld l, [hl]                                       ; $5460: $6e
	ld d, l                                          ; $5461: $55
	ld a, h                                          ; $5462: $7c
	ld d, l                                          ; $5463: $55
	adc d                                            ; $5464: $8a
	ld d, l                                          ; $5465: $55
	sbc b                                            ; $5466: $98
	ld d, l                                          ; $5467: $55
	and [hl]                                         ; $5468: $a6
	ld d, l                                          ; $5469: $55
	or h                                             ; $546a: $b4
	ld d, l                                          ; $546b: $55
	jp nz, $d055                                     ; $546c: $c2 $55 $d0

	ld d, l                                          ; $546f: $55
	sbc $55                                          ; $5470: $de $55
	db $ec                                           ; $5472: $ec
	ld d, l                                          ; $5473: $55
	ld a, [$0855]                                    ; $5474: $fa $55 $08
	ld d, [hl]                                       ; $5477: $56
	ld d, $56                                        ; $5478: $16 $56
	inc h                                            ; $547a: $24
	ld d, [hl]                                       ; $547b: $56
	ld [hl-], a                                      ; $547c: $32
	ld d, [hl]                                       ; $547d: $56
	ld b, b                                          ; $547e: $40
	ld d, [hl]                                       ; $547f: $56
	ld c, [hl]                                       ; $5480: $4e
	ld d, [hl]                                       ; $5481: $56
	ld e, h                                          ; $5482: $5c
	ld d, [hl]                                       ; $5483: $56
	ld l, d                                          ; $5484: $6a
	ld d, [hl]                                       ; $5485: $56
	ld a, b                                          ; $5486: $78
	ld d, [hl]                                       ; $5487: $56
	add [hl]                                         ; $5488: $86
	ld d, [hl]                                       ; $5489: $56
	sub h                                            ; $548a: $94
	ld d, [hl]                                       ; $548b: $56
	and d                                            ; $548c: $a2
	ld d, [hl]                                       ; $548d: $56
	or b                                             ; $548e: $b0
	ld d, [hl]                                       ; $548f: $56
	cp [hl]                                          ; $5490: $be
	ld d, [hl]                                       ; $5491: $56
	call z, $da56                                    ; $5492: $cc $56 $da
	ld d, [hl]                                       ; $5495: $56
	add sp, $56                                      ; $5496: $e8 $56
	or $56                                           ; $5498: $f6 $56
	inc b                                            ; $549a: $04
	ld d, a                                          ; $549b: $57
	ld [de], a                                       ; $549c: $12
	ld d, a                                          ; $549d: $57
	jr nz, @+$59                                     ; $549e: $20 $57

	ld l, $57                                        ; $54a0: $2e $57
	inc a                                            ; $54a2: $3c
	ld d, a                                          ; $54a3: $57
	ld c, d                                          ; $54a4: $4a
	ld d, a                                          ; $54a5: $57
	ld e, b                                          ; $54a6: $58
	ld d, a                                          ; $54a7: $57
	ld h, [hl]                                       ; $54a8: $66
	ld d, a                                          ; $54a9: $57
	ld [hl], h                                       ; $54aa: $74
	ld d, a                                          ; $54ab: $57
	add d                                            ; $54ac: $82

jr_004_54ad:
	ld d, a                                          ; $54ad: $57
	sub b                                            ; $54ae: $90
	ld d, a                                          ; $54af: $57
	sbc [hl]                                         ; $54b0: $9e
	ld d, a                                          ; $54b1: $57
	xor h                                            ; $54b2: $ac
	ld d, a                                          ; $54b3: $57
	cp d                                             ; $54b4: $ba
	ld d, a                                          ; $54b5: $57
	ret z                                            ; $54b6: $c8

	ld d, a                                          ; $54b7: $57
	nop                                              ; $54b8: $00
	ld [bc], a                                       ; $54b9: $02
	inc bc                                           ; $54ba: $03
	ld [bc], a                                       ; $54bb: $02
	ld bc, $0301                                     ; $54bc: $01 $01 $03
	inc b                                            ; $54bf: $04
	inc b                                            ; $54c0: $04
	ld bc, $0202                                     ; $54c1: $01 $02 $02
	inc bc                                           ; $54c4: $03
	ld bc, $0001                                     ; $54c5: $01 $01 $00
	ld [bc], a                                       ; $54c8: $02
	ld bc, $0001                                     ; $54c9: $01 $01 $00
	ld [bc], a                                       ; $54cc: $02
	inc bc                                           ; $54cd: $03
	inc bc                                           ; $54ce: $03
	ld bc, $0201                                     ; $54cf: $01 $01 $02
	ld [bc], a                                       ; $54d2: $02
	ld bc, $0000                                     ; $54d3: $01 $00 $00
	ld [bc], a                                       ; $54d6: $02
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	nop                                              ; $54d9: $00
	ld bc, $0102                                     ; $54da: $01 $02 $01
	nop                                              ; $54dd: $00
	ld bc, $0001                                     ; $54de: $01 $01 $00
	ld bc, $0101                                     ; $54e1: $01 $01 $01
	inc bc                                           ; $54e4: $03
	ld [bc], a                                       ; $54e5: $02
	ld [bc], a                                       ; $54e6: $02
	ld bc, $0001                                     ; $54e7: $01 $01 $00
	ld bc, $0201                                     ; $54ea: $01 $01 $02
	ld bc, $0202                                     ; $54ed: $01 $02 $02
	ld bc, $0301                                     ; $54f0: $01 $01 $03
	ld [bc], a                                       ; $54f3: $02
	ld [bc], a                                       ; $54f4: $02
	ld bc, $0301                                     ; $54f5: $01 $01 $03
	ld bc, $0100                                     ; $54f8: $01 $00 $01
	ld bc, $0202                                     ; $54fb: $01 $02 $02
	inc bc                                           ; $54fe: $03
	inc bc                                           ; $54ff: $03
	nop                                              ; $5500: $00
	ld [bc], a                                       ; $5501: $02
	ld [bc], a                                       ; $5502: $02
	inc bc                                           ; $5503: $03
	inc b                                            ; $5504: $04
	inc b                                            ; $5505: $04
	inc b                                            ; $5506: $04
	inc bc                                           ; $5507: $03
	inc b                                            ; $5508: $04
	ld [bc], a                                       ; $5509: $02
	inc bc                                           ; $550a: $03
	ld [bc], a                                       ; $550b: $02
	ld bc, $0201                                     ; $550c: $01 $01 $02
	ld [bc], a                                       ; $550f: $02
	ld bc, $0101                                     ; $5510: $01 $01 $01
	ld [bc], a                                       ; $5513: $02
	ld bc, $0101                                     ; $5514: $01 $01 $01
	inc bc                                           ; $5517: $03
	ld [bc], a                                       ; $5518: $02
	ld bc, $0101                                     ; $5519: $01 $01 $01
	ld bc, $0301                                     ; $551c: $01 $01 $03
	ld bc, $0302                                     ; $551f: $01 $02 $03
	ld bc, $0100                                     ; $5522: $01 $00 $01
	inc b                                            ; $5525: $04
	inc bc                                           ; $5526: $03
	nop                                              ; $5527: $00
	ld [bc], a                                       ; $5528: $02
	ld bc, $0201                                     ; $5529: $01 $01 $02
	inc bc                                           ; $552c: $03
	ld bc, $0301                                     ; $552d: $01 $01 $03
	ld [bc], a                                       ; $5530: $02
	ld bc, $0203                                     ; $5531: $01 $03 $02
	ld [bc], a                                       ; $5534: $02
	ld bc, $0101                                     ; $5535: $01 $01 $01
	ld bc, $0101                                     ; $5538: $01 $01 $01
	ld bc, $0202                                     ; $553b: $01 $02 $02
	ld [bc], a                                       ; $553e: $02
	nop                                              ; $553f: $00
	ld [bc], a                                       ; $5540: $02
	ld bc, $0001                                     ; $5541: $01 $01 $00
	ld [bc], a                                       ; $5544: $02
	ld bc, $0002                                     ; $5545: $01 $02 $00
	inc bc                                           ; $5548: $03
	ld bc, $0202                                     ; $5549: $01 $02 $02
	ld [bc], a                                       ; $554c: $02
	inc bc                                           ; $554d: $03
	inc b                                            ; $554e: $04
	ld bc, $0303                                     ; $554f: $01 $03 $03
	inc bc                                           ; $5552: $03
	inc bc                                           ; $5553: $03
	ld bc, $0300                                     ; $5554: $01 $00 $03
	ld bc, $0303                                     ; $5557: $01 $03 $03
	ld bc, $0403                                     ; $555a: $01 $03 $04
	ld bc, $0302                                     ; $555d: $01 $02 $03
	ld [bc], a                                       ; $5560: $02
	ld [bc], a                                       ; $5561: $02
	ld [bc], a                                       ; $5562: $02
	nop                                              ; $5563: $00
	inc bc                                           ; $5564: $03
	ld bc, $0202                                     ; $5565: $01 $02 $02
	inc bc                                           ; $5568: $03
	inc bc                                           ; $5569: $03
	inc b                                            ; $556a: $04
	nop                                              ; $556b: $00
	inc bc                                           ; $556c: $03
	inc bc                                           ; $556d: $03
	ld [bc], a                                       ; $556e: $02
	ld bc, $0002                                     ; $556f: $01 $02 $00
	ld [bc], a                                       ; $5572: $02
	ld [bc], a                                       ; $5573: $02
	ld [bc], a                                       ; $5574: $02
	ld [bc], a                                       ; $5575: $02
	ld bc, $0202                                     ; $5576: $01 $02 $02
	ld [bc], a                                       ; $5579: $02
	ld bc, $0201                                     ; $557a: $01 $01 $02
	nop                                              ; $557d: $00
	ld bc, $0203                                     ; $557e: $01 $03 $02
	ld bc, $0303                                     ; $5581: $01 $03 $03
	inc bc                                           ; $5584: $03
	inc bc                                           ; $5585: $03
	inc b                                            ; $5586: $04
	ld bc, $0202                                     ; $5587: $01 $02 $02
	inc bc                                           ; $558a: $03
	inc b                                            ; $558b: $04
	ld [bc], a                                       ; $558c: $02
	ld [bc], a                                       ; $558d: $02
	ld [bc], a                                       ; $558e: $02
	inc b                                            ; $558f: $04
	ld [bc], a                                       ; $5590: $02
	ld [bc], a                                       ; $5591: $02
	ld bc, $0002                                     ; $5592: $01 $02 $00
	inc bc                                           ; $5595: $03
	ld [bc], a                                       ; $5596: $02
	ld [bc], a                                       ; $5597: $02
	ld [bc], a                                       ; $5598: $02
	inc b                                            ; $5599: $04
	ld [bc], a                                       ; $559a: $02
	ld [bc], a                                       ; $559b: $02
	ld [bc], a                                       ; $559c: $02
	inc b                                            ; $559d: $04
	ld bc, $0002                                     ; $559e: $01 $02 $00
	ld bc, $0300                                     ; $55a1: $01 $00 $03
	ld [bc], a                                       ; $55a4: $02
	ld [bc], a                                       ; $55a5: $02
	ld [bc], a                                       ; $55a6: $02
	inc b                                            ; $55a7: $04
	ld bc, $0202                                     ; $55a8: $01 $02 $02
	inc bc                                           ; $55ab: $03
	ld [bc], a                                       ; $55ac: $02
	nop                                              ; $55ad: $00
	ld [bc], a                                       ; $55ae: $02
	ld [bc], a                                       ; $55af: $02
	ld bc, $0103                                     ; $55b0: $01 $03 $01
	ld bc, $0302                                     ; $55b3: $01 $02 $03
	ld [bc], a                                       ; $55b6: $02
	ld bc, $0301                                     ; $55b7: $01 $01 $03
	ld bc, $0103                                     ; $55ba: $01 $03 $01
	ld [bc], a                                       ; $55bd: $02
	ld bc, $0102                                     ; $55be: $01 $02 $01
	ld [bc], a                                       ; $55c1: $02
	ld [bc], a                                       ; $55c2: $02
	inc bc                                           ; $55c3: $03
	inc bc                                           ; $55c4: $03
	nop                                              ; $55c5: $00
	inc bc                                           ; $55c6: $03
	inc bc                                           ; $55c7: $03
	ld [bc], a                                       ; $55c8: $02
	ld [bc], a                                       ; $55c9: $02
	nop                                              ; $55ca: $00
	inc bc                                           ; $55cb: $03
	ld bc, $0101                                     ; $55cc: $01 $01 $01
	ld [bc], a                                       ; $55cf: $02
	ld bc, $0302                                     ; $55d0: $01 $02 $03
	ld [bc], a                                       ; $55d3: $02
	ld [bc], a                                       ; $55d4: $02
	ld bc, $0202                                     ; $55d5: $01 $02 $02
	nop                                              ; $55d8: $00
	inc bc                                           ; $55d9: $03
	ld bc, $0201                                     ; $55da: $01 $01 $02
	ld bc, $0301                                     ; $55dd: $01 $01 $03
	inc bc                                           ; $55e0: $03
	ld bc, $0102                                     ; $55e1: $01 $02 $01
	inc bc                                           ; $55e4: $03
	ld [bc], a                                       ; $55e5: $02
	ld bc, $0003                                     ; $55e6: $01 $03 $00
	ld [bc], a                                       ; $55e9: $02
	nop                                              ; $55ea: $00
	ld bc, $0201                                     ; $55eb: $01 $01 $02
	ld [bc], a                                       ; $55ee: $02
	ld bc, $0102                                     ; $55ef: $01 $02 $01
	ld [bc], a                                       ; $55f2: $02
	inc b                                            ; $55f3: $04
	ld bc, $0000                                     ; $55f4: $01 $00 $00
	ld [bc], a                                       ; $55f7: $02
	ld [bc], a                                       ; $55f8: $02
	ld [bc], a                                       ; $55f9: $02
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	inc bc                                           ; $55fc: $03
	ld [bc], a                                       ; $55fd: $02
	ld [bc], a                                       ; $55fe: $02
	ld bc, $0302                                     ; $55ff: $01 $02 $03
	inc bc                                           ; $5602: $03
	ld bc, $0101                                     ; $5603: $01 $01 $01
	ld bc, $0201                                     ; $5606: $01 $01 $02
	inc b                                            ; $5609: $04
	inc bc                                           ; $560a: $03
	ld bc, $0103                                     ; $560b: $01 $03 $01
	inc bc                                           ; $560e: $03
	ld [bc], a                                       ; $560f: $02
	nop                                              ; $5610: $00
	inc bc                                           ; $5611: $03
	nop                                              ; $5612: $00
	ld [bc], a                                       ; $5613: $02
	ld bc, $0101                                     ; $5614: $01 $01 $01
	ld bc, $0101                                     ; $5617: $01 $01 $01
	ld bc, $0101                                     ; $561a: $01 $01 $01
	ld bc, $0100                                     ; $561d: $01 $00 $01
	nop                                              ; $5620: $00
	inc bc                                           ; $5621: $03
	nop                                              ; $5622: $00
	ld [bc], a                                       ; $5623: $02
	ld bc, $0301                                     ; $5624: $01 $01 $03
	ld [bc], a                                       ; $5627: $02
	ld bc, $0101                                     ; $5628: $01 $01 $01
	ld bc, $0000                                     ; $562b: $01 $00 $00
	ld bc, $0001                                     ; $562e: $01 $01 $00
	ld bc, $0203                                     ; $5631: $01 $03 $02
	inc b                                            ; $5634: $04
	inc bc                                           ; $5635: $03
	inc bc                                           ; $5636: $03
	ld bc, $0403                                     ; $5637: $01 $03 $04
	inc bc                                           ; $563a: $03
	ld [bc], a                                       ; $563b: $02
	ld bc, $0002                                     ; $563c: $01 $02 $00
	inc bc                                           ; $563f: $03
	inc bc                                           ; $5640: $03
	ld bc, $0204                                     ; $5641: $01 $04 $02
	nop                                              ; $5644: $00
	ld bc, $0301                                     ; $5645: $01 $01 $03
	inc bc                                           ; $5648: $03
	ld [bc], a                                       ; $5649: $02
	ld [bc], a                                       ; $564a: $02
	nop                                              ; $564b: $00
	ld [bc], a                                       ; $564c: $02
	ld [bc], a                                       ; $564d: $02
	inc bc                                           ; $564e: $03
	inc bc                                           ; $564f: $03
	inc bc                                           ; $5650: $03
	ld [bc], a                                       ; $5651: $02
	ld bc, $0102                                     ; $5652: $01 $02 $01
	inc bc                                           ; $5655: $03
	inc bc                                           ; $5656: $03
	inc bc                                           ; $5657: $03
	nop                                              ; $5658: $00
	ld bc, $0203                                     ; $5659: $01 $03 $02
	inc bc                                           ; $565c: $03
	inc b                                            ; $565d: $04
	inc b                                            ; $565e: $04
	ld [bc], a                                       ; $565f: $02
	inc bc                                           ; $5660: $03
	inc bc                                           ; $5661: $03
	inc bc                                           ; $5662: $03
	inc b                                            ; $5663: $04
	inc bc                                           ; $5664: $03
	inc bc                                           ; $5665: $03
	ld bc, $0401                                     ; $5666: $01 $01 $04
	inc bc                                           ; $5669: $03
	ld bc, $0400                                     ; $566a: $01 $00 $04
	inc bc                                           ; $566d: $03
	inc b                                            ; $566e: $04
	ld [bc], a                                       ; $566f: $02
	ld [bc], a                                       ; $5670: $02
	ld bc, $0304                                     ; $5671: $01 $04 $03
	inc b                                            ; $5674: $04
	inc bc                                           ; $5675: $03
	inc b                                            ; $5676: $04
	ld [bc], a                                       ; $5677: $02
	inc bc                                           ; $5678: $03
	inc bc                                           ; $5679: $03
	ld [bc], a                                       ; $567a: $02
	ld bc, $0301                                     ; $567b: $01 $01 $03
	inc bc                                           ; $567e: $03
	ld [bc], a                                       ; $567f: $02
	ld bc, $0203                                     ; $5680: $01 $03 $02
	ld bc, $0102                                     ; $5683: $01 $02 $01
	ld [bc], a                                       ; $5686: $02
	ld [bc], a                                       ; $5687: $02
	ld [bc], a                                       ; $5688: $02
	nop                                              ; $5689: $00
	inc bc                                           ; $568a: $03
	ld bc, $0403                                     ; $568b: $01 $03 $04
	inc b                                            ; $568e: $04
	nop                                              ; $568f: $00
	inc bc                                           ; $5690: $03
	ld [bc], a                                       ; $5691: $02
	ld [bc], a                                       ; $5692: $02
	ld [bc], a                                       ; $5693: $02
	inc bc                                           ; $5694: $03
	ld [bc], a                                       ; $5695: $02
	inc b                                            ; $5696: $04
	ld [bc], a                                       ; $5697: $02
	ld [bc], a                                       ; $5698: $02
	inc bc                                           ; $5699: $03
	inc b                                            ; $569a: $04
	inc b                                            ; $569b: $04
	ld bc, $0103                                     ; $569c: $01 $03 $01
	inc bc                                           ; $569f: $03
	ld bc, $0204                                     ; $56a0: $01 $04 $02
	inc bc                                           ; $56a3: $03
	ld [bc], a                                       ; $56a4: $02
	ld [bc], a                                       ; $56a5: $02
	ld bc, $0303                                     ; $56a6: $01 $03 $03
	inc bc                                           ; $56a9: $03
	ld bc, $0203                                     ; $56aa: $01 $03 $02
	ld bc, $0002                                     ; $56ad: $01 $02 $00
	ld bc, $0400                                     ; $56b0: $01 $00 $04
	inc bc                                           ; $56b3: $03
	ld [bc], a                                       ; $56b4: $02
	ld [bc], a                                       ; $56b5: $02
	ld bc, $0402                                     ; $56b6: $01 $02 $04
	inc bc                                           ; $56b9: $03
	inc b                                            ; $56ba: $04
	inc bc                                           ; $56bb: $03
	ld bc, $0202                                     ; $56bc: $01 $02 $02
	ld bc, $0102                                     ; $56bf: $01 $02 $01
	ld bc, $0303                                     ; $56c2: $01 $03 $03
	ld [bc], a                                       ; $56c5: $02
	inc bc                                           ; $56c6: $03
	inc bc                                           ; $56c7: $03
	inc b                                            ; $56c8: $04
	ld [bc], a                                       ; $56c9: $02
	ld bc, $0302                                     ; $56ca: $01 $02 $03
	inc bc                                           ; $56cd: $03
	ld [bc], a                                       ; $56ce: $02
	ld bc, $0103                                     ; $56cf: $01 $03 $01
	inc bc                                           ; $56d2: $03
	inc b                                            ; $56d3: $04
	inc bc                                           ; $56d4: $03
	nop                                              ; $56d5: $00
	inc bc                                           ; $56d6: $03
	ld [bc], a                                       ; $56d7: $02
	ld [bc], a                                       ; $56d8: $02
	ld [bc], a                                       ; $56d9: $02
	ld [bc], a                                       ; $56da: $02
	inc b                                            ; $56db: $04
	inc b                                            ; $56dc: $04
	ld bc, $0303                                     ; $56dd: $01 $03 $03
	inc bc                                           ; $56e0: $03
	inc b                                            ; $56e1: $04
	inc bc                                           ; $56e2: $03
	inc bc                                           ; $56e3: $03
	inc b                                            ; $56e4: $04
	ld bc, $0303                                     ; $56e5: $01 $03 $03
	nop                                              ; $56e8: $00
	nop                                              ; $56e9: $00
	inc bc                                           ; $56ea: $03
	inc bc                                           ; $56eb: $03
	ld bc, $0101                                     ; $56ec: $01 $01 $01
	ld bc, $0304                                     ; $56ef: $01 $04 $03
	inc b                                            ; $56f2: $04
	ld [bc], a                                       ; $56f3: $02
	nop                                              ; $56f4: $00
	ld bc, $0000                                     ; $56f5: $01 $00 $00
	nop                                              ; $56f8: $00
	inc bc                                           ; $56f9: $03
	inc b                                            ; $56fa: $04
	ld bc, $0203                                     ; $56fb: $01 $03 $02
	inc bc                                           ; $56fe: $03
	inc bc                                           ; $56ff: $03
	inc b                                            ; $5700: $04
	ld bc, $0201                                     ; $5701: $01 $01 $02
	ld [bc], a                                       ; $5704: $02
	inc b                                            ; $5705: $04
	inc b                                            ; $5706: $04
	inc bc                                           ; $5707: $03
	inc bc                                           ; $5708: $03
	inc bc                                           ; $5709: $03
	inc b                                            ; $570a: $04
	ld bc, $0304                                     ; $570b: $01 $04 $03
	inc b                                            ; $570e: $04
	ld bc, $0104                                ; $570f: $01 $04 $01
	inc bc                                           ; $5712: $03
	inc b                                            ; $5713: $04
	inc b                                            ; $5714: $04
	ld bc, $0301                                     ; $5715: $01 $01 $03
	nop                                              ; $5718: $00
	inc bc                                           ; $5719: $03
	inc b                                            ; $571a: $04
	inc b                                            ; $571b: $04
	inc b                                            ; $571c: $04
	nop                                              ; $571d: $00
	inc b                                            ; $571e: $04
	inc bc                                           ; $571f: $03
	inc bc                                           ; $5720: $03
	ld [bc], a                                       ; $5721: $02
	inc bc                                           ; $5722: $03
	ld bc, $0202                                     ; $5723: $01 $02 $02
	ld [bc], a                                       ; $5726: $02
	ld [bc], a                                       ; $5727: $02
	nop                                              ; $5728: $00
	nop                                              ; $5729: $00
	inc bc                                           ; $572a: $03
	ld bc, $0403                                     ; $572b: $01 $03 $04
	ld [bc], a                                       ; $572e: $02
	inc b                                            ; $572f: $04
	inc b                                            ; $5730: $04
	ld [bc], a                                       ; $5731: $02
	inc bc                                           ; $5732: $03
	inc bc                                           ; $5733: $03
	inc b                                            ; $5734: $04
	inc b                                            ; $5735: $04
	inc b                                            ; $5736: $04
	inc bc                                           ; $5737: $03
	inc b                                            ; $5738: $04
	ld [bc], a                                       ; $5739: $02
	ld [bc], a                                       ; $573a: $02
	ld [bc], a                                       ; $573b: $02
	ld bc, $0404                                     ; $573c: $01 $04 $04
	ld bc, $0301                                     ; $573f: $01 $01 $03
	nop                                              ; $5742: $00
	inc b                                            ; $5743: $04
	inc b                                            ; $5744: $04
	inc b                                            ; $5745: $04
	inc b                                            ; $5746: $04
	ld bc, $0303                                     ; $5747: $01 $03 $03
	ld [bc], a                                       ; $574a: $02
	ld [bc], a                                       ; $574b: $02
	inc b                                            ; $574c: $04
	ld [bc], a                                       ; $574d: $02
	ld bc, $0202                                     ; $574e: $01 $02 $02
	ld [bc], a                                       ; $5751: $02
	nop                                              ; $5752: $00
	nop                                              ; $5753: $00
	inc bc                                           ; $5754: $03
	ld bc, $0402                                     ; $5755: $01 $02 $04
	ld [bc], a                                       ; $5758: $02
	inc b                                            ; $5759: $04
	inc b                                            ; $575a: $04
	inc b                                            ; $575b: $04
	inc bc                                           ; $575c: $03
	inc bc                                           ; $575d: $03
	inc b                                            ; $575e: $04
	inc bc                                           ; $575f: $03
	inc b                                            ; $5760: $04
	inc bc                                           ; $5761: $03
	inc b                                            ; $5762: $04
	ld [bc], a                                       ; $5763: $02
	ld bc, $0101                                     ; $5764: $01 $01 $01
	ld [bc], a                                       ; $5767: $02
	inc bc                                           ; $5768: $03
	ld [bc], a                                       ; $5769: $02
	ld bc, $0102                                     ; $576a: $01 $02 $01
	ld [bc], a                                       ; $576d: $02
	nop                                              ; $576e: $00
	nop                                              ; $576f: $00
	ld bc, $0302                                     ; $5770: $01 $02 $03
	inc b                                            ; $5773: $04
	ld [bc], a                                       ; $5774: $02
	inc b                                            ; $5775: $04
	inc b                                            ; $5776: $04
	nop                                              ; $5777: $00
	ld bc, $0003                                     ; $5778: $01 $03 $00
	inc bc                                           ; $577b: $03
	ld bc, $0204                                     ; $577c: $01 $04 $02
	ld bc, $0302                                     ; $577f: $01 $02 $03
	ld bc, $0203                                     ; $5782: $01 $03 $02
	inc b                                            ; $5785: $04
	ld bc, $0001                                     ; $5786: $01 $01 $00
	ld bc, $0201                                     ; $5789: $01 $01 $02
	nop                                              ; $578c: $00
	ld [bc], a                                       ; $578d: $02
	ld bc, $0002                                     ; $578e: $01 $02 $00
	inc bc                                           ; $5791: $03
	ld [bc], a                                       ; $5792: $02
	inc b                                            ; $5793: $04
	ld bc, $0001                                     ; $5794: $01 $01 $00
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	ld [bc], a                                       ; $5799: $02
	nop                                              ; $579a: $00
	ld bc, $0100                                     ; $579b: $01 $00 $01
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	ld [bc], a                                       ; $57a0: $02
	ld bc, $0001                                     ; $57a1: $01 $01 $00
	ld bc, $0001                                     ; $57a4: $01 $01 $00
	ld bc, $0100                                     ; $57a7: $01 $00 $01
	nop                                              ; $57aa: $00
	ld bc, $0000                                     ; $57ab: $01 $00 $00
	ld bc, $0000                                     ; $57ae: $01 $00 $00
	nop                                              ; $57b1: $00
	nop                                              ; $57b2: $00
	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	nop                                              ; $57b5: $00
	nop                                              ; $57b6: $00
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	ld [bc], a                                       ; $57ba: $02
	ld [bc], a                                       ; $57bb: $02
	inc bc                                           ; $57bc: $03
	ld bc, $0201                                     ; $57bd: $01 $01 $02
	nop                                              ; $57c0: $00
	inc bc                                           ; $57c1: $03
	ld [bc], a                                       ; $57c2: $02
	ld [bc], a                                       ; $57c3: $02
	ld bc, $0201                                     ; $57c4: $01 $01 $02
	inc bc                                           ; $57c7: $03
	nop                                              ; $57c8: $00
	inc b                                            ; $57c9: $04
	inc b                                            ; $57ca: $04
	inc b                                            ; $57cb: $04
	ld bc, $0002                                     ; $57cc: $01 $02 $00
	nop                                              ; $57cf: $00
	ld bc, $0004                                     ; $57d0: $01 $04 $00
	ld bc, $0101                                     ; $57d3: $01 $01 $01
	ld [$c0ea], a                                    ; $57d6: $ea $ea $c0
	call Call_004_53fe                               ; $57d9: $cd $fe $53
	ld [$c0eb], a                                    ; $57dc: $ea $eb $c0
	ld a, [$a2fb]                                    ; $57df: $fa $fb $a2
	or a                                             ; $57e2: $b7
	jr z, jr_004_5809                                ; $57e3: $28 $24

	cp $64                                           ; $57e5: $fe $64
	jr c, jr_004_57ed                                ; $57e7: $38 $04

	ld a, $00                                        ; $57e9: $3e $00
	jr jr_004_580b                                   ; $57eb: $18 $1e

jr_004_57ed:
	cp $4b                                           ; $57ed: $fe $4b
	jr c, jr_004_57f5                                ; $57ef: $38 $04

	ld a, $01                                        ; $57f1: $3e $01
	jr jr_004_580b                                   ; $57f3: $18 $16

jr_004_57f5:
	cp $32                                           ; $57f5: $fe $32
	jr c, jr_004_57fd                                ; $57f7: $38 $04

	ld a, $02                                        ; $57f9: $3e $02
	jr jr_004_580b                                   ; $57fb: $18 $0e

jr_004_57fd:
	cp $19                                           ; $57fd: $fe $19
	jr c, jr_004_5805                                ; $57ff: $38 $04

	ld a, $03                                        ; $5801: $3e $03
	jr jr_004_580b                                   ; $5803: $18 $06

jr_004_5805:
	ld a, $04                                        ; $5805: $3e $04
	jr jr_004_580b                                   ; $5807: $18 $02

jr_004_5809:
	ld a, $05                                        ; $5809: $3e $05

jr_004_580b:
	ld [$c0ec], a                                    ; $580b: $ea $ec $c0
	ld a, [$d0a1]                                    ; $580e: $fa $a1 $d0
	bit 7, a                                         ; $5811: $cb $7f
	jr nz, jr_004_5823                               ; $5813: $20 $0e

	call Call_004_587b                               ; $5815: $cd $7b $58
	ld c, a                                          ; $5818: $4f
	ld a, [$c0ea]                                    ; $5819: $fa $ea $c0
	ld b, a                                          ; $581c: $47
	ld a, c                                          ; $581d: $79
	call Call_004_469b                               ; $581e: $cd $9b $46
	jr jr_004_5832                                   ; $5821: $18 $0f

jr_004_5823:
	xor $ff                                          ; $5823: $ee $ff
	inc a                                            ; $5825: $3c
	call Call_004_58a7                               ; $5826: $cd $a7 $58
	ld c, a                                          ; $5829: $4f
	ld a, [$c0ea]                                    ; $582a: $fa $ea $c0
	ld b, a                                          ; $582d: $47
	ld a, c                                          ; $582e: $79
	call Call_004_46b4                               ; $582f: $cd $b4 $46

jr_004_5832:
	ld a, [$d0a2]                                    ; $5832: $fa $a2 $d0
	bit 7, a                                         ; $5835: $cb $7f
	jr nz, jr_004_5847                               ; $5837: $20 $0e

	call Call_004_587b                               ; $5839: $cd $7b $58
	ld c, a                                          ; $583c: $4f
	ld a, [$c0ea]                                    ; $583d: $fa $ea $c0
	ld b, a                                          ; $5840: $47
	ld a, c                                          ; $5841: $79
	call Call_004_46a0                               ; $5842: $cd $a0 $46
	jr jr_004_5856                                   ; $5845: $18 $0f

jr_004_5847:
	xor $ff                                          ; $5847: $ee $ff
	inc a                                            ; $5849: $3c
	call Call_004_58a7                               ; $584a: $cd $a7 $58
	ld c, a                                          ; $584d: $4f
	ld a, [$c0ea]                                    ; $584e: $fa $ea $c0
	ld b, a                                          ; $5851: $47
	ld a, c                                          ; $5852: $79
	call Call_004_46b9                               ; $5853: $cd $b9 $46

jr_004_5856:
	ld a, [$d0a3]                                    ; $5856: $fa $a3 $d0
	bit 7, a                                         ; $5859: $cb $7f
	jr nz, jr_004_586b                               ; $585b: $20 $0e

	call Call_004_58a7                               ; $585d: $cd $a7 $58
	ld c, a                                          ; $5860: $4f
	ld a, [$c0ea]                                    ; $5861: $fa $ea $c0
	ld b, a                                          ; $5864: $47
	ld a, c                                          ; $5865: $79
	call Call_004_46a5                               ; $5866: $cd $a5 $46
	jr jr_004_587a                                   ; $5869: $18 $0f

jr_004_586b:
	xor $ff                                          ; $586b: $ee $ff
	inc a                                            ; $586d: $3c
	call Call_004_587b                               ; $586e: $cd $7b $58
	ld c, a                                          ; $5871: $4f
	ld a, [$c0ea]                                    ; $5872: $fa $ea $c0
	ld b, a                                          ; $5875: $47
	ld a, c                                          ; $5876: $79
	call Call_004_46be                               ; $5877: $cd $be $46

jr_004_587a:
	ret                                              ; $587a: $c9


Call_004_587b:
	ld c, a                                          ; $587b: $4f
	ld a, [$c0eb]                                    ; $587c: $fa $eb $c0
	ld hl, $58e7                                     ; $587f: $21 $e7 $58
	call $ce99                                       ; $5882: $cd $99 $ce
	ld b, [hl]                                       ; $5885: $46
	call BCequBtimesC                                       ; $5886: $cd $5f $12
	sla c                                            ; $5889: $cb $21
	rl b                                             ; $588b: $cb $10
	push bc                                          ; $588d: $c5
	ld a, [$c0ec]                                    ; $588e: $fa $ec $c0
	ld hl, $58db                                     ; $5891: $21 $db $58
	call $ce99                                       ; $5894: $cd $99 $ce
	ld a, [hl]                                       ; $5897: $7e
	pop hl                                           ; $5898: $e1
	call AHLequAtimesHL                                       ; $5899: $cd $77 $12
	sla l                                            ; $589c: $cb $25
	rl h                                             ; $589e: $cb $14
	rla                                              ; $58a0: $17
	ld l, h                                          ; $58a1: $6c
	ld h, a                                          ; $58a2: $67
	call Call_004_58d3                               ; $58a3: $cd $d3 $58
	ret                                              ; $58a6: $c9


Call_004_58a7:
	ld c, a                                          ; $58a7: $4f
	ld a, [$c0eb]                                    ; $58a8: $fa $eb $c0
	ld hl, $58ec                                     ; $58ab: $21 $ec $58
	call $ce99                                       ; $58ae: $cd $99 $ce
	ld b, [hl]                                       ; $58b1: $46
	call BCequBtimesC                                       ; $58b2: $cd $5f $12
	sla c                                            ; $58b5: $cb $21
	rl b                                             ; $58b7: $cb $10
	push bc                                          ; $58b9: $c5
	ld a, [$c0ec]                                    ; $58ba: $fa $ec $c0
	ld hl, $58e1                                     ; $58bd: $21 $e1 $58
	call $ce99                                       ; $58c0: $cd $99 $ce
	ld a, [hl]                                       ; $58c3: $7e
	pop hl                                           ; $58c4: $e1
	call AHLequAtimesHL                                       ; $58c5: $cd $77 $12
	sla l                                            ; $58c8: $cb $25
	rl h                                             ; $58ca: $cb $14
	rla                                              ; $58cc: $17
	ld l, h                                          ; $58cd: $6c
	ld h, a                                          ; $58ce: $67
	call Call_004_58d3                               ; $58cf: $cd $d3 $58
	ret                                              ; $58d2: $c9


Call_004_58d3:
	ld a, l                                          ; $58d3: $7d
	cp $80                                           ; $58d4: $fe $80
	jr z, jr_004_58d9                                ; $58d6: $28 $01

	inc h                                            ; $58d8: $24

jr_004_58d9:
	ld a, h                                          ; $58d9: $7c
	ret                                              ; $58da: $c9


	and b                                            ; $58db: $a0
	add b                                            ; $58dc: $80
	ld h, b                                          ; $58dd: $60
	ld b, b                                          ; $58de: $40
	jr nz, jr_004_58e1                               ; $58df: $20 $00

jr_004_58e1:
	ld h, b                                          ; $58e1: $60
	add b                                            ; $58e2: $80
	and b                                            ; $58e3: $a0
	ret nz                                           ; $58e4: $c0

	ldh [$fe], a                                     ; $58e5: $e0 $fe
	and b                                            ; $58e7: $a0
	add b                                            ; $58e8: $80
	add b                                            ; $58e9: $80
	ld h, b                                          ; $58ea: $60
	ld b, b                                          ; $58eb: $40
	ld h, b                                          ; $58ec: $60
	add b                                            ; $58ed: $80
	add b                                            ; $58ee: $80
	and b                                            ; $58ef: $a0
	ret nz                                           ; $58f0: $c0

	ld a, [$a30c]                                    ; $58f1: $fa $0c $a3
	ret                                              ; $58f4: $c9


todo_Set_a30c::
	ld [$a30c], a                                    ; $58f5: $ea $0c $a3
	ret                                              ; $58f8: $c9


	ld a, [$a30c]                                    ; $58f9: $fa $0c $a3
	sla a                                            ; $58fc: $cb $27
	ld hl, $59d9                                     ; $58fe: $21 $d9 $59
	call $ce99                                       ; $5901: $cd $99 $ce
	ld e, [hl]                                       ; $5904: $5e
	inc hl                                           ; $5905: $23
	ld d, [hl]                                       ; $5906: $56
	ld a, [$a22a]                                    ; $5907: $fa $2a $a2
	sla a                                            ; $590a: $cb $27
	ld hl, $a333                                     ; $590c: $21 $33 $a3
	call $ce99                                       ; $590f: $cd $99 $ce
	ld a, [hl]                                       ; $5912: $7e
	or e                                             ; $5913: $b3
	ld [hl+], a                                      ; $5914: $22
	ld a, [hl]                                       ; $5915: $7e
	or d                                             ; $5916: $b2
	ld [hl], a                                       ; $5917: $77
	ld a, $ff                                        ; $5918: $3e $ff
	ld [$a30c], a                                    ; $591a: $ea $0c $a3
	ld [$a30d], a                                    ; $591d: $ea $0d $a3
	ret                                              ; $5920: $c9


	ld a, [$a2ff]                                    ; $5921: $fa $ff $a2
	srl a                                            ; $5924: $cb $3f
	srl a                                            ; $5926: $cb $3f
	srl a                                            ; $5928: $cb $3f
	srl a                                            ; $592a: $cb $3f
	ret                                              ; $592c: $c9


	ld a, [$d0a4]                                    ; $592d: $fa $a4 $d0
	or $01                                           ; $5930: $f6 $01
	ld [$d0a4], a                                    ; $5932: $ea $a4 $d0
	ret                                              ; $5935: $c9


	ld a, [$d0a4]                                    ; $5936: $fa $a4 $d0
	or $03                                           ; $5939: $f6 $03
	ld [$d0a4], a                                    ; $593b: $ea $a4 $d0
	ret                                              ; $593e: $c9


	ld a, [$d0a4]                                    ; $593f: $fa $a4 $d0
	and $fc                                          ; $5942: $e6 $fc
	ld [$d0a4], a                                    ; $5944: $ea $a4 $d0
	ret                                              ; $5947: $c9


Call_004_5948:
	ld a, [$a30c]                                    ; $5948: $fa $0c $a3
	cp $ff                                           ; $594b: $fe $ff
	jr z, jr_004_598f                                ; $594d: $28 $40

	sla a                                            ; $594f: $cb $27
	ld [$c0e8], a                                    ; $5951: $ea $e8 $c0
	call $3b89                                       ; $5954: $cd $89 $3b
	ld a, [$d087]                                    ; $5957: $fa $87 $d0
	and a                                            ; $595a: $a7
	jr nz, jr_004_5977                               ; $595b: $20 $1a

	ld hl, $a30d                                     ; $595d: $21 $0d $a3
	ld a, [$c0e8]                                    ; $5960: $fa $e8 $c0
	ld bc, $0001                                     ; $5963: $01 $01 $00
	call Call_004_5990                               ; $5966: $cd $90 $59
	ld hl, $a31f                                     ; $5969: $21 $1f $a3
	ld a, [$c0e8]                                    ; $596c: $fa $e8 $c0
	ld bc, $0001                                     ; $596f: $01 $01 $00
	call Call_004_5990                               ; $5972: $cd $90 $59
	jr jr_004_598f                                   ; $5975: $18 $18

jr_004_5977:
	ld hl, $a30d                                     ; $5977: $21 $0d $a3
	ld a, [$c0e8]                                    ; $597a: $fa $e8 $c0
	ld bc, $0006                                     ; $597d: $01 $06 $00
	call Call_004_5990                               ; $5980: $cd $90 $59
	ld hl, $a31f                                     ; $5983: $21 $1f $a3
	ld a, [$c0e8]                                    ; $5986: $fa $e8 $c0
	ld bc, $0006                                     ; $5989: $01 $06 $00
	call Call_004_5990                               ; $598c: $cd $90 $59

jr_004_598f:
	ret                                              ; $598f: $c9


Call_004_5990:
	call $ce99                                       ; $5990: $cd $99 $ce
	ld e, [hl]                                       ; $5993: $5e
	inc hl                                           ; $5994: $23
	ld d, [hl]                                       ; $5995: $56
	call wAddBContoDE                                       ; $5996: $cd $92 $ce
	ld bc, $03e7                                     ; $5999: $01 $e7 $03
	call wCpBCtoDE                                       ; $599c: $cd $8c $ce
	jr nc, jr_004_59a4                               ; $599f: $30 $03

	ld de, $03e7                                     ; $59a1: $11 $e7 $03

jr_004_59a4:
	ld [hl], d                                       ; $59a4: $72
	dec hl                                           ; $59a5: $2b
	ld [hl], e                                       ; $59a6: $73
	ret                                              ; $59a7: $c9


	ld a, [$a30c]                                    ; $59a8: $fa $0c $a3
	cp $ff                                           ; $59ab: $fe $ff
	jr z, jr_004_59c9                                ; $59ad: $28 $1a

	sla a                                            ; $59af: $cb $27
	ld hl, $a30d                                     ; $59b1: $21 $0d $a3
	jr jr_004_59c2                                   ; $59b4: $18 $0c

	ld a, [$a30c]                                    ; $59b6: $fa $0c $a3
	cp $ff                                           ; $59b9: $fe $ff
	jr z, jr_004_59c9                                ; $59bb: $28 $0c

	sla a                                            ; $59bd: $cb $27
	ld hl, $a31f                                     ; $59bf: $21 $1f $a3

jr_004_59c2:
	call $ce99                                       ; $59c2: $cd $99 $ce
	ld c, [hl]                                       ; $59c5: $4e
	inc hl                                           ; $59c6: $23
	ld b, [hl]                                       ; $59c7: $46
	ret                                              ; $59c8: $c9


jr_004_59c9:
	ld bc, $0000                                     ; $59c9: $01 $00 $00
	ret                                              ; $59cc: $c9


	ld hl, $a31f                                     ; $59cd: $21 $1f $a3
	ld c, $09                                        ; $59d0: $0e $09
	xor a                                            ; $59d2: $af

jr_004_59d3:
	ld [hl+], a                                      ; $59d3: $22
	ld [hl+], a                                      ; $59d4: $22
	dec c                                            ; $59d5: $0d
	jr nz, jr_004_59d3                               ; $59d6: $20 $fb

	ret                                              ; $59d8: $c9


	ld bc, $0200                                     ; $59d9: $01 $00 $02
	nop                                              ; $59dc: $00
	inc b                                            ; $59dd: $04
	nop                                              ; $59de: $00
	ld [$1000], sp                                   ; $59df: $08 $00 $10
	nop                                              ; $59e2: $00
	jr nz, jr_004_59e5                               ; $59e3: $20 $00

jr_004_59e5:
	ld b, b                                          ; $59e5: $40
	nop                                              ; $59e6: $00
	add b                                            ; $59e7: $80
	nop                                              ; $59e8: $00
	nop                                              ; $59e9: $00
	ld bc, $eaaf                                     ; $59ea: $01 $af $ea
	db $ec                                           ; $59ed: $ec
	pop bc                                           ; $59ee: $c1
	ld [$c1ee], a                                    ; $59ef: $ea $ee $c1
	ld [$c1f1], a                                    ; $59f2: $ea $f1 $c1
	ld [$c1f2], a                                    ; $59f5: $ea $f2 $c1
	call $3b89                                       ; $59f8: $cd $89 $3b
	ld a, [$5d5a]                                    ; $59fb: $fa $5a $5d
	ld [$c1ed], a                                    ; $59fe: $ea $ed $c1
	ld a, [$d086]                                    ; $5a01: $fa $86 $d0
	and $02                                          ; $5a04: $e6 $02
	srl a                                            ; $5a06: $cb $3f
	ld [$c1ed], a                                    ; $5a08: $ea $ed $c1
	call Call_004_5a5b                               ; $5a0b: $cd $5b $5a
	ld [$c1f2], a                                    ; $5a0e: $ea $f2 $c1
	ld a, [$c1f1]                                    ; $5a11: $fa $f1 $c1
	and a                                            ; $5a14: $a7
	jr nz, jr_004_5a22                               ; $5a15: $20 $0b

	call Call_004_6693                               ; $5a17: $cd $93 $66
	call Call_004_75ec                               ; $5a1a: $cd $ec $75
	call Call_004_66c3                               ; $5a1d: $cd $c3 $66
	jr jr_004_5a25                                   ; $5a20: $18 $03

jr_004_5a22:
	call Call_004_75ec                               ; $5a22: $cd $ec $75

jr_004_5a25:
	ld a, [$c1ec]                                    ; $5a25: $fa $ec $c1
	and a                                            ; $5a28: $a7
	jr nz, jr_004_5a57                               ; $5a29: $20 $2c

	ld a, [$c1fa]                                    ; $5a2b: $fa $fa $c1
	ld b, a                                          ; $5a2e: $47
	ld a, [$c1eb]                                    ; $5a2f: $fa $eb $c1
	call Call_004_662c                               ; $5a32: $cd $2c $66
	ld a, [$c1e6]                                    ; $5a35: $fa $e6 $c1
	and a                                            ; $5a38: $a7
	jr z, jr_004_5a3e                                ; $5a39: $28 $03

	call Call_004_5c3a                               ; $5a3b: $cd $3a $5c

jr_004_5a3e:
	ld a, [$d084]                                    ; $5a3e: $fa $84 $d0
	cp $06                                           ; $5a41: $fe $06
	jr nz, jr_004_5a57                               ; $5a43: $20 $12

	ld a, [$c1ea]                                    ; $5a45: $fa $ea $c1
	cp $03                                           ; $5a48: $fe $03
	jr c, jr_004_5a57                                ; $5a4a: $38 $0b

	ld a, [$c1e6]                                    ; $5a4c: $fa $e6 $c1
	and a                                            ; $5a4f: $a7
	jr z, jr_004_5a57                                ; $5a50: $28 $05

	ld a, $07                                        ; $5a52: $3e $07
	ld [$c1ea], a                                    ; $5a54: $ea $ea $c1

jr_004_5a57:
	ld a, [$c1f2]                                    ; $5a57: $fa $f2 $c1
	ret                                              ; $5a5a: $c9


Call_004_5a5b:
	ld a, [$a385]                                    ; $5a5b: $fa $85 $a3
	cp $10                                           ; $5a5e: $fe $10
	jp z, Jump_004_5b77                              ; $5a60: $ca $77 $5b

	ld a, [$d088]                                    ; $5a63: $fa $88 $d0
	and a                                            ; $5a66: $a7
	jp nz, Jump_004_5b69                             ; $5a67: $c2 $69 $5b

	ld a, [$d089]                                    ; $5a6a: $fa $89 $d0
	and a                                            ; $5a6d: $a7
	jr z, jr_004_5ae1                                ; $5a6e: $28 $71

	dec a                                            ; $5a70: $3d
	call wJumpTable                                       ; $5a71: $cd $80 $cf
	xor [hl]                                         ; $5a74: $ae
	ld e, e                                          ; $5a75: $5b
	rst GetHLinHL                                          ; $5a76: $cf
	ld e, d                                          ; $5a77: $5a
	cp [hl]                                          ; $5a78: $be
	ld e, e                                          ; $5a79: $5b
	cp [hl]                                          ; $5a7a: $be
	ld e, e                                          ; $5a7b: $5b
	cp [hl]                                          ; $5a7c: $be
	ld e, e                                          ; $5a7d: $5b
	rst JumpTable                                          ; $5a7e: $c7
	ld e, e                                          ; $5a7f: $5b
	ld [hl], a                                       ; $5a80: $77
	ld e, e                                          ; $5a81: $5b
	ret nc                                           ; $5a82: $d0

	ld e, e                                          ; $5a83: $5b
	ret nc                                           ; $5a84: $d0

	ld e, e                                          ; $5a85: $5b
	ld [hl], a                                       ; $5a86: $77
	ld e, e                                          ; $5a87: $5b
	sbc $5a                                          ; $5a88: $de $5a
	ret nz                                           ; $5a8a: $c0

	ld e, d                                          ; $5a8b: $5a
	ret nz                                           ; $5a8c: $c0

	ld e, d                                          ; $5a8d: $5a
	ret nz                                           ; $5a8e: $c0

	ld e, d                                          ; $5a8f: $5a
	sub $5b                                          ; $5a90: $d6 $5b
	sub $5b                                          ; $5a92: $d6 $5b
	sub $5b                                          ; $5a94: $d6 $5b
	ld [hl], a                                       ; $5a96: $77
	ld e, e                                          ; $5a97: $5b
	ld [hl], a                                       ; $5a98: $77
	ld e, e                                          ; $5a99: $5b
	ld [hl], a                                       ; $5a9a: $77
	ld e, e                                          ; $5a9b: $5b
	call nc, $8e5a                                   ; $5a9c: $d4 $5a $8e
	ld e, e                                          ; $5a9f: $5b
	adc [hl]                                         ; $5aa0: $8e
	ld e, e                                          ; $5aa1: $5b
	adc [hl]                                         ; $5aa2: $8e
	ld e, e                                          ; $5aa3: $5b
	rst GetHLinHL                                          ; $5aa4: $cf
	ld e, d                                          ; $5aa5: $5a
	sbc a                                            ; $5aa6: $9f
	ld e, e                                          ; $5aa7: $5b
	pop hl                                           ; $5aa8: $e1
	ld e, d                                          ; $5aa9: $5a
	pop hl                                           ; $5aaa: $e1
	ld e, d                                          ; $5aab: $5a
	pop hl                                           ; $5aac: $e1
	ld e, d                                          ; $5aad: $5a
	ldh [c], a                                       ; $5aae: $e2
	ld e, e                                          ; $5aaf: $5b
	ldh [c], a                                       ; $5ab0: $e2
	ld e, e                                          ; $5ab1: $5b
	ldh [c], a                                       ; $5ab2: $e2
	ld e, e                                          ; $5ab3: $5b
	ld [hl], a                                       ; $5ab4: $77
	ld e, e                                          ; $5ab5: $5b
	ld [hl], a                                       ; $5ab6: $77
	ld e, e                                          ; $5ab7: $5b
	ld [hl], a                                       ; $5ab8: $77
	ld e, e                                          ; $5ab9: $5b
	xor b                                            ; $5aba: $a8
	ld e, e                                          ; $5abb: $5b
	reti                                             ; $5abc: $d9


	ld e, d                                          ; $5abd: $5a
	ld l, [hl]                                       ; $5abe: $6e
	ld e, e                                          ; $5abf: $5b
	ld a, [$a22a]                                    ; $5ac0: $fa $2a $a2
	inc a                                            ; $5ac3: $3c
	ld [$a22a], a                                    ; $5ac4: $ea $2a $a2
	dec a                                            ; $5ac7: $3d
	jp z, Jump_004_5beb                              ; $5ac8: $ca $eb $5b

	dec a                                            ; $5acb: $3d
	jp z, Jump_004_5bff                              ; $5acc: $ca $ff $5b

	call Call_004_63ee                               ; $5acf: $cd $ee $63
	jr jr_004_5ae1                                   ; $5ad2: $18 $0d

	call Call_004_63e2                               ; $5ad4: $cd $e2 $63
	jr jr_004_5ae1                                   ; $5ad7: $18 $08

	call Call_004_63e6                               ; $5ad9: $cd $e6 $63
	jr jr_004_5ae1                                   ; $5adc: $18 $03

	call Call_004_63de                               ; $5ade: $cd $de $63

Jump_004_5ae1:
jr_004_5ae1:
	ld a, [$d084]                                    ; $5ae1: $fa $84 $d0
	and a                                            ; $5ae4: $a7
	jp z, Jump_004_5b6e                              ; $5ae5: $ca $6e $5b

	ld a, [$a226]                                    ; $5ae8: $fa $26 $a2
	cp $07                                           ; $5aeb: $fe $07
	jr nz, jr_004_5b13                               ; $5aed: $20 $24

	ld a, [$d080]                                    ; $5aef: $fa $80 $d0
	cp $03                                           ; $5af2: $fe $03
	jr nz, jr_004_5b13                               ; $5af4: $20 $1d

	ld a, [$a386]                                    ; $5af6: $fa $86 $a3
	and a                                            ; $5af9: $a7
	jr nz, jr_004_5b13                               ; $5afa: $20 $17

	call Call_004_4e64                               ; $5afc: $cd $64 $4e
	cp $ff                                           ; $5aff: $fe $ff
	jr z, jr_004_5b13                                ; $5b01: $28 $10

	ld a, [$d080]                                    ; $5b03: $fa $80 $d0
	cp $18                                           ; $5b06: $fe $18
	jp nc, Jump_004_5c17                             ; $5b08: $d2 $17 $5c

	ld a, [wFrameCounter]                                    ; $5b0b: $fa $1f $c1
	and $01                                          ; $5b0e: $e6 $01
	jp nz, Jump_004_5c17                             ; $5b10: $c2 $17 $5c

jr_004_5b13:
	ld a, [$c1eb]                                    ; $5b13: $fa $eb $c1
	call Call_004_5ce5                               ; $5b16: $cd $e5 $5c
	ld a, [$a224]                                    ; $5b19: $fa $24 $a2
	cp $03                                           ; $5b1c: $fe $03
	jr nz, jr_004_5b39                               ; $5b1e: $20 $19

	ld a, [$a226]                                    ; $5b20: $fa $26 $a2
	cp $01                                           ; $5b23: $fe $01
	jr nz, jr_004_5b39                               ; $5b25: $20 $12

	ld a, [$a228]                                    ; $5b27: $fa $28 $a2
	cp $12                                           ; $5b2a: $fe $12
	jp z, Jump_004_5c0b                              ; $5b2c: $ca $0b $5c

	cp $1c                                           ; $5b2f: $fe $1c
	jp z, Jump_004_5c11                              ; $5b31: $ca $11 $5c

	cp $16                                           ; $5b34: $fe $16
	jp z, Jump_004_5c14                              ; $5b36: $ca $14 $5c

jr_004_5b39:
	ld a, [$a384]                                    ; $5b39: $fa $84 $a3
	and a                                            ; $5b3c: $a7
	jr nz, jr_004_5b74                               ; $5b3d: $20 $35

	call Call_004_5daa                               ; $5b3f: $cd $aa $5d
	jr nz, jr_004_5b66                               ; $5b42: $20 $22

	ld a, [$d084]                                    ; $5b44: $fa $84 $d0
	cp $06                                           ; $5b47: $fe $06
	jr z, jr_004_5b64                                ; $5b49: $28 $19

	ld a, [$a263]                                    ; $5b4b: $fa $63 $a2
	and a                                            ; $5b4e: $a7
	jr z, jr_004_5b64                                ; $5b4f: $28 $13

	ld a, $00                                        ; $5b51: $3e $00
	call Call_004_42bb                               ; $5b53: $cd $bb $42
	cp $3c                                           ; $5b56: $fe $3c
	jr nc, jr_004_5b64                               ; $5b58: $30 $0a

	ld a, $64                                        ; $5b5a: $3e $64
	call Call_000_12fc                                       ; $5b5c: $cd $fc $12
	cp $03                                           ; $5b5f: $fe $03
	jp c, Jump_004_5c25                              ; $5b61: $da $25 $5c

jr_004_5b64:
	xor a                                            ; $5b64: $af
	ret                                              ; $5b65: $c9


jr_004_5b66:
	ld a, $01                                        ; $5b66: $3e $01
	ret                                              ; $5b68: $c9


Jump_004_5b69:
	ld a, $01                                        ; $5b69: $3e $01
	ld [wTaskParam5_word0+1], a                                    ; $5b6b: $ea $c5 $d0

Jump_004_5b6e:
	call Call_004_5c2e                               ; $5b6e: $cd $2e $5c
	ld a, $02                                        ; $5b71: $3e $02
	ret                                              ; $5b73: $c9


jr_004_5b74:
	ld a, $03                                        ; $5b74: $3e $03
	ret                                              ; $5b76: $c9


Jump_004_5b77:
	call Call_004_5c2e                               ; $5b77: $cd $2e $5c
	ld a, [$5d6e]                                    ; $5b7a: $fa $6e $5d
	ld [$c1ed], a                                    ; $5b7d: $ea $ed $c1
	ld a, [$d084]                                    ; $5b80: $fa $84 $d0
	dec a                                            ; $5b83: $3d
	jr nz, jr_004_5b8b                               ; $5b84: $20 $05

	ld a, $10                                        ; $5b86: $3e $10
	ld [$a385], a                                    ; $5b88: $ea $85 $a3

jr_004_5b8b:
	ld a, $04                                        ; $5b8b: $3e $04
	ret                                              ; $5b8d: $c9


	ld a, [$a30c]                                    ; $5b8e: $fa $0c $a3
	cp $ff                                           ; $5b91: $fe $ff
	jp z, Jump_004_5ae1                              ; $5b93: $ca $e1 $5a

	call Call_004_5c2e                               ; $5b96: $cd $2e $5c
	call Call_004_5c34                               ; $5b99: $cd $34 $5c
	ld a, $05                                        ; $5b9c: $3e $05
	ret                                              ; $5b9e: $c9


	call Call_004_5c2e                               ; $5b9f: $cd $2e $5c
	call Call_004_5c34                               ; $5ba2: $cd $34 $5c
	ld a, $06                                        ; $5ba5: $3e $06
	ret                                              ; $5ba7: $c9


	call Call_004_5c2e                               ; $5ba8: $cd $2e $5c
	ld a, $07                                        ; $5bab: $3e $07
	ret                                              ; $5bad: $c9


	ld a, $fb                                        ; $5bae: $3e $fb
	ld hl, $a39f                                     ; $5bb0: $21 $9f $a3
	and [hl]                                         ; $5bb3: $a6
	ld [hl], a                                       ; $5bb4: $77
	call Call_004_5c2e                               ; $5bb5: $cd $2e $5c
	call Call_004_5c34                               ; $5bb8: $cd $34 $5c
	ld a, $08                                        ; $5bbb: $3e $08
	ret                                              ; $5bbd: $c9


	call Call_004_5c2e                               ; $5bbe: $cd $2e $5c
	call Call_004_41c6                               ; $5bc1: $cd $c6 $41
	ld a, $09                                        ; $5bc4: $3e $09
	ret                                              ; $5bc6: $c9


	call Call_004_5c2e                               ; $5bc7: $cd $2e $5c
	call Call_004_5c34                               ; $5bca: $cd $34 $5c
	ld a, $14                                        ; $5bcd: $3e $14
	ret                                              ; $5bcf: $c9


	call Call_004_5c2e                               ; $5bd0: $cd $2e $5c
	ld a, $0a                                        ; $5bd3: $3e $0a
	ret                                              ; $5bd5: $c9


	call Call_004_5c2e                               ; $5bd6: $cd $2e $5c
	call Call_004_5c34                               ; $5bd9: $cd $34 $5c
	ld a, $0b                                        ; $5bdc: $3e $0b
	ret                                              ; $5bde: $c9


	ld a, $1e                                        ; $5bdf: $3e $1e
	ret                                              ; $5be1: $c9


	call Call_004_5c2e                               ; $5be2: $cd $2e $5c
	call Call_004_5c34                               ; $5be5: $cd $34 $5c
	ld a, $0c                                        ; $5be8: $3e $0c
	ret                                              ; $5bea: $c9


Jump_004_5beb:
	call Call_004_5c2e                               ; $5beb: $cd $2e $5c
	call Call_004_5c34                               ; $5bee: $cd $34 $5c
	call Call_004_63ee                               ; $5bf1: $cd $ee $63
	ld a, [$a36f]                                    ; $5bf4: $fa $6f $a3
	or $02                                           ; $5bf7: $f6 $02
	ld [$a36f], a                                    ; $5bf9: $ea $6f $a3
	ld a, $0d                                        ; $5bfc: $3e $0d
	ret                                              ; $5bfe: $c9


Jump_004_5bff:
	call Call_004_5c2e                               ; $5bff: $cd $2e $5c
	call Call_004_5c34                               ; $5c02: $cd $34 $5c
	call Call_004_63ee                               ; $5c05: $cd $ee $63
	ld a, $0e                                        ; $5c08: $3e $0e
	ret                                              ; $5c0a: $c9


Jump_004_5c0b:
	call Call_004_5c2e                               ; $5c0b: $cd $2e $5c
	ld a, $0f                                        ; $5c0e: $3e $0f
	ret                                              ; $5c10: $c9


Jump_004_5c11:
	ld a, $10                                        ; $5c11: $3e $10
	ret                                              ; $5c13: $c9


Jump_004_5c14:
	ld a, $11                                        ; $5c14: $3e $11
	ret                                              ; $5c16: $c9


Jump_004_5c17:
	call Call_004_5c2e                               ; $5c17: $cd $2e $5c
	call Call_004_5c34                               ; $5c1a: $cd $34 $5c
	ld a, $01                                        ; $5c1d: $3e $01
	ld [$a386], a                                    ; $5c1f: $ea $86 $a3
	ld a, $12                                        ; $5c22: $3e $12
	ret                                              ; $5c24: $c9


Jump_004_5c25:
	call Call_004_5c2e                               ; $5c25: $cd $2e $5c
	call Call_004_5c34                               ; $5c28: $cd $34 $5c
	ld a, $13                                        ; $5c2b: $3e $13
	ret                                              ; $5c2d: $c9


Call_004_5c2e:
	ld a, $01                                        ; $5c2e: $3e $01
	ld [$c1ec], a                                    ; $5c30: $ea $ec $c1
	ret                                              ; $5c33: $c9


Call_004_5c34:
	ld a, $01                                        ; $5c34: $3e $01
	ld [$c1f1], a                                    ; $5c36: $ea $f1 $c1
	ret                                              ; $5c39: $c9


Call_004_5c3a:
Jump_004_5c3a:
	ld a, [$c1ea]                                    ; $5c3a: $fa $ea $c1
	inc a                                            ; $5c3d: $3c
	ld [$c1ea], a                                    ; $5c3e: $ea $ea $c1
	ret                                              ; $5c41: $c9


	ld a, [$c1ee]                                    ; $5c42: $fa $ee $c1
	and a                                            ; $5c45: $a7
	jr z, jr_004_5c5e                                ; $5c46: $28 $16

	xor a                                            ; $5c48: $af
	ld [$c1ee], a                                    ; $5c49: $ea $ee $c1
	ld a, [$c1eb]                                    ; $5c4c: $fa $eb $c1
	call Call_004_67bc                               ; $5c4f: $cd $bc $67
	ld hl, $c1fa                                     ; $5c52: $21 $fa $c1
	cp [hl]                                          ; $5c55: $be
	jr z, jr_004_5c5e                                ; $5c56: $28 $06

	ld [hl], a                                       ; $5c58: $77
	ld a, $80                                        ; $5c59: $3e $80
	ld [$c1ea], a                                    ; $5c5b: $ea $ea $c1

jr_004_5c5e:
	xor a                                            ; $5c5e: $af
	ld [wTaskParam5_word0+1], a                                    ; $5c5f: $ea $c5 $d0
	call Call_004_5dcd                               ; $5c62: $cd $cd $5d
	ret                                              ; $5c65: $c9


	ld [$c1eb], a                                    ; $5c66: $ea $eb $c1
	call $3b89                                       ; $5c69: $cd $89 $3b
	call Call_004_67bc                               ; $5c6c: $cd $bc $67
	ld [$c1fa], a                                    ; $5c6f: $ea $fa $c1
	xor a                                            ; $5c72: $af
	ld [$c1ea], a                                    ; $5c73: $ea $ea $c1
	ld a, $0a                                        ; $5c76: $3e $0a
	call Call_000_12fc                                       ; $5c78: $cd $fc $12
	ld [$a385], a                                    ; $5c7b: $ea $85 $a3
	ret                                              ; $5c7e: $c9


	xor a                                            ; $5c7f: $af
	ld [$c1eb], a                                    ; $5c80: $ea $eb $c1
	ld [$a385], a                                    ; $5c83: $ea $85 $a3
	ld [$a39b], a                                    ; $5c86: $ea $9b $a3
	ld a, $ff                                        ; $5c89: $3e $ff
	ld [$d234], a                                    ; $5c8b: $ea $34 $d2
	ret                                              ; $5c8e: $c9


	cp $09                                           ; $5c8f: $fe $09
	jr c, jr_004_5c95                                ; $5c91: $38 $02

	ld a, $01                                        ; $5c93: $3e $01

jr_004_5c95:
	call $3b89                                       ; $5c95: $cd $89 $3b
	ld [$c1ef], a                                    ; $5c98: $ea $ef $c1
	call Call_004_67bc                               ; $5c9b: $cd $bc $67
	ld [$c1fa], a                                    ; $5c9e: $ea $fa $c1
	ld a, [$c1ef]                                    ; $5ca1: $fa $ef $c1
	call Call_004_5ce5                               ; $5ca4: $cd $e5 $5c
	call Call_004_66da                               ; $5ca7: $cd $da $66
	ld a, [$c1fa]                                    ; $5caa: $fa $fa $c1
	ld b, a                                          ; $5cad: $47
	ld a, [$c1ef]                                    ; $5cae: $fa $ef $c1
	call Call_004_662c                               ; $5cb1: $cd $2c $66
	and a                                            ; $5cb4: $a7
	jr z, jr_004_5cba                                ; $5cb5: $28 $03

	call Call_004_5c3a                               ; $5cb7: $cd $3a $5c

jr_004_5cba:
	ld a, [$c1ef]                                    ; $5cba: $fa $ef $c1
	call Call_004_67bc                               ; $5cbd: $cd $bc $67
	ld [$c1fa], a                                    ; $5cc0: $ea $fa $c1
	ret                                              ; $5cc3: $c9


	ld [$c1ef], a                                    ; $5cc4: $ea $ef $c1
	call Call_004_67bc                               ; $5cc7: $cd $bc $67
	ld [$c1fa], a                                    ; $5cca: $ea $fa $c1
	ld a, [$c1ef]                                    ; $5ccd: $fa $ef $c1
	call Call_004_5ce5                               ; $5cd0: $cd $e5 $5c
	call Call_004_66da                               ; $5cd3: $cd $da $66
	ld a, [$c1fa]                                    ; $5cd6: $fa $fa $c1
	ld b, a                                          ; $5cd9: $47
	ld a, [$c1ef]                                    ; $5cda: $fa $ef $c1
	call Call_004_662c                               ; $5cdd: $cd $2c $66
	and a                                            ; $5ce0: $a7
	ret z                                            ; $5ce1: $c8

	jp Jump_004_5c3a                                 ; $5ce2: $c3 $3a $5c


Call_004_5ce5:
	ld b, a                                          ; $5ce5: $47
	call $3b89                                       ; $5ce6: $cd $89 $3b
	cp $08                                           ; $5ce9: $fe $08
	jr z, jr_004_5d3c                                ; $5ceb: $28 $4f

	ld hl, $5d5a                                     ; $5ced: $21 $5a $5d
	rst AddAOntoHL                                          ; $5cf0: $ef
	ld a, [hl]                                       ; $5cf1: $7e
	ld [$c1ed], a                                    ; $5cf2: $ea $ed $c1
	ld a, b                                          ; $5cf5: $78
	cp $07                                           ; $5cf6: $fe $07
	jr z, jr_004_5d2d                                ; $5cf8: $28 $33

	cp $06                                           ; $5cfa: $fe $06
	jr z, jr_004_5d47                                ; $5cfc: $28 $49

	ld a, [$a384]                                    ; $5cfe: $fa $84 $a3
	and a                                            ; $5d01: $a7
	jr nz, jr_004_5d0a                               ; $5d02: $20 $06

	ld a, [$d087]                                    ; $5d04: $fa $87 $d0
	and a                                            ; $5d07: $a7
	jr z, jr_004_5d47                                ; $5d08: $28 $3d

jr_004_5d0a:
	ld a, b                                          ; $5d0a: $78
	cp $04                                           ; $5d0b: $fe $04
	jr c, jr_004_5d1d                                ; $5d0d: $38 $0e

	jr z, jr_004_5d25                                ; $5d0f: $28 $14

	cp $05                                           ; $5d11: $fe $05
	jr nz, jr_004_5d47                               ; $5d13: $20 $32

	ld a, [$5d64]                                    ; $5d15: $fa $64 $5d
	ld [$c1ed], a                                    ; $5d18: $ea $ed $c1
	jr jr_004_5d47                                   ; $5d1b: $18 $2a

jr_004_5d1d:
	ld a, [$5d63]                                    ; $5d1d: $fa $63 $5d
	ld [$c1ed], a                                    ; $5d20: $ea $ed $c1
	jr jr_004_5d47                                   ; $5d23: $18 $22

jr_004_5d25:
	ld a, [$5d62]                                    ; $5d25: $fa $62 $5d
	ld [$c1ed], a                                    ; $5d28: $ea $ed $c1
	jr jr_004_5d47                                   ; $5d2b: $18 $1a

jr_004_5d2d:
	ld a, [$a33a]                                    ; $5d2d: $fa $3a $a3
	cp $03                                           ; $5d30: $fe $03
	jr nz, jr_004_5d47                               ; $5d32: $20 $13

	ld a, [$5d5a]                                    ; $5d34: $fa $5a $5d
	ld [$c1ed], a                                    ; $5d37: $ea $ed $c1
	jr jr_004_5d47                                   ; $5d3a: $18 $0b

jr_004_5d3c:
	ld a, [$a30c]                                    ; $5d3c: $fa $0c $a3
	ld hl, $5d65                                     ; $5d3f: $21 $65 $5d
	rst AddAOntoHL                                          ; $5d42: $ef
	ld a, [hl]                                       ; $5d43: $7e
	ld [$c1ed], a                                    ; $5d44: $ea $ed $c1

jr_004_5d47:
	ld a, [$c1ed]                                    ; $5d47: $fa $ed $c1
	cp $04                                           ; $5d4a: $fe $04
	ret nc                                           ; $5d4c: $d0

	ld b, a                                          ; $5d4d: $47
	ld a, [$d086]                                    ; $5d4e: $fa $86 $d0
	and $02                                          ; $5d51: $e6 $02
	srl a                                            ; $5d53: $cb $3f
	add b                                            ; $5d55: $80
	ld [$c1ed], a                                    ; $5d56: $ea $ed $c1
	ret                                              ; $5d59: $c9


	nop                                              ; $5d5a: $00
	inc b                                            ; $5d5b: $04
	dec b                                            ; $5d5c: $05
	ld b, $07                                        ; $5d5d: $06 $07
	ld [$0a09], sp                                   ; $5d5f: $08 $09 $0a
	inc d                                            ; $5d62: $14
	dec d                                            ; $5d63: $15
	ld d, $0b                                        ; $5d64: $16 $0b
	inc c                                            ; $5d66: $0c
	dec c                                            ; $5d67: $0d
	ld c, $0f                                        ; $5d68: $0e $0f
	db $10                                           ; $5d6a: $10
	ld de, $1312                                     ; $5d6b: $11 $12 $13
	rla                                              ; $5d6e: $17
	call $3b89                                       ; $5d6f: $cd $89 $3b
	ld a, [$d086]                                    ; $5d72: $fa $86 $d0
	and $02                                          ; $5d75: $e6 $02
	srl a                                            ; $5d77: $cb $3f
	add $02                                          ; $5d79: $c6 $02
	ld [$c1ed], a                                    ; $5d7b: $ea $ed $c1
	call Call_004_66da                               ; $5d7e: $cd $da $66
	call Call_004_75ec                               ; $5d81: $cd $ec $75
	ret                                              ; $5d84: $c9


	call $3b89                                       ; $5d85: $cd $89 $3b
	ld a, [$a384]                                    ; $5d88: $fa $84 $a3
	and a                                            ; $5d8b: $a7
	jr nz, jr_004_5d9c                               ; $5d8c: $20 $0e

	ld a, [$c1ea]                                    ; $5d8e: $fa $ea $c1
	and $80                                          ; $5d91: $e6 $80
	jr z, jr_004_5d98                                ; $5d93: $28 $03

jr_004_5d95:
	ld a, $0f                                        ; $5d95: $3e $0f
	ret                                              ; $5d97: $c9


jr_004_5d98:
	ld a, [$c1ea]                                    ; $5d98: $fa $ea $c1
	ret                                              ; $5d9b: $c9


jr_004_5d9c:
	ld a, [$c1eb]                                    ; $5d9c: $fa $eb $c1
	cp $08                                           ; $5d9f: $fe $08
	jr nz, jr_004_5d95                               ; $5da1: $20 $f2

	ld a, [$c1ea]                                    ; $5da3: $fa $ea $c1
	and a                                            ; $5da6: $a7
	jr nz, jr_004_5d95                               ; $5da7: $20 $ec

	ret                                              ; $5da9: $c9


Call_004_5daa:
	ld a, [$d084]                                    ; $5daa: $fa $84 $d0
	and a                                            ; $5dad: $a7
	jr z, jr_004_5dc2                                ; $5dae: $28 $12

	ld b, a                                          ; $5db0: $47
	ld a, $40                                        ; $5db1: $3e $40

jr_004_5db3:
	srl a                                            ; $5db3: $cb $3f
	dec b                                            ; $5db5: $05
	jr nz, jr_004_5db3                               ; $5db6: $20 $fb

	ld b, a                                          ; $5db8: $47
	ld hl, $5dc3                                     ; $5db9: $21 $c3 $5d
	ld a, [$a385]                                    ; $5dbc: $fa $85 $a3
	rst AddAOntoHL                                          ; $5dbf: $ef
	ld a, [hl]                                       ; $5dc0: $7e
	and b                                            ; $5dc1: $a0

jr_004_5dc2:
	ret                                              ; $5dc2: $c9


	jr z, jr_004_5de9                                ; $5dc3: $28 $24

	ld [hl+], a                                      ; $5dc5: $22
	ld hl, $1214                                     ; $5dc6: $21 $14 $12
	ld de, $090a                                     ; $5dc9: $11 $0a $09
	dec b                                            ; $5dcc: $05

Call_004_5dcd:
	ld a, [$a224]                                    ; $5dcd: $fa $24 $a2
	ld [$d0ac], a                                    ; $5dd0: $ea $ac $d0
	ld a, [$a226]                                    ; $5dd3: $fa $26 $a2
	ld [$d0ad], a                                    ; $5dd6: $ea $ad $d0
	ld a, [$a228]                                    ; $5dd9: $fa $28 $a2
	ld [$d0ae], a                                    ; $5ddc: $ea $ae $d0
	push bc                                          ; $5ddf: $c5
	call Call_004_5e11                               ; $5de0: $cd $11 $5e
	pop bc                                           ; $5de3: $c1
	ld a, [$a226]                                    ; $5de4: $fa $26 $a2
	cp $07                                           ; $5de7: $fe $07

jr_004_5de9:
	jr nz, jr_004_5df5                               ; $5de9: $20 $0a

	ld a, [$a228]                                    ; $5deb: $fa $28 $a2
	and a                                            ; $5dee: $a7
	jr nz, jr_004_5df5                               ; $5def: $20 $04

	xor a                                            ; $5df1: $af
	ld [$a386], a                                    ; $5df2: $ea $86 $a3

jr_004_5df5:
	ld a, [$a228]                                    ; $5df5: $fa $28 $a2
	and a                                            ; $5df8: $a7
	ret nz                                           ; $5df9: $c0

	ld a, [$d0ac]                                    ; $5dfa: $fa $ac $d0
	ld [$d081], a                                    ; $5dfd: $ea $81 $d0
	ld a, [$d0ad]                                    ; $5e00: $fa $ad $d0
	ld [$d082], a                                    ; $5e03: $ea $82 $d0
	ld a, [$d0ae]                                    ; $5e06: $fa $ae $d0
	ld [$d083], a                                    ; $5e09: $ea $83 $d0
	rst FarCall                                          ; $5e0c: $f7
	ld d, d                                          ; $5e0d: $52
	ld c, d                                          ; $5e0e: $4a
	dec b                                            ; $5e0f: $05
	ret                                              ; $5e10: $c9


Call_004_5e11:
	ld a, [$a22c]                                    ; $5e11: $fa $2c $a2
	ld c, a                                          ; $5e14: $4f
	ld a, [$a22d]                                    ; $5e15: $fa $2d $a2
	ld b, a                                          ; $5e18: $47
	inc bc                                           ; $5e19: $03
	ld a, c                                          ; $5e1a: $79
	ld [$a22c], a                                    ; $5e1b: $ea $2c $a2
	ld a, b                                          ; $5e1e: $78
	ld [$a22d], a                                    ; $5e1f: $ea $2d $a2
	ld hl, $5f91                                     ; $5e22: $21 $91 $5f
	ld a, [$a224]                                    ; $5e25: $fa $24 $a2
	ld b, a                                          ; $5e28: $47
	ld c, $0c                                        ; $5e29: $0e $0c
	call BCequBtimesC                                       ; $5e2b: $cd $5f $12
	add hl, bc                                       ; $5e2e: $09
	ld a, [$a226]                                    ; $5e2f: $fa $26 $a2
	rst AddAOntoHL                                          ; $5e32: $ef
	ld b, [hl]                                       ; $5e33: $46
	ld a, [$a228]                                    ; $5e34: $fa $28 $a2
	inc a                                            ; $5e37: $3c
	cp b                                             ; $5e38: $b8
	jr nz, jr_004_5e3d                               ; $5e39: $20 $02

	ld a, $00                                        ; $5e3b: $3e $00

jr_004_5e3d:
	ld [$a228], a                                    ; $5e3d: $ea $28 $a2
	jr nz, jr_004_5e58                               ; $5e40: $20 $16

	ld a, [$a226]                                    ; $5e42: $fa $26 $a2
	inc a                                            ; $5e45: $3c
	cp $0c                                           ; $5e46: $fe $0c
	jr nz, jr_004_5e4c                               ; $5e48: $20 $02

	ld a, $00                                        ; $5e4a: $3e $00

jr_004_5e4c:
	ld [$a226], a                                    ; $5e4c: $ea $26 $a2
	jr nz, jr_004_5e58                               ; $5e4f: $20 $07

	ld a, [$a224]                                    ; $5e51: $fa $24 $a2
	inc a                                            ; $5e54: $3c
	ld [$a224], a                                    ; $5e55: $ea $24 $a2

jr_004_5e58:
	call $3b89                                       ; $5e58: $cd $89 $3b
	ld a, [$d084]                                    ; $5e5b: $fa $84 $d0
	ld [$d080], a                                    ; $5e5e: $ea $80 $d0
	ret                                              ; $5e61: $c9


Call_004_5e62:
	ld hl, $d0a6                                     ; $5e62: $21 $a6 $d0
	ld a, [$a22c]                                    ; $5e65: $fa $2c $a2
	ld [hl+], a                                      ; $5e68: $22
	ld a, [$a22d]                                    ; $5e69: $fa $2d $a2
	ld [hl+], a                                      ; $5e6c: $22
	ld a, [$a224]                                    ; $5e6d: $fa $24 $a2
	ld [hl+], a                                      ; $5e70: $22
	ld a, [$a226]                                    ; $5e71: $fa $26 $a2
	ld [hl+], a                                      ; $5e74: $22
	ld a, [$a228]                                    ; $5e75: $fa $28 $a2
	ld [hl+], a                                      ; $5e78: $22
	ld a, [$d080]                                    ; $5e79: $fa $80 $d0
	ld [hl], a                                       ; $5e7c: $77
	ret                                              ; $5e7d: $c9


Call_004_5e7e:
	ld hl, $d0a6                                     ; $5e7e: $21 $a6 $d0
	ld a, [hl+]                                      ; $5e81: $2a
	ld [$a22c], a                                    ; $5e82: $ea $2c $a2
	ld a, [hl+]                                      ; $5e85: $2a
	ld [$a22d], a                                    ; $5e86: $ea $2d $a2
	ld a, [hl+]                                      ; $5e89: $2a
	ld [$a224], a                                    ; $5e8a: $ea $24 $a2
	ld a, [hl+]                                      ; $5e8d: $2a
	ld [$a226], a                                    ; $5e8e: $ea $26 $a2
	ld a, [hl+]                                      ; $5e91: $2a
	ld [$a228], a                                    ; $5e92: $ea $28 $a2
	ld a, [hl]                                       ; $5e95: $7e
	ld [$d080], a                                    ; $5e96: $ea $80 $d0
	ret                                              ; $5e99: $c9


	call $3b89                                       ; $5e9a: $cd $89 $3b
	ld a, [$d089]                                    ; $5e9d: $fa $89 $d0
	jr jr_004_5eb6                                   ; $5ea0: $18 $14

	call Call_004_5e62                               ; $5ea2: $cd $62 $5e
	call Call_004_5e11                               ; $5ea5: $cd $11 $5e
	call $3b89                                       ; $5ea8: $cd $89 $3b
	ld a, [$d089]                                    ; $5eab: $fa $89 $d0
	push af                                          ; $5eae: $f5
	call Call_004_5e7e                               ; $5eaf: $cd $7e $5e
	call $3b89                                       ; $5eb2: $cd $89 $3b
	pop af                                           ; $5eb5: $f1

jr_004_5eb6:
	and a                                            ; $5eb6: $a7
	ret z                                            ; $5eb7: $c8

	dec a                                            ; $5eb8: $3d
	ld hl, $5ebf                                     ; $5eb9: $21 $bf $5e
	rst AddAOntoHL                                          ; $5ebc: $ef
	ld a, [hl]                                       ; $5ebd: $7e
	ret                                              ; $5ebe: $c9


	nop                                              ; $5ebf: $00
	inc c                                            ; $5ec0: $0c
	nop                                              ; $5ec1: $00
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	ld b, $01                                        ; $5ec4: $06 $01
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
	ld bc, $0a09                                     ; $5ec8: $01 $09 $0a
	ld a, [bc]                                       ; $5ecb: $0a
	ld a, [bc]                                       ; $5ecc: $0a
	nop                                              ; $5ecd: $00
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	ld bc, $0101                                     ; $5ed0: $01 $01 $01
	rlca                                             ; $5ed3: $07
	inc bc                                           ; $5ed4: $03
	inc bc                                           ; $5ed5: $03
	inc bc                                           ; $5ed6: $03
	dec bc                                           ; $5ed7: $0b
	ld [bc], a                                       ; $5ed8: $02
	inc b                                            ; $5ed9: $04
	inc b                                            ; $5eda: $04
	inc b                                            ; $5edb: $04
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	ld bc, $0101                                     ; $5edf: $01 $01 $01
	nop                                              ; $5ee2: $00
	ld [$fffe], sp                                   ; $5ee3: $08 $fe $ff
	ret z                                            ; $5ee6: $c8

	push af                                          ; $5ee7: $f5
	cp $01                                           ; $5ee8: $fe $01
	jr z, jr_004_5efc                                ; $5eea: $28 $10

	cp $02                                           ; $5eec: $fe $02
	jr z, jr_004_5efc                                ; $5eee: $28 $0c

	cp $03                                           ; $5ef0: $fe $03
	jr z, jr_004_5efc                                ; $5ef2: $28 $08

	cp $06                                           ; $5ef4: $fe $06
	jr z, jr_004_5efc                                ; $5ef6: $28 $04

	ld a, $02                                        ; $5ef8: $3e $02
	jr jr_004_5efd                                   ; $5efa: $18 $01

jr_004_5efc:
	xor a                                            ; $5efc: $af

jr_004_5efd:
	ld b, a                                          ; $5efd: $47
	ld a, [$d086]                                    ; $5efe: $fa $86 $d0
	and $02                                          ; $5f01: $e6 $02
	srl a                                            ; $5f03: $cb $3f
	add b                                            ; $5f05: $80
	ld [$c1ed], a                                    ; $5f06: $ea $ed $c1
	pop af                                           ; $5f09: $f1
	push af                                          ; $5f0a: $f5
	sla a                                            ; $5f0b: $cb $27
	ld hl, $5f4c                                     ; $5f0d: $21 $4c $5f
	rst AddAOntoHL                                          ; $5f10: $ef
	ld b, [hl]                                       ; $5f11: $46
	inc hl                                           ; $5f12: $23
	pop af                                           ; $5f13: $f1
	push af                                          ; $5f14: $f5
	cp $00                                           ; $5f15: $fe $00
	jr z, jr_004_5f1f                                ; $5f17: $28 $06

	cp $01                                           ; $5f19: $fe $01
	jr z, jr_004_5f1f                                ; $5f1b: $28 $02

	jr jr_004_5f2a                                   ; $5f1d: $18 $0b

jr_004_5f1f:
	ld a, [$a30c]                                    ; $5f1f: $fa $0c $a3
	cp $ff                                           ; $5f22: $fe $ff
	jr z, jr_004_5f2a                                ; $5f24: $28 $04

	ld a, $04                                        ; $5f26: $3e $04
	or b                                             ; $5f28: $b0
	ld b, a                                          ; $5f29: $47

jr_004_5f2a:
	ld a, b                                          ; $5f2a: $78
	ld [$d3a5], a                                    ; $5f2b: $ea $a5 $d3
	pop af                                           ; $5f2e: $f1
	cp $01                                           ; $5f2f: $fe $01
	jr z, jr_004_5f39                                ; $5f31: $28 $06

	cp $02                                           ; $5f33: $fe $02
	jr z, jr_004_5f39                                ; $5f35: $28 $02

	jr jr_004_5f46                                   ; $5f37: $18 $0d

jr_004_5f39:
	call $3b89                                       ; $5f39: $cd $89 $3b
	ld a, [$d08a]                                    ; $5f3c: $fa $8a $d0
	and a                                            ; $5f3f: $a7
	jr z, jr_004_5f47                                ; $5f40: $28 $05

	ld a, $20                                        ; $5f42: $3e $20
	jr jr_004_5f47                                   ; $5f44: $18 $01

jr_004_5f46:
	xor a                                            ; $5f46: $af

jr_004_5f47:
	or [hl]                                          ; $5f47: $b6
	ld [$d3a4], a                                    ; $5f48: $ea $a4 $d3
	ret                                              ; $5f4b: $c9


	ld a, e                                          ; $5f4c: $7b
	adc [hl]                                         ; $5f4d: $8e
	ld a, e                                          ; $5f4e: $7b
	call c, $dc7f                                    ; $5f4f: $dc $7f $dc
	ld [hl], b                                       ; $5f52: $70
	inc c                                            ; $5f53: $0c
	ld [hl], b                                       ; $5f54: $70
	ld c, $00                                        ; $5f55: $0e $00
	adc [hl]                                         ; $5f57: $8e
	nop                                              ; $5f58: $00
	adc h                                            ; $5f59: $8c
	inc b                                            ; $5f5a: $04
	ld c, $00                                        ; $5f5b: $0e $00
	rrca                                             ; $5f5d: $0f
	ld hl, $5f71                                     ; $5f5e: $21 $71 $5f
	rst AddAOntoHL                                          ; $5f61: $ef
	ld a, [hl]                                       ; $5f62: $7e
	ret                                              ; $5f63: $c9


	cp $10                                           ; $5f64: $fe $10
	jr nc, jr_004_5f6e                               ; $5f66: $30 $06

	ld hl, $5f81                                     ; $5f68: $21 $81 $5f
	rst AddAOntoHL                                          ; $5f6b: $ef
	ld a, [hl]                                       ; $5f6c: $7e
	ret                                              ; $5f6d: $c9


jr_004_5f6e:
	ld a, $01                                        ; $5f6e: $3e $01
	ret                                              ; $5f70: $c9


	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	ld bc, $0302                                     ; $5f73: $01 $02 $03
	dec b                                            ; $5f76: $05
	ld b, $07                                        ; $5f77: $06 $07
	inc b                                            ; $5f79: $04
	add hl, bc                                       ; $5f7a: $09
	ld [$0b0a], sp                                   ; $5f7b: $08 $0a $0b
	inc c                                            ; $5f7e: $0c
	dec c                                            ; $5f7f: $0d
	ld c, $01                                        ; $5f80: $0e $01
	ld [bc], a                                       ; $5f82: $02
	inc bc                                           ; $5f83: $03
	inc b                                            ; $5f84: $04
	ld [$0605], sp                                   ; $5f85: $08 $05 $06
	rlca                                             ; $5f88: $07
	ld a, [bc]                                       ; $5f89: $0a
	add hl, bc                                       ; $5f8a: $09
	dec bc                                           ; $5f8b: $0b
	inc c                                            ; $5f8c: $0c
	dec c                                            ; $5f8d: $0d
	ld c, $0f                                        ; $5f8e: $0e $0f
	db $10                                           ; $5f90: $10
	rra                                              ; $5f91: $1f
	inc e                                            ; $5f92: $1c
	rra                                              ; $5f93: $1f
	ld e, $1f                                        ; $5f94: $1e $1f
	ld e, $1f                                        ; $5f96: $1e $1f
	rra                                              ; $5f98: $1f
	ld e, $1f                                        ; $5f99: $1e $1f
	ld e, $1f                                        ; $5f9b: $1e $1f
	rra                                              ; $5f9d: $1f
	inc e                                            ; $5f9e: $1c
	rra                                              ; $5f9f: $1f
	ld e, $1f                                        ; $5fa0: $1e $1f
	ld e, $1f                                        ; $5fa2: $1e $1f
	rra                                              ; $5fa4: $1f
	ld e, $1f                                        ; $5fa5: $1e $1f
	ld e, $1f                                        ; $5fa7: $1e $1f
	rra                                              ; $5fa9: $1f
	inc e                                            ; $5faa: $1c
	rra                                              ; $5fab: $1f
	ld e, $1f                                        ; $5fac: $1e $1f
	ld e, $1f                                        ; $5fae: $1e $1f
	rra                                              ; $5fb0: $1f
	ld e, $1f                                        ; $5fb1: $1e $1f
	ld e, $1f                                        ; $5fb3: $1e $1f
	rra                                              ; $5fb5: $1f
	dec e                                            ; $5fb6: $1d
	rra                                              ; $5fb7: $1f

Call_004_5fb8:
	ld b, a                                          ; $5fb8: $47
	ld a, [$d0a5]                                    ; $5fb9: $fa $a5 $d0
	and $03                                          ; $5fbc: $e6 $03
	ld a, $03                                        ; $5fbe: $3e $03
	jr nz, jr_004_5fd4                               ; $5fc0: $20 $12

	ld a, b                                          ; $5fc2: $78
	cp $08                                           ; $5fc3: $fe $08
	ld a, $01                                        ; $5fc5: $3e $01
	jr z, jr_004_5fd4                                ; $5fc7: $28 $0b

	ld a, [$d0a4]                                    ; $5fc9: $fa $a4 $d0
	and $10                                          ; $5fcc: $e6 $10
	ld a, $01                                        ; $5fce: $3e $01
	jr nz, jr_004_5fd4                               ; $5fd0: $20 $02

	ld a, $00                                        ; $5fd2: $3e $00

jr_004_5fd4:
	ld [$c1e7], a                                    ; $5fd4: $ea $e7 $c1
	ret                                              ; $5fd7: $c9


Call_004_5fd8:
	ld b, a                                          ; $5fd8: $47
	ld a, [$c1e7]                                    ; $5fd9: $fa $e7 $c1
	cp $03                                           ; $5fdc: $fe $03
	jr nz, jr_004_5fe5                               ; $5fde: $20 $05

	xor a                                            ; $5fe0: $af
	ld [$c1e8], a                                    ; $5fe1: $ea $e8 $c1
	ret                                              ; $5fe4: $c9


jr_004_5fe5:
	cp $02                                           ; $5fe5: $fe $02
	jr nz, jr_004_5ff2                               ; $5fe7: $20 $09

	ld a, [$a30c]                                    ; $5fe9: $fa $0c $a3
	sub $04                                          ; $5fec: $d6 $04
	ld [$c1e8], a                                    ; $5fee: $ea $e8 $c1
	ret                                              ; $5ff1: $c9


jr_004_5ff2:
	cp $01                                           ; $5ff2: $fe $01
	jr nz, jr_004_5ffd                               ; $5ff4: $20 $07

	ld a, [$a30c]                                    ; $5ff6: $fa $0c $a3
	ld [$c1e8], a                                    ; $5ff9: $ea $e8 $c1
	ret                                              ; $5ffc: $c9


jr_004_5ffd:
	ld a, b                                          ; $5ffd: $78
	dec a                                            ; $5ffe: $3d
	ld hl, $6397                                     ; $5fff: $21 $97 $63
	rst AddAOntoHL                                          ; $6002: $ef
	ld a, [hl]                                       ; $6003: $7e
	ld [$c1e8], a                                    ; $6004: $ea $e8 $c1
	cp $06                                           ; $6007: $fe $06
	ret nz                                           ; $6009: $c0

	ld a, [$a33a]                                    ; $600a: $fa $3a $a3
	cp $03                                           ; $600d: $fe $03
	ret nz                                           ; $600f: $c0

	ld a, $07                                        ; $6010: $3e $07
	ld [$c1e8], a                                    ; $6012: $ea $e8 $c1
	ret                                              ; $6015: $c9


Call_004_6016:
	call $3b89                                       ; $6016: $cd $89 $3b
	xor a                                            ; $6019: $af
	ld [$c1e9], a                                    ; $601a: $ea $e9 $c1
	ld a, [$c1e7]                                    ; $601d: $fa $e7 $c1
	cp $00                                           ; $6020: $fe $00
	jr nz, jr_004_6035                               ; $6022: $20 $11

	ld a, [$a384]                                    ; $6024: $fa $84 $a3
	and a                                            ; $6027: $a7
	jr nz, jr_004_6030                               ; $6028: $20 $06

	ld a, [$d087]                                    ; $602a: $fa $87 $d0
	and a                                            ; $602d: $a7
	jr z, jr_004_6035                                ; $602e: $28 $05

jr_004_6030:
	ld a, $02                                        ; $6030: $3e $02
	ld [$c1e9], a                                    ; $6032: $ea $e9 $c1

jr_004_6035:
	ld a, [$a226]                                    ; $6035: $fa $26 $a2
	cp $05                                           ; $6038: $fe $05
	jr c, jr_004_6041                                ; $603a: $38 $05

	cp $09                                           ; $603c: $fe $09
	jr nc, jr_004_6041                               ; $603e: $30 $01

	ret                                              ; $6040: $c9


jr_004_6041:
	ld a, [$c1e9]                                    ; $6041: $fa $e9 $c1
	or $01                                           ; $6044: $f6 $01
	ld [$c1e9], a                                    ; $6046: $ea $e9 $c1
	ret                                              ; $6049: $c9


Call_004_604a:
	cp $07                                           ; $604a: $fe $07
	jr z, jr_004_60a6                                ; $604c: $28 $58

	cp $08                                           ; $604e: $fe $08
	jr z, jr_004_605a                                ; $6050: $28 $08

	ld hl, $63a8                                     ; $6052: $21 $a8 $63
	dec a                                            ; $6055: $3d
	rst AddAOntoHL                                          ; $6056: $ef
	ld a, [hl]                                       ; $6057: $7e
	jr jr_004_6062                                   ; $6058: $18 $08

jr_004_605a:
	ld a, [$a30c]                                    ; $605a: $fa $0c $a3
	ld hl, $639f                                     ; $605d: $21 $9f $63
	rst AddAOntoHL                                          ; $6060: $ef
	ld a, [hl]                                       ; $6061: $7e

jr_004_6062:
	ld b, a                                          ; $6062: $47
	rst FarCall                                          ; $6063: $f7
	add hl, sp                                       ; $6064: $39
	halt                                             ; $6065: $76
	inc b                                            ; $6066: $04
	inc a                                            ; $6067: $3c
	sla a                                            ; $6068: $cb $27
	sla a                                            ; $606a: $cb $27
	ld d, a                                          ; $606c: $57
	ld e, $00                                        ; $606d: $1e $00
	ld a, [$a33a]                                    ; $606f: $fa $3a $a3
	and $02                                          ; $6072: $e6 $02
	jr nz, jr_004_607a                               ; $6074: $20 $04

	ld a, $10                                        ; $6076: $3e $10
	add d                                            ; $6078: $82
	ld d, a                                          ; $6079: $57

jr_004_607a:
	ld a, [$a2f1]                                    ; $607a: $fa $f1 $a2
	sub $10                                          ; $607d: $d6 $10
	jr nc, jr_004_6082                               ; $607f: $30 $01

	xor a                                            ; $6081: $af

jr_004_6082:
	cp $60                                           ; $6082: $fe $60
	jr c, jr_004_6088                                ; $6084: $38 $02

	ld a, $60                                        ; $6086: $3e $60

jr_004_6088:
	srl a                                            ; $6088: $cb $3f
	rr e                                             ; $608a: $cb $1b
	add d                                            ; $608c: $82
	ld d, a                                          ; $608d: $57
	ld a, [$a301]                                    ; $608e: $fa $01 $a3
	cp $3f                                           ; $6091: $fe $3f
	jr c, jr_004_6097                                ; $6093: $38 $02

	ld a, $3f                                        ; $6095: $3e $3f

jr_004_6097:
	add $80                                          ; $6097: $c6 $80
	ld b, a                                          ; $6099: $47
	call Call_000_1309                                       ; $609a: $cd $09 $13
	ld c, a                                          ; $609d: $4f
	call BCequBtimesC                                       ; $609e: $cd $5f $12
	call wCpBCtoDE                                       ; $60a1: $cd $8c $ce
	jr nc, jr_004_60ab                               ; $60a4: $30 $05

jr_004_60a6:
	xor a                                            ; $60a6: $af
	ld [$c1e6], a                                    ; $60a7: $ea $e6 $c1
	ret                                              ; $60aa: $c9


jr_004_60ab:
	ld a, $01                                        ; $60ab: $3e $01
	ld [$c1e6], a                                    ; $60ad: $ea $e6 $c1
	ret                                              ; $60b0: $c9


Call_004_60b1:
	call $3b89                                       ; $60b1: $cd $89 $3b
	cp $08                                           ; $60b4: $fe $08
	jr nz, jr_004_60bd                               ; $60b6: $20 $05

	ld b, a                                          ; $60b8: $47
	ld a, [$a30c]                                    ; $60b9: $fa $0c $a3
	add b                                            ; $60bc: $80

jr_004_60bd:
	dec a                                            ; $60bd: $3d
	ld d, a                                          ; $60be: $57
	ld hl, $6386                                     ; $60bf: $21 $86 $63
	rst AddAOntoHL                                          ; $60c2: $ef
	ld e, [hl]                                       ; $60c3: $5e
	ld a, d                                          ; $60c4: $7a
	swap a                                           ; $60c5: $cb $37
	srl a                                            ; $60c7: $cb $3f
	add d                                            ; $60c9: $82
	ld hl, $62f6                                     ; $60ca: $21 $f6 $62
	rst AddAOntoHL                                          ; $60cd: $ef
	ld a, l                                          ; $60ce: $7d
	ld [$c0d1], a                                    ; $60cf: $ea $d1 $c0
	ld a, h                                          ; $60d2: $7c
	ld [$c0d2], a                                    ; $60d3: $ea $d2 $c0
	xor a                                            ; $60d6: $af
	ld [$c0d0], a                                    ; $60d7: $ea $d0 $c0

Jump_004_60da:
	ld a, [$c0d1]                                    ; $60da: $fa $d1 $c0
	ld l, a                                          ; $60dd: $6f
	ld a, [$c0d2]                                    ; $60de: $fa $d2 $c0
	ld h, a                                          ; $60e1: $67
	ld a, [$c0d0]                                    ; $60e2: $fa $d0 $c0
	rst AddAOntoHL                                          ; $60e5: $ef
	ld b, [hl]                                       ; $60e6: $46
	ld c, $00                                        ; $60e7: $0e $00
	sra b                                            ; $60e9: $cb $28
	rr c                                             ; $60eb: $cb $19
	sra b                                            ; $60ed: $cb $28
	rr c                                             ; $60ef: $cb $19
	sra b                                            ; $60f1: $cb $28
	rr c                                             ; $60f3: $cb $19
	sra b                                            ; $60f5: $cb $28
	rr c                                             ; $60f7: $cb $19
	ld a, [$d087]                                    ; $60f9: $fa $87 $d0
	and a                                            ; $60fc: $a7
	jr z, jr_004_6104                                ; $60fd: $28 $05

	call Call_004_6185                               ; $60ff: $cd $85 $61
	jr jr_004_6113                                   ; $6102: $18 $0f

jr_004_6104:
	ld a, d                                          ; $6104: $7a
	cp $07                                           ; $6105: $fe $07
	jr nz, jr_004_6113                               ; $6107: $20 $0a

	ld a, e                                          ; $6109: $7b
	cp $03                                           ; $610a: $fe $03
	jr nz, jr_004_6113                               ; $610c: $20 $05

	call Call_004_6185                               ; $610e: $cd $85 $61
	jr jr_004_612a                                   ; $6111: $18 $17

jr_004_6113:
	ld a, [$c1e6]                                    ; $6113: $fa $e6 $c1
	and a                                            ; $6116: $a7
	call nz, Call_004_619d                           ; $6117: $c4 $9d $61
	ld a, [$a33a]                                    ; $611a: $fa $3a $a3
	and $01                                          ; $611d: $e6 $01
	call nz, Call_004_6192                           ; $611f: $c4 $92 $61
	ld a, [$a33a]                                    ; $6122: $fa $3a $a3
	and $10                                          ; $6125: $e6 $10
	call nz, Call_004_6192                           ; $6127: $c4 $92 $61

jr_004_612a:
	ld a, b                                          ; $612a: $78
	and $80                                          ; $612b: $e6 $80
	jr z, jr_004_613e                                ; $612d: $28 $0f

	jr jr_004_615b                                   ; $612f: $18 $2a

jr_004_6131:
	ld a, [$c0d0]                                    ; $6131: $fa $d0 $c0
	inc a                                            ; $6134: $3c
	ld [$c0d0], a                                    ; $6135: $ea $d0 $c0
	cp $09                                           ; $6138: $fe $09
	jp nz, Jump_004_60da                             ; $613a: $c2 $da $60

	ret                                              ; $613d: $c9


jr_004_613e:
	ld a, [$c0d0]                                    ; $613e: $fa $d0 $c0
	ld hl, $a303                                     ; $6141: $21 $03 $a3
	rst AddAOntoHL                                          ; $6144: $ef
	ld a, [hl]                                       ; $6145: $7e
	add c                                            ; $6146: $81
	ld [hl], a                                       ; $6147: $77
	ld a, $00                                        ; $6148: $3e $00
	adc b                                            ; $614a: $88
	ld b, a                                          ; $614b: $47
	ld a, [$c0d0]                                    ; $614c: $fa $d0 $c0
	sla a                                            ; $614f: $cb $27
	ld hl, $d08f                                     ; $6151: $21 $8f $d0
	rst AddAOntoHL                                          ; $6154: $ef
	ld [hl], b                                       ; $6155: $70
	inc hl                                           ; $6156: $23
	ld [hl], $00                                     ; $6157: $36 $00
	jr jr_004_6131                                   ; $6159: $18 $d6

jr_004_615b:
	ld a, c                                          ; $615b: $79
	cpl                                              ; $615c: $2f
	inc a                                            ; $615d: $3c
	ld c, a                                          ; $615e: $4f
	ld a, [$c0d0]                                    ; $615f: $fa $d0 $c0
	ld hl, $a303                                     ; $6162: $21 $03 $a3
	rst AddAOntoHL                                          ; $6165: $ef
	ld a, [hl]                                       ; $6166: $7e
	sub c                                            ; $6167: $91
	ld [hl], a                                       ; $6168: $77
	ld a, b                                          ; $6169: $78
	ld b, $00                                        ; $616a: $06 $00
	rl b                                             ; $616c: $cb $10
	sub b                                            ; $616e: $90
	ld b, a                                          ; $616f: $47
	inc b                                            ; $6170: $04
	ld a, [$c0d0]                                    ; $6171: $fa $d0 $c0
	sla a                                            ; $6174: $cb $27
	ld hl, $d08f                                     ; $6176: $21 $8f $d0
	rst AddAOntoHL                                          ; $6179: $ef
	ld a, b                                          ; $617a: $78
	ld [hl+], a                                      ; $617b: $22
	ld [hl], $00                                     ; $617c: $36 $00
	and a                                            ; $617e: $a7
	jr z, jr_004_6131                                ; $617f: $28 $b0

	ld [hl], $ff                                     ; $6181: $36 $ff
	jr jr_004_6131                                   ; $6183: $18 $ac

Call_004_6185:
	call Call_004_61b2                               ; $6185: $cd $b2 $61
	ret nz                                           ; $6188: $c0

	sla c                                            ; $6189: $cb $21
	rl b                                             ; $618b: $cb $10
	sla c                                            ; $618d: $cb $21
	rl b                                             ; $618f: $cb $10
	ret                                              ; $6191: $c9


Call_004_6192:
	and e                                            ; $6192: $a3
	ret z                                            ; $6193: $c8

	call Call_004_61b2                               ; $6194: $cd $b2 $61
	ret nz                                           ; $6197: $c0

	sra b                                            ; $6198: $cb $28
	rr c                                             ; $619a: $cb $19
	ret                                              ; $619c: $c9


Call_004_619d:
	ld a, d                                          ; $619d: $7a
	cp $07                                           ; $619e: $fe $07
	ret z                                            ; $61a0: $c8

	call Call_004_61b2                               ; $61a1: $cd $b2 $61
	jr nz, jr_004_61aa                               ; $61a4: $20 $04

	sra b                                            ; $61a6: $cb $28
	rr c                                             ; $61a8: $cb $19

jr_004_61aa:
	ld a, [$c0d0]                                    ; $61aa: $fa $d0 $c0
	cp $08                                           ; $61ad: $fe $08
	ret nz                                           ; $61af: $c0

	inc bc                                           ; $61b0: $03
	ret                                              ; $61b1: $c9


Call_004_61b2:
	ld a, [$c0d0]                                    ; $61b2: $fa $d0 $c0
	cp $08                                           ; $61b5: $fe $08
	ld a, b                                          ; $61b7: $78
	jr nz, jr_004_61c0                               ; $61b8: $20 $06

	and $80                                          ; $61ba: $e6 $80
	jr z, jr_004_61c6                                ; $61bc: $28 $08

	jr jr_004_61c4                                   ; $61be: $18 $04

jr_004_61c0:
	and $80                                          ; $61c0: $e6 $80
	jr nz, jr_004_61c6                               ; $61c2: $20 $02

jr_004_61c4:
	xor a                                            ; $61c4: $af
	ret                                              ; $61c5: $c9


jr_004_61c6:
	ld a, $01                                        ; $61c6: $3e $01
	and a                                            ; $61c8: $a7
	ret                                              ; $61c9: $c9


Call_004_61ca:
	ld a, [$d0a4]                                    ; $61ca: $fa $a4 $d0
	cp $03                                           ; $61cd: $fe $03
	ret nz                                           ; $61cf: $c0

	ld a, [$a30c]                                    ; $61d0: $fa $0c $a3
	add a                                            ; $61d3: $87
	ld hl, $a30d                                     ; $61d4: $21 $0d $a3
	rst AddAOntoHL                                          ; $61d7: $ef
	ld a, [hl+]                                      ; $61d8: $2a
	ld b, [hl]                                       ; $61d9: $46
	ld c, a                                          ; $61da: $4f
	inc bc                                           ; $61db: $03
	ld [hl], b                                       ; $61dc: $70
	dec hl                                           ; $61dd: $2b
	ld [hl], c                                       ; $61de: $71
	ld a, [$a30c]                                    ; $61df: $fa $0c $a3
	cp $04                                           ; $61e2: $fe $04
	jr c, jr_004_61ef                                ; $61e4: $38 $09

	ld b, $04                                        ; $61e6: $06 $04
	call Call_004_6201                               ; $61e8: $cd $01 $62
	ld b, $07                                        ; $61eb: $06 $07
	jr jr_004_6201                                   ; $61ed: $18 $12

jr_004_61ef:
	cp $00                                           ; $61ef: $fe $00
	jr nz, jr_004_61f7                               ; $61f1: $20 $04

	ld b, $01                                        ; $61f3: $06 $01
	jr jr_004_6201                                   ; $61f5: $18 $0a

jr_004_61f7:
	cp $01                                           ; $61f7: $fe $01
	jr nz, jr_004_61ff                               ; $61f9: $20 $04

	ld b, $02                                        ; $61fb: $06 $02
	jr jr_004_6201                                   ; $61fd: $18 $02

jr_004_61ff:
	ld b, $03                                        ; $61ff: $06 $03

Call_004_6201:
jr_004_6201:
	ld hl, $a303                                     ; $6201: $21 $03 $a3
	ld a, b                                          ; $6204: $78
	rst AddAOntoHL                                          ; $6205: $ef
	ld a, $80                                        ; $6206: $3e $80
	add [hl]                                         ; $6208: $86
	ld [hl], a                                       ; $6209: $77
	ld c, $00                                        ; $620a: $0e $00
	rl c                                             ; $620c: $cb $11
	inc c                                            ; $620e: $0c
	ld hl, $d08f                                     ; $620f: $21 $8f $d0
	ld a, b                                          ; $6212: $78
	sla a                                            ; $6213: $cb $27
	rst AddAOntoHL                                          ; $6215: $ef
	ld a, c                                          ; $6216: $79
	add [hl]                                         ; $6217: $86
	ld [hl], a                                       ; $6218: $77
	ld a, $00                                        ; $6219: $3e $00
	inc hl                                           ; $621b: $23
	adc [hl]                                         ; $621c: $8e
	ld [hl], a                                       ; $621d: $77
	ret                                              ; $621e: $c9


Func_04_621f::
	push de                                          ; $621f: $d5
	ld hl, $a2f1                                     ; $6220: $21 $f1 $a2
	sla a                                            ; $6223: $cb $27
	rst AddAOntoHL                                          ; $6225: $ef
	ld e, [hl]                                       ; $6226: $5e
	inc hl                                           ; $6227: $23
	ld d, [hl]                                       ; $6228: $56
	call wAddBContoDE                                       ; $6229: $cd $92 $ce
	ld b, $03                                        ; $622c: $06 $03
	ld c, $e7                                        ; $622e: $0e $e7
	call wCpBCtoDE                                       ; $6230: $cd $8c $ce
	jr nc, :+                               ; $6233: $30 $02

	ld d, b                                          ; $6235: $50
	ld e, c                                          ; $6236: $59

:	ld [hl], d                                       ; $6237: $72
	dec hl                                           ; $6238: $2b
	ld [hl], e                                       ; $6239: $73
	ld a, [$c186]                                    ; $623a: $fa $86 $c1
	cp $00                                           ; $623d: $fe $00
	jr nz, :+                                     ; $623f: $20 $04

	rst FarCall                                          ; $6241: $f7
	AddrBank Func_01_5b35
:	pop de                                     ; $6245: $d1
	ret                                     ; $6246: $c9


;
	push de                                          ; $6247: $d5
	ld de, $a2f1                                     ; $6248: $11 $f1 $a2
	sla a                                            ; $624b: $cb $27
	call $1327                                       ; $624d: $cd $27 $13
	ld a, [de]                                       ; $6250: $1a
	ld l, a                                          ; $6251: $6f
	inc de                                           ; $6252: $13
	ld a, [de]                                       ; $6253: $1a
	ld h, a                                          ; $6254: $67
	call wHLminusEquBC                                       ; $6255: $cd $aa $ce
	jr c, .br_6261                                ; $6258: $38 $07

	ld a, h                                          ; $625a: $7c
	ld [de], a                                       ; $625b: $12
	dec de                                           ; $625c: $1b
	ld a, l                                          ; $625d: $7d
	ld [de], a                                       ; $625e: $12
	jr .cont_6265                                   ; $625f: $18 $04

.br_6261:
	xor a                                            ; $6261: $af
	ld [de], a                                       ; $6262: $12
	dec de                                           ; $6263: $1b
	ld [de], a                                       ; $6264: $12

.cont_6265:
	ld a, [$c186]                                    ; $6265: $fa $86 $c1
	cp $00                                           ; $6268: $fe $00
	jr nz, :+                                     ; $626a: $20 $04

	rst FarCall                                          ; $626c: $f7
	AddrBank Func_01_5b35
:	pop de                                     ; $6270: $d1
	ret                                     ; $6271: $c9


;
	push hl                                          ; $6272: $e5
	ld hl, $a2f1                                     ; $6273: $21 $f1 $a2
	sla a                                            ; $6276: $cb $27
	rst AddAOntoHL                                          ; $6278: $ef
	ld [hl], c                                       ; $6279: $71
	inc hl                                           ; $627a: $23
	ld [hl], b                                       ; $627b: $70
	pop hl                                           ; $627c: $e1
	ret                                              ; $627d: $c9


	push hl                                          ; $627e: $e5
	ld hl, $a2f1                                     ; $627f: $21 $f1 $a2
	sla a                                            ; $6282: $cb $27
	rst AddAOntoHL                                          ; $6284: $ef
	ld c, [hl]                                       ; $6285: $4e
	inc hl                                           ; $6286: $23
	ld b, [hl]                                       ; $6287: $46
	pop hl                                           ; $6288: $e1
	ret                                              ; $6289: $c9


	sla a                                            ; $628a: $cb $27
	ld hl, $a387                                     ; $628c: $21 $87 $a3
	rst AddAOntoHL                                          ; $628f: $ef
	ld a, [hl+]                                      ; $6290: $2a
	ld b, [hl]                                       ; $6291: $46
	ld c, a                                          ; $6292: $4f
	inc bc                                           ; $6293: $03
	ld [hl], b                                       ; $6294: $70
	dec hl                                           ; $6295: $2b
	ld [hl], c                                       ; $6296: $71
	ret                                              ; $6297: $c9


	sla a                                            ; $6298: $cb $27
	ld hl, $a387                                     ; $629a: $21 $87 $a3
	rst AddAOntoHL                                          ; $629d: $ef
	ld a, [hl+]                                      ; $629e: $2a
	ld b, [hl]                                       ; $629f: $46
	ld c, a                                          ; $62a0: $4f
	ret                                              ; $62a1: $c9


	ld hl, $a389                                     ; $62a2: $21 $89 $a3
	ld de, $0000                                     ; $62a5: $11 $00 $00
	xor a                                            ; $62a8: $af
	ld [$c0d0], a                                    ; $62a9: $ea $d0 $c0
	ld [$c0d1], a                                    ; $62ac: $ea $d1 $c0

jr_004_62af:
	ld c, [hl]                                       ; $62af: $4e
	inc hl                                           ; $62b0: $23
	ld b, [hl]                                       ; $62b1: $46
	inc hl                                           ; $62b2: $23
	ld a, [$c0d0]                                    ; $62b3: $fa $d0 $c0
	cp $00                                           ; $62b6: $fe $00
	jr nz, jr_004_62c0                               ; $62b8: $20 $06

	srl b                                            ; $62ba: $cb $38
	rr c                                             ; $62bc: $cb $19
	jr jr_004_62d9                                   ; $62be: $18 $19

jr_004_62c0:
	cp $06                                           ; $62c0: $fe $06
	jr nz, jr_004_62d9                               ; $62c2: $20 $15

	push de                                          ; $62c4: $d5
	push hl                                          ; $62c5: $e5
	ld e, c                                          ; $62c6: $59
	ld d, b                                          ; $62c7: $50
	srl d                                            ; $62c8: $cb $3a
	rr e                                             ; $62ca: $cb $1b
	srl d                                            ; $62cc: $cb $3a
	rr e                                             ; $62ce: $cb $1b
	ld h, b                                          ; $62d0: $60
	ld l, c                                          ; $62d1: $69
	call wHLminusEquDE                                       ; $62d2: $cd $9e $ce
	ld b, h                                          ; $62d5: $44
	ld c, l                                          ; $62d6: $4d
	pop hl                                           ; $62d7: $e1
	pop de                                           ; $62d8: $d1

jr_004_62d9:
	call wCpBCtoDE                                       ; $62d9: $cd $8c $ce
	jr c, jr_004_62e6                                ; $62dc: $38 $08

	ld d, b                                          ; $62de: $50
	ld e, c                                          ; $62df: $59
	ld a, [$c0d0]                                    ; $62e0: $fa $d0 $c0
	ld [$c0d1], a                                    ; $62e3: $ea $d1 $c0

jr_004_62e6:
	ld a, [$c0d0]                                    ; $62e6: $fa $d0 $c0
	inc a                                            ; $62e9: $3c
	ld [$c0d0], a                                    ; $62ea: $ea $d0 $c0
	cp $08                                           ; $62ed: $fe $08
	jr nz, jr_004_62af                               ; $62ef: $20 $be

	ld a, [$c0d1]                                    ; $62f1: $fa $d1 $c0
	inc a                                            ; $62f4: $3c
	ret                                              ; $62f5: $c9


	db $f4                                           ; $62f6: $f4
	rrca                                             ; $62f7: $0f
	ld bc, $fa01                                     ; $62f8: $01 $01 $fa
	inc b                                            ; $62fb: $04
	db $fc                                           ; $62fc: $fc
	rst $38                                          ; $62fd: $ff
	db $10                                           ; $62fe: $10
	db $f4                                           ; $62ff: $f4
	ld bc, $010f                                     ; $6300: $01 $0f $01
	db $f4                                           ; $6303: $f4
	ld [bc], a                                       ; $6304: $02
	ld sp, hl                                        ; $6305: $f9
	inc b                                            ; $6306: $04
	ld c, $f4                                        ; $6307: $0e $f4
	ld bc, $0f01                                     ; $6309: $01 $01 $0f
	ld sp, hl                                        ; $630c: $f9
	ld bc, $fffe                                     ; $630d: $01 $fe $ff
	cp $da                                           ; $6310: $fe $da
	cp $fe                                           ; $6312: $fe $fe
	cp $20                                           ; $6314: $fe $20
	ld bc, $18f9                                     ; $6316: $01 $f9 $18
	ld a, [bc]                                       ; $6319: $0a
	db $ed                                           ; $631a: $ed
	db $fc                                           ; $631b: $fc
	db $fc                                           ; $631c: $fc
	db $fc                                           ; $631d: $fc
	inc bc                                           ; $631e: $03
	jr jr_004_632d                                   ; $631f: $18 $0c

	ld a, [$f6f8]                                    ; $6321: $fa $f8 $f6
	cp $fe                                           ; $6324: $fe $fe
	rst $38                                          ; $6326: $ff
	rst $38                                          ; $6327: $ff
	ld [$f621], sp                                   ; $6328: $08 $21 $f6
	cp $31                                           ; $632b: $fe $31

jr_004_632d:
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	or $f4                                           ; $6331: $f6 $f4
	rst $38                                          ; $6333: $ff
	pop de                                           ; $6334: $d1
	db $f4                                           ; $6335: $f4
	inc c                                            ; $6336: $0c
	inc b                                            ; $6337: $04
	ld [bc], a                                       ; $6338: $02
	nop                                              ; $6339: $00
	ld bc, $fffc                                     ; $633a: $01 $fc $ff
	ld [de], a                                       ; $633d: $12
	di                                               ; $633e: $f3
	ld bc, $040f                                     ; $633f: $01 $0f $04
	nop                                              ; $6342: $00
	ld bc, $04fc                                     ; $6343: $01 $fc $04
	ld d, $f2                                        ; $6346: $16 $f2
	ld [bc], a                                       ; $6348: $02
	nop                                              ; $6349: $00
	rrca                                             ; $634a: $0f
	ld bc, $ff01                                     ; $634b: $01 $01 $ff
	cp $0f                                           ; $634e: $fe $0f
	ldh a, [c]                                       ; $6350: $f2
	ld bc, $0e01                                     ; $6351: $01 $01 $0e
	inc bc                                           ; $6354: $03
	ld [bc], a                                       ; $6355: $02
	db $fd                                           ; $6356: $fd
	ld bc, $e20e                                     ; $6357: $01 $0e $e2
	rst $38                                          ; $635a: $ff
	rst $38                                          ; $635b: $ff
	rst $38                                          ; $635c: $ff
	ld c, $01                                        ; $635d: $0e $01
	db $fc                                           ; $635f: $fc
	ld [$e20a], sp                                   ; $6360: $08 $0a $e2
	rst $38                                          ; $6363: $ff
	rst $38                                          ; $6364: $ff
	rst $38                                          ; $6365: $ff
	rrca                                             ; $6366: $0f
	ld [bc], a                                       ; $6367: $02
	db $fd                                           ; $6368: $fd
	db $10                                           ; $6369: $10
	inc c                                            ; $636a: $0c
	rst SubAFromBC                                          ; $636b: $e7
	rst $38                                          ; $636c: $ff
	rst $38                                          ; $636d: $ff
	nop                                              ; $636e: $00
	dec c                                            ; $636f: $0d
	ld [bc], a                                       ; $6370: $02
	rst $38                                          ; $6371: $ff
	add hl, bc                                       ; $6372: $09
	ld a, [bc]                                       ; $6373: $0a
	pop hl                                           ; $6374: $e1
	rst $38                                          ; $6375: $ff
	rst $38                                          ; $6376: $ff
	nop                                              ; $6377: $00
	rrca                                             ; $6378: $0f
	nop                                              ; $6379: $00
	cp $0e                                           ; $637a: $fe $0e
	ld [$ffe3], sp                                   ; $637c: $08 $e3 $ff
	rst $38                                          ; $637f: $ff
	rst $38                                          ; $6380: $ff
	ld c, $ff                                        ; $6381: $0e $ff
	db $fd                                           ; $6383: $fd
	ld c, $10                                        ; $6384: $0e $10
	ld [bc], a                                       ; $6386: $02
	ld [bc], a                                       ; $6387: $02
	ld [bc], a                                       ; $6388: $02
	ld bc, $0000                                     ; $6389: $01 $00 $00
	nop                                              ; $638c: $00
	ld [bc], a                                       ; $638d: $02
	ld [bc], a                                       ; $638e: $02
	ld [bc], a                                       ; $638f: $02
	ld [bc], a                                       ; $6390: $02
	ld [bc], a                                       ; $6391: $02
	ld bc, $0101                                     ; $6392: $01 $01 $01
	ld bc, $0001                                     ; $6395: $01 $01 $00
	ld bc, $0502                                     ; $6398: $01 $02 $05
	inc bc                                           ; $639b: $03
	inc b                                            ; $639c: $04
	ld b, $00                                        ; $639d: $06 $00
	inc b                                            ; $639f: $04
	inc b                                            ; $63a0: $04
	ld [bc], a                                       ; $63a1: $02
	ld [bc], a                                       ; $63a2: $02
	ld bc, $0101                                     ; $63a3: $01 $01 $01
	ld bc, $0401                                     ; $63a6: $01 $01 $04
	inc b                                            ; $63a9: $04
	ld [bc], a                                       ; $63aa: $02
	ld bc, $0202                                     ; $63ab: $01 $02 $02
	ld a, [$a224]                                    ; $63ae: $fa $24 $a2
	add $61                                          ; $63b1: $c6 $61
	cp $64                                           ; $63b3: $fe $64
	ret nz                                           ; $63b5: $c0

	xor a                                            ; $63b6: $af
	ret                                              ; $63b7: $c9


	ld a, [$a226]                                    ; $63b8: $fa $26 $a2
	inc a                                            ; $63bb: $3c
	ret                                              ; $63bc: $c9


	ld a, [$a228]                                    ; $63bd: $fa $28 $a2
	inc a                                            ; $63c0: $3c
	ret                                              ; $63c1: $c9


	ld a, [$d080]                                    ; $63c2: $fa $80 $d0
	ret                                              ; $63c5: $c9


	call $3b89                                       ; $63c6: $cd $89 $3b
	ld a, [$d088]                                    ; $63c9: $fa $88 $d0
	ret                                              ; $63cc: $c9


	ld a, [$a228]                                    ; $63cd: $fa $28 $a2
	ld b, $07                                        ; $63d0: $06 $07
	call $12b5                                       ; $63d2: $cd $b5 $12
	inc a                                            ; $63d5: $3c
	ret                                              ; $63d6: $c9


	call $3b89                                       ; $63d7: $cd $89 $3b
	ld a, [$d086]                                    ; $63da: $fa $86 $d0
	ret                                              ; $63dd: $c9


Call_004_63de:
	ld a, $01                                        ; $63de: $3e $01
	jr jr_004_63ea                                   ; $63e0: $18 $08

Call_004_63e2:
	ld a, $02                                        ; $63e2: $3e $02
	jr jr_004_63ea                                   ; $63e4: $18 $04

Call_004_63e6:
	ld a, $04                                        ; $63e6: $3e $04
	jr jr_004_63ea                                   ; $63e8: $18 $00

jr_004_63ea:
	ld [$a384], a                                    ; $63ea: $ea $84 $a3
	ret                                              ; $63ed: $c9


Call_004_63ee:
	xor a                                            ; $63ee: $af
	ld [$a384], a                                    ; $63ef: $ea $84 $a3
	ret                                              ; $63f2: $c9


	xor a                                            ; $63f3: $af
	ld [$a22a], a                                    ; $63f4: $ea $2a $a2
	ret                                              ; $63f7: $c9


	ld a, $01                                        ; $63f8: $3e $01
	ld [$a22a], a                                    ; $63fa: $ea $2a $a2
	ret                                              ; $63fd: $c9


	ld a, $02                                        ; $63fe: $3e $02
	ld [$a22a], a                                    ; $6400: $ea $2a $a2
	ret                                              ; $6403: $c9


	ld a, [$a22a]                                    ; $6404: $fa $2a $a2
	inc a                                            ; $6407: $3c
	ret                                              ; $6408: $c9


	ld a, [$a21a]                                    ; $6409: $fa $1a $a2
	inc a                                            ; $640c: $3c
	ret                                              ; $640d: $c9


	ld a, [$a21c]                                    ; $640e: $fa $1c $a2
	inc a                                            ; $6411: $3c
	ret                                              ; $6412: $c9


	ld a, [$a21e]                                    ; $6413: $fa $1e $a2
	ret                                              ; $6416: $c9


	ld a, [$a21f]                                    ; $6417: $fa $1f $a2
	inc a                                            ; $641a: $3c
	ret                                              ; $641b: $c9


	ld a, [$a221]                                    ; $641c: $fa $21 $a2
	inc a                                            ; $641f: $3c
	ret                                              ; $6420: $c9


	ld a, [$a223]                                    ; $6421: $fa $23 $a2
	ret                                              ; $6424: $c9


	ld de, $64ad                                     ; $6425: $11 $ad $64
	ld c, $00                                        ; $6428: $0e $00

jr_004_642a:
	ld a, c                                          ; $642a: $79
	sla a                                            ; $642b: $cb $27
	ld hl, $a2f1                                     ; $642d: $21 $f1 $a2
	rst AddAOntoHL                                          ; $6430: $ef
	ld a, [de]                                       ; $6431: $1a
	inc de                                           ; $6432: $13
	ld [hl+], a                                      ; $6433: $22
	ld [hl], $00                                     ; $6434: $36 $00
	ld a, c                                          ; $6436: $79
	ld hl, $d08f                                     ; $6437: $21 $8f $d0
	rst AddAOntoHL                                          ; $643a: $ef
	ld [hl], $00                                     ; $643b: $36 $00
	ld a, c                                          ; $643d: $79
	ld hl, $a303                                     ; $643e: $21 $03 $a3
	rst AddAOntoHL                                          ; $6441: $ef
	ld [hl], $80                                     ; $6442: $36 $80
	inc c                                            ; $6444: $0c
	ld a, $09                                        ; $6445: $3e $09
	cp c                                             ; $6447: $b9
	jr nz, jr_004_642a                               ; $6448: $20 $e0

	ld hl, $a30d                                     ; $644a: $21 $0d $a3
	xor a                                            ; $644d: $af
	call $cbdf                                       ; $644e: $cd $df $cb
	ld a, $ff                                        ; $6451: $3e $ff
	ld [$a30c], a                                    ; $6453: $ea $0c $a3
	ret                                              ; $6456: $c9


	ld a, $01                                        ; $6457: $3e $01
	jr jr_004_6461                                   ; $6459: $18 $06

	ld a, $02                                        ; $645b: $3e $02
	jr jr_004_6461                                   ; $645d: $18 $02

	ld a, $04                                        ; $645f: $3e $04

jr_004_6461:
	ld [$d0a5], a                                    ; $6461: $ea $a5 $d0
	ret                                              ; $6464: $c9


	xor a                                            ; $6465: $af
	ld [$d0a5], a                                    ; $6466: $ea $a5 $d0
	ret                                              ; $6469: $c9


	ld a, $01                                        ; $646a: $3e $01
	jr jr_004_6474                                   ; $646c: $18 $06

	ld a, $02                                        ; $646e: $3e $02
	jr jr_004_6474                                   ; $6470: $18 $02

	ld a, $03                                        ; $6472: $3e $03

jr_004_6474:
	ld [$a33a], a                                    ; $6474: $ea $3a $a3
	ret                                              ; $6477: $c9


	xor a                                            ; $6478: $af
	ld [$a33a], a                                    ; $6479: $ea $3a $a3
	ret                                              ; $647c: $c9


	ld hl, $a2f3                                     ; $647d: $21 $f3 $a2
	ld b, $00                                        ; $6480: $06 $00
	ld de, $0000                                     ; $6482: $11 $00 $00
	ld c, $00                                        ; $6485: $0e $00

jr_004_6487:
	push bc                                          ; $6487: $c5
	ld c, [hl]                                       ; $6488: $4e
	inc hl                                           ; $6489: $23
	ld b, [hl]                                       ; $648a: $46
	inc hl                                           ; $648b: $23
	call wCpBCtoDE                                       ; $648c: $cd $8c $ce
	pop bc                                           ; $648f: $c1
	jr c, jr_004_6495                                ; $6490: $38 $03

	ld b, c                                          ; $6492: $41
	ld d, b                                          ; $6493: $50
	ld e, c                                          ; $6494: $59

jr_004_6495:
	inc c                                            ; $6495: $0c
	ld a, $08                                        ; $6496: $3e $08
	cp c                                             ; $6498: $b9
	jr nz, jr_004_6487                               ; $6499: $20 $ec

	ld hl, $0078                                     ; $649b: $21 $78 $00
	call wCpHLtoDE                                       ; $649e: $cd $80 $ce
	jr nc, jr_004_64aa                               ; $64a1: $30 $07

	ld hl, $64b6                                     ; $64a3: $21 $b6 $64
	ld b, a                                          ; $64a6: $47
	rst AddAOntoHL                                          ; $64a7: $ef
	ld a, [hl]                                       ; $64a8: $7e
	ret                                              ; $64a9: $c9


jr_004_64aa:
	ld a, $05                                        ; $64aa: $3e $05
	ret                                              ; $64ac: $c9


	ld h, h                                          ; $64ad: $64
	jr z, @+$2a                                      ; $64ae: $28 $28

	jr z, jr_004_64da                                ; $64b0: $28 $28

	jr nz, jr_004_64f0                               ; $64b2: $20 $3c

	dec b                                            ; $64b4: $05
	nop                                              ; $64b5: $00
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	ld bc, $0302                                     ; $64ba: $01 $02 $03
	inc b                                            ; $64bd: $04
	ld a, b                                          ; $64be: $78
	and $80                                          ; $64bf: $e6 $80
	jr nz, jr_004_64f9                               ; $64c1: $20 $36

	call Call_004_64fc                               ; $64c3: $cd $fc $64
	ld d, $00                                        ; $64c6: $16 $00
	ld hl, $000f                                     ; $64c8: $21 $0f $00
	call wCpHLtoBC                                       ; $64cb: $cd $86 $ce
	jr nc, jr_004_64e3                               ; $64ce: $30 $13

	inc d                                            ; $64d0: $14
	ld hl, $001e                                     ; $64d1: $21 $1e $00
	call wCpHLtoBC                                       ; $64d4: $cd $86 $ce
	jr nc, jr_004_64e3                               ; $64d7: $30 $0a

	inc d                                            ; $64d9: $14

jr_004_64da:
	ld hl, $003c                                     ; $64da: $21 $3c $00
	call wCpHLtoBC                                       ; $64dd: $cd $86 $ce
	jr nc, jr_004_64e3                               ; $64e0: $30 $01

	inc d                                            ; $64e2: $14

jr_004_64e3:
	sla d                                            ; $64e3: $cb $22
	ld a, e                                          ; $64e5: $7b
	cp $02                                           ; $64e6: $fe $02
	jr c, jr_004_64eb                                ; $64e8: $38 $01

	inc d                                            ; $64ea: $14

jr_004_64eb:
	ld a, d                                          ; $64eb: $7a
	ld hl, $6544                                     ; $64ec: $21 $44 $65
	rst AddAOntoHL                                          ; $64ef: $ef

jr_004_64f0:
	ld d, [hl]                                       ; $64f0: $56
	call Call_000_1309                                       ; $64f1: $cd $09 $13
	cp d                                             ; $64f4: $ba
	jr nc, jr_004_64f9                               ; $64f5: $30 $02

jr_004_64f7:
	xor a                                            ; $64f7: $af
	ret                                              ; $64f8: $c9


jr_004_64f9:
	ld a, $01                                        ; $64f9: $3e $01
	ret                                              ; $64fb: $c9


Call_004_64fc:
	push bc                                          ; $64fc: $c5
	ld hl, $a366                                     ; $64fd: $21 $66 $a3
	ld c, $0d                                        ; $6500: $0e $0d
	ld e, $00                                        ; $6502: $1e $00

jr_004_6504:
	ld a, [hl+]                                      ; $6504: $2a
	and $01                                          ; $6505: $e6 $01
	jr z, jr_004_650a                                ; $6507: $28 $01

	inc e                                            ; $6509: $1c

jr_004_650a:
	dec c                                            ; $650a: $0d
	jr nz, jr_004_6504                               ; $650b: $20 $f7

	pop bc                                           ; $650d: $c1
	ld a, [$a36f]                                    ; $650e: $fa $6f $a3
	and $01                                          ; $6511: $e6 $01
	ret z                                            ; $6513: $c8

	dec e                                            ; $6514: $1d
	ret                                              ; $6515: $c9


	call Call_004_64fc                               ; $6516: $cd $fc $64
	ld d, $40                                        ; $6519: $16 $40
	cp $03                                           ; $651b: $fe $03
	jr c, jr_004_6521                                ; $651d: $38 $02

	ld d, $80                                        ; $651f: $16 $80

jr_004_6521:
	call Call_000_1309                                       ; $6521: $cd $09 $13
	cp d                                             ; $6524: $ba
	jr nc, jr_004_64f9                               ; $6525: $30 $d2

	jr jr_004_64f7                                   ; $6527: $18 $ce

	call Call_004_64fc                               ; $6529: $cd $fc $64
	ld d, $20                                        ; $652c: $16 $20
	cp $03                                           ; $652e: $fe $03
	jr c, jr_004_6521                                ; $6530: $38 $ef

	ld d, $50                                        ; $6532: $16 $50
	jr jr_004_6521                                   ; $6534: $18 $eb

	swap a                                           ; $6536: $cb $37
	ld hl, $654c                                     ; $6538: $21 $4c $65
	rst AddAOntoHL                                          ; $653b: $ef
	call Call_000_1309                                       ; $653c: $cd $09 $13
	and $0f                                          ; $653f: $e6 $0f
	rst AddAOntoHL                                          ; $6541: $ef
	ld a, [hl]                                       ; $6542: $7e
	ret                                              ; $6543: $c9


	ld d, b                                          ; $6544: $50
	jr nz, @-$7e                                     ; $6545: $20 $80

	ld b, b                                          ; $6547: $40
	ret nz                                           ; $6548: $c0

	ld h, b                                          ; $6549: $60
	ldh a, [$f0]                                     ; $654a: $f0 $f0
	ld [bc], a                                       ; $654c: $02
	ld [bc], a                                       ; $654d: $02
	ld [bc], a                                       ; $654e: $02
	inc bc                                           ; $654f: $03
	inc bc                                           ; $6550: $03
	inc bc                                           ; $6551: $03
	inc b                                            ; $6552: $04
	inc b                                            ; $6553: $04
	inc b                                            ; $6554: $04
	ld b, $06                                        ; $6555: $06 $06
	inc c                                            ; $6557: $0c
	inc c                                            ; $6558: $0c
	db $10                                           ; $6559: $10
	ld de, $0814                                     ; $655a: $11 $14 $08
	ld [$0808], sp                                   ; $655d: $08 $08 $08
	ld [$0708], sp                                   ; $6560: $08 $08 $07
	rlca                                             ; $6563: $07
	inc bc                                           ; $6564: $03
	inc bc                                           ; $6565: $03
	dec b                                            ; $6566: $05
	dec b                                            ; $6567: $05
	inc b                                            ; $6568: $04
	inc b                                            ; $6569: $04
	ld [bc], a                                       ; $656a: $02
	ld b, $08                                        ; $656b: $06 $08
	ld [$0808], sp                                   ; $656d: $08 $08 $08
	inc b                                            ; $6570: $04
	inc b                                            ; $6571: $04
	inc b                                            ; $6572: $04
	inc b                                            ; $6573: $04
	dec b                                            ; $6574: $05
	dec b                                            ; $6575: $05
	dec b                                            ; $6576: $05
	dec b                                            ; $6577: $05
	ld b, $06                                        ; $6578: $06 $06
	ld [bc], a                                       ; $657a: $02
	ld [bc], a                                       ; $657b: $02
	rlca                                             ; $657c: $07
	rlca                                             ; $657d: $07
	rlca                                             ; $657e: $07
	rlca                                             ; $657f: $07
	rlca                                             ; $6580: $07
	dec bc                                           ; $6581: $0b
	dec bc                                           ; $6582: $0b
	dec bc                                           ; $6583: $0b
	dec bc                                           ; $6584: $0b
	dec bc                                           ; $6585: $0b
	inc b                                            ; $6586: $04
	inc b                                            ; $6587: $04
	ld b, $06                                        ; $6588: $06 $06
	ld a, [bc]                                       ; $658a: $0a
	ld a, [bc]                                       ; $658b: $0a
	dec c                                            ; $658c: $0d
	dec c                                            ; $658d: $0d
	dec c                                            ; $658e: $0d
	dec c                                            ; $658f: $0d
	dec c                                            ; $6590: $0d
	ld a, [bc]                                       ; $6591: $0a
	ld a, [bc]                                       ; $6592: $0a
	ld a, [bc]                                       ; $6593: $0a
	inc bc                                           ; $6594: $03
	inc bc                                           ; $6595: $03
	ld b, $06                                        ; $6596: $06 $06
	db $10                                           ; $6598: $10
	ld de, $1413                                     ; $6599: $11 $13 $14
	inc bc                                           ; $659c: $03
	inc bc                                           ; $659d: $03
	inc bc                                           ; $659e: $03
	dec b                                            ; $659f: $05
	dec b                                            ; $65a0: $05
	dec b                                            ; $65a1: $05
	inc b                                            ; $65a2: $04
	inc b                                            ; $65a3: $04
	rlca                                             ; $65a4: $07
	rlca                                             ; $65a5: $07
	ld [bc], a                                       ; $65a6: $02
	ld [bc], a                                       ; $65a7: $02
	ld [$100c], sp                                   ; $65a8: $08 $0c $10
	ld de, $1111                                     ; $65ab: $11 $11 $11
	ld de, $1011                                     ; $65ae: $11 $11 $10
	db $10                                           ; $65b1: $10
	db $10                                           ; $65b2: $10
	db $10                                           ; $65b3: $10
	ld [bc], a                                       ; $65b4: $02
	ld [bc], a                                       ; $65b5: $02
	inc bc                                           ; $65b6: $03
	dec b                                            ; $65b7: $05
	ld a, [bc]                                       ; $65b8: $0a
	dec c                                            ; $65b9: $0d
	inc de                                           ; $65ba: $13
	inc d                                            ; $65bb: $14
	ld [bc], a                                       ; $65bc: $02
	ld [bc], a                                       ; $65bd: $02
	ld [bc], a                                       ; $65be: $02
	ld [bc], a                                       ; $65bf: $02
	ld [bc], a                                       ; $65c0: $02
	ld [bc], a                                       ; $65c1: $02
	ld [bc], a                                       ; $65c2: $02
	ld [bc], a                                       ; $65c3: $02
	rlca                                             ; $65c4: $07
	rlca                                             ; $65c5: $07
	rlca                                             ; $65c6: $07
	rlca                                             ; $65c7: $07
	inc d                                            ; $65c8: $14
	inc d                                            ; $65c9: $14
	db $10                                           ; $65ca: $10
	ld de, $0b0b                                     ; $65cb: $11 $0b $0b
	dec bc                                           ; $65ce: $0b
	dec bc                                           ; $65cf: $0b
	ld de, $1111                                     ; $65d0: $11 $11 $11
	add hl, bc                                       ; $65d3: $09
	add hl, bc                                       ; $65d4: $09
	ld [bc], a                                       ; $65d5: $02
	inc bc                                           ; $65d6: $03
	inc b                                            ; $65d7: $04
	ld a, [bc]                                       ; $65d8: $0a
	inc c                                            ; $65d9: $0c
	db $10                                           ; $65da: $10
	inc d                                            ; $65db: $14
	inc b                                            ; $65dc: $04
	inc b                                            ; $65dd: $04
	inc b                                            ; $65de: $04
	inc b                                            ; $65df: $04
	inc b                                            ; $65e0: $04
	inc b                                            ; $65e1: $04
	ld b, $06                                        ; $65e2: $06 $06
	ld b, $06                                        ; $65e4: $06 $06
	ld [bc], a                                       ; $65e6: $02
	ld [bc], a                                       ; $65e7: $02
	dec b                                            ; $65e8: $05
	dec b                                            ; $65e9: $05
	inc bc                                           ; $65ea: $03
	inc c                                            ; $65eb: $0c
	add hl, bc                                       ; $65ec: $09
	add hl, bc                                       ; $65ed: $09
	add hl, bc                                       ; $65ee: $09
	add hl, bc                                       ; $65ef: $09
	inc c                                            ; $65f0: $0c
	inc c                                            ; $65f1: $0c
	inc c                                            ; $65f2: $0c
	inc c                                            ; $65f3: $0c
	ld a, [bc]                                       ; $65f4: $0a
	ld a, [bc]                                       ; $65f5: $0a
	inc bc                                           ; $65f6: $03
	inc b                                            ; $65f7: $04
	db $10                                           ; $65f8: $10
	ld de, $1413                                     ; $65f9: $11 $13 $14
	dec c                                            ; $65fc: $0d
	dec c                                            ; $65fd: $0d
	dec c                                            ; $65fe: $0d
	dec c                                            ; $65ff: $0d
	dec c                                            ; $6600: $0d
	dec c                                            ; $6601: $0d
	ld de, $1111                                     ; $6602: $11 $11 $11
	ld de, $0202                                     ; $6605: $11 $02 $02
	rlca                                             ; $6608: $07
	rlca                                             ; $6609: $07
	dec bc                                           ; $660a: $0b
	dec bc                                           ; $660b: $0b
	ld a, [bc]                                       ; $660c: $0a
	ld a, [bc]                                       ; $660d: $0a
	ld a, [bc]                                       ; $660e: $0a
	ld a, [bc]                                       ; $660f: $0a
	ld a, [bc]                                       ; $6610: $0a
	inc c                                            ; $6611: $0c
	inc c                                            ; $6612: $0c
	inc c                                            ; $6613: $0c
	inc c                                            ; $6614: $0c
	inc c                                            ; $6615: $0c
	db $10                                           ; $6616: $10
	db $10                                           ; $6617: $10
	db $10                                           ; $6618: $10
	ld de, $1111                                     ; $6619: $11 $11 $11
	inc bc                                           ; $661c: $03
	inc bc                                           ; $661d: $03
	inc bc                                           ; $661e: $03
	ld b, $06                                        ; $661f: $06 $06
	ld b, $11                                        ; $6621: $06 $11
	ld de, $1411                                     ; $6623: $11 $11 $14
	inc d                                            ; $6626: $14
	inc d                                            ; $6627: $14
	inc b                                            ; $6628: $04
	inc b                                            ; $6629: $04
	inc de                                           ; $662a: $13
	inc de                                           ; $662b: $13

Call_004_662c:
	call Call_004_6633                               ; $662c: $cd $33 $66
	call $6652                                       ; $662f: $cd $52 $66
	ret                                              ; $6632: $c9


Call_004_6633:
	push bc                                          ; $6633: $c5
	ld [$d040], a                                    ; $6634: $ea $40 $d0
	call Call_004_5fb8                               ; $6637: $cd $b8 $5f
	ld a, [$d040]                                    ; $663a: $fa $40 $d0
	call Call_004_5fd8                               ; $663d: $cd $d8 $5f
	call Call_004_6016                               ; $6640: $cd $16 $60
	pop af                                           ; $6643: $f1
	ld [$c1f4], a                                    ; $6644: $ea $f4 $c1
	ld a, [$d040]                                    ; $6647: $fa $40 $d0
	call Call_004_604a                               ; $664a: $cd $4a $60
	rst FarCall                                          ; $664d: $f7
	ld h, [hl]                                       ; $664e: $66
	ld e, e                                          ; $664f: $5b
	ld bc, $cdc9                                     ; $6650: $01 $c9 $cd
	ld h, [hl]                                       ; $6653: $66
	ld h, [hl]                                       ; $6654: $66
	ld a, [$c1f6]                                    ; $6655: $fa $f6 $c1
	and a                                            ; $6658: $a7
	jr z, @-$07                                      ; $6659: $28 $f7

	ld a, [$d040]                                    ; $665b: $fa $40 $d0
	cp $08                                           ; $665e: $fe $08
	jr nz, jr_004_6665                               ; $6660: $20 $03

	call Call_004_5948                               ; $6662: $cd $48 $59

jr_004_6665:
	ret                                              ; $6665: $c9


Call_004_6666:
	rst FarCall                                          ; $6666: $f7
	ret z                                            ; $6667: $c8

	ld e, h                                          ; $6668: $5c
	ld bc, $b3cd                                     ; $6669: $01 $cd $b3
	ld l, b                                          ; $666c: $68
	ld a, [$c1f7]                                    ; $666d: $fa $f7 $c1
	or a                                             ; $6670: $b7
	jr z, jr_004_668e                                ; $6671: $28 $1b

	ld a, [$d040]                                    ; $6673: $fa $40 $d0
	call Call_004_60b1                               ; $6676: $cd $b1 $60
	call Call_004_61ca                               ; $6679: $cd $ca $61
	call Call_004_66eb                               ; $667c: $cd $eb $66
	ld a, [$c1e6]                                    ; $667f: $fa $e6 $c1
	and a                                            ; $6682: $a7
	jr nz, jr_004_6689                               ; $6683: $20 $04

	ld a, $87                                        ; $6685: $3e $87
	jr jr_004_668b                                   ; $6687: $18 $02

jr_004_6689:
	ld a, $1c                                        ; $6689: $3e $1c

jr_004_668b:
	call $1e2e                                       ; $668b: $cd $2e $1e

jr_004_668e:
	ld a, [$c1f6]                                    ; $668e: $fa $f6 $c1
	ret z                                            ; $6691: $c8

	ret                                              ; $6692: $c9


Call_004_6693:
	ld a, [$c186]                                    ; $6693: $fa $86 $c1
	cp $00                                           ; $6696: $fe $00
	jr z, jr_004_66a8                                ; $6698: $28 $0e

	ld a, [$c14a]                                    ; $669a: $fa $4a $c1
	and $40                                          ; $669d: $e6 $40
	jr nz, jr_004_66a5                               ; $669f: $20 $04

	rst FarCall                                          ; $66a1: $f7
	ld l, b                                          ; $66a2: $68
	ld c, l                                          ; $66a3: $4d
	inc c                                            ; $66a4: $0c

jr_004_66a5:
	call $3773                                       ; $66a5: $cd $73 $37

jr_004_66a8:
	xor a                                            ; $66a8: $af
	ldh [hDisp0_SCX], a                                     ; $66a9: $e0 $84
	ldh [hDisp0_SCY], a                                     ; $66ab: $e0 $83
	rst FarCall                                          ; $66ad: $f7
	ld c, $58                                        ; $66ae: $0e $58
	ld bc, $49f7                                     ; $66b0: $01 $f7 $49

Call_004_66b3:
	ld e, b                                          ; $66b3: $58
	ld bc, $67f7                                     ; $66b4: $01 $f7 $67
	ld e, b                                          ; $66b7: $58
	ld bc, $3dcd                                     ; $66b8: $01 $cd $3d
	inc e                                            ; $66bb: $1c
	ld a, [$d395]                                    ; $66bc: $fa $95 $d3
	and a                                            ; $66bf: $a7
	jr z, @-$07                                      ; $66c0: $28 $f7

	ret                                              ; $66c2: $c9


Call_004_66c3:
	xor a                                            ; $66c3: $af
	ldh [hDisp0_SCX], a                                     ; $66c4: $e0 $84
	ldh [hDisp0_SCY], a                                     ; $66c6: $e0 $83
	ld hl, $c1ed                                     ; $66c8: $21 $ed $c1
	ld a, [$d3a0]                                    ; $66cb: $fa $a0 $d3
	cp [hl]                                          ; $66ce: $be
	ret z                                            ; $66cf: $c8

	rst FarCall                                          ; $66d0: $f7
	ld c, c                                          ; $66d1: $49
	ld e, b                                          ; $66d2: $58
	ld bc, $a8f7                                     ; $66d3: $01 $f7 $a8
	ld e, b                                          ; $66d6: $58
	ld bc, $df18                                     ; $66d7: $01 $18 $df

Call_004_66da:
	call Call_004_6693                               ; $66da: $cd $93 $66
	call Call_004_66c3                               ; $66dd: $cd $c3 $66
	ret                                              ; $66e0: $c9


	rst FarCall                                          ; $66e1: $f7
	ld c, c                                          ; $66e2: $49
	ld e, b                                          ; $66e3: $58
	ld bc, $b2f7                                     ; $66e4: $01 $f7 $b2
	ld e, b                                          ; $66e7: $58
	ld bc, $ce18                                     ; $66e8: $01 $18 $ce

Call_004_66eb:
	rst FarCall                                          ; $66eb: $f7
	call nc, $015e                                   ; $66ec: $d4 $5e $01
	ret                                              ; $66ef: $c9


	ret                                              ; $66f0: $c9


Call_004_66f1:
	call Call_004_66f8                               ; $66f1: $cd $f8 $66
	call Call_004_689e                               ; $66f4: $cd $9e $68
	ret                                              ; $66f7: $c9


Call_004_66f8:
	push af                                          ; $66f8: $f5
	ld a, $03                                        ; $66f9: $3e $03
	ld [$c1e7], a                                    ; $66fb: $ea $e7 $c1
	ld a, [$d086]                                    ; $66fe: $fa $86 $d0
	srl a                                            ; $6701: $cb $3f
	ld [$c1e9], a                                    ; $6703: $ea $e9 $c1
	xor a                                            ; $6706: $af
	ld [$c1e8], a                                    ; $6707: $ea $e8 $c1
	pop af                                           ; $670a: $f1
	ld [$c1e6], a                                    ; $670b: $ea $e6 $c1
	rst FarCall                                          ; $670e: $f7
	ld h, [hl]                                       ; $670f: $66
	ld e, e                                          ; $6710: $5b
	ld bc, $eac9                                     ; $6711: $01 $c9 $ea
	ld [hl], $d2                                     ; $6714: $36 $d2
	call Call_004_6723                               ; $6716: $cd $23 $67

jr_004_6719:
	call Call_004_677b                               ; $6719: $cd $7b $67
	ld a, [$c1f9]                                    ; $671c: $fa $f9 $c1
	and a                                            ; $671f: $a7
	jr z, jr_004_6719                                ; $6720: $28 $f7

	ret                                              ; $6722: $c9


Call_004_6723:
	push bc                                          ; $6723: $c5
	ld [$c1e6], a                                    ; $6724: $ea $e6 $c1
	ld a, $02                                        ; $6727: $3e $02
	ld [$c1e7], a                                    ; $6729: $ea $e7 $c1
	ld a, [$a30c]                                    ; $672c: $fa $0c $a3
	sub $04                                          ; $672f: $d6 $04
	jr nc, jr_004_6734                               ; $6731: $30 $01

	xor a                                            ; $6733: $af

jr_004_6734:
	ld [$c1e8], a                                    ; $6734: $ea $e8 $c1
	ld a, $00                                        ; $6737: $3e $00
	ld [$c1e9], a                                    ; $6739: $ea $e9 $c1
	xor a                                            ; $673c: $af
	ld [$c1f4], a                                    ; $673d: $ea $f4 $c1
	ld a, $05                                        ; $6740: $3e $05
	ld [$c1f8], a                                    ; $6742: $ea $f8 $c1
	ld a, [$a30c]                                    ; $6745: $fa $0c $a3
	cp $07                                           ; $6748: $fe $07
	jr nz, jr_004_675b                               ; $674a: $20 $0f

	ld a, $01                                        ; $674c: $3e $01
	ld [$c1f8], a                                    ; $674e: $ea $f8 $c1
	ld a, [$d236]                                    ; $6751: $fa $36 $d2
	cp $03                                           ; $6754: $fe $03
	ld a, $01                                        ; $6756: $3e $01
	jr c, jr_004_675b                                ; $6758: $38 $01

	xor a                                            ; $675a: $af

jr_004_675b:
	xor a                                            ; $675b: $af
	ld [$c1f9], a                                    ; $675c: $ea $f9 $c1
	pop bc                                           ; $675f: $c1
	ld a, [$c1e8]                                    ; $6760: $fa $e8 $c1
	jp Jump_004_6766                                 ; $6763: $c3 $66 $67


Jump_004_6766:
	push bc                                          ; $6766: $c5
	ld hl, $68e6                                     ; $6767: $21 $e6 $68
	rst AddAOntoHL                                          ; $676a: $ef
	ld a, [hl]                                       ; $676b: $7e
	ld [$c1ed], a                                    ; $676c: $ea $ed $c1
	call Call_004_66c3                               ; $676f: $cd $c3 $66
	pop af                                           ; $6772: $f1
	cp $09                                           ; $6773: $fe $09
	ret z                                            ; $6775: $c8

	ld a, $61                                        ; $6776: $3e $61
	jp Jump_000_1af7                                         ; $6778: $c3 $f7 $1a


Call_004_677b:
	ld a, [$d236]                                    ; $677b: $fa $36 $d2
	ld b, a                                          ; $677e: $47
	ld a, [$c1f8]                                    ; $677f: $fa $f8 $c1
	dec a                                            ; $6782: $3d
	call Call_000_12fc                                       ; $6783: $cd $fc $12
	cp b                                             ; $6786: $b8
	jr c, jr_004_6790                                ; $6787: $38 $07

	ld a, $01                                        ; $6789: $3e $01
	ld [$c1e6], a                                    ; $678b: $ea $e6 $c1
	jr jr_004_679b                                   ; $678e: $18 $0b

jr_004_6790:
	xor a                                            ; $6790: $af
	ld [$c1e6], a                                    ; $6791: $ea $e6 $c1
	ld a, [$d236]                                    ; $6794: $fa $36 $d2
	dec a                                            ; $6797: $3d
	ld [$d236], a                                    ; $6798: $ea $36 $d2

jr_004_679b:
	rst FarCall                                          ; $679b: $f7
	ld h, [hl]                                       ; $679c: $66
	ld e, e                                          ; $679d: $5b
	ld bc, $b3cd                                     ; $679e: $01 $cd $b3
	ld l, b                                          ; $67a1: $68
	rst FarCall                                          ; $67a2: $f7
	ret z                                            ; $67a3: $c8

	ld e, h                                          ; $67a4: $5c
	ld bc, $f6fa                                     ; $67a5: $01 $fa $f6
	pop bc                                           ; $67a8: $c1
	and a                                            ; $67a9: $a7
	jr z, @-$0b                                      ; $67aa: $28 $f3

	ld a, [$c1f8]                                    ; $67ac: $fa $f8 $c1
	dec a                                            ; $67af: $3d
	ld [$c1f8], a                                    ; $67b0: $ea $f8 $c1
	jr z, jr_004_67b6                                ; $67b3: $28 $01

	ret                                              ; $67b5: $c9


jr_004_67b6:
	ld a, $01                                        ; $67b6: $3e $01
	ld [$c1f9], a                                    ; $67b8: $ea $f9 $c1
	ret                                              ; $67bb: $c9


Call_004_67bc:
	push af                                          ; $67bc: $f5
	call Call_004_4d62                               ; $67bd: $cd $62 $4d
	call Call_004_4e04                               ; $67c0: $cd $04 $4e
	pop af                                           ; $67c3: $f1
	cp $07                                           ; $67c4: $fe $07
	jp z, Jump_004_6892                              ; $67c6: $ca $92 $68

	cp $08                                           ; $67c9: $fe $08
	jr z, jr_004_67fc                                ; $67cb: $28 $2f

	dec a                                            ; $67cd: $3d
	sla a                                            ; $67ce: $cb $27
	ld b, a                                          ; $67d0: $47
	ld hl, $68cc                                     ; $67d1: $21 $cc $68
	rst AddAOntoHL                                          ; $67d4: $ef
	ld d, [hl]                                       ; $67d5: $56
	inc hl                                           ; $67d6: $23
	ld e, [hl]                                       ; $67d7: $5e
	ld a, [$68d8]                                    ; $67d8: $fa $d8 $68
	ld [$c0e0], a                                    ; $67db: $ea $e0 $c0
	ld a, d                                          ; $67de: $7a
	cp $ff                                           ; $67df: $fe $ff
	jr z, jr_004_67eb                                ; $67e1: $28 $08

	ld hl, $68d8                                     ; $67e3: $21 $d8 $68
	rst AddAOntoHL                                          ; $67e6: $ef
	ld a, [hl]                                       ; $67e7: $7e
	ld [$c0e1], a                                    ; $67e8: $ea $e1 $c0

jr_004_67eb:
	ld a, e                                          ; $67eb: $7b
	cp $ff                                           ; $67ec: $fe $ff
	jr z, jr_004_67f8                                ; $67ee: $28 $08

	ld hl, $68d8                                     ; $67f0: $21 $d8 $68
	rst AddAOntoHL                                          ; $67f3: $ef
	ld a, [hl]                                       ; $67f4: $7e
	ld [wGenericTileDataDest], a                                    ; $67f5: $ea $e2 $c0

jr_004_67f8:
	ld c, $00                                        ; $67f8: $0e $00
	jr jr_004_682c                                   ; $67fa: $18 $30

jr_004_67fc:
	ld a, $ff                                        ; $67fc: $3e $ff
	ld c, a                                          ; $67fe: $4f
	ld d, a                                          ; $67ff: $57
	ld e, a                                          ; $6800: $5f
	ld hl, $c0e0                                     ; $6801: $21 $e0 $c0
	ld a, $0a                                        ; $6804: $3e $0a
	ld [hl+], a                                      ; $6806: $22
	ld [hl+], a                                      ; $6807: $22
	ld [hl], a                                       ; $6808: $77
	ld a, [$a30c]                                    ; $6809: $fa $0c $a3
	ld hl, $a373                                     ; $680c: $21 $73 $a3
	rst AddAOntoHL                                          ; $680f: $ef
	ld a, [hl]                                       ; $6810: $7e
	cp $ff                                           ; $6811: $fe $ff
	jr z, jr_004_682c                                ; $6813: $28 $17

	cp $00                                           ; $6815: $fe $00
	jr z, jr_004_6823                                ; $6817: $28 $0a

	ld b, a                                          ; $6819: $47
	call Call_004_408c                               ; $681a: $cd $8c $40
	and a                                            ; $681d: $a7
	jr z, jr_004_6892                                ; $681e: $28 $72

	ld d, b                                          ; $6820: $50
	jr jr_004_682c                                   ; $6821: $18 $09

jr_004_6823:
	ld a, [$a365]                                    ; $6823: $fa $65 $a3
	and $08                                          ; $6826: $e6 $08
	jr z, jr_004_6892                                ; $6828: $28 $68

	ld c, $00                                        ; $682a: $0e $00

jr_004_682c:
	ld hl, $d002                                     ; $682c: $21 $02 $d0

Jump_004_682f:
	ld a, [hl]                                       ; $682f: $7e
	cp $ff                                           ; $6830: $fe $ff
	jp z, Jump_004_6884                              ; $6832: $ca $84 $68

	cp c                                             ; $6835: $b9
	jr z, jr_004_6841                                ; $6836: $28 $09

	cp d                                             ; $6838: $ba
	jr z, jr_004_684a                                ; $6839: $28 $0f

	cp e                                             ; $683b: $bb
	jr z, jr_004_6853                                ; $683c: $28 $15

	jp Jump_004_6884                                 ; $683e: $c3 $84 $68


jr_004_6841:
	ld b, c                                          ; $6841: $41
	ld a, [$c0e0]                                    ; $6842: $fa $e0 $c0
	ld [wGenericTileDataDest+1], a                                    ; $6845: $ea $e3 $c0
	jr jr_004_685a                                   ; $6848: $18 $10

jr_004_684a:
	ld b, d                                          ; $684a: $42
	ld a, [$c0e1]                                    ; $684b: $fa $e1 $c0
	ld [wGenericTileDataDest+1], a                                    ; $684e: $ea $e3 $c0
	jr jr_004_685a                                   ; $6851: $18 $07

jr_004_6853:
	ld b, e                                          ; $6853: $43
	ld a, [wGenericTileDataDest]                                    ; $6854: $fa $e2 $c0
	ld [wGenericTileDataDest+1], a                                    ; $6857: $ea $e3 $c0

jr_004_685a:
	ld a, b                                          ; $685a: $78
	push hl                                          ; $685b: $e5
	ld hl, $a365                                     ; $685c: $21 $65 $a3
	rst AddAOntoHL                                          ; $685f: $ef
	ld a, [hl]                                       ; $6860: $7e
	pop hl                                           ; $6861: $e1
	and $01                                          ; $6862: $e6 $01
	jr z, jr_004_6884                                ; $6864: $28 $1e

	ld a, b                                          ; $6866: $78
	push hl                                          ; $6867: $e5
	call Call_004_42bb                               ; $6868: $cd $bb $42
	pop hl                                           ; $686b: $e1
	cp $3c                                           ; $686c: $fe $3c
	jr nc, jr_004_6884                               ; $686e: $30 $14

	ld a, [wGenericTileDataDest+1]                                    ; $6870: $fa $e3 $c0
	push hl                                          ; $6873: $e5
	inc hl                                           ; $6874: $23
	inc hl                                           ; $6875: $23
	cp [hl]                                          ; $6876: $be
	pop hl                                           ; $6877: $e1
	jr nc, jr_004_6884                               ; $6878: $30 $0a

	ld a, b                                          ; $687a: $78
	cp $00                                           ; $687b: $fe $00
	jr z, jr_004_6895                                ; $687d: $28 $16

	cp d                                             ; $687f: $ba
	jr z, jr_004_6898                                ; $6880: $28 $16

	jr jr_004_689b                                   ; $6882: $18 $17

Jump_004_6884:
jr_004_6884:
	inc hl                                           ; $6884: $23
	inc hl                                           ; $6885: $23
	inc hl                                           ; $6886: $23
	push de                                          ; $6887: $d5
	ld de, $d02c                                     ; $6888: $11 $2c $d0
	call wCpHLtoDE                                       ; $688b: $cd $80 $ce
	pop de                                           ; $688e: $d1
	jp nz, Jump_004_682f                             ; $688f: $c2 $2f $68

Jump_004_6892:
jr_004_6892:
	ld a, $00                                        ; $6892: $3e $00
	ret                                              ; $6894: $c9


jr_004_6895:
	ld a, $01                                        ; $6895: $3e $01
	ret                                              ; $6897: $c9


jr_004_6898:
	ld a, $02                                        ; $6898: $3e $02
	ret                                              ; $689a: $c9


jr_004_689b:
	ld a, $03                                        ; $689b: $3e $03
	ret                                              ; $689d: $c9


Call_004_689e:
jr_004_689e:
	call Call_004_68b3                               ; $689e: $cd $b3 $68
	rst FarCall                                          ; $68a1: $f7
	ret z                                            ; $68a2: $c8

	ld e, h                                          ; $68a3: $5c
	ld bc, $f7fa                                     ; $68a4: $01 $fa $f7
	pop bc                                           ; $68a7: $c1
	and a                                            ; $68a8: $a7
	call nz, Call_004_68bd                           ; $68a9: $c4 $bd $68
	ld a, [$c1f6]                                    ; $68ac: $fa $f6 $c1
	and a                                            ; $68af: $a7
	jr z, jr_004_689e                                ; $68b0: $28 $ec

	ret                                              ; $68b2: $c9


Call_004_68b3:
	call Call_000_1ca1                                       ; $68b3: $cd $a1 $1c

jr_004_68b6:
	ld a, [$c110]                                    ; $68b6: $fa $10 $c1
	and a                                            ; $68b9: $a7
	jr nz, jr_004_68b6                               ; $68ba: $20 $fa

	ret                                              ; $68bc: $c9


Call_004_68bd:
	ld a, [$c1e6]                                    ; $68bd: $fa $e6 $c1
	and a                                            ; $68c0: $a7
	jr nz, jr_004_68c7                               ; $68c1: $20 $04

	ld a, $87                                        ; $68c3: $3e $87
	jr jr_004_68c9                                   ; $68c5: $18 $02

jr_004_68c7:
	ld a, $1c                                        ; $68c7: $3e $1c

jr_004_68c9:
	jp $1e2e                                         ; $68c9: $c3 $2e $1e


	ld bc, $02ff                                     ; $68cc: $01 $ff $02
	rst $38                                          ; $68cf: $ff
	inc bc                                           ; $68d0: $03
	rst $38                                          ; $68d1: $ff
	rst $38                                          ; $68d2: $ff
	rst $38                                          ; $68d3: $ff
	ld [$07ff], sp                                   ; $68d4: $08 $ff $07
	rst $38                                          ; $68d7: $ff
	add hl, de                                       ; $68d8: $19
	jr z, jr_004_6912                                ; $68d9: $28 $37

	inc hl                                           ; $68db: $23
	nop                                              ; $68dc: $00
	dec l                                            ; $68dd: $2d
	jr z, @+$39                                      ; $68de: $28 $37

	add hl, de                                       ; $68e0: $19
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	jr z, jr_004_690e                                ; $68e4: $28 $28

	jr jr_004_6901                                   ; $68e6: $18 $19

	ld a, [de]                                       ; $68e8: $1a
	dec de                                           ; $68e9: $1b
	inc e                                            ; $68ea: $1c
	ld d, $00                                        ; $68eb: $16 $00
	ld hl, $a2fd                                     ; $68ed: $21 $fd $a2
	call Call_004_6962                               ; $68f0: $cd $62 $69
	ld bc, $003c                                     ; $68f3: $01 $3c $00
	call wCpHLtoBC                                       ; $68f6: $cd $86 $ce
	jr c, jr_004_690e                                ; $68f9: $38 $13

	ld hl, $a2fb                                     ; $68fb: $21 $fb $a2
	call Call_004_6962                               ; $68fe: $cd $62 $69

jr_004_6901:
	ld bc, $003c                                     ; $6901: $01 $3c $00
	call wCpHLtoBC                                       ; $6904: $cd $86 $ce
	jr c, jr_004_690e                                ; $6907: $38 $05

	inc d                                            ; $6909: $14
	jr jr_004_690e                                   ; $690a: $18 $02

	ld d, $00                                        ; $690c: $16 $00

jr_004_690e:
	xor a                                            ; $690e: $af
	ld [$c0d0], a                                    ; $690f: $ea $d0 $c0

jr_004_6912:
	ld [$c0d1], a                                    ; $6912: $ea $d1 $c0
	ld hl, $a2f3                                     ; $6915: $21 $f3 $a2
	call Call_004_6950                               ; $6918: $cd $50 $69
	ld hl, $a2f5                                     ; $691b: $21 $f5 $a2
	call Call_004_6950                               ; $691e: $cd $50 $69
	ld hl, $a2f7                                     ; $6921: $21 $f7 $a2
	call Call_004_6950                               ; $6924: $cd $50 $69
	ld a, [$c0d0]                                    ; $6927: $fa $d0 $c0
	ld l, a                                          ; $692a: $6f
	ld a, [$c0d1]                                    ; $692b: $fa $d1 $c0
	ld h, a                                          ; $692e: $67
	ld bc, $00c8                                     ; $692f: $01 $c8 $00
	call wCpHLtoBC                                       ; $6932: $cd $86 $ce
	jr c, jr_004_6938                                ; $6935: $38 $01

	inc d                                            ; $6937: $14

jr_004_6938:
	ld a, d                                          ; $6938: $7a
	cp $03                                           ; $6939: $fe $03
	jr nc, jr_004_6947                               ; $693b: $30 $0a

	cp $02                                           ; $693d: $fe $02
	jr nc, jr_004_694a                               ; $693f: $30 $09

	cp $01                                           ; $6941: $fe $01
	jr nc, jr_004_694d                               ; $6943: $30 $08

	xor a                                            ; $6945: $af
	ret                                              ; $6946: $c9


jr_004_6947:
	ld a, $01                                        ; $6947: $3e $01
	ret                                              ; $6949: $c9


jr_004_694a:
	ld a, $02                                        ; $694a: $3e $02
	ret                                              ; $694c: $c9


jr_004_694d:
	ld a, $03                                        ; $694d: $3e $03
	ret                                              ; $694f: $c9


Call_004_6950:
	call Call_004_6962                               ; $6950: $cd $62 $69
	ld bc, $0078                                     ; $6953: $01 $78 $00
	call wCpHLtoBC                                       ; $6956: $cd $86 $ce
	jr c, jr_004_695e                                ; $6959: $38 $03

	inc d                                            ; $695b: $14
	jr jr_004_6961                                   ; $695c: $18 $03

jr_004_695e:
	call Call_004_6966                               ; $695e: $cd $66 $69

jr_004_6961:
	ret                                              ; $6961: $c9


Call_004_6962:
	ld a, [hl+]                                      ; $6962: $2a
	ld h, [hl]                                       ; $6963: $66
	ld l, a                                          ; $6964: $6f
	ret                                              ; $6965: $c9


Call_004_6966:
	push bc                                          ; $6966: $c5
	ld a, [$c0d0]                                    ; $6967: $fa $d0 $c0
	ld c, a                                          ; $696a: $4f
	ld a, [$c0d1]                                    ; $696b: $fa $d1 $c0
	ld b, a                                          ; $696e: $47
	add hl, bc                                       ; $696f: $09
	ld a, l                                          ; $6970: $7d
	ld [$c0d0], a                                    ; $6971: $ea $d0 $c0
	ld a, h                                          ; $6974: $7c
	ld [$c0d1], a                                    ; $6975: $ea $d1 $c0
	pop bc                                           ; $6978: $c1
	ret                                              ; $6979: $c9


	call Call_004_69cc                               ; $697a: $cd $cc $69
	jr jr_004_6982                                   ; $697d: $18 $03

	call Call_004_69f0                               ; $697f: $cd $f0 $69

jr_004_6982:
	push af                                          ; $6982: $f5
	ld a, $1d                                        ; $6983: $3e $1d
	ld [$c1ed], a                                    ; $6985: $ea $ed $c1
	call Call_004_66c3                               ; $6988: $cd $c3 $66
	pop af                                           ; $698b: $f1
	ld [$c0d0], a                                    ; $698c: $ea $d0 $c0
	and a                                            ; $698f: $a7
	jr z, jr_004_69ac                                ; $6990: $28 $1a

	cp $0a                                           ; $6992: $fe $0a
	jr z, jr_004_69b1                                ; $6994: $28 $1b

	ld hl, $6b7d                                     ; $6996: $21 $7d $6b
	dec a                                            ; $6999: $3d
	swap a                                           ; $699a: $cb $37
	srl a                                            ; $699c: $cb $3f
	rst AddAOntoHL                                          ; $699e: $ef
	ld a, $04                                        ; $699f: $3e $04
	call Call_000_12fc                                       ; $69a1: $cd $fc $12
	sla a                                            ; $69a4: $cb $27
	rst AddAOntoHL                                          ; $69a6: $ef
	ld e, [hl]                                       ; $69a7: $5e
	inc hl                                           ; $69a8: $23
	ld d, [hl]                                       ; $69a9: $56
	jr jr_004_69b4                                   ; $69aa: $18 $08

jr_004_69ac:
	ld de, $03ff                                     ; $69ac: $11 $ff $03
	jr jr_004_69b4                                   ; $69af: $18 $03

jr_004_69b1:
	ld de, $0000                                     ; $69b1: $11 $00 $00

jr_004_69b4:
	ld a, [$c0d0]                                    ; $69b4: $fa $d0 $c0
	push af                                          ; $69b7: $f5
	ld c, $0a                                        ; $69b8: $0e $0a

jr_004_69ba:
	xor a                                            ; $69ba: $af
	srl d                                            ; $69bb: $cb $3a
	rr e                                             ; $69bd: $cb $1b
	rla                                              ; $69bf: $17
	push bc                                          ; $69c0: $c5
	push de                                          ; $69c1: $d5
	call Call_004_66f1                               ; $69c2: $cd $f1 $66
	pop de                                           ; $69c5: $d1
	pop bc                                           ; $69c6: $c1
	dec c                                            ; $69c7: $0d
	jr nz, jr_004_69ba                               ; $69c8: $20 $f0

	pop af                                           ; $69ca: $f1
	ret                                              ; $69cb: $c9


Call_004_69cc:
	dec a                                            ; $69cc: $3d
	ld [$c0d2], a                                    ; $69cd: $ea $d2 $c0
	call Call_004_6ae4                               ; $69d0: $cd $e4 $6a
	call Call_004_6ab8                               ; $69d3: $cd $b8 $6a
	ld a, [$c0d2]                                    ; $69d6: $fa $d2 $c0
	ld hl, $6b6e                                     ; $69d9: $21 $6e $6b
	rst AddAOntoHL                                          ; $69dc: $ef
	ld a, e                                          ; $69dd: $7b
	ld e, [hl]                                       ; $69de: $5e
	cp e                                             ; $69df: $bb
	jr c, jr_004_69e9                                ; $69e0: $38 $07

	call Call_004_6a14                               ; $69e2: $cd $14 $6a
	call Call_004_6a4a                               ; $69e5: $cd $4a $6a
	ret                                              ; $69e8: $c9


jr_004_69e9:
	call Call_004_6a14                               ; $69e9: $cd $14 $6a
	call Call_004_6a71                               ; $69ec: $cd $71 $6a
	ret                                              ; $69ef: $c9


Call_004_69f0:
	dec a                                            ; $69f0: $3d
	ld [$c0d2], a                                    ; $69f1: $ea $d2 $c0
	call Call_004_6ae4                               ; $69f4: $cd $e4 $6a
	call Call_004_6a9e                               ; $69f7: $cd $9e $6a
	ld a, [$c0d2]                                    ; $69fa: $fa $d2 $c0
	ld hl, $6b6e                                     ; $69fd: $21 $6e $6b
	rst AddAOntoHL                                          ; $6a00: $ef
	ld a, e                                          ; $6a01: $7b
	ld e, [hl]                                       ; $6a02: $5e
	cp e                                             ; $6a03: $bb
	jr c, jr_004_6a0d                                ; $6a04: $38 $07

	call Call_004_6a22                               ; $6a06: $cd $22 $6a
	call Call_004_6a4a                               ; $6a09: $cd $4a $6a
	ret                                              ; $6a0c: $c9


jr_004_6a0d:
	call Call_004_6a22                               ; $6a0d: $cd $22 $6a
	call Call_004_6a71                               ; $6a10: $cd $71 $6a
	ret                                              ; $6a13: $c9


Call_004_6a14:
	call Call_004_6a34                               ; $6a14: $cd $34 $6a
	ld l, e                                          ; $6a17: $6b
	ld h, d                                          ; $6a18: $62
	ld bc, $0003                                     ; $6a19: $01 $03 $00
	call BCHLequHLdivModBC                                       ; $6a1c: $cd $c1 $12
	ld e, l                                          ; $6a1f: $5d
	ld d, h                                          ; $6a20: $54
	ret                                              ; $6a21: $c9


Call_004_6a22:
	call Call_004_6a34                               ; $6a22: $cd $34 $6a
	ld c, [hl]                                       ; $6a25: $4e
	inc hl                                           ; $6a26: $23
	ld b, [hl]                                       ; $6a27: $46
	call wAddBContoDE                                       ; $6a28: $cd $92 $ce
	srl d                                            ; $6a2b: $cb $3a
	rr e                                             ; $6a2d: $cb $1b
	srl d                                            ; $6a2f: $cb $3a
	rr e                                             ; $6a31: $cb $1b
	ret                                              ; $6a33: $c9


Call_004_6a34:
	ld hl, $c0d8                                     ; $6a34: $21 $d8 $c0
	ld c, [hl]                                       ; $6a37: $4e
	inc hl                                           ; $6a38: $23
	ld b, [hl]                                       ; $6a39: $46
	inc hl                                           ; $6a3a: $23
	ld e, [hl]                                       ; $6a3b: $5e
	inc hl                                           ; $6a3c: $23
	ld d, [hl]                                       ; $6a3d: $56
	inc hl                                           ; $6a3e: $23
	call wAddBContoDE                                       ; $6a3f: $cd $92 $ce
	ld c, [hl]                                       ; $6a42: $4e
	inc hl                                           ; $6a43: $23
	ld b, [hl]                                       ; $6a44: $46
	inc hl                                           ; $6a45: $23
	call wAddBContoDE                                       ; $6a46: $cd $92 $ce
	ret                                              ; $6a49: $c9


Call_004_6a4a:
	ld a, [$c0d2]                                    ; $6a4a: $fa $d2 $c0
	ld hl, $6b71                                     ; $6a4d: $21 $71 $6b
	rst AddAOntoHL                                          ; $6a50: $ef
	ld l, [hl]                                       ; $6a51: $6e
	ld h, $00                                        ; $6a52: $26 $00
	call wCpHLtoDE                                       ; $6a54: $cd $80 $ce
	jr c, jr_004_6a6e                                ; $6a57: $38 $15

	ld a, [$c0d2]                                    ; $6a59: $fa $d2 $c0
	ld hl, $6b74                                     ; $6a5c: $21 $74 $6b
	rst AddAOntoHL                                          ; $6a5f: $ef
	ld l, [hl]                                       ; $6a60: $6e
	ld h, $00                                        ; $6a61: $26 $00
	call wCpHLtoDE                                       ; $6a63: $cd $80 $ce
	jr c, jr_004_6a6b                                ; $6a66: $38 $03

	ld a, $08                                        ; $6a68: $3e $08
	ret                                              ; $6a6a: $c9


jr_004_6a6b:
	ld a, $09                                        ; $6a6b: $3e $09
	ret                                              ; $6a6d: $c9


jr_004_6a6e:
	ld a, $0a                                        ; $6a6e: $3e $0a
	ret                                              ; $6a70: $c9


Call_004_6a71:
	ld a, [$c0d2]                                    ; $6a71: $fa $d2 $c0
	ld hl, $6b7a                                     ; $6a74: $21 $7a $6b
	rst AddAOntoHL                                          ; $6a77: $ef
	ld c, [hl]                                       ; $6a78: $4e
	ld b, $00                                        ; $6a79: $06 $00
	ld a, [$c0d2]                                    ; $6a7b: $fa $d2 $c0
	ld hl, $6b77                                     ; $6a7e: $21 $77 $6b
	rst AddAOntoHL                                          ; $6a81: $ef
	ld l, [hl]                                       ; $6a82: $6e
	ld h, $00                                        ; $6a83: $26 $00
	xor a                                            ; $6a85: $af
	ld [$c0d0], a                                    ; $6a86: $ea $d0 $c0

jr_004_6a89:
	call wCpHLtoDE                                       ; $6a89: $cd $80 $ce
	jr nc, jr_004_6a9a                               ; $6a8c: $30 $0c

	add hl, bc                                       ; $6a8e: $09
	ld a, [$c0d0]                                    ; $6a8f: $fa $d0 $c0
	inc a                                            ; $6a92: $3c
	ld [$c0d0], a                                    ; $6a93: $ea $d0 $c0
	cp $07                                           ; $6a96: $fe $07
	jr nz, jr_004_6a89                               ; $6a98: $20 $ef

jr_004_6a9a:
	ld a, [$c0d0]                                    ; $6a9a: $fa $d0 $c0
	ret                                              ; $6a9d: $c9


Call_004_6a9e:
	ld e, $00                                        ; $6a9e: $1e $00
	ld a, [$c0d2]                                    ; $6aa0: $fa $d2 $c0
	ld hl, $6b6b                                     ; $6aa3: $21 $6b $6b
	rst AddAOntoHL                                          ; $6aa6: $ef
	ld c, [hl]                                       ; $6aa7: $4e
	ld b, $00                                        ; $6aa8: $06 $00
	ld hl, $c0de                                     ; $6aaa: $21 $de $c0
	call Call_004_6ae0                               ; $6aad: $cd $e0 $6a
	call wCpHLtoBC                                       ; $6ab0: $cd $86 $ce
	jr c, jr_004_6ac4                                ; $6ab3: $38 $0f

	inc e                                            ; $6ab5: $1c
	jr jr_004_6ac4                                   ; $6ab6: $18 $0c

Call_004_6ab8:
	ld e, $00                                        ; $6ab8: $1e $00
	ld a, [$c0d2]                                    ; $6aba: $fa $d2 $c0
	ld hl, $6b6b                                     ; $6abd: $21 $6b $6b
	rst AddAOntoHL                                          ; $6ac0: $ef
	ld c, [hl]                                       ; $6ac1: $4e
	ld b, $00                                        ; $6ac2: $06 $00

jr_004_6ac4:
	ld hl, $c0d8                                     ; $6ac4: $21 $d8 $c0
	call Call_004_6ad7                               ; $6ac7: $cd $d7 $6a
	ld hl, $c0da                                     ; $6aca: $21 $da $c0
	call Call_004_6ad7                               ; $6acd: $cd $d7 $6a
	ld hl, $c0dc                                     ; $6ad0: $21 $dc $c0
	call Call_004_6ad7                               ; $6ad3: $cd $d7 $6a
	ret                                              ; $6ad6: $c9


Call_004_6ad7:
	call Call_004_6ae0                               ; $6ad7: $cd $e0 $6a
	call wCpHLtoBC                                       ; $6ada: $cd $86 $ce
	ret c                                            ; $6add: $d8

	inc e                                            ; $6ade: $1c
	ret                                              ; $6adf: $c9


Call_004_6ae0:
	ld a, [hl+]                                      ; $6ae0: $2a
	ld h, [hl]                                       ; $6ae1: $66
	ld l, a                                          ; $6ae2: $6f
	ret                                              ; $6ae3: $c9


Call_004_6ae4:
	ld de, $a30d                                     ; $6ae4: $11 $0d $a3
	ld bc, $a2f3                                     ; $6ae7: $01 $f3 $a2
	call Call_004_6b38                               ; $6aea: $cd $38 $6b
	ld b, $01                                        ; $6aed: $06 $01
	call Call_004_6b5b                               ; $6aef: $cd $5b $6b
	ld bc, $c0d8                                     ; $6af2: $01 $d8 $c0
	call Call_004_6b65                               ; $6af5: $cd $65 $6b
	ld de, $a30f                                     ; $6af8: $11 $0f $a3
	ld bc, $a2f5                                     ; $6afb: $01 $f5 $a2
	call Call_004_6b38                               ; $6afe: $cd $38 $6b
	ld b, $02                                        ; $6b01: $06 $02
	call Call_004_6b5b                               ; $6b03: $cd $5b $6b
	ld bc, $c0da                                     ; $6b06: $01 $da $c0
	call Call_004_6b65                               ; $6b09: $cd $65 $6b
	ld de, $a311                                     ; $6b0c: $11 $11 $a3
	ld bc, $a2f7                                     ; $6b0f: $01 $f7 $a2
	call Call_004_6b38                               ; $6b12: $cd $38 $6b
	ld b, $01                                        ; $6b15: $06 $01
	call Call_004_6b5b                               ; $6b17: $cd $5b $6b
	ld bc, $c0dc                                     ; $6b1a: $01 $dc $c0
	call Call_004_6b65                               ; $6b1d: $cd $65 $6b
	ld hl, $a2fd                                     ; $6b20: $21 $fd $a2
	ld c, [hl]                                       ; $6b23: $4e
	inc hl                                           ; $6b24: $23
	ld b, [hl]                                       ; $6b25: $46
	ld hl, $a2fb                                     ; $6b26: $21 $fb $a2
	ld a, [hl+]                                      ; $6b29: $2a
	ld h, [hl]                                       ; $6b2a: $66
	ld l, a                                          ; $6b2b: $6f
	add hl, bc                                       ; $6b2c: $09
	srl h                                            ; $6b2d: $cb $3c
	rr l                                             ; $6b2f: $cb $1d
	ld bc, $c0de                                     ; $6b31: $01 $de $c0
	call Call_004_6b65                               ; $6b34: $cd $65 $6b
	ret                                              ; $6b37: $c9


Call_004_6b38:
	ld a, [de]                                       ; $6b38: $1a
	ld l, a                                          ; $6b39: $6f
	inc de                                           ; $6b3a: $13
	ld a, [de]                                       ; $6b3b: $1a
	ld h, a                                          ; $6b3c: $67
	srl h                                            ; $6b3d: $cb $3c
	rr l                                             ; $6b3f: $cb $1d
	srl h                                            ; $6b41: $cb $3c
	rr l                                             ; $6b43: $cb $1d
	srl h                                            ; $6b45: $cb $3c
	rr l                                             ; $6b47: $cb $1d
	ld de, $0014                                     ; $6b49: $11 $14 $00
	call wCpHLtoDE                                       ; $6b4c: $cd $80 $ce
	jr c, jr_004_6b54                                ; $6b4f: $38 $03

	ld hl, $0014                                     ; $6b51: $21 $14 $00

jr_004_6b54:
	ld a, [bc]                                       ; $6b54: $0a
	ld e, a                                          ; $6b55: $5f
	inc bc                                           ; $6b56: $03
	ld a, [bc]                                       ; $6b57: $0a
	ld d, a                                          ; $6b58: $57
	add hl, de                                       ; $6b59: $19
	ret                                              ; $6b5a: $c9


Call_004_6b5b:
	ld a, [$a33a]                                    ; $6b5b: $fa $3a $a3
	and b                                            ; $6b5e: $a0
	ret z                                            ; $6b5f: $c8

	srl h                                            ; $6b60: $cb $3c
	rr l                                             ; $6b62: $cb $1d
	ret                                              ; $6b64: $c9


Call_004_6b65:
	ld a, l                                          ; $6b65: $7d
	ld [bc], a                                       ; $6b66: $02
	inc bc                                           ; $6b67: $03
	ld a, h                                          ; $6b68: $7c
	ld [bc], a                                       ; $6b69: $02
	ret                                              ; $6b6a: $c9


	add [hl]                                         ; $6b6b: $86
	ld a, h                                          ; $6b6c: $7c
	ld [hl], d                                       ; $6b6d: $72
	inc bc                                           ; $6b6e: $03
	ld [bc], a                                       ; $6b6f: $02
	ld bc, $8296                                     ; $6b70: $01 $96 $82
	ld l, [hl]                                       ; $6b73: $6e
	adc h                                            ; $6b74: $8c
	ld a, b                                          ; $6b75: $78
	ld h, h                                          ; $6b76: $64
	ld l, d                                          ; $6b77: $6a
	ld c, b                                          ; $6b78: $48
	inc [hl]                                         ; $6b79: $34
	inc b                                            ; $6b7a: $04
	ld [$f708], sp                                   ; $6b7b: $08 $08 $f7
	inc bc                                           ; $6b7e: $03
	rst AddAOntoHL                                          ; $6b7f: $ef
	inc bc                                           ; $6b80: $03
	db $fd                                           ; $6b81: $fd
	inc bc                                           ; $6b82: $03
	ei                                               ; $6b83: $fb
	inc bc                                           ; $6b84: $03
	cp l                                             ; $6b85: $bd
	inc bc                                           ; $6b86: $03
	db $fd                                           ; $6b87: $fd
	ld [bc], a                                       ; $6b88: $02
	di                                               ; $6b89: $f3
	inc bc                                           ; $6b8a: $03
	or a                                             ; $6b8b: $b7
	inc bc                                           ; $6b8c: $03
	push hl                                          ; $6b8d: $e5
	inc bc                                           ; $6b8e: $03
	xor e                                            ; $6b8f: $ab
	inc bc                                           ; $6b90: $03
	cp e                                             ; $6b91: $bb
	ld [bc], a                                       ; $6b92: $02
	ld e, l                                          ; $6b93: $5d
	inc bc                                           ; $6b94: $03
	ld [hl], c                                       ; $6b95: $71
	inc bc                                           ; $6b96: $03
	push hl                                          ; $6b97: $e5
	ld [bc], a                                       ; $6b98: $02
	and l                                            ; $6b99: $a5
	inc bc                                           ; $6b9a: $03
	ld c, e                                          ; $6b9b: $4b
	inc bc                                           ; $6b9c: $03
	ld [hl], $02                                     ; $6b9d: $36 $02
	ld l, b                                          ; $6b9f: $68
	inc bc                                           ; $6ba0: $03
	jp nc, Jump_004_4c02                             ; $6ba1: $d2 $02 $4c

	inc bc                                           ; $6ba4: $03
	and d                                            ; $6ba5: $a2
	ld [bc], a                                       ; $6ba6: $02
	ld h, $02                                        ; $6ba7: $26 $02
	sbc b                                            ; $6ba9: $98
	ld [bc], a                                       ; $6baa: $02
	inc d                                            ; $6bab: $14
	inc bc                                           ; $6bac: $03
	ld [hl+], a                                      ; $6bad: $22
	ld [bc], a                                       ; $6bae: $02
	adc b                                            ; $6baf: $88
	ld [bc], a                                       ; $6bb0: $02
	inc b                                            ; $6bb1: $04
	inc bc                                           ; $6bb2: $03
	adc b                                            ; $6bb3: $88
	ld [bc], a                                       ; $6bb4: $02
	ld b, h                                          ; $6bb5: $44
	nop                                              ; $6bb6: $00
	jr jr_004_6bb9                                   ; $6bb7: $18 $00

jr_004_6bb9:
	ld [bc], a                                       ; $6bb9: $02
	ld bc, $0088                                     ; $6bba: $01 $88 $00
	add b                                            ; $6bbd: $80
	nop                                              ; $6bbe: $00
	stop                                             ; $6bbf: $10 $00
	inc b                                            ; $6bc1: $04
	nop                                              ; $6bc2: $00
	ld b, b                                          ; $6bc3: $40
	nop                                              ; $6bc4: $00
	ld c, $00                                        ; $6bc5: $0e $00

jr_004_6bc7:
	ld a, $0b                                        ; $6bc7: $3e $0b
	cp c                                             ; $6bc9: $b9
	jr z, jr_004_6c33                                ; $6bca: $28 $67

	ld a, [$d234]                                    ; $6bcc: $fa $34 $d2
	cp c                                             ; $6bcf: $b9
	jr z, jr_004_6c33                                ; $6bd0: $28 $61

	ld a, c                                          ; $6bd2: $79
	ld hl, $a365                                     ; $6bd3: $21 $65 $a3
	rst AddAOntoHL                                          ; $6bd6: $ef
	ld a, [hl]                                       ; $6bd7: $7e
	and $01                                          ; $6bd8: $e6 $01
	jr z, jr_004_6c33                                ; $6bda: $28 $57

	ld a, c                                          ; $6bdc: $79
	push bc                                          ; $6bdd: $c5
	call Call_004_41f2                               ; $6bde: $cd $f2 $41
	pop bc                                           ; $6be1: $c1
	cp $0a                                           ; $6be2: $fe $0a
	jr c, jr_004_6c33                                ; $6be4: $38 $4d

	ld a, c                                          ; $6be6: $79
	push bc                                          ; $6be7: $c5
	call Call_004_42bb                               ; $6be8: $cd $bb $42
	pop bc                                           ; $6beb: $c1
	cp $3c                                           ; $6bec: $fe $3c
	jr nc, jr_004_6c33                               ; $6bee: $30 $43

	ld b, $08                                        ; $6bf0: $06 $08
	ld a, c                                          ; $6bf2: $79
	cp $09                                           ; $6bf3: $fe $09
	jr nz, jr_004_6bfb                               ; $6bf5: $20 $04

	ld b, $0c                                        ; $6bf7: $06 $0c
	jr jr_004_6c01                                   ; $6bf9: $18 $06

jr_004_6bfb:
	cp $00                                           ; $6bfb: $fe $00
	jr nz, jr_004_6c01                               ; $6bfd: $20 $02

	ld b, $0f                                        ; $6bff: $06 $0f

jr_004_6c01:
	ld a, c                                          ; $6c01: $79
	push bc                                          ; $6c02: $c5
	call Call_004_4218                               ; $6c03: $cd $18 $42
	pop bc                                           ; $6c06: $c1
	cp b                                             ; $6c07: $b8
	jr c, jr_004_6c33                                ; $6c08: $38 $29

	ld a, c                                          ; $6c0a: $79
	ld hl, $6c71                                     ; $6c0b: $21 $71 $6c
	rst AddAOntoHL                                          ; $6c0e: $ef
	ld e, [hl]                                       ; $6c0f: $5e
	ld a, c                                          ; $6c10: $79
	push bc                                          ; $6c11: $c5
	call Call_004_41f2                               ; $6c12: $cd $f2 $41
	pop bc                                           ; $6c15: $c1
	cp $32                                           ; $6c16: $fe $32
	jr c, jr_004_6c1d                                ; $6c18: $38 $03

	inc e                                            ; $6c1a: $1c
	inc e                                            ; $6c1b: $1c
	inc e                                            ; $6c1c: $1c

jr_004_6c1d:
	ld a, c                                          ; $6c1d: $79
	push bc                                          ; $6c1e: $c5
	call Call_004_40a2                               ; $6c1f: $cd $a2 $40
	pop bc                                           ; $6c22: $c1
	cp $ff                                           ; $6c23: $fe $ff
	jr z, jr_004_6c31                                ; $6c25: $28 $0a

	ld b, a                                          ; $6c27: $47
	ld a, [$a30c]                                    ; $6c28: $fa $0c $a3
	cp b                                             ; $6c2b: $b8
	jr nz, jr_004_6c31                               ; $6c2c: $20 $03

	inc e                                            ; $6c2e: $1c
	inc e                                            ; $6c2f: $1c
	inc e                                            ; $6c30: $1c

jr_004_6c31:
	jr jr_004_6c35                                   ; $6c31: $18 $02

jr_004_6c33:
	ld e, $00                                        ; $6c33: $1e $00

jr_004_6c35:
	ld a, c                                          ; $6c35: $79
	sla a                                            ; $6c36: $cb $27
	add c                                            ; $6c38: $81
	ld hl, $d002                                     ; $6c39: $21 $02 $d0
	rst AddAOntoHL                                          ; $6c3c: $ef
	ld [hl], e                                       ; $6c3d: $73
	inc c                                            ; $6c3e: $0c
	ld a, $0e                                        ; $6c3f: $3e $0e
	cp c                                             ; $6c41: $b9
	jr nz, jr_004_6bc7                               ; $6c42: $20 $83

	ld a, [$a22a]                                    ; $6c44: $fa $2a $a2
	ld hl, $6c7f                                     ; $6c47: $21 $7f $6c
	rst AddAOntoHL                                          ; $6c4a: $ef
	ld a, [hl]                                       ; $6c4b: $7e
	call Call_000_12fc                                       ; $6c4c: $cd $fc $12
	ld b, a                                          ; $6c4f: $47
	inc b                                            ; $6c50: $04
	ld c, $00                                        ; $6c51: $0e $00

jr_004_6c53:
	ld a, c                                          ; $6c53: $79
	sla a                                            ; $6c54: $cb $27
	add c                                            ; $6c56: $81
	ld hl, $d002                                     ; $6c57: $21 $02 $d0
	rst AddAOntoHL                                          ; $6c5a: $ef
	ld a, [hl]                                       ; $6c5b: $7e
	cp b                                             ; $6c5c: $b8
	jr nc, jr_004_6c6c                               ; $6c5d: $30 $0d

	cpl                                              ; $6c5f: $2f
	inc a                                            ; $6c60: $3c
	add b                                            ; $6c61: $80
	ld b, a                                          ; $6c62: $47
	inc c                                            ; $6c63: $0c
	ld a, $0e                                        ; $6c64: $3e $0e
	cp c                                             ; $6c66: $b9
	jr nz, jr_004_6c53                               ; $6c67: $20 $ea

	ld a, $ff                                        ; $6c69: $3e $ff
	ret                                              ; $6c6b: $c9


jr_004_6c6c:
	ld a, c                                          ; $6c6c: $79
	ld [$d234], a                                    ; $6c6d: $ea $34 $d2
	ret                                              ; $6c70: $c9


	rrca                                             ; $6c71: $0f
	ld [de], a                                       ; $6c72: $12
	dec c                                            ; $6c73: $0d
	ld [de], a                                       ; $6c74: $12
	dec d                                            ; $6c75: $15
	ld [de], a                                       ; $6c76: $12
	ld [de], a                                       ; $6c77: $12
	ld de, $1a17                                     ; $6c78: $11 $17 $1a
	inc d                                            ; $6c7b: $14
	nop                                              ; $6c7c: $00
	ld a, [de]                                       ; $6c7d: $1a
	dec d                                            ; $6c7e: $15
	rst $38                                          ; $6c7f: $ff
	rst SubAFromBC                                          ; $6c80: $e7
	rst GetHLinHL                                          ; $6c81: $cf
	nop                                              ; $6c82: $00
	ld de, $2b1f                                     ; $6c83: $11 $1f $2b
	add hl, sp                                       ; $6c86: $39
	add hl, sp                                       ; $6c87: $39
	add hl, sp                                       ; $6c88: $39
	add hl, sp                                       ; $6c89: $39
	ld b, l                                          ; $6c8a: $45
	ld d, c                                          ; $6c8b: $51
	ld d, c                                          ; $6c8c: $51
	ld e, e                                          ; $6c8d: $5b
	ld e, e                                          ; $6c8e: $5b
	ld e, e                                          ; $6c8f: $5b
	ld h, [hl]                                       ; $6c90: $66
	ld l, e                                          ; $6c91: $6b
	ld l, a                                          ; $6c92: $6f
	ld [hl], d                                       ; $6c93: $72

Call_004_6c94:
	ld hl, $6c82                                     ; $6c94: $21 $82 $6c
	rst AddAOntoHL                                          ; $6c97: $ef
	ld a, [hl]                                       ; $6c98: $7e
	ret                                              ; $6c99: $c9


	ld e, a                                          ; $6c9a: $5f
	ld a, c                                          ; $6c9b: $79
	and a                                            ; $6c9c: $a7
	jr nz, jr_004_6ca2                               ; $6c9d: $20 $03

	ld a, e                                          ; $6c9f: $7b
	jr jr_004_6cb4                                   ; $6ca0: $18 $12

jr_004_6ca2:
	cp $01                                           ; $6ca2: $fe $01
	jr nz, jr_004_6ca9                               ; $6ca4: $20 $03

	ld a, e                                          ; $6ca6: $7b
	jr jr_004_6cd5                                   ; $6ca7: $18 $2c

jr_004_6ca9:
	cp $02                                           ; $6ca9: $fe $02
	jr nz, jr_004_6cb0                               ; $6cab: $20 $03

	ld a, e                                          ; $6cad: $7b
	jr jr_004_6d0a                                   ; $6cae: $18 $5a

jr_004_6cb0:
	ld a, e                                          ; $6cb0: $7b
	jp Jump_004_6dfd                                 ; $6cb1: $c3 $fd $6d


jr_004_6cb4:
	ld e, a                                          ; $6cb4: $5f
	call Call_004_6c94                               ; $6cb5: $cd $94 $6c
	ld c, a                                          ; $6cb8: $4f
	ld b, $00                                        ; $6cb9: $06 $00
	ld a, e                                          ; $6cbb: $7b
	cp $11                                           ; $6cbc: $fe $11
	jp z, Jump_004_6cd0                              ; $6cbe: $ca $d0 $6c

jr_004_6cc1:
	ld b, $01                                        ; $6cc1: $06 $01
	ld a, [$a226]                                    ; $6cc3: $fa $26 $a2
	cp $05                                           ; $6cc6: $fe $05
	jr c, jr_004_6cd0                                ; $6cc8: $38 $06

	cp $09                                           ; $6cca: $fe $09
	jr nc, jr_004_6cd0                               ; $6ccc: $30 $02

	ld b, $00                                        ; $6cce: $06 $00

Jump_004_6cd0:
jr_004_6cd0:
	ld a, c                                          ; $6cd0: $79
	add b                                            ; $6cd1: $80
	jp Jump_004_6e3a                                 ; $6cd2: $c3 $3a $6e


jr_004_6cd5:
	call $3b89                                       ; $6cd5: $cd $89 $3b
	ld e, a                                          ; $6cd8: $5f
	cp $0e                                           ; $6cd9: $fe $0e
	jr nc, jr_004_6ce8                               ; $6cdb: $30 $0b

	call Call_004_6c94                               ; $6cdd: $cd $94 $6c
	ld c, a                                          ; $6ce0: $4f
	ld a, [$d086]                                    ; $6ce1: $fa $86 $d0
	add $02                                          ; $6ce4: $c6 $02
	jr jr_004_6cfd                                   ; $6ce6: $18 $15

jr_004_6ce8:
	push af                                          ; $6ce8: $f5
	call Call_004_6c94                               ; $6ce9: $cd $94 $6c
	ld c, a                                          ; $6cec: $4f
	pop af                                           ; $6ced: $f1
	cp $0e                                           ; $6cee: $fe $0e
	jr z, jr_004_6cf6                                ; $6cf0: $28 $04

	ld a, $02                                        ; $6cf2: $3e $02
	jr jr_004_6cfd                                   ; $6cf4: $18 $07

jr_004_6cf6:
	ld a, [$d086]                                    ; $6cf6: $fa $86 $d0
	srl a                                            ; $6cf9: $cb $3f
	add $02                                          ; $6cfb: $c6 $02

jr_004_6cfd:
	add c                                            ; $6cfd: $81
	jp Jump_004_6e3a                                 ; $6cfe: $c3 $3a $6e


	rst $38                                          ; $6d01: $ff
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	rst $38                                          ; $6d04: $ff
	ld b, $06                                        ; $6d05: $06 $06
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	rlca                                             ; $6d09: $07

jr_004_6d0a:
	ld e, a                                          ; $6d0a: $5f
	cp $00                                           ; $6d0b: $fe $00
	jr z, jr_004_6d17                                ; $6d0d: $28 $08

	call Call_004_6c94                               ; $6d0f: $cd $94 $6c
	add $06                                          ; $6d12: $c6 $06
	jp Jump_004_6e3a                                 ; $6d14: $c3 $3a $6e


jr_004_6d17:
	ld a, [$a37c]                                    ; $6d17: $fa $7c $a3
	ld hl, $6d01                                     ; $6d1a: $21 $01 $6d
	rst AddAOntoHL                                          ; $6d1d: $ef
	ld a, [hl]                                       ; $6d1e: $7e
	cp $ff                                           ; $6d1f: $fe $ff
	jp nz, Jump_004_6e3a                             ; $6d21: $c2 $3a $6e

	ld c, $00                                        ; $6d24: $0e $00
	jr jr_004_6cc1                                   ; $6d26: $18 $99

	jp Jump_004_6e3a                                 ; $6d28: $c3 $3a $6e


	ld [$0a09], sp                                   ; $6d2b: $08 $09 $0a
	dec bc                                           ; $6d2e: $0b
	inc c                                            ; $6d2f: $0c
	nop                                              ; $6d30: $00
	dec c                                            ; $6d31: $0d
	ld c, $00                                        ; $6d32: $0e $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	rrca                                             ; $6d38: $0f
	db $10                                           ; $6d39: $10
	ld de, $1118                                     ; $6d3a: $11 $18 $11
	add hl, de                                       ; $6d3d: $19
	ld a, [de]                                       ; $6d3e: $1a
	ld de, $1c1b                                     ; $6d3f: $11 $1b $1c
	ld de, $1d11                                     ; $6d42: $11 $11 $1d
	ld e, $11                                        ; $6d45: $1e $11
	ld de, $1f11                                     ; $6d47: $11 $11 $1f
	rra                                              ; $6d4a: $1f
	rra                                              ; $6d4b: $1f
	ld h, $27                                        ; $6d4c: $26 $27
	rra                                              ; $6d4e: $1f
	jr z, jr_004_6d7a                                ; $6d4f: $28 $29

	rra                                              ; $6d51: $1f
	rra                                              ; $6d52: $1f
	ld a, [hl+]                                      ; $6d53: $2a
	rra                                              ; $6d54: $1f
	rra                                              ; $6d55: $1f
	rra                                              ; $6d56: $1f
	rra                                              ; $6d57: $1f
	dec hl                                           ; $6d58: $2b
	ld [hl-], a                                      ; $6d59: $32
	dec hl                                           ; $6d5a: $2b
	inc sp                                           ; $6d5b: $33
	inc [hl]                                         ; $6d5c: $34
	dec hl                                           ; $6d5d: $2b
	dec [hl]                                         ; $6d5e: $35
	ld [hl], $2b                                     ; $6d5f: $36 $2b
	dec hl                                           ; $6d61: $2b
	scf                                              ; $6d62: $37
	jr c, jr_004_6d90                                ; $6d63: $38 $2b

	dec hl                                           ; $6d65: $2b
	dec hl                                           ; $6d66: $2b
	add hl, sp                                       ; $6d67: $39
	ld b, b                                          ; $6d68: $40
	ld b, c                                          ; $6d69: $41
	ld b, d                                          ; $6d6a: $42
	ld b, e                                          ; $6d6b: $43
	add hl, sp                                       ; $6d6c: $39
	ld b, h                                          ; $6d6d: $44
	ld b, l                                          ; $6d6e: $45
	add hl, sp                                       ; $6d6f: $39
	add hl, sp                                       ; $6d70: $39
	add hl, sp                                       ; $6d71: $39
	add hl, sp                                       ; $6d72: $39
	add hl, sp                                       ; $6d73: $39
	ld b, [hl]                                       ; $6d74: $46
	add hl, sp                                       ; $6d75: $39
	ld b, b                                          ; $6d76: $40
	add hl, sp                                       ; $6d77: $39
	ld b, c                                          ; $6d78: $41
	ld b, d                                          ; $6d79: $42

jr_004_6d7a:
	ld b, e                                          ; $6d7a: $43
	add hl, sp                                       ; $6d7b: $39
	ld b, h                                          ; $6d7c: $44
	ld b, l                                          ; $6d7d: $45
	add hl, sp                                       ; $6d7e: $39
	add hl, sp                                       ; $6d7f: $39
	add hl, sp                                       ; $6d80: $39
	add hl, sp                                       ; $6d81: $39
	add hl, sp                                       ; $6d82: $39
	ld b, [hl]                                       ; $6d83: $46
	add hl, sp                                       ; $6d84: $39
	add hl, sp                                       ; $6d85: $39
	ld b, b                                          ; $6d86: $40
	ld b, c                                          ; $6d87: $41
	ld b, d                                          ; $6d88: $42
	ld b, e                                          ; $6d89: $43
	add hl, sp                                       ; $6d8a: $39
	ld b, h                                          ; $6d8b: $44
	ld b, l                                          ; $6d8c: $45
	add hl, sp                                       ; $6d8d: $39
	add hl, sp                                       ; $6d8e: $39
	add hl, sp                                       ; $6d8f: $39

jr_004_6d90:
	add hl, sp                                       ; $6d90: $39
	add hl, sp                                       ; $6d91: $39
	ld b, [hl]                                       ; $6d92: $46
	ld b, a                                          ; $6d93: $47
	add hl, sp                                       ; $6d94: $39
	ccf                                              ; $6d95: $3f
	ld b, b                                          ; $6d96: $40
	add hl, sp                                       ; $6d97: $39
	ld b, c                                          ; $6d98: $41
	ld b, d                                          ; $6d99: $42
	ld b, e                                          ; $6d9a: $43
	ld b, h                                          ; $6d9b: $44
	add hl, sp                                       ; $6d9c: $39
	add hl, sp                                       ; $6d9d: $39
	add hl, sp                                       ; $6d9e: $39
	add hl, sp                                       ; $6d9f: $39
	add hl, sp                                       ; $6da0: $39
	add hl, sp                                       ; $6da1: $39
	add hl, sp                                       ; $6da2: $39
	ld b, l                                          ; $6da3: $45
	ld b, l                                          ; $6da4: $45
	ld c, e                                          ; $6da5: $4b
	ld b, l                                          ; $6da6: $45
	ld c, h                                          ; $6da7: $4c
	ld b, l                                          ; $6da8: $45
	ld c, l                                          ; $6da9: $4d
	ld c, [hl]                                       ; $6daa: $4e
	ld c, a                                          ; $6dab: $4f
	ld d, b                                          ; $6dac: $50
	ld b, l                                          ; $6dad: $45
	ld b, l                                          ; $6dae: $45
	ld b, l                                          ; $6daf: $45
	ld b, l                                          ; $6db0: $45
	ld b, l                                          ; $6db1: $45
	ld d, c                                          ; $6db2: $51
	ld d, a                                          ; $6db3: $57
	ld d, c                                          ; $6db4: $51
	ld d, c                                          ; $6db5: $51
	ld e, b                                          ; $6db6: $58
	ld e, c                                          ; $6db7: $59
	ld e, d                                          ; $6db8: $5a
	ld e, e                                          ; $6db9: $5b
	ld d, c                                          ; $6dba: $51
	ld d, c                                          ; $6dbb: $51
	ld d, c                                          ; $6dbc: $51
	ld d, c                                          ; $6dbd: $51
	ld d, c                                          ; $6dbe: $51
	ld d, c                                          ; $6dbf: $51
	ld d, c                                          ; $6dc0: $51
	ld d, c                                          ; $6dc1: $51
	ld d, c                                          ; $6dc2: $51
	ld d, a                                          ; $6dc3: $57
	ld d, c                                          ; $6dc4: $51
	ld e, b                                          ; $6dc5: $58
	ld d, c                                          ; $6dc6: $51
	ld e, c                                          ; $6dc7: $59
	ld e, d                                          ; $6dc8: $5a
	ld d, c                                          ; $6dc9: $51
	ld d, c                                          ; $6dca: $51
	ld d, c                                          ; $6dcb: $51
	ld d, c                                          ; $6dcc: $51
	ld d, c                                          ; $6dcd: $51
	ld d, c                                          ; $6dce: $51
	ld d, c                                          ; $6dcf: $51
	ld h, c                                          ; $6dd0: $61
	ld h, d                                          ; $6dd1: $62
	ld h, e                                          ; $6dd2: $63
	ld e, e                                          ; $6dd3: $5b
	ld h, h                                          ; $6dd4: $64
	ld e, e                                          ; $6dd5: $5b
	ld e, e                                          ; $6dd6: $5b
	ld h, l                                          ; $6dd7: $65
	ld e, e                                          ; $6dd8: $5b
	ld e, e                                          ; $6dd9: $5b
	ld e, e                                          ; $6dda: $5b
	ld e, e                                          ; $6ddb: $5b
	ld e, e                                          ; $6ddc: $5b
	ld e, e                                          ; $6ddd: $5b
	ld e, e                                          ; $6dde: $5b
	ld h, c                                          ; $6ddf: $61
	ld h, d                                          ; $6de0: $62
	ld h, e                                          ; $6de1: $63
	ld e, e                                          ; $6de2: $5b
	ld h, h                                          ; $6de3: $64
	ld e, e                                          ; $6de4: $5b
	ld h, l                                          ; $6de5: $65
	ld h, [hl]                                       ; $6de6: $66
	ld e, e                                          ; $6de7: $5b
	ld e, e                                          ; $6de8: $5b
	ld e, e                                          ; $6de9: $5b
	ld e, e                                          ; $6dea: $5b
	ld e, e                                          ; $6deb: $5b
	ld e, e                                          ; $6dec: $5b
	ld e, e                                          ; $6ded: $5b
	ld e, e                                          ; $6dee: $5b
	ld h, c                                          ; $6def: $61
	ld h, d                                          ; $6df0: $62
	ld e, e                                          ; $6df1: $5b
	ld h, e                                          ; $6df2: $63
	ld e, e                                          ; $6df3: $5b
	ld h, h                                          ; $6df4: $64
	ld h, l                                          ; $6df5: $65
	ld e, e                                          ; $6df6: $5b
	ld e, e                                          ; $6df7: $5b
	ld e, e                                          ; $6df8: $5b
	ld e, e                                          ; $6df9: $5b
	ld e, e                                          ; $6dfa: $5b
	ld e, e                                          ; $6dfb: $5b
	ld e, e                                          ; $6dfc: $5b

Jump_004_6dfd:
	ld e, a                                          ; $6dfd: $5f
	ld a, $0e                                        ; $6dfe: $3e $0e
	cp b                                             ; $6e00: $b8
	ld a, e                                          ; $6e01: $7b
	jr c, jr_004_6e1f                                ; $6e02: $38 $1b

	cp $0e                                           ; $6e04: $fe $0e
	jr z, jr_004_6e1b                                ; $6e06: $28 $13

	push bc                                          ; $6e08: $c5
	ld c, a                                          ; $6e09: $4f
	ld b, $0f                                        ; $6e0a: $06 $0f
	push de                                          ; $6e0c: $d5
	call BCequBtimesC                                       ; $6e0d: $cd $5f $12
	pop de                                           ; $6e10: $d1
	ld hl, $6d2b                                     ; $6e11: $21 $2b $6d
	add hl, bc                                       ; $6e14: $09
	pop bc                                           ; $6e15: $c1
	ld a, b                                          ; $6e16: $78
	rst AddAOntoHL                                          ; $6e17: $ef
	ld a, [hl]                                       ; $6e18: $7e
	jr jr_004_6e3a                                   ; $6e19: $18 $1f

jr_004_6e1b:
	ld a, $6a                                        ; $6e1b: $3e $6a
	jr jr_004_6e3a                                   ; $6e1d: $18 $1b

jr_004_6e1f:
	cp $00                                           ; $6e1f: $fe $00
	jr nz, jr_004_6e27                               ; $6e21: $20 $04

	ld a, $74                                        ; $6e23: $3e $74
	jr jr_004_6e3a                                   ; $6e25: $18 $13

jr_004_6e27:
	cp $0f                                           ; $6e27: $fe $0f
	jr nz, jr_004_6e38                               ; $6e29: $20 $0d

	ld a, $0f                                        ; $6e2b: $3e $0f
	cp b                                             ; $6e2d: $b8
	jr nz, jr_004_6e34                               ; $6e2e: $20 $04

	ld a, $75                                        ; $6e30: $3e $75
	jr jr_004_6e3a                                   ; $6e32: $18 $06

jr_004_6e34:
	ld a, $6e                                        ; $6e34: $3e $6e
	jr jr_004_6e3a                                   ; $6e36: $18 $02

jr_004_6e38:
	ld a, $73                                        ; $6e38: $3e $73

Jump_004_6e3a:
jr_004_6e3a:
	ld [$c114], a                                    ; $6e3a: $ea $14 $c1
	ld a, $00                                        ; $6e3d: $3e $00
	call Call_004_6e4b                               ; $6e3f: $cd $4b $6e
	jp $371e                                         ; $6e42: $c3 $1e $37


	ld [bc], a                                       ; $6e45: $02
	ld bc, $0300                                     ; $6e46: $01 $00 $03
	inc b                                            ; $6e49: $04
	dec b                                            ; $6e4a: $05

Call_004_6e4b:
	ld hl, $6e45                                     ; $6e4b: $21 $45 $6e
	rst AddAOntoHL                                          ; $6e4e: $ef
	ld a, [hl]                                       ; $6e4f: $7e
	ld [$c117], a                                    ; $6e50: $ea $17 $c1
	ret                                              ; $6e53: $c9


	xor a                                            ; $6e54: $af
	ld [$c117], a                                    ; $6e55: $ea $17 $c1
	ret                                              ; $6e58: $c9


	inc a                                            ; $6e59: $3c
	ld d, a                                          ; $6e5a: $57
	sla d                                            ; $6e5b: $cb $22
	ld c, $02                                        ; $6e5d: $0e $02

jr_004_6e5f:
	ld e, $02                                        ; $6e5f: $1e $02

jr_004_6e61:
	call Call_004_6e7b                               ; $6e61: $cd $7b $6e
	call Call_004_6eb2                               ; $6e64: $cd $b2 $6e
	dec e                                            ; $6e67: $1d
	jr nz, jr_004_6e61                               ; $6e68: $20 $f7

	ld e, $02                                        ; $6e6a: $1e $02

jr_004_6e6c:
	call Call_004_6e7b                               ; $6e6c: $cd $7b $6e
	call Call_004_6e9c                               ; $6e6f: $cd $9c $6e
	dec e                                            ; $6e72: $1d
	jr nz, jr_004_6e6c                               ; $6e73: $20 $f7

	srl d                                            ; $6e75: $cb $3a
	dec c                                            ; $6e77: $0d
	jr nz, jr_004_6e5f                               ; $6e78: $20 $e5

	ret                                              ; $6e7a: $c9


Call_004_6e7b:
	push de                                          ; $6e7b: $d5
	push bc                                          ; $6e7c: $c5
	call Call_000_1ca1                                       ; $6e7d: $cd $a1 $1c
	pop bc                                           ; $6e80: $c1
	pop de                                           ; $6e81: $d1

jr_004_6e82:
	ld hl, wFrameCounter                                     ; $6e82: $21 $1f $c1
	ld a, [$d80a]                                    ; $6e85: $fa $0a $d8
	cp [hl]                                          ; $6e88: $be
	jr z, jr_004_6e82                                ; $6e89: $28 $f7

	ret                                              ; $6e8b: $c9


Call_004_6e8c:
	ld a, [hl]                                       ; $6e8c: $7e
	add d                                            ; $6e8d: $82
	ld [hl], a                                       ; $6e8e: $77
	ret                                              ; $6e8f: $c9


Call_004_6e90:
	ld a, [hl]                                       ; $6e90: $7e
	sub d                                            ; $6e91: $92
	ld [hl], a                                       ; $6e92: $77
	ret                                              ; $6e93: $c9


Call_004_6e94:
	ld a, [hl]                                       ; $6e94: $7e
	sub d                                            ; $6e95: $92
	ld [hl], a                                       ; $6e96: $77
	ret                                              ; $6e97: $c9


Call_004_6e98:
	ld a, [hl]                                       ; $6e98: $7e
	add d                                            ; $6e99: $82
	ld [hl], a                                       ; $6e9a: $77
	ret                                              ; $6e9b: $c9


Call_004_6e9c:
	ld l, $05                                        ; $6e9c: $2e $05
	ld h, $c2                                        ; $6e9e: $26 $c2
	call Call_004_6e94                               ; $6ea0: $cd $94 $6e
	inc h                                            ; $6ea3: $24
	call Call_004_6e94                               ; $6ea4: $cd $94 $6e
	inc h                                            ; $6ea7: $24
	call Call_004_6e94                               ; $6ea8: $cd $94 $6e
	ld hl, $ff83                                     ; $6eab: $21 $83 $ff
	call Call_004_6e8c                               ; $6eae: $cd $8c $6e
	ret                                              ; $6eb1: $c9


Call_004_6eb2:
	ld l, $05                                        ; $6eb2: $2e $05
	ld h, $c2                                        ; $6eb4: $26 $c2
	call Call_004_6e98                               ; $6eb6: $cd $98 $6e
	inc h                                            ; $6eb9: $24
	call Call_004_6e98                               ; $6eba: $cd $98 $6e
	inc h                                            ; $6ebd: $24
	call Call_004_6e98                               ; $6ebe: $cd $98 $6e
	ld hl, $ff83                                     ; $6ec1: $21 $83 $ff
	call Call_004_6e90                               ; $6ec4: $cd $90 $6e
	ret                                              ; $6ec7: $c9


	ld bc, $0200                                     ; $6ec8: $01 $00 $02
	nop                                              ; $6ecb: $00
	inc b                                            ; $6ecc: $04
	nop                                              ; $6ecd: $00
	ld [$1000], sp                                   ; $6ece: $08 $00 $10
	nop                                              ; $6ed1: $00
	jr nz, jr_004_6ed4                               ; $6ed2: $20 $00

jr_004_6ed4:
	ld b, b                                          ; $6ed4: $40
	nop                                              ; $6ed5: $00
	add b                                            ; $6ed6: $80
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	ld bc, $0200                                     ; $6ed9: $01 $00 $02
	nop                                              ; $6edc: $00
	inc b                                            ; $6edd: $04
	nop                                              ; $6ede: $00
	ld [$1000], sp                                   ; $6edf: $08 $00 $10
	nop                                              ; $6ee2: $00
	jr nz, @+$7a                                     ; $6ee3: $20 $78

	call Call_004_71eb                               ; $6ee5: $cd $eb $71
	ld bc, $0001                                     ; $6ee8: $01 $01 $00
	call Call_004_71f7                               ; $6eeb: $cd $f7 $71
	ld a, [$a22a]                                    ; $6eee: $fa $2a $a2
	cp $02                                           ; $6ef1: $fe $02
	jr z, jr_004_6efb                                ; $6ef3: $28 $06

	ld de, $0800                                     ; $6ef5: $11 $00 $08
	call Call_004_71f7                               ; $6ef8: $cd $f7 $71

jr_004_6efb:
	ld a, [$a22a]                                    ; $6efb: $fa $2a $a2
	and a                                            ; $6efe: $a7
	jr nz, jr_004_6f07                               ; $6eff: $20 $06

	ld de, $1400                                     ; $6f01: $11 $00 $14
	call Call_004_71f7                               ; $6f04: $cd $f7 $71

jr_004_6f07:
	ld a, $01                                        ; $6f07: $3e $01
	ld [$d35b], a                                    ; $6f09: $ea $5b $d3
	jp Jump_004_7195                                 ; $6f0c: $c3 $95 $71


	ld bc, $1e01                                     ; $6f0f: $01 $01 $1e
	ld de, $1a70                                     ; $6f12: $11 $70 $1a
	call Call_004_71f7                               ; $6f15: $cd $f7 $71
	xor a                                            ; $6f18: $af
	ld [$d35b], a                                    ; $6f19: $ea $5b $d3
	jp Jump_004_7195                                 ; $6f1c: $c3 $95 $71


	ld a, b                                          ; $6f1f: $78
	and a                                            ; $6f20: $a7
	jr nz, jr_004_6f33                               ; $6f21: $20 $10

	ld a, $ff                                        ; $6f23: $3e $ff
	ld [$d35c], a                                    ; $6f25: $ea $5c $d3
	ld [$d35d], a                                    ; $6f28: $ea $5d $d3
	ld [$d35e], a                                    ; $6f2b: $ea $5e $d3
	xor a                                            ; $6f2e: $af
	ld [$d35f], a                                    ; $6f2f: $ea $5f $d3
	ret                                              ; $6f32: $c9


jr_004_6f33:
	ld a, [$d35c]                                    ; $6f33: $fa $5c $d3
	cp $00                                           ; $6f36: $fe $00
	jr z, jr_004_6f4e                                ; $6f38: $28 $14

	ld a, [$d35d]                                    ; $6f3a: $fa $5d $d3
	cp $00                                           ; $6f3d: $fe $00
	jr z, jr_004_6f4e                                ; $6f3f: $28 $0d

	ld a, [$d35f]                                    ; $6f41: $fa $5f $d3
	ld b, a                                          ; $6f44: $47
	ld a, $03                                        ; $6f45: $3e $03
	sub b                                            ; $6f47: $90
	call Call_000_12fc                                       ; $6f48: $cd $fc $12
	and a                                            ; $6f4b: $a7
	jr z, jr_004_6f69                                ; $6f4c: $28 $1b

jr_004_6f4e:
	ld bc, $0801                                     ; $6f4e: $01 $01 $08
	ld a, [$d35c]                                    ; $6f51: $fa $5c $d3
	cp $ff                                           ; $6f54: $fe $ff
	call nz, Call_004_6f78                           ; $6f56: $c4 $78 $6f
	ld a, [$d35d]                                    ; $6f59: $fa $5d $d3
	cp $ff                                           ; $6f5c: $fe $ff
	call nz, Call_004_6f78                           ; $6f5e: $c4 $78 $6f
	ld a, $01                                        ; $6f61: $3e $01
	ld [$d35b], a                                    ; $6f63: $ea $5b $d3
	call Call_004_7195                               ; $6f66: $cd $95 $71

jr_004_6f69:
	push af                                          ; $6f69: $f5
	ld a, [$d35f]                                    ; $6f6a: $fa $5f $d3
	ld hl, $d35c                                     ; $6f6d: $21 $5c $d3
	rst AddAOntoHL                                          ; $6f70: $ef
	pop af                                           ; $6f71: $f1
	ld [hl], a                                       ; $6f72: $77
	ld hl, $d35f                                     ; $6f73: $21 $5f $d3
	inc [hl]                                         ; $6f76: $34
	ret                                              ; $6f77: $c9


Call_004_6f78:
	call Call_004_71eb                               ; $6f78: $cd $eb $71
	jp Jump_004_71f7                                 ; $6f7b: $c3 $f7 $71


Jump_004_6f7e:
	ld a, [$a397]                                    ; $6f7e: $fa $97 $a3
	cp $41                                           ; $6f81: $fe $41
	jr c, jr_004_6f88                                ; $6f83: $38 $03

	ld a, $0f                                        ; $6f85: $3e $0f
	ret                                              ; $6f87: $c9


jr_004_6f88:
	ld a, [$a30c]                                    ; $6f88: $fa $0c $a3
	ld hl, $a373                                     ; $6f8b: $21 $73 $a3
	rst AddAOntoHL                                          ; $6f8e: $ef
	ld a, [hl]                                       ; $6f8f: $7e
	cp $ff                                           ; $6f90: $fe $ff
	jr z, jr_004_6fa0                                ; $6f92: $28 $0c

	ld c, a                                          ; $6f94: $4f
	push bc                                          ; $6f95: $c5
	call Call_004_43c0                               ; $6f96: $cd $c0 $43
	pop bc                                           ; $6f99: $c1
	cp $02                                           ; $6f9a: $fe $02
	jr nc, jr_004_6fa0                               ; $6f9c: $30 $02

	ld a, c                                          ; $6f9e: $79
	ret                                              ; $6f9f: $c9


jr_004_6fa0:
	ld hl, $d002                                     ; $6fa0: $21 $02 $d0
	ld c, $00                                        ; $6fa3: $0e $00

jr_004_6fa5:
	ld a, c                                          ; $6fa5: $79
	push hl                                          ; $6fa6: $e5
	ld hl, $a365                                     ; $6fa7: $21 $65 $a3
	rst AddAOntoHL                                          ; $6faa: $ef
	ld a, [hl]                                       ; $6fab: $7e
	and $01                                          ; $6fac: $e6 $01
	pop hl                                           ; $6fae: $e1
	jr z, jr_004_6fd2                                ; $6faf: $28 $21

	ld a, c                                          ; $6fb1: $79
	cp $0b                                           ; $6fb2: $fe $0b
	jr nz, jr_004_6fba                               ; $6fb4: $20 $04

	ld a, b                                          ; $6fb6: $78
	and a                                            ; $6fb7: $a7
	jr z, jr_004_6fd2                                ; $6fb8: $28 $18

jr_004_6fba:
	ld a, c                                          ; $6fba: $79
	call Call_004_42bb                               ; $6fbb: $cd $bb $42
	cp $3c                                           ; $6fbe: $fe $3c
	jr nc, jr_004_6fd2                               ; $6fc0: $30 $10

	ld a, c                                          ; $6fc2: $79
	call Call_004_4218                               ; $6fc3: $cd $18 $42
	cp $32                                           ; $6fc6: $fe $32
	jr c, jr_004_6fd2                                ; $6fc8: $38 $08

	ld [hl], c                                       ; $6fca: $71
	inc hl                                           ; $6fcb: $23
	ld [hl], $00                                     ; $6fcc: $36 $00
	inc hl                                           ; $6fce: $23
	ld [hl+], a                                      ; $6fcf: $22
	jr jr_004_6fd7                                   ; $6fd0: $18 $05

jr_004_6fd2:
	ld [hl], $ff                                     ; $6fd2: $36 $ff
	inc hl                                           ; $6fd4: $23
	inc hl                                           ; $6fd5: $23
	inc hl                                           ; $6fd6: $23

jr_004_6fd7:
	inc c                                            ; $6fd7: $0c
	ld a, $0e                                        ; $6fd8: $3e $0e
	cp c                                             ; $6fda: $b9
	jr nz, jr_004_6fa5                               ; $6fdb: $20 $c8

	call Call_004_4e04                               ; $6fdd: $cd $04 $4e
	ld a, [$d002]                                    ; $6fe0: $fa $02 $d0
	cp $ff                                           ; $6fe3: $fe $ff
	ret nz                                           ; $6fe5: $c0

	ld a, $0a                                        ; $6fe6: $3e $0a
	call Call_000_12fc                                       ; $6fe8: $cd $fc $12
	and a                                            ; $6feb: $a7
	jr nz, jr_004_6ff1                               ; $6fec: $20 $03

	ld a, $0e                                        ; $6fee: $3e $0e
	ret                                              ; $6ff0: $c9


jr_004_6ff1:
	ld a, [$a398]                                    ; $6ff1: $fa $98 $a3
	cp $03                                           ; $6ff4: $fe $03
	jr nz, jr_004_6ffb                               ; $6ff6: $20 $03

	ld a, $11                                        ; $6ff8: $3e $11
	ret                                              ; $6ffa: $c9


jr_004_6ffb:
	ld a, $12                                        ; $6ffb: $3e $12
	ret                                              ; $6ffd: $c9


	ld b, $00                                        ; $6ffe: $06 $00
	jp Jump_004_6f7e                                 ; $7000: $c3 $7e $6f


	ld a, [$a3a0]                                    ; $7003: $fa $a0 $a3
	and a                                            ; $7006: $a7
	jr z, jr_004_700b                                ; $7007: $28 $02

	dec a                                            ; $7009: $3d
	ret                                              ; $700a: $c9


jr_004_700b:
	xor a                                            ; $700b: $af
	ret                                              ; $700c: $c9


	ld c, $00                                        ; $700d: $0e $00
	ld b, $ff                                        ; $700f: $06 $ff
	ld d, $00                                        ; $7011: $16 $00

jr_004_7013:
	ld a, c                                          ; $7013: $79
	ld hl, $a365                                     ; $7014: $21 $65 $a3
	rst AddAOntoHL                                          ; $7017: $ef
	ld a, $01                                        ; $7018: $3e $01
	and [hl]                                         ; $701a: $a6
	jr z, jr_004_702c                                ; $701b: $28 $0f

	ld a, c                                          ; $701d: $79
	push bc                                          ; $701e: $c5
	call Call_004_4218                               ; $701f: $cd $18 $42
	pop bc                                           ; $7022: $c1
	cp $32                                           ; $7023: $fe $32
	jr c, jr_004_702c                                ; $7025: $38 $05

	cp d                                             ; $7027: $ba
	jr c, jr_004_702c                                ; $7028: $38 $02

	ld b, c                                          ; $702a: $41
	ld d, a                                          ; $702b: $57

jr_004_702c:
	inc c                                            ; $702c: $0c
	ld a, $0e                                        ; $702d: $3e $0e
	cp c                                             ; $702f: $b9
	jr nz, jr_004_7013                               ; $7030: $20 $e1

	ld a, b                                          ; $7032: $78
	cp $ff                                           ; $7033: $fe $ff
	ret nz                                           ; $7035: $c0

	ld a, $03                                        ; $7036: $3e $03
	call Call_000_12fc                                       ; $7038: $cd $fc $12
	add $0e                                          ; $703b: $c6 $0e
	ret                                              ; $703d: $c9


	push af                                          ; $703e: $f5
	ld a, c                                          ; $703f: $79
	ld [$c0d0], a                                    ; $7040: $ea $d0 $c0
	push bc                                          ; $7043: $c5
	rst FarCall                                          ; $7044: $f7
	ret nz                                           ; $7045: $c0

	ld d, c                                          ; $7046: $51
	inc bc                                           ; $7047: $03
	pop bc                                           ; $7048: $c1
	pop af                                           ; $7049: $f1
	push bc                                          ; $704a: $c5
	ld c, a                                          ; $704b: $4f

jr_004_704c:
	push bc                                          ; $704c: $c5
	ld a, $03                                        ; $704d: $3e $03
	rst FarCall                                          ; $704f: $f7
	or l                                             ; $7050: $b5
	ld b, c                                          ; $7051: $41
	inc bc                                           ; $7052: $03
	pop bc                                           ; $7053: $c1
	ld a, [$c0d0]                                    ; $7054: $fa $d0 $c0
	and a                                            ; $7057: $a7
	ld a, $70                                        ; $7058: $3e $70
	jr z, jr_004_705e                                ; $705a: $28 $02

	ld a, $71                                        ; $705c: $3e $71

jr_004_705e:
	call $1e2e                                       ; $705e: $cd $2e $1e
	ld b, $1e                                        ; $7061: $06 $1e
	ld hl, $7820                                     ; $7063: $21 $20 $78
	push bc                                          ; $7066: $c5
	call Func_1c32                                       ; $7067: $cd $32 $1c
	pop bc                                           ; $706a: $c1
	ld a, [wFrameCounter]                                    ; $706b: $fa $1f $c1
	ld b, a                                          ; $706e: $47

jr_004_706f:
	push bc                                          ; $706f: $c5
	call Call_000_1c71                                       ; $7070: $cd $71 $1c
	pop bc                                           ; $7073: $c1
	ld a, [wButtonsPressed]                                    ; $7074: $fa $25 $c1
	and $20                                          ; $7077: $e6 $20
	jr nz, jr_004_7086                               ; $7079: $20 $0b

	ld a, [wFrameCounter]                                    ; $707b: $fa $1f $c1
	sub b                                            ; $707e: $90
	cp $96                                           ; $707f: $fe $96
	jr c, jr_004_706f                                ; $7081: $38 $ec

	dec c                                            ; $7083: $0d
	jr nz, jr_004_704c                               ; $7084: $20 $c6

jr_004_7086:
	ld a, $03                                        ; $7086: $3e $03
	rst FarCall                                          ; $7088: $f7
	or l                                             ; $7089: $b5
	ld b, c                                          ; $708a: $41
	inc bc                                           ; $708b: $03
	pop bc                                           ; $708c: $c1
	ld a, b                                          ; $708d: $78
	cp $03                                           ; $708e: $fe $03
	ret z                                            ; $7090: $c8

	ld a, $7f                                        ; $7091: $3e $7f
	call $1e2e                                       ; $7093: $cd $2e $1e
	ld b, $1e                                        ; $7096: $06 $1e
	ld hl, $7834                                     ; $7098: $21 $34 $78
	call Func_1c32                                       ; $709b: $cd $32 $1c
	ret                                              ; $709e: $c9


	ld a, [$a263]                                    ; $709f: $fa $63 $a2
	ret                                              ; $70a2: $c9


	ld a, b                                          ; $70a3: $78
	ld hl, $a114                                     ; $70a4: $21 $14 $a1
	rst AddAOntoHL                                          ; $70a7: $ef
	ld a, [hl]                                       ; $70a8: $7e
	ret                                              ; $70a9: $c9


	ld bc, $fe75                                     ; $70aa: $01 $75 $fe
	ld a, $3f                                        ; $70ad: $3e $3f
	and b                                            ; $70af: $a0
	ld b, a                                          ; $70b0: $47
	ld hl, $a365                                     ; $70b1: $21 $65 $a3
	ld e, $00                                        ; $70b4: $1e $00

jr_004_70b6:
	ld a, [hl+]                                      ; $70b6: $2a
	and $01                                          ; $70b7: $e6 $01
	jr z, jr_004_70c4                                ; $70b9: $28 $09

	push de                                          ; $70bb: $d5
	ld a, e                                          ; $70bc: $7b
	call Call_004_71eb                               ; $70bd: $cd $eb $71
	call Call_004_71f7                               ; $70c0: $cd $f7 $71
	pop de                                           ; $70c3: $d1

jr_004_70c4:
	inc e                                            ; $70c4: $1c
	ld a, $0e                                        ; $70c5: $3e $0e
	cp e                                             ; $70c7: $bb
	jr nz, jr_004_70b6                               ; $70c8: $20 $ec

	ld de, rIE                                     ; $70ca: $11 $ff $ff
	call wCpBCtoDE                                       ; $70cd: $cd $8c $ce
	ld a, $00                                        ; $70d0: $3e $00
	ret z                                            ; $70d2: $c8

	xor a                                            ; $70d3: $af
	ld [$d35b], a                                    ; $70d4: $ea $5b $d3
	jp Jump_004_7195                                 ; $70d7: $c3 $95 $71


	ld de, $0001                                     ; $70da: $11 $01 $00

jr_004_70dd:
	dec b                                            ; $70dd: $05
	jr z, jr_004_70e6                                ; $70de: $28 $06

	sla e                                            ; $70e0: $cb $23
	rl d                                             ; $70e2: $cb $12
	jr jr_004_70dd                                   ; $70e4: $18 $f7

jr_004_70e6:
	ld hl, $a126                                     ; $70e6: $21 $26 $a1
	sla a                                            ; $70e9: $cb $27
	rst AddAOntoHL                                          ; $70eb: $ef
	ld a, [hl+]                                      ; $70ec: $2a
	ld b, [hl]                                       ; $70ed: $46
	ld c, a                                          ; $70ee: $4f
	call Call_004_71f7                               ; $70ef: $cd $f7 $71
	ld [hl], b                                       ; $70f2: $70
	dec hl                                           ; $70f3: $2b
	ld [hl], c                                       ; $70f4: $71
	ret                                              ; $70f5: $c9


	dec c                                            ; $70f6: $0d
	ld [$0709], sp                                   ; $70f7: $08 $09 $07
	rlca                                             ; $70fa: $07
	rlca                                             ; $70fb: $07
	rlca                                             ; $70fc: $07
	rlca                                             ; $70fd: $07
	ld b, $06                                        ; $70fe: $06 $06
	ld [$0707], sp                                   ; $7100: $08 $07 $07
	add hl, bc                                       ; $7103: $09
	dec b                                            ; $7104: $05
	ld b, $21                                        ; $7105: $06 $21
	ld h, $a1                                        ; $7107: $26 $a1
	sla a                                            ; $7109: $cb $27
	rst AddAOntoHL                                          ; $710b: $ef
	ld e, [hl]                                       ; $710c: $5e
	inc hl                                           ; $710d: $23
	ld d, [hl]                                       ; $710e: $56
	ld hl, $70f6                                     ; $710f: $21 $f6 $70
	ld a, b                                          ; $7112: $78
	rst AddAOntoHL                                          ; $7113: $ef
	ld c, [hl]                                       ; $7114: $4e
	ld a, c                                          ; $7115: $79
	ld b, $00                                        ; $7116: $06 $00

jr_004_7118:
	srl d                                            ; $7118: $cb $3a
	rr e                                             ; $711a: $cb $1b
	jr nc, jr_004_711f                               ; $711c: $30 $01

	inc b                                            ; $711e: $04

jr_004_711f:
	dec c                                            ; $711f: $0d
	jr nz, jr_004_7118                               ; $7120: $20 $f6

	ld e, a                                          ; $7122: $5f
	ld c, $64                                        ; $7123: $0e $64
	call BCequBtimesC                                       ; $7125: $cd $5f $12
	ld h, b                                          ; $7128: $60
	ld l, c                                          ; $7129: $69
	ld c, e                                          ; $712a: $4b
	ld b, $00                                        ; $712b: $06 $00
	call BCHLequHLdivModBC                                       ; $712d: $cd $c1 $12
	ld a, l                                          ; $7130: $7d
	ret                                              ; $7131: $c9


	ld a, $05                                        ; $7132: $3e $05
	call Call_000_12fc                                       ; $7134: $cd $fc $12
	ld hl, $7148                                     ; $7137: $21 $48 $71
	rst AddAOntoHL                                          ; $713a: $ef
	ld a, [hl]                                       ; $713b: $7e
	push af                                          ; $713c: $f5
	ld [$a37c], a                                    ; $713d: $ea $7c $a3
	ld hl, $a373                                     ; $7140: $21 $73 $a3
	rst AddAOntoHL                                          ; $7143: $ef
	ld [hl], $00                                     ; $7144: $36 $00
	pop af                                           ; $7146: $f1
	ret                                              ; $7147: $c9


	inc bc                                           ; $7148: $03
	inc b                                            ; $7149: $04
	dec b                                            ; $714a: $05
	ld b, $07                                        ; $714b: $06 $07
	push af                                          ; $714d: $f5
	ld hl, $a373                                     ; $714e: $21 $73 $a3
	ld a, b                                          ; $7151: $78
	rst AddAOntoHL                                          ; $7152: $ef
	pop af                                           ; $7153: $f1
	ld [hl], a                                       ; $7154: $77
	cp $07                                           ; $7155: $fe $07
	ret nc                                           ; $7157: $d0

	ld hl, $a37c                                     ; $7158: $21 $7c $a3
	rst AddAOntoHL                                          ; $715b: $ef
	ld [hl], b                                       ; $715c: $70
	ret                                              ; $715d: $c9


	ld b, $01                                        ; $715e: $06 $01
	ld hl, $a146                                     ; $7160: $21 $46 $a1
	cp $08                                           ; $7163: $fe $08
	jr c, jr_004_716a                                ; $7165: $38 $03

	inc hl                                           ; $7167: $23
	sub $08                                          ; $7168: $d6 $08

jr_004_716a:
	and a                                            ; $716a: $a7
	jr z, jr_004_7172                                ; $716b: $28 $05

	sla b                                            ; $716d: $cb $20
	dec a                                            ; $716f: $3d
	jr jr_004_716a                                   ; $7170: $18 $f8

jr_004_7172:
	ld a, b                                          ; $7172: $78
	or [hl]                                          ; $7173: $b6
	ld [hl], a                                       ; $7174: $77
	ret                                              ; $7175: $c9


	ld a, [$c135]                                    ; $7176: $fa $35 $c1
	ld [$c136], a                                    ; $7179: $ea $36 $c1
	ret                                              ; $717c: $c9


	ld a, [$c136]                                    ; $717d: $fa $36 $c1
	call Jump_000_1af7                                       ; $7180: $cd $f7 $1a
	ret                                              ; $7183: $c9


Func_04_7184::
jr_004_7184:
	push bc                                          ; $7184: $c5
	call Call_004_7550                               ; $7185: $cd $50 $75
	pop bc                                           ; $7188: $c1

	ld a, [wButtonsHeld]                                    ; $7189: $fa $23 $c1
	and PADF_B                                          ; $718c: $e6 $20
	ret nz                                           ; $718e: $c0

	dec bc                                           ; $718f: $0b
	ld a, b                                          ; $7190: $78
	or c                                             ; $7191: $b1
	jr nz, jr_004_7184                               ; $7192: $20 $f0

	ret                                              ; $7194: $c9


Call_004_7195:
Jump_004_7195:
	call Call_004_71a8                               ; $7195: $cd $a8 $71
	ld a, b                                          ; $7198: $78
	and a                                            ; $7199: $a7
	jr z, jr_004_71a5                                ; $719a: $28 $09

	call Call_000_12fc                                       ; $719c: $cd $fc $12
	ld hl, $d353                                     ; $719f: $21 $53 $d3
	rst AddAOntoHL                                          ; $71a2: $ef
	ld a, [hl]                                       ; $71a3: $7e
	ret                                              ; $71a4: $c9


jr_004_71a5:
	ld a, $ff                                        ; $71a5: $3e $ff
	ret                                              ; $71a7: $c9


Call_004_71a8:
	ld a, $ff                                        ; $71a8: $3e $ff
	ld hl, $d353                                     ; $71aa: $21 $53 $d3
	call $cbe9                                       ; $71ad: $cd $e9 $cb
	ld hl, $a365                                     ; $71b0: $21 $65 $a3
	ld de, $d353                                     ; $71b3: $11 $53 $d3
	xor a                                            ; $71b6: $af
	ld [$c0d0], a                                    ; $71b7: $ea $d0 $c0

jr_004_71ba:
	srl b                                            ; $71ba: $cb $38
	rr c                                             ; $71bc: $cb $19
	jr c, jr_004_71d5                                ; $71be: $38 $15

	ld a, [$d35b]                                    ; $71c0: $fa $5b $d3
	and a                                            ; $71c3: $a7
	jr nz, jr_004_71cc                               ; $71c4: $20 $06

	ld a, $fe                                        ; $71c6: $3e $fe
	or [hl]                                          ; $71c8: $b6
	cpl                                              ; $71c9: $2f
	jr jr_004_71cd                                   ; $71ca: $18 $01

jr_004_71cc:
	and [hl]                                         ; $71cc: $a6

jr_004_71cd:
	and a                                            ; $71cd: $a7
	jr z, jr_004_71d5                                ; $71ce: $28 $05

	ld a, [$c0d0]                                    ; $71d0: $fa $d0 $c0
	ld [de], a                                       ; $71d3: $12
	inc de                                           ; $71d4: $13

jr_004_71d5:
	inc hl                                           ; $71d5: $23
	ld a, [$c0d0]                                    ; $71d6: $fa $d0 $c0
	inc a                                            ; $71d9: $3c
	ld [$c0d0], a                                    ; $71da: $ea $d0 $c0
	cp $0e                                           ; $71dd: $fe $0e
	jr nz, jr_004_71ba                               ; $71df: $20 $d9

	ld l, e                                          ; $71e1: $6b
	ld h, d                                          ; $71e2: $62
	ld de, $d353                                     ; $71e3: $11 $53 $d3
	call wHLminusEquDE                                       ; $71e6: $cd $9e $ce
	ld b, l                                          ; $71e9: $45
	ret                                              ; $71ea: $c9


Call_004_71eb:
	push hl                                          ; $71eb: $e5
	sla a                                            ; $71ec: $cb $27
	ld hl, $6ec8                                     ; $71ee: $21 $c8 $6e
	rst AddAOntoHL                                          ; $71f1: $ef
	ld a, [hl+]                                      ; $71f2: $2a
	ld e, a                                          ; $71f3: $5f
	ld d, [hl]                                       ; $71f4: $56
	pop hl                                           ; $71f5: $e1
	ret                                              ; $71f6: $c9


Call_004_71f7:
Jump_004_71f7:
	ld a, d                                          ; $71f7: $7a
	or b                                             ; $71f8: $b0
	ld b, a                                          ; $71f9: $47
	ld a, e                                          ; $71fa: $7b
	or c                                             ; $71fb: $b1
	ld c, a                                          ; $71fc: $4f
	ret                                              ; $71fd: $c9


	push bc                                          ; $71fe: $c5
	ld [$d840], a                                    ; $71ff: $ea $40 $d8
	xor a                                            ; $7202: $af
	ld [$d842], a                                    ; $7203: $ea $42 $d8
	rst FarCall                                          ; $7206: $f7
	nop                                              ; $7207: $00
	ld b, c                                          ; $7208: $41
	inc c                                            ; $7209: $0c
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $720a: $cd $ef $2d
	ld a, [$d840]                                    ; $720d: $fa $40 $d8
	cp $05                                           ; $7210: $fe $05
	jr z, jr_004_721f                                ; $7212: $28 $0b

	ld hl, $7590                                     ; $7214: $21 $90 $75
	sla a                                            ; $7217: $cb $27
	rst AddAOntoHL                                          ; $7219: $ef
	ld c, [hl]                                       ; $721a: $4e
	inc hl                                           ; $721b: $23
	ld b, [hl]                                       ; $721c: $46
	jr jr_004_722b                                   ; $721d: $18 $0c

jr_004_721f:
	pop bc                                           ; $721f: $c1
	push bc                                          ; $7220: $c5
	ld a, b                                          ; $7221: $78
	sla a                                            ; $7222: $cb $27
	ld hl, $75a2                                     ; $7224: $21 $a2 $75
	rst AddAOntoHL                                          ; $7227: $ef
	ld c, [hl]                                       ; $7228: $4e
	inc hl                                           ; $7229: $23
	ld b, [hl]                                       ; $722a: $46

jr_004_722b:
	ld a, [$d840]                                    ; $722b: $fa $40 $d8
	cp $08                                           ; $722e: $fe $08
	jr nz, jr_004_723a                               ; $7230: $20 $08

	push bc                                          ; $7232: $c5
	ld a, $07                                        ; $7233: $3e $07
	rst FarCall                                          ; $7235: $f7
	sbc b                                            ; $7236: $98
	ld b, [hl]                                       ; $7237: $46
	inc bc                                           ; $7238: $03
	pop bc                                           ; $7239: $c1

jr_004_723a:
	ld a, $07                                        ; $723a: $3e $07
	ld [$c186], a                                    ; $723c: $ea $86 $c1
	call $378e                                       ; $723f: $cd $8e $37
	call $3a12                                       ; $7242: $cd $12 $3a
	ld d, $ff                                        ; $7245: $16 $ff
	call $1a38                                       ; $7247: $cd $38 $1a
	call $3974                                       ; $724a: $cd $74 $39
	ldh a, [hDisp0_LCDC]                                     ; $724d: $f0 $82
	and $e7                                          ; $724f: $e6 $e7
	or $07                                           ; $7251: $f6 $07
	ldh [hDisp0_LCDC], a                                     ; $7253: $e0 $82
	pop bc                                           ; $7255: $c1
	call $726f                                       ; $7256: $cd $6f $72
	ld a, [$d841]                                    ; $7259: $fa $41 $d8
	ret                                              ; $725c: $c9


Jump_004_725d:
	rst FarCall                                          ; $725d: $f7
	nop                                              ; $725e: $00
	ld b, c                                          ; $725f: $41
	inc c                                            ; $7260: $0c
	ld de, $0000                                     ; $7261: $11 $00 $00
	call $19f5                                       ; $7264: $cd $f5 $19
	call Func_1aa6                                       ; $7267: $cd $a6 $1a
	rst FarCall                                          ; $726a: $f7
	bit 5, [hl]                                      ; $726b: $cb $6e
	ld bc, $fac9                                     ; $726d: $01 $c9 $fa
	ld b, b                                          ; $7270: $40
	ret c                                            ; $7271: $d8

	call wJumpTable                                       ; $7272: $cd $80 $cf
	add a                                            ; $7275: $87
	ld [hl], d                                       ; $7276: $72
	and h                                            ; $7277: $a4
	ld [hl], d                                       ; $7278: $72
	cp e                                             ; $7279: $bb
	ld [hl], d                                       ; $727a: $72
	jp nc, $1772                                     ; $727b: $d2 $72 $17

	ld [hl], e                                       ; $727e: $73
	ld [hl-], a                                      ; $727f: $32
	ld [hl], e                                       ; $7280: $73
	ld d, [hl]                                       ; $7281: $56
	ld [hl], e                                       ; $7282: $73
	ld l, c                                          ; $7283: $69
	ld [hl], e                                       ; $7284: $73
	ld c, b                                          ; $7285: $48
	ld [hl], h                                       ; $7286: $74
	ld a, b                                          ; $7287: $78
	swap a                                           ; $7288: $cb $37
	or c                                             ; $728a: $b1
	ld [$d841], a                                    ; $728b: $ea $41 $d8
	rst FarCall                                          ; $728e: $f7
	or b                                             ; $728f: $b0
	ld l, [hl]                                       ; $7290: $6e
	ld bc, $8ccd                                     ; $7291: $01 $cd $8c

jr_004_7294:
	jr c, @-$31                                      ; $7294: $38 $cd

	or c                                             ; $7296: $b1
	ld [hl], h                                       ; $7297: $74
	ld b, $1e                                        ; $7298: $06 $1e
	ld hl, $8027                                     ; $729a: $21 $27 $80
	call Func_1c32                                       ; $729d: $cd $32 $1c
	call Call_004_74cf                               ; $72a0: $cd $cf $74
	ret                                              ; $72a3: $c9


	ld a, b                                          ; $72a4: $78
	ld [$d841], a                                    ; $72a5: $ea $41 $d8
	rst FarCall                                          ; $72a8: $f7
	or b                                             ; $72a9: $b0
	ld l, [hl]                                       ; $72aa: $6e
	ld bc, $8ccd                                     ; $72ab: $01 $cd $8c
	jr c, @-$31                                      ; $72ae: $38 $cd

	or c                                             ; $72b0: $b1
	ld [hl], h                                       ; $72b1: $74
	call Call_004_74cf                               ; $72b2: $cd $cf $74
	ld bc, $67b8                                     ; $72b5: $01 $b8 $67
	jp Jump_004_725d                                 ; $72b8: $c3 $5d $72


	ld a, b                                          ; $72bb: $78
	ld [$d841], a                                    ; $72bc: $ea $41 $d8
	rst FarCall                                          ; $72bf: $f7
	or b                                             ; $72c0: $b0
	ld l, [hl]                                       ; $72c1: $6e
	ld bc, $8ccd                                     ; $72c2: $01 $cd $8c
	jr c, jr_004_7294                                ; $72c5: $38 $cd

	or c                                             ; $72c7: $b1
	ld [hl], h                                       ; $72c8: $74
	call Call_004_74cf                               ; $72c9: $cd $cf $74
	ld bc, $67f0                                     ; $72cc: $01 $f0 $67
	jp Jump_004_725d                                 ; $72cf: $c3 $5d $72


	push bc                                          ; $72d2: $c5
	ld a, b                                          ; $72d3: $78
	ld hl, $75b7                                     ; $72d4: $21 $b7 $75
	rst AddAOntoHL                                          ; $72d7: $ef
	ld a, [hl]                                       ; $72d8: $7e
	ld [$c16a], a                                    ; $72d9: $ea $6a $c1
	call $3ba8                                       ; $72dc: $cd $a8 $3b
	pop bc                                           ; $72df: $c1
	push bc                                          ; $72e0: $c5
	ld a, b                                          ; $72e1: $78
	ld [$d841], a                                    ; $72e2: $ea $41 $d8
	rst FarCall                                          ; $72e5: $f7
	or b                                             ; $72e6: $b0
	ld l, [hl]                                       ; $72e7: $6e
	ld bc, $8ccd                                     ; $72e8: $01 $cd $8c
	jr c, @-$31                                      ; $72eb: $38 $cd

	or c                                             ; $72ed: $b1
	ld [hl], h                                       ; $72ee: $74
	pop bc                                           ; $72ef: $c1

jr_004_72f0:
	push bc                                          ; $72f0: $c5
	call Call_004_74cf                               ; $72f1: $cd $cf $74
	xor a                                            ; $72f4: $af
	ld [$d84f], a                                    ; $72f5: $ea $4f $d8
	pop bc                                           ; $72f8: $c1
	ld a, b                                          ; $72f9: $78
	sla a                                            ; $72fa: $cb $27
	add b                                            ; $72fc: $80
	ld hl, $75a8                                     ; $72fd: $21 $a8 $75
	rst AddAOntoHL                                          ; $7300: $ef
	ld b, [hl]                                       ; $7301: $46
	inc hl                                           ; $7302: $23
	ld a, [hl+]                                      ; $7303: $2a
	ld h, [hl]                                       ; $7304: $66
	ld l, a                                          ; $7305: $6f
	call Func_1c32                                       ; $7306: $cd $32 $1c
	ld a, $01                                        ; $7309: $3e $01

jr_004_730b:
	ld [$d842], a                                    ; $730b: $ea $42 $d8
	call Call_004_74cf                               ; $730e: $cd $cf $74
	ld bc, $67f0                                     ; $7311: $01 $f0 $67
	jp Jump_004_725d                                 ; $7314: $c3 $5d $72


	ld a, b                                          ; $7317: $78
	ld [$d841], a                                    ; $7318: $ea $41 $d8
	rst FarCall                                          ; $731b: $f7
	or b                                             ; $731c: $b0
	ld l, [hl]                                       ; $731d: $6e
	ld bc, $8ccd                                     ; $731e: $01 $cd $8c
	jr c, jr_004_72f0                                ; $7321: $38 $cd

	or c                                             ; $7323: $b1
	ld [hl], h                                       ; $7324: $74
	call Call_004_74cf                               ; $7325: $cd $cf $74
	xor a                                            ; $7328: $af
	call Jump_000_1af7                                       ; $7329: $cd $f7 $1a
	ld bc, $67f0                                     ; $732c: $01 $f0 $67
	jp Jump_004_725d                                 ; $732f: $c3 $5d $72


	ld a, b                                          ; $7332: $78
	ld [$d841], a                                    ; $7333: $ea $41 $d8
	rst FarCall                                          ; $7336: $f7
	or b                                             ; $7337: $b0
	ld l, [hl]                                       ; $7338: $6e
	ld bc, $8ccd                                     ; $7339: $01 $cd $8c
	jr c, jr_004_730b                                ; $733c: $38 $cd

	or c                                             ; $733e: $b1
	ld [hl], h                                       ; $733f: $74
	ld b, $1e                                        ; $7340: $06 $1e
	ld hl, $8045                                     ; $7342: $21 $45 $80
	call Func_1c32                                       ; $7345: $cd $32 $1c
	ld a, $0e                                        ; $7348: $3e $0e
	call $1e2e                                       ; $734a: $cd $2e $1e
	call Call_004_74cf                               ; $734d: $cd $cf $74

jr_004_7350:
	ld bc, $67f0                                     ; $7350: $01 $f0 $67
	jp Jump_004_725d                                 ; $7353: $c3 $5d $72


	rst FarCall                                          ; $7356: $f7
	or b                                             ; $7357: $b0
	ld l, [hl]                                       ; $7358: $6e
	ld bc, $8ccd                                     ; $7359: $01 $cd $8c
	jr c, @-$31                                      ; $735c: $38 $cd

	or c                                             ; $735e: $b1
	ld [hl], h                                       ; $735f: $74
	call Call_004_74cf                               ; $7360: $cd $cf $74
	ld bc, $67f0                                     ; $7363: $01 $f0 $67
	jp Jump_004_725d                                 ; $7366: $c3 $5d $72


	ld a, $08                                        ; $7369: $3e $08
	call Call_000_12fc                                       ; $736b: $cd $fc $12
	cp $07                                           ; $736e: $fe $07
	jr nz, jr_004_7378                               ; $7370: $20 $06

	ld a, b                                          ; $7372: $78
	and a                                            ; $7373: $a7
	jr z, jr_004_7378                                ; $7374: $28 $02

	ld a, $06                                        ; $7376: $3e $06

jr_004_7378:
	ld [$d841], a                                    ; $7378: $ea $41 $d8
	rst FarCall                                          ; $737b: $f7
	or b                                             ; $737c: $b0
	ld l, [hl]                                       ; $737d: $6e
	ld bc, $8ccd                                     ; $737e: $01 $cd $8c
	jr c, jr_004_7350                                ; $7381: $38 $cd

	or c                                             ; $7383: $b1
	ld [hl], h                                       ; $7384: $74
	ld a, $00                                        ; $7385: $3e $00
	ld [$d842], a                                    ; $7387: $ea $42 $d8
	ld a, $6d                                        ; $738a: $3e $6d
	call Jump_000_1af7                                       ; $738c: $cd $f7 $1a
	ld b, $1e                                        ; $738f: $06 $1e
	ld hl, $7f6f                                     ; $7391: $21 $6f $7f
	call Func_1c32                                       ; $7394: $cd $32 $1c
	ld a, $01                                        ; $7397: $3e $01
	ld [$d842], a                                    ; $7399: $ea $42 $d8
	ld d, $ff                                        ; $739c: $16 $ff
	call $1a38                                       ; $739e: $cd $38 $1a
	ld bc, $0133                                     ; $73a1: $01 $33 $01
	call $3a12                                       ; $73a4: $cd $12 $3a
	call $3974                                       ; $73a7: $cd $74 $39
	call $388c                                       ; $73aa: $cd $8c $38
	call Call_004_74f8                               ; $73ad: $cd $f8 $74
	ld b, $1e                                        ; $73b0: $06 $1e
	ld hl, $7f91                                     ; $73b2: $21 $91 $7f
	call Func_1c32                                       ; $73b5: $cd $32 $1c
	ld a, $02                                        ; $73b8: $3e $02
	ld [$d842], a                                    ; $73ba: $ea $42 $d8
	ld d, $00                                        ; $73bd: $16 $00
	call $1a38                                       ; $73bf: $cd $38 $1a
	call Call_004_74cf                               ; $73c2: $cd $cf $74
	xor a                                            ; $73c5: $af
	ld [$d84f], a                                    ; $73c6: $ea $4f $d8
	ld a, $03                                        ; $73c9: $3e $03
	ld [$d842], a                                    ; $73cb: $ea $42 $d8
	ld d, $ff                                        ; $73ce: $16 $ff
	call $1a38                                       ; $73d0: $cd $38 $1a
	ld bc, $0134                               ; $73d3: $01 $34 $01
	call $3a12                                       ; $73d6: $cd $12 $3a
	call $3974                                       ; $73d9: $cd $74 $39
	call $388c                                       ; $73dc: $cd $8c $38
	ld a, $2f                                        ; $73df: $3e $2f
	call $1e2e                                       ; $73e1: $cd $2e $1e
	ld e, $03                                        ; $73e4: $1e $03

jr_004_73e6:
	push de                                          ; $73e6: $d5
	ld b, $08                                        ; $73e7: $06 $08
	call Call_004_74f0                               ; $73e9: $cd $f0 $74
	ld d, $ff                                        ; $73ec: $16 $ff
	call $1a38                                       ; $73ee: $cd $38 $1a
	ld b, $08                                        ; $73f1: $06 $08
	call Call_004_74f0                               ; $73f3: $cd $f0 $74
	call $388c                                       ; $73f6: $cd $8c $38
	pop de                                           ; $73f9: $d1
	dec e                                            ; $73fa: $1d
	jr nz, jr_004_73e6                               ; $73fb: $20 $e9

	ld b, $1e                                        ; $73fd: $06 $1e
	ld hl, $7fa1                                     ; $73ff: $21 $a1 $7f
	call Func_1c32                                       ; $7402: $cd $32 $1c
	ld a, $04                                        ; $7405: $3e $04
	ld [$d842], a                                    ; $7407: $ea $42 $d8
	ld d, $ff                                        ; $740a: $16 $ff
	call $1a69                                       ; $740c: $cd $69 $1a
	ld bc, $0132                                     ; $740f: $01 $32 $01
	call $3a12                                       ; $7412: $cd $12 $3a
	call $3974                                       ; $7415: $cd $74 $39
	call $388c                                       ; $7418: $cd $8c $38
	rst FarCall                                          ; $741b: $f7
	jp nz, $016e                                     ; $741c: $c2 $6e $01

	ld bc, $680c                                     ; $741f: $01 $0c $68
	ld de, $64aa                                     ; $7422: $11 $aa $64
	call $19f5                                       ; $7425: $cd $f5 $19
	call Func_1aa6                                       ; $7428: $cd $a6 $1a
	ld hl, $d841                                     ; $742b: $21 $41 $d8
	ld a, [hl]                                       ; $742e: $7e
	sla a                                            ; $742f: $cb $27
	add [hl]                                         ; $7431: $86
	ld hl, $75d7                                     ; $7432: $21 $d7 $75
	rst AddAOntoHL                                          ; $7435: $ef
	ld b, [hl]                                       ; $7436: $46
	inc hl                                           ; $7437: $23
	ld a, [hl+]                                      ; $7438: $2a
	ld h, [hl]                                       ; $7439: $66
	ld l, a                                          ; $743a: $6f
	call Func_1c32                                       ; $743b: $cd $32 $1c
	xor a                                            ; $743e: $af
	call Jump_000_1af7                                       ; $743f: $cd $f7 $1a
	ld bc, $67f0                                     ; $7442: $01 $f0 $67
	jp Jump_004_725d                                 ; $7445: $c3 $5d $72


	rst FarCall                                          ; $7448: $f7
	or b                                             ; $7449: $b0
	ld l, [hl]                                       ; $744a: $6e
	ld bc, $8ccd                                     ; $744b: $01 $cd $8c
	jr c, @+$08                                      ; $744e: $38 $06

	ld e, $21                                        ; $7450: $1e $21
	dec [hl]                                         ; $7452: $35
	ld a, [hl]                                       ; $7453: $7e
	call Func_1c32                                       ; $7454: $cd $32 $1c
	ld bc, $00f0                                     ; $7457: $01 $f0 $00

jr_004_745a:
	push bc                                          ; $745a: $c5
	call Call_004_74dc                               ; $745b: $cd $dc $74
	pop bc                                           ; $745e: $c1
	dec bc                                           ; $745f: $0b
	ld a, b                                          ; $7460: $78
	or c                                             ; $7461: $b1
	jr nz, jr_004_745a                               ; $7462: $20 $f6

	ld a, $01                                        ; $7464: $3e $01
	ld [$d842], a                                    ; $7466: $ea $42 $d8
	ld bc, $011e                                     ; $7469: $01 $1e $01
	call $3a12                                       ; $746c: $cd $12 $3a
	ld d, $00                                        ; $746f: $16 $00
	call $1a38                                       ; $7471: $cd $38 $1a
	call $3974                                       ; $7474: $cd $74 $39
	call $388c                                       ; $7477: $cd $8c $38
	ld a, $03                                        ; $747a: $3e $03
	rst FarCall                                          ; $747c: $f7
	or l                                             ; $747d: $b5
	ld b, c                                          ; $747e: $41
	inc bc                                           ; $747f: $03
	call Call_000_1bce                                       ; $7480: $cd $ce $1b
	ld hl, $a30c                                     ; $7483: $21 $0c $a3
	ld a, [hl]                                       ; $7486: $7e
	sla a                                            ; $7487: $cb $27
	add [hl]                                         ; $7489: $86
	ld hl, $75bc                                     ; $748a: $21 $bc $75
	rst AddAOntoHL                                          ; $748d: $ef
	ld b, [hl]                                       ; $748e: $46
	inc hl                                           ; $748f: $23
	ld a, [hl+]                                      ; $7490: $2a
	ld h, [hl]                                       ; $7491: $66
	ld l, a                                          ; $7492: $6f
	call Func_1c32                                       ; $7493: $cd $32 $1c
	xor a                                            ; $7496: $af
	call Jump_000_1af7                                       ; $7497: $cd $f7 $1a
	ld bc, $67f0                                     ; $749a: $01 $f0 $67
	jp Jump_004_725d                                 ; $749d: $c3 $5d $72


	push bc                                          ; $74a0: $c5
	push de                                          ; $74a1: $d5
	ld bc, $680c                                     ; $74a2: $01 $0c $68
	ld de, $0000                                     ; $74a5: $11 $00 $00
	call $19f5                                       ; $74a8: $cd $f5 $19
	call Func_1aa6                                       ; $74ab: $cd $a6 $1a
	pop de                                           ; $74ae: $d1
	pop bc                                           ; $74af: $c1
	ret                                              ; $74b0: $c9


	push bc                                          ; $74b1: $c5
	push de                                          ; $74b2: $d5
	ld bc, $680c                                     ; $74b3: $01 $0c $68
	ld de, $0000                                     ; $74b6: $11 $00 $00
	call $19f5                                       ; $74b9: $cd $f5 $19
	ld a, [$c186]                                    ; $74bc: $fa $86 $c1
	push af                                          ; $74bf: $f5
	ld a, $64                                        ; $74c0: $3e $64
	ld [$c186], a                                    ; $74c2: $ea $86 $c1
	call Func_1aa6                                       ; $74c5: $cd $a6 $1a
	pop af                                           ; $74c8: $f1
	ld [$c186], a                                    ; $74c9: $ea $86 $c1
	pop de                                           ; $74cc: $d1
	pop bc                                           ; $74cd: $c1
	ret                                              ; $74ce: $c9


Call_004_74cf:
jr_004_74cf:
	call Call_004_74dc                               ; $74cf: $cd $dc $74
	call Call_000_1bce                                       ; $74d2: $cd $ce $1b
	ld a, [$d84f]                                    ; $74d5: $fa $4f $d8
	and a                                            ; $74d8: $a7
	jr z, jr_004_74cf                                ; $74d9: $28 $f4

	ret                                              ; $74db: $c9


Call_004_74dc:
	xor a                                            ; $74dc: $af
	ld [$c110], a                                    ; $74dd: $ea $10 $c1
	call $2d29                                       ; $74e0: $cd $29 $2d
	call Call_000_1ca1                                       ; $74e3: $cd $a1 $1c

jr_004_74e6:
	ld hl, wFrameCounter                                     ; $74e6: $21 $1f $c1
	ld a, [$d80a]                                    ; $74e9: $fa $0a $d8
	cp [hl]                                          ; $74ec: $be
	jr z, jr_004_74e6                                ; $74ed: $28 $f7

	ret                                              ; $74ef: $c9


Call_004_74f0:
jr_004_74f0:
	push bc                                          ; $74f0: $c5
	call Call_004_74dc                               ; $74f1: $cd $dc $74
	pop bc                                           ; $74f4: $c1
	dec b                                            ; $74f5: $05
	jr nz, jr_004_74f0                               ; $74f6: $20 $f8

Call_004_74f8:
	ld hl, $9800                                     ; $74f8: $21 $00 $98
	ld de, $9814                                     ; $74fb: $11 $14 $98
	ld c, $0b                                        ; $74fe: $0e $0b

jr_004_7500:
	ld b, $0c                                        ; $7500: $06 $0c

jr_004_7502:
	ld a, $01                                        ; $7502: $3e $01
	ldh [rVBK], a                                    ; $7504: $e0 $4f
	di                                               ; $7506: $f3

jr_004_7507:
	ldh a, [rSTAT]                                   ; $7507: $f0 $41
	bit 1, a                                         ; $7509: $cb $4f
	jr nz, jr_004_7507                               ; $750b: $20 $fa

	ld a, [hl]                                       ; $750d: $7e
	ld [de], a                                       ; $750e: $12
	ei                                               ; $750f: $fb
	xor a                                            ; $7510: $af
	ldh [rVBK], a                                    ; $7511: $e0 $4f
	di                                               ; $7513: $f3

jr_004_7514:
	ldh a, [rSTAT]                                   ; $7514: $f0 $41
	bit 1, a                                         ; $7516: $cb $4f
	jr nz, jr_004_7514                               ; $7518: $20 $fa

	ld a, [hl+]                                      ; $751a: $2a
	ld [de], a                                       ; $751b: $12
	ei                                               ; $751c: $fb
	inc de                                           ; $751d: $13
	dec b                                            ; $751e: $05
	jr nz, jr_004_7502                               ; $751f: $20 $e1

	ld a, $14                                        ; $7521: $3e $14
	rst AddAOntoHL                                          ; $7523: $ef
	ld a, $14                                        ; $7524: $3e $14
	call $1327                                       ; $7526: $cd $27 $13
	dec c                                            ; $7529: $0d
	jr nz, jr_004_7500                               ; $752a: $20 $d4

	ret                                              ; $752c: $c9


	call $0986                                       ; $752d: $cd $86 $09
	call $0911                                       ; $7530: $cd $11 $09
	ld hl, $6b4c                                     ; $7533: $21 $4c $6b
	rst FarCall                                          ; $7536: $f7
	ld c, c                                          ; $7537: $49
	ld l, c                                          ; $7538: $69
	dec b                                            ; $7539: $05
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $753a: $cd $ef $2d
	ld a, $01                                        ; $753d: $3e $01
	rst FarCall                                          ; $753f: $f7
	xor d                                            ; $7540: $aa
	ld b, [hl]                                       ; $7541: $46
	inc bc                                           ; $7542: $03
	call $096e                                       ; $7543: $cd $6e $09
	rst FarCall                                          ; $7546: $f7
	ld a, a                                          ; $7547: $7f
	ld c, l                                          ; $7548: $4d
	dec b                                            ; $7549: $05
	ld d, $ff                                        ; $754a: $16 $ff
	call $1a7d                                       ; $754c: $cd $7d $1a
	ret                                              ; $754f: $c9


Call_004_7550:
	xor a                                            ; $7550: $af
	ld [$c110], a                                    ; $7551: $ea $10 $c1
	call Call_000_1ca1                                       ; $7554: $cd $a1 $1c

; wait until this byte changes
	ld a, [wFrameCounter]                                    ; $7557: $fa $1f $c1
	ld hl, wFrameCounter                                     ; $755a: $21 $1f $c1
:	cp [hl]                                          ; $755d: $be
	jr z, :-                                ; $755e: $28 $fd

	ret                                              ; $7560: $c9


;
	ld a, [$c10e]                                    ; $7561: $fa $0e $c1
	ld [$a3af], a                                    ; $7564: $ea $af $a3

jr_004_7567:
	call Call_004_7550                               ; $7567: $cd $50 $75
	call $199f                                       ; $756a: $cd $9f $19
	jr nz, jr_004_7567                               ; $756d: $20 $f8

	call $1998                                       ; $756f: $cd $98 $19
	jr nz, jr_004_7567                               ; $7572: $20 $f3

	call $1991                                       ; $7574: $cd $91 $19
	jr nz, jr_004_7567                               ; $7577: $20 $ee

	call $198a                                       ; $7579: $cd $8a $19
	jr nz, jr_004_7567                               ; $757c: $20 $e9

	call $1983                                       ; $757e: $cd $83 $19
	jr nz, jr_004_7567                               ; $7581: $20 $e4

	ld a, [$c10e]                                    ; $7583: $fa $0e $c1
	and $fc                                          ; $7586: $e6 $fc
	ld b, a                                          ; $7588: $47
	ld a, [$c10f]                                    ; $7589: $fa $0f $c1
	or b                                             ; $758c: $b0
	jr nz, jr_004_7567                               ; $758d: $20 $d8

	ret                                              ; $758f: $c9


	inc e                                            ; $7590: $1c
	ld bc, $012e                                     ; $7591: $01 $2e $01
	cpl                                              ; $7594: $2f
	ld bc, $0130                                     ; $7595: $01 $30 $01
	ld sp, $0001                                     ; $7598: $31 $01 $00
	nop                                              ; $759b: $00
	rst GetHLinHL                                          ; $759c: $cf
	nop                                              ; $759d: $00
	ld [hl-], a                                      ; $759e: $32
	ld bc, $011d                                     ; $759f: $01 $1d $01
	ld [hl], d                                       ; $75a2: $72
	nop                                              ; $75a3: $00
	ld l, a                                          ; $75a4: $6f
	nop                                              ; $75a5: $00
	ld [hl], l                                       ; $75a6: $75
	nop                                              ; $75a7: $00
	ld e, $6c                                        ; $75a8: $1e $6c
	ld a, d                                          ; $75aa: $7a
	ld e, $73                                        ; $75ab: $1e $73
	ld a, e                                          ; $75ad: $7b
	ld e, $87                                        ; $75ae: $1e $87
	ld a, h                                          ; $75b0: $7c
	ld e, $4c                                        ; $75b1: $1e $4c
	ld a, l                                          ; $75b3: $7d
	ld e, $c2                                        ; $75b4: $1e $c2
	ld a, l                                          ; $75b6: $7d
	ld bc, $0302                                     ; $75b7: $01 $02 $03
	nop                                              ; $75ba: $00
	inc b                                            ; $75bb: $04
	ld e, $48                                        ; $75bc: $1e $48
	ld a, [hl]                                       ; $75be: $7e
	ld e, $67                                        ; $75bf: $1e $67
	ld a, [hl]                                       ; $75c1: $7e
	ld e, $88                                        ; $75c2: $1e $88
	ld a, [hl]                                       ; $75c4: $7e
	ld e, $ab                                        ; $75c5: $1e $ab
	ld a, [hl]                                       ; $75c7: $7e
	ld e, $d0                                        ; $75c8: $1e $d0
	ld a, [hl]                                       ; $75ca: $7e
	ld e, $ef                                        ; $75cb: $1e $ef
	ld a, [hl]                                       ; $75cd: $7e
	ld e, $13                                        ; $75ce: $1e $13
	ld a, a                                          ; $75d0: $7f
	ld e, $32                                        ; $75d1: $1e $32
	ld a, a                                          ; $75d3: $7f
	ld e, $4d                                        ; $75d4: $1e $4d
	ld a, a                                          ; $75d6: $7f
	ld e, $af                                        ; $75d7: $1e $af
	ld a, a                                          ; $75d9: $7f
	ld e, $c4                                        ; $75da: $1e $c4
	ld a, a                                          ; $75dc: $7f
	ld e, $da                                        ; $75dd: $1e $da
	ld a, a                                          ; $75df: $7f
	ld e, $ee                                        ; $75e0: $1e $ee
	ld a, a                                          ; $75e2: $7f
	ld e, $fd                                        ; $75e3: $1e $fd
	ld a, a                                          ; $75e5: $7f
	ld e, $0c                                        ; $75e6: $1e $0c
	add b                                            ; $75e8: $80
	ld e, $16                                        ; $75e9: $1e $16
	add b                                            ; $75eb: $80

Call_004_75ec:
	ld a, [$a385]                                    ; $75ec: $fa $85 $a3
	cp $10                                           ; $75ef: $fe $10
	ret z                                            ; $75f1: $c8

	ld a, [$a384]                                    ; $75f2: $fa $84 $a3
	ld b, a                                          ; $75f5: $47
	and $01                                          ; $75f6: $e6 $01
	jr z, jr_004_75fe                                ; $75f8: $28 $04

	ld a, $78                                        ; $75fa: $3e $78
	jr jr_004_761b                                   ; $75fc: $18 $1d

jr_004_75fe:
	ld a, b                                          ; $75fe: $78
	and $02                                          ; $75ff: $e6 $02
	jr z, jr_004_7607                                ; $7601: $28 $04

	ld a, $7a                                        ; $7603: $3e $7a
	jr jr_004_761b                                   ; $7605: $18 $14

jr_004_7607:
	ld a, b                                          ; $7607: $78
	and $04                                          ; $7608: $e6 $04
	jr z, jr_004_7610                                ; $760a: $28 $04

	ld a, $79                                        ; $760c: $3e $79
	jr jr_004_761b                                   ; $760e: $18 $0b

jr_004_7610:
	call $3b89                                       ; $7610: $cd $89 $3b
	ld a, [$d086]                                    ; $7613: $fa $86 $d0
	ld hl, $761f                                     ; $7616: $21 $1f $76
	rst AddAOntoHL                                          ; $7619: $ef
	ld a, [hl]                                       ; $761a: $7e

jr_004_761b:
	jp Jump_000_1af7                                         ; $761b: $c3 $f7 $1a


	ret                                              ; $761e: $c9


	ld d, e                                          ; $761f: $53
	ld e, [hl]                                       ; $7620: $5e
	inc c                                            ; $7621: $0c
	ld d, l                                          ; $7622: $55
	ld a, $a0                                        ; $7623: $3e $a0
	jr jr_004_7631                                   ; $7625: $18 $0a


Func_04_7627::
	ld a, $50                                        ; $7627: $3e $50
	jr jr_004_7631                                   ; $7629: $18 $06

	ld a, $28                                        ; $762b: $3e $28
	jr jr_004_7631                                   ; $762d: $18 $02

	ld a, $14                                        ; $762f: $3e $14

jr_004_7631:
	ld [$c2c7], a                                    ; $7631: $ea $c7 $c2
	xor a                                            ; $7634: $af
	ld [$c135], a                                    ; $7635: $ea $35 $c1
	ret                                              ; $7638: $c9


	push bc                                          ; $7639: $c5
	push de                                          ; $763a: $d5
	push hl                                          ; $763b: $e5
	ld d, $00                                        ; $763c: $16 $00
	ld e, $00                                        ; $763e: $1e $00
	ld a, $01                                        ; $7640: $3e $01
	and b                                            ; $7642: $a0
	jr z, jr_004_764b                                ; $7643: $28 $06

	call Call_004_7675                               ; $7645: $cd $75 $76
	add e                                            ; $7648: $83
	ld e, a                                          ; $7649: $5f
	inc d                                            ; $764a: $14

jr_004_764b:
	ld a, $02                                        ; $764b: $3e $02
	and b                                            ; $764d: $a0
	jr z, jr_004_7656                                ; $764e: $28 $06

	call Call_004_7679                               ; $7650: $cd $79 $76
	add e                                            ; $7653: $83
	ld e, a                                          ; $7654: $5f
	inc d                                            ; $7655: $14

jr_004_7656:
	ld a, $04                                        ; $7656: $3e $04
	and b                                            ; $7658: $a0
	jr z, jr_004_7661                                ; $7659: $28 $06

	call Call_004_767d                               ; $765b: $cd $7d $76
	add e                                            ; $765e: $83
	ld e, a                                          ; $765f: $5f
	inc d                                            ; $7660: $14

jr_004_7661:
	ld a, d                                          ; $7661: $7a
	and a                                            ; $7662: $a7
	jr z, jr_004_7671                                ; $7663: $28 $0c

	ld a, e                                          ; $7665: $7b
	cp $80                                           ; $7666: $fe $80
	jr c, jr_004_766d                                ; $7668: $38 $03

	xor a                                            ; $766a: $af
	jr jr_004_7671                                   ; $766b: $18 $04

jr_004_766d:
	ld b, d                                          ; $766d: $42
	call $12b5                                       ; $766e: $cd $b5 $12

jr_004_7671:
	pop hl                                           ; $7671: $e1
	pop de                                           ; $7672: $d1
	pop bc                                           ; $7673: $c1
	ret                                              ; $7674: $c9


Call_004_7675:
	ld c, $17                                        ; $7675: $0e $17
	jr jr_004_767f                                   ; $7677: $18 $06

Call_004_7679:
	ld c, $1c                                        ; $7679: $0e $1c
	jr jr_004_767f                                   ; $767b: $18 $02

Call_004_767d:
	ld c, $21                                        ; $767d: $0e $21

jr_004_767f:
	push bc                                          ; $767f: $c5
	push de                                          ; $7680: $d5
	ld b, $00                                        ; $7681: $06 $00
	ld a, [$a22c]                                    ; $7683: $fa $2c $a2
	ld l, a                                          ; $7686: $6f
	ld a, [$a22d]                                    ; $7687: $fa $2d $a2
	ld h, a                                          ; $768a: $67
	ld a, [$c18d]                                    ; $768b: $fa $8d $c1
	ld e, a                                          ; $768e: $5f
	ld a, [$c18e]                                    ; $768f: $fa $8e $c1
	ld d, a                                          ; $7692: $57
	add hl, de                                       ; $7693: $19
	push bc                                          ; $7694: $c5
	call BCHLequHLdivModBC                                       ; $7695: $cd $c1 $12
	ld b, $1f                                        ; $7698: $06 $1f
	call BCequBtimesC                                       ; $769a: $cd $5f $12
	ld l, c                                          ; $769d: $69
	ld h, b                                          ; $769e: $60
	pop bc                                           ; $769f: $c1
	call BCHLequHLdivModBC                                       ; $76a0: $cd $c1 $12
	ld a, l                                          ; $76a3: $7d
	call $133e                                       ; $76a4: $cd $3e $13
	ld c, b                                          ; $76a7: $48
	ld b, $00                                        ; $76a8: $06 $00
	rl b                                             ; $76aa: $cb $10
	ld a, b                                          ; $76ac: $78
	and a                                            ; $76ad: $a7
	jr z, jr_004_76b4                                ; $76ae: $28 $04

	ld a, c                                          ; $76b0: $79
	cpl                                              ; $76b1: $2f
	inc a                                            ; $76b2: $3c
	ld c, a                                          ; $76b3: $4f

jr_004_76b4:
	srl c                                            ; $76b4: $cb $39
	srl c                                            ; $76b6: $cb $39
	srl c                                            ; $76b8: $cb $39
	ld a, c                                          ; $76ba: $79
	cp $02                                           ; $76bb: $fe $02
	jr nc, jr_004_76c3                               ; $76bd: $30 $04

	ld a, $e0                                        ; $76bf: $3e $e0
	jr jr_004_76ca                                   ; $76c1: $18 $07

jr_004_76c3:
	ld a, b                                          ; $76c3: $78
	and a                                            ; $76c4: $a7
	ld a, c                                          ; $76c5: $79
	jr z, jr_004_76ca                                ; $76c6: $28 $02

	sla a                                            ; $76c8: $cb $27

jr_004_76ca:
	pop de                                           ; $76ca: $d1
	pop bc                                           ; $76cb: $c1
	ret                                              ; $76cc: $c9


	ld c, a                                          ; $76cd: $4f
	call BCequBtimesC                                       ; $76ce: $cd $5f $12
	ld h, b                                          ; $76d1: $60
	ld l, c                                          ; $76d2: $69
	ld bc, $0020                                     ; $76d3: $01 $20 $00
	call BCHLequHLdivModBC                                       ; $76d6: $cd $c1 $12
	ld a, l                                          ; $76d9: $7d
	ret                                              ; $76da: $c9


	ld e, a                                          ; $76db: $5f
	nop                                              ; $76dc: $00
	ld b, b                                          ; $76dd: $40
	nop                                              ; $76de: $00
	inc hl                                           ; $76df: $23
	nop                                              ; $76e0: $00
	ld [hl], d                                       ; $76e1: $72
	ld bc, $0154                                     ; $76e2: $01 $54 $01
	dec [hl]                                         ; $76e5: $35
	ld bc, $0117                                     ; $76e6: $01 $17 $01
	ld hl, sp+$00                                    ; $76e9: $f8 $00
	reti                                             ; $76eb: $d9


	nop                                              ; $76ec: $00
	cp e                                             ; $76ed: $bb
	nop                                              ; $76ee: $00
	sbc h                                            ; $76ef: $9c
	nop                                              ; $76f0: $00
	ld a, [hl]                                       ; $76f1: $7e
	nop                                              ; $76f2: $00
	ld a, [$a21a]                                    ; $76f3: $fa $1a $a2
	cp $04                                           ; $76f6: $fe $04
	jr nz, jr_004_770e                               ; $76f8: $20 $14

	ld a, [$a21c]                                    ; $76fa: $fa $1c $a2
	cp $04                                           ; $76fd: $fe $04
	jr nc, jr_004_770e                               ; $76ff: $30 $0d

	ld hl, $1582                                     ; $7701: $21 $82 $15
	ld a, [$76df]                                    ; $7704: $fa $df $76
	ld e, a                                          ; $7707: $5f
	ld a, [$76e0]                                    ; $7708: $fa $e0 $76
	ld d, a                                          ; $770b: $57
	jr jr_004_771d                                   ; $770c: $18 $0f

jr_004_770e:
	ld hl, $76db                                     ; $770e: $21 $db $76
	ld a, [$a21a]                                    ; $7711: $fa $1a $a2
	sla a                                            ; $7714: $cb $27
	rst AddAOntoHL                                          ; $7716: $ef
	ld e, [hl]                                       ; $7717: $5e
	inc hl                                           ; $7718: $23
	ld d, [hl]                                       ; $7719: $56
	ld hl, $1563                                     ; $771a: $21 $63 $15

jr_004_771d:
	call wHLminusEquDE                                       ; $771d: $cd $9e $ce
	ld a, [$a21c]                                    ; $7720: $fa $1c $a2
	rst SubAFromHL                                          ; $7723: $d7
	ld a, l                                          ; $7724: $7d
	ld [$c18d], a                                    ; $7725: $ea $8d $c1
	ld a, h                                          ; $7728: $7c
	ld [$c18e], a                                    ; $7729: $ea $8e $c1
	ret                                              ; $772c: $c9


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
