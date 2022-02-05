; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

	ret nc                                           ; $4000: $d0

	ld b, [hl]                                       ; $4001: $46
	cp $65                                           ; $4002: $fe $65
	add $90                                          ; $4004: $c6 $90
	ei                                               ; $4006: $fb
	db $fd                                           ; $4007: $fd
	ld a, e                                          ; $4008: $7b
	ld b, b                                          ; $4009: $40
	ei                                               ; $400a: $fb
	ld b, $91                                        ; $400b: $06 $91
	pop de                                           ; $400d: $d1
	jp Jump_032_7e65                                 ; $400e: $c3 $65 $7e


	dec e                                            ; $4011: $1d
	nop                                              ; $4012: $00
	xor c                                            ; $4013: $a9
	nop                                              ; $4014: $00
	ld [$39fd], sp                                   ; $4015: $08 $fd $39
	ld b, b                                          ; $4018: $40
	cp [hl]                                          ; $4019: $be
	inc bc                                           ; $401a: $03
	dec l                                            ; $401b: $2d
	add hl, hl                                       ; $401c: $29
	jr nc, @+$2b                                     ; $401d: $30 $29

	cp [hl]                                          ; $401f: $be
	db $fd                                           ; $4020: $fd
	add hl, sp                                       ; $4021: $39
	ld b, b                                          ; $4022: $40
	dec l                                            ; $4023: $2d
	inc b                                            ; $4024: $04
	ld a, [hl]                                       ; $4025: $7e
	nop                                              ; $4026: $00
	and b                                            ; $4027: $a0
	jp nc, Jump_032_7dc6                             ; $4028: $d2 $c6 $7d

	ld bc, $1d7e                                     ; $402b: $01 $7e $1d
	nop                                              ; $402e: $00
	and c                                            ; $402f: $a1
	rra                                              ; $4030: $1f
	jr jr_032_40b1                                   ; $4031: $18 $7e

	nop                                              ; $4033: $00
	and b                                            ; $4034: $a0
	ld a, l                                          ; $4035: $7d
	nop                                              ; $4036: $00
	cp $ff                                           ; $4037: $fe $ff
	pop de                                           ; $4039: $d1
	jp $03be                                         ; $403a: $c3 $be $03


	ld l, $29                                        ; $403d: $2e $29
	jr nc, jr_032_406a                               ; $403f: $30 $29

	ld sp, $2e29                                     ; $4041: $31 $29 $2e
	add hl, hl                                       ; $4044: $29
	jr nc, @+$2b                                     ; $4045: $30 $29

	ld sp, $2e29                                     ; $4047: $31 $29 $2e
	add hl, hl                                       ; $404a: $29
	ld sp, $2d29                                     ; $404b: $31 $29 $2d
	add hl, hl                                       ; $404e: $29
	ld l, $29                                        ; $404f: $2e $29
	jr nc, jr_032_407c                               ; $4051: $30 $29

	dec l                                            ; $4053: $2d
	add hl, hl                                       ; $4054: $29
	ld l, $29                                        ; $4055: $2e $29
	jr nc, jr_032_4082                               ; $4057: $30 $29

	dec l                                            ; $4059: $2d
	add hl, hl                                       ; $405a: $29
	jr nc, @+$2b                                     ; $405b: $30 $29

	ld l, $29                                        ; $405d: $2e $29
	jr nc, jr_032_408a                               ; $405f: $30 $29

	ld sp, $2e29                                     ; $4061: $31 $29 $2e
	add hl, hl                                       ; $4064: $29
	jr nc, @+$2b                                     ; $4065: $30 $29

	ld sp, $2e29                                     ; $4067: $31 $29 $2e

jr_032_406a:
	add hl, hl                                       ; $406a: $29
	ld sp, $2d29                                     ; $406b: $31 $29 $2d
	add hl, hl                                       ; $406e: $29
	ld l, $29                                        ; $406f: $2e $29
	jr nc, jr_032_409c                               ; $4071: $30 $29

	dec l                                            ; $4073: $2d
	add hl, hl                                       ; $4074: $29
	ld l, $29                                        ; $4075: $2e $29
	jr nc, @+$2b                                     ; $4077: $30 $29

	cp [hl]                                          ; $4079: $be
	db $fd                                           ; $407a: $fd
	db $fc                                           ; $407b: $fc

jr_032_407c:
	pop de                                           ; $407c: $d1
	jp nz, $0337                                     ; $407d: $c2 $37 $03

	ld [hl], $03                                     ; $4080: $36 $03

jr_032_4082:
	call nz, $0335                                   ; $4082: $c4 $35 $03
	ld [hl], $03                                     ; $4085: $36 $03
	push bc                                          ; $4087: $c5
	scf                                              ; $4088: $37
	inc bc                                           ; $4089: $03

jr_032_408a:
	ld [hl], $03                                     ; $408a: $36 $03
	jp $0335                                         ; $408c: $c3 $35 $03


	ld [hl], $03                                     ; $408f: $36 $03
	db $fc                                           ; $4091: $fc
	inc b                                            ; $4092: $04
	db $fd                                           ; $4093: $fd
	ret nc                                           ; $4094: $d0

	ld b, [hl]                                       ; $4095: $46
	cp $66                                           ; $4096: $fe $66
	rst GetHLinHL                                          ; $4098: $cf
	pop de                                           ; $4099: $d1
	sub c                                            ; $409a: $91
	ld a, [hl]                                       ; $409b: $7e

jr_032_409c:
	dec e                                            ; $409c: $1d
	inc c                                            ; $409d: $0c
	and c                                            ; $409e: $a1
	ld [de], a                                       ; $409f: $12
	inc h                                            ; $40a0: $24
	call nz, $0c12                                   ; $40a1: $c4 $12 $0c
	rst GetHLinHL                                          ; $40a4: $cf
	inc de                                           ; $40a5: $13
	ld [de], a                                       ; $40a6: $12
	call nz, $0613                                   ; $40a7: $c4 $13 $06
	rst GetHLinHL                                          ; $40aa: $cf
	ld de, $c412                                     ; $40ab: $11 $12 $c4
	ld de, $cf06                                     ; $40ae: $11 $06 $cf

jr_032_40b1:
	ld [de], a                                       ; $40b1: $12
	ld [de], a                                       ; $40b2: $12
	call nz, $0612                                   ; $40b3: $c4 $12 $06
	call $1216                                       ; $40b6: $cd $16 $12
	call nz, $0616                                   ; $40b9: $c4 $16 $06
	rst GetHLinHL                                          ; $40bc: $cf
	ld c, $30                                        ; $40bd: $0e $30
	call nz, $180e                                   ; $40bf: $c4 $0e $18
	rst GetHLinHL                                          ; $40c2: $cf
	rrca                                             ; $40c3: $0f
	ld [de], a                                       ; $40c4: $12
	call nz, $060f                                   ; $40c5: $c4 $0f $06
	ret                                              ; $40c8: $c9


	add hl, de                                       ; $40c9: $19
	ld [de], a                                       ; $40ca: $12
	jp $0619                                         ; $40cb: $c3 $19 $06


	jp z, $1218                                      ; $40ce: $ca $18 $12

	call nz, $0618                                   ; $40d1: $c4 $18 $06
	rst GetHLinHL                                          ; $40d4: $cf
	db $10                                           ; $40d5: $10
	ld [de], a                                       ; $40d6: $12
	call nz, $0610                                   ; $40d7: $c4 $10 $06
	rst GetHLinHL                                          ; $40da: $cf
	ld de, $c412                                     ; $40db: $11 $12 $c4
	ld de, $cc06                                     ; $40de: $11 $06 $cc
	rla                                              ; $40e1: $17
	inc h                                            ; $40e2: $24
	call nz, $0c17                                   ; $40e3: $c4 $17 $0c
	call z, $2416                                    ; $40e6: $cc $16 $24
	call nz, $0c16                                   ; $40e9: $c4 $16 $0c
	or c                                             ; $40ec: $b1
	pop de                                           ; $40ed: $d1
	ld d, b                                          ; $40ee: $50
	rlca                                             ; $40ef: $07
	dec d                                            ; $40f0: $15
	sub b                                            ; $40f1: $90
	set 2, c                                         ; $40f2: $cb $d1
	sub c                                            ; $40f4: $91
	ld h, l                                          ; $40f5: $65
	ei                                               ; $40f6: $fb
	db $fd                                           ; $40f7: $fd
	add hl, bc                                       ; $40f8: $09
	ld b, c                                          ; $40f9: $41
	ei                                               ; $40fa: $fb
	inc b                                            ; $40fb: $04
	db $d3                                           ; $40fc: $d3
	add $7e                                          ; $40fd: $c6 $7e
	dec e                                            ; $40ff: $1d
	nop                                              ; $4100: $00
	and d                                            ; $4101: $a2
	rra                                              ; $4102: $1f
	jr jr_032_4183                                   ; $4103: $18 $7e

	nop                                              ; $4105: $00
	and b                                            ; $4106: $a0
	cp $ff                                           ; $4107: $fe $ff
	pop de                                           ; $4109: $d1
	call nz, $032e                                   ; $410a: $c4 $2e $03
	add hl, hl                                       ; $410d: $29
	inc bc                                           ; $410e: $03
	call nz, $0330                                   ; $410f: $c4 $30 $03
	add hl, hl                                       ; $4112: $29
	inc bc                                           ; $4113: $03
	push bc                                          ; $4114: $c5
	ld sp, $2903                                     ; $4115: $31 $03 $29
	inc bc                                           ; $4118: $03
	push bc                                          ; $4119: $c5
	ld l, $03                                        ; $411a: $2e $03
	add hl, hl                                       ; $411c: $29
	inc bc                                           ; $411d: $03
	add $30                                          ; $411e: $c6 $30
	inc bc                                           ; $4120: $03
	add hl, hl                                       ; $4121: $29
	inc bc                                           ; $4122: $03
	add $31                                          ; $4123: $c6 $31
	inc bc                                           ; $4125: $03
	add hl, hl                                       ; $4126: $29
	inc bc                                           ; $4127: $03
	add $2e                                          ; $4128: $c6 $2e
	inc bc                                           ; $412a: $03
	add $29                                          ; $412b: $c6 $29
	inc bc                                           ; $412d: $03
	push bc                                          ; $412e: $c5
	ld sp, $c603                                     ; $412f: $31 $03 $c6
	add hl, hl                                       ; $4132: $29
	inc bc                                           ; $4133: $03
	add $2d                                          ; $4134: $c6 $2d
	inc bc                                           ; $4136: $03
	add $29                                          ; $4137: $c6 $29
	inc bc                                           ; $4139: $03
	add $2e                                          ; $413a: $c6 $2e
	inc bc                                           ; $413c: $03
	add $29                                          ; $413d: $c6 $29
	inc bc                                           ; $413f: $03
	rst JumpTable                                          ; $4140: $c7
	jr nc, jr_032_4146                               ; $4141: $30 $03

	add $29                                          ; $4143: $c6 $29
	inc bc                                           ; $4145: $03

jr_032_4146:
	rst JumpTable                                          ; $4146: $c7
	dec l                                            ; $4147: $2d
	inc bc                                           ; $4148: $03
	add $29                                          ; $4149: $c6 $29
	inc bc                                           ; $414b: $03
	rst JumpTable                                          ; $414c: $c7
	ld l, $03                                        ; $414d: $2e $03
	add $29                                          ; $414f: $c6 $29
	inc bc                                           ; $4151: $03
	rst JumpTable                                          ; $4152: $c7
	jr nc, jr_032_4158                               ; $4153: $30 $03

	add $29                                          ; $4155: $c6 $29

jr_032_4157:
	inc bc                                           ; $4157: $03

jr_032_4158:
	add $2d                                          ; $4158: $c6 $2d
	inc bc                                           ; $415a: $03
	add $29                                          ; $415b: $c6 $29
	inc bc                                           ; $415d: $03
	push bc                                          ; $415e: $c5
	jr nc, jr_032_4164                               ; $415f: $30 $03

	add $29                                          ; $4161: $c6 $29
	inc bc                                           ; $4163: $03

jr_032_4164:
	db $fd                                           ; $4164: $fd
	ret nc                                           ; $4165: $d0

	ld b, [hl]                                       ; $4166: $46
	cp $d1                                           ; $4167: $fe $d1
	jp nz, $217f                                     ; $4169: $c2 $7f $21

	ld a, d                                          ; $416c: $7a
	ld a, [hl]                                       ; $416d: $7e
	dec e                                            ; $416e: $1d
	inc c                                            ; $416f: $0c
	and e                                            ; $4170: $a3
	ld [de], a                                       ; $4171: $12
	inc h                                            ; $4172: $24
	add $12                                          ; $4173: $c6 $12
	inc c                                            ; $4175: $0c
	jp nz, $1213                                     ; $4176: $c2 $13 $12

	add $13                                          ; $4179: $c6 $13
	ld b, $c2                                        ; $417b: $06 $c2
	ld de, $c612                                     ; $417d: $11 $12 $c6
	ld de, $c206                                     ; $4180: $11 $06 $c2

jr_032_4183:
	ld [de], a                                       ; $4183: $12
	ld [de], a                                       ; $4184: $12
	add $12                                          ; $4185: $c6 $12
	ld b, $c2                                        ; $4187: $06 $c2
	ld d, $12                                        ; $4189: $16 $12
	add $16                                          ; $418b: $c6 $16
	ld b, $c2                                        ; $418d: $06 $c2
	ld c, $30                                        ; $418f: $0e $30
	add $0e                                          ; $4191: $c6 $0e
	jr jr_032_4157                                   ; $4193: $18 $c2

	rrca                                             ; $4195: $0f

jr_032_4196:
	ld [de], a                                       ; $4196: $12
	add $0f                                          ; $4197: $c6 $0f
	ld b, $c2                                        ; $4199: $06 $c2
	add hl, de                                       ; $419b: $19
	ld [de], a                                       ; $419c: $12
	add $19                                          ; $419d: $c6 $19
	ld b, $c2                                        ; $419f: $06 $c2
	jr jr_032_41b5                                   ; $41a1: $18 $12

	add $18                                          ; $41a3: $c6 $18
	ld b, $c2                                        ; $41a5: $06 $c2
	db $10                                           ; $41a7: $10
	ld [de], a                                       ; $41a8: $12
	add $10                                          ; $41a9: $c6 $10
	ld b, $c2                                        ; $41ab: $06 $c2
	ld de, $c612                                     ; $41ad: $11 $12 $c6
	ld de, $c206                                     ; $41b0: $11 $06 $c2

jr_032_41b3:
	rla                                              ; $41b3: $17
	inc h                                            ; $41b4: $24

jr_032_41b5:
	add $17                                          ; $41b5: $c6 $17
	inc c                                            ; $41b7: $0c
	jp nz, $2416                                     ; $41b8: $c2 $16 $24

	add $16                                          ; $41bb: $c6 $16
	inc c                                            ; $41bd: $0c
	jp nz, Jump_032_6015                             ; $41be: $c2 $15 $60

	add $15                                          ; $41c1: $c6 $15

jr_032_41c3:
	jr nc, jr_032_4196                               ; $41c3: $30 $d1

	jp nz, $187f                                     ; $41c5: $c2 $7f $18

	ld h, l                                          ; $41c8: $65
	ld a, [bc]                                       ; $41c9: $0a
	ld [de], a                                       ; $41ca: $12
	add $0a                                          ; $41cb: $c6 $0a
	ld b, $c2                                        ; $41cd: $06 $c2
	dec c                                            ; $41cf: $0d
	ld [de], a                                       ; $41d0: $12
	add $0d                                          ; $41d1: $c6 $0d
	ld b, $c2                                        ; $41d3: $06 $c2
	inc c                                            ; $41d5: $0c
	ld [de], a                                       ; $41d6: $12
	add $0c                                          ; $41d7: $c6 $0c
	ld b, $c2                                        ; $41d9: $06 $c2
	dec b                                            ; $41db: $05
	ld [de], a                                       ; $41dc: $12
	add $05                                          ; $41dd: $c6 $05
	ld b, $c2                                        ; $41df: $06 $c2
	ld a, [bc]                                       ; $41e1: $0a
	ld [de], a                                       ; $41e2: $12
	add $0a                                          ; $41e3: $c6 $0a
	ld b, $7f                                        ; $41e5: $06 $7f
	ld e, $c2                                        ; $41e7: $1e $c2
	ld de, $c612                                     ; $41e9: $11 $12 $c6
	ld de, $7f06                                     ; $41ec: $11 $06 $7f
	jr jr_032_41b3                                   ; $41ef: $18 $c2

	inc c                                            ; $41f1: $0c
	ld [de], a                                       ; $41f2: $12
	add $0c                                          ; $41f3: $c6 $0c
	ld b, $7f                                        ; $41f5: $06 $7f
	inc e                                            ; $41f7: $1c
	jp nz, $1209                                     ; $41f8: $c2 $09 $12

	add $09                                          ; $41fb: $c6 $09
	ld b, $7f                                        ; $41fd: $06 $7f
	jr jr_032_41c3                                   ; $41ff: $18 $c2

	ld a, [bc]                                       ; $4201: $0a
	ld [de], a                                       ; $4202: $12
	add $0a                                          ; $4203: $c6 $0a
	ld b, $c2                                        ; $4205: $06 $c2
	dec c                                            ; $4207: $0d
	ld [de], a                                       ; $4208: $12
	add $0d                                          ; $4209: $c6 $0d
	ld b, $c2                                        ; $420b: $06 $c2
	inc c                                            ; $420d: $0c
	ld [de], a                                       ; $420e: $12

jr_032_420f:
	add $0c                                          ; $420f: $c6 $0c
	ld b, $c2                                        ; $4211: $06 $c2
	rrca                                             ; $4213: $0f
	ld [de], a                                       ; $4214: $12
	add $0f                                          ; $4215: $c6 $0f
	ld b, $c2                                        ; $4217: $06 $c2
	dec c                                            ; $4219: $0d
	ld [de], a                                       ; $421a: $12
	add $0d                                          ; $421b: $c6 $0d
	ld b, $7f                                        ; $421d: $06 $7f
	ld e, $c2                                        ; $421f: $1e $c2
	ld de, $c612                                     ; $4221: $11 $12 $c6
	ld de, $7f06                                     ; $4224: $11 $06 $7f
	jr @-$3c                                         ; $4227: $18 $c2

	rrca                                             ; $4229: $0f
	ld [de], a                                       ; $422a: $12
	add $0f                                          ; $422b: $c6 $0f
	ld b, $7f                                        ; $422d: $06 $7f

jr_032_422f:
	ld e, $c2                                        ; $422f: $1e $c2
	ld de, $c612                                     ; $4231: $11 $12 $c6
	ld de, $7f06                                     ; $4234: $11 $06 $7f
	jr jr_032_42b7                                   ; $4237: $18 $7e

	dec e                                            ; $4239: $1d
	nop                                              ; $423a: $00
	and e                                            ; $423b: $a3
	rra                                              ; $423c: $1f
	jr jr_032_42bd                                   ; $423d: $18 $7e

	nop                                              ; $423f: $00

jr_032_4240:
	and b                                            ; $4240: $a0
	cp $ff                                           ; $4241: $fe $ff
	ret nc                                           ; $4243: $d0

	ld b, [hl]                                       ; $4244: $46
	cp $1f                                           ; $4245: $fe $1f

jr_032_4247:
	inc c                                            ; $4247: $0c
	add hl, hl                                       ; $4248: $29
	inc c                                            ; $4249: $0c
	cp [hl]                                          ; $424a: $be
	ld b, $20                                        ; $424b: $06 $20
	jr nz, jr_032_426f                               ; $424d: $20 $20

	jr nz, jr_032_420f                               ; $424f: $20 $be

	jr nz, @+$0e                                     ; $4251: $20 $0c

	jr nz, @+$0e                                     ; $4253: $20 $0c

	nop                                              ; $4255: $00
	jr jr_032_4258                                   ; $4256: $18 $00

jr_032_4258:
	jr @-$40                                         ; $4258: $18 $be

	ld b, $20                                        ; $425a: $06 $20
	jr nz, jr_032_427e                               ; $425c: $20 $20

	jr nz, @-$40                                     ; $425e: $20 $be

	jr nz, @+$0e                                     ; $4260: $20 $0c

	jr nz, @+$0e                                     ; $4262: $20 $0c

	nop                                              ; $4264: $00
	jr jr_032_4286                                   ; $4265: $18 $1f

	inc c                                            ; $4267: $0c
	dec e                                            ; $4268: $1d
	inc c                                            ; $4269: $0c
	cp [hl]                                          ; $426a: $be
	ld b, $20                                        ; $426b: $06 $20
	jr nz, @+$22                                     ; $426d: $20 $20

jr_032_426f:
	jr nz, jr_032_422f                               ; $426f: $20 $be

	jr nz, @+$0e                                     ; $4271: $20 $0c

	jr nz, @+$0e                                     ; $4273: $20 $0c

	nop                                              ; $4275: $00
	jr @+$21                                         ; $4276: $18 $1f

	inc c                                            ; $4278: $0c
	dec e                                            ; $4279: $1d
	inc c                                            ; $427a: $0c
	cp [hl]                                          ; $427b: $be
	ld b, $20                                        ; $427c: $06 $20

jr_032_427e:
	jr nz, jr_032_42a0                               ; $427e: $20 $20

	jr nz, jr_032_4240                               ; $4280: $20 $be

	cp [hl]                                          ; $4282: $be
	inc c                                            ; $4283: $0c
	jr nz, @+$22                                     ; $4284: $20 $20

jr_032_4286:
	nop                                              ; $4286: $00
	jr nz, jr_032_4247                               ; $4287: $20 $be

	rra                                              ; $4289: $1f
	inc c                                            ; $428a: $0c
	dec e                                            ; $428b: $1d
	inc c                                            ; $428c: $0c
	cp [hl]                                          ; $428d: $be
	ld b, $20                                        ; $428e: $06 $20
	jr nz, jr_032_42b2                               ; $4290: $20 $20

	jr nz, @-$40                                     ; $4292: $20 $be

	cp [hl]                                          ; $4294: $be
	inc c                                            ; $4295: $0c
	jr nz, jr_032_42b8                               ; $4296: $20 $20

	rra                                              ; $4298: $1f
	jr nz, @-$40                                     ; $4299: $20 $be

	nop                                              ; $429b: $00
	ld h, b                                          ; $429c: $60
	ei                                               ; $429d: $fb
	db $fd                                           ; $429e: $fd
	xor l                                            ; $429f: $ad

jr_032_42a0:
	ld b, d                                          ; $42a0: $42
	ei                                               ; $42a1: $fb
	ld [bc], a                                       ; $42a2: $02
	ei                                               ; $42a3: $fb
	db $fd                                           ; $42a4: $fd
	call nz, $fb42                                   ; $42a5: $c4 $42 $fb
	ld [bc], a                                       ; $42a8: $02
	nop                                              ; $42a9: $00

jr_032_42aa:
	jr jr_032_42aa                                   ; $42aa: $18 $fe

	rst $38                                          ; $42ac: $ff
	nop                                              ; $42ad: $00
	inc c                                            ; $42ae: $0c
	dec e                                            ; $42af: $1d
	inc c                                            ; $42b0: $0c
	cp [hl]                                          ; $42b1: $be

jr_032_42b2:
	ld b, $20                                        ; $42b2: $06 $20
	ld hl, $2322                                     ; $42b4: $21 $22 $23

jr_032_42b7:
	cp [hl]                                          ; $42b7: $be

jr_032_42b8:
	nop                                              ; $42b8: $00
	inc c                                            ; $42b9: $0c
	dec e                                            ; $42ba: $1d
	inc c                                            ; $42bb: $0c
	cp [hl]                                          ; $42bc: $be

jr_032_42bd:
	ld b, $20                                        ; $42bd: $06 $20
	ld hl, $2322                                     ; $42bf: $21 $22 $23
	cp [hl]                                          ; $42c2: $be
	db $fd                                           ; $42c3: $fd
	db $fc                                           ; $42c4: $fc
	cpl                                              ; $42c5: $2f
	ld b, $30                                        ; $42c6: $06 $30
	ld b, $fc                                        ; $42c8: $06 $fc
	ld [$b4fd], sp                                   ; $42ca: $08 $fd $b4
	adc h                                            ; $42cd: $8c
	ld [hl], c                                       ; $42ce: $71
	ld bc, $2f00                                     ; $42cf: $01 $00 $2f
	nop                                              ; $42d2: $00
	inc h                                            ; $42d3: $24
	ld a, [hl]                                       ; $42d4: $7e
	ld [bc], a                                       ; $42d5: $02
	nop                                              ; $42d6: $00
	xor c                                            ; $42d7: $a9
	sub [hl]                                         ; $42d8: $96
	rst $38                                          ; $42d9: $ff
	rlca                                             ; $42da: $07
	ld l, $28                                        ; $42db: $2e $28
	cp $b5                                           ; $42dd: $fe $b5
	ld h, c                                          ; $42df: $61
	nop                                              ; $42e0: $00
	rst $38                                          ; $42e1: $ff
	inc b                                            ; $42e2: $04
	ld a, l                                          ; $42e3: $7d
	ld [bc], a                                       ; $42e4: $02
	ld a, [hl]                                       ; $42e5: $7e
	dec b                                            ; $42e6: $05
	nop                                              ; $42e7: $00
	and c                                            ; $42e8: $a1
	ld [hl+], a                                      ; $42e9: $22
	jr jr_032_436a                                   ; $42ea: $18 $7e

	nop                                              ; $42ec: $00
	jr nz, jr_032_4307                               ; $42ed: $20 $18

	ld e, $16                                        ; $42ef: $1e $16
	jp $021e                                         ; $42f1: $c3 $1e $02


	add $1e                                          ; $42f4: $c6 $1e
	rla                                              ; $42f6: $17
	jp $011e                                         ; $42f7: $c3 $1e $01


	add $1e                                          ; $42fa: $c6 $1e
	rla                                              ; $42fc: $17
	jp $011e                                         ; $42fd: $c3 $1e $01


	push bc                                          ; $4300: $c5
	dec e                                            ; $4301: $1d
	inc c                                            ; $4302: $0c
	ld e, $0c                                        ; $4303: $1e $0c
	add hl, de                                       ; $4305: $19
	inc c                                            ; $4306: $0c

jr_032_4307:
	or c                                             ; $4307: $b1
	ld d, c                                          ; $4308: $51
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	ld a, [hl]                                       ; $430b: $7e
	dec bc                                           ; $430c: $0b
	nop                                              ; $430d: $00
	and b                                            ; $430e: $a0
	cp l                                             ; $430f: $bd
	ld [bc], a                                       ; $4310: $02
	dec de                                           ; $4311: $1b
	inc c                                            ; $4312: $0c
	ld h, b                                          ; $4313: $60
	ld a, [hl]                                       ; $4314: $7e
	nop                                              ; $4315: $00
	jp $0c1b                                         ; $4316: $c3 $1b $0c


	or c                                             ; $4319: $b1
	ld d, c                                          ; $431a: $51
	rst $38                                          ; $431b: $ff
	dec b                                            ; $431c: $05
	rla                                              ; $431d: $17
	inc c                                            ; $431e: $0c
	dec de                                           ; $431f: $1b
	inc c                                            ; $4320: $0c
	rla                                              ; $4321: $17
	inc c                                            ; $4322: $0c
	ld a, [hl]                                       ; $4323: $7e
	dec b                                            ; $4324: $05
	nop                                              ; $4325: $00
	and c                                            ; $4326: $a1
	ld [hl+], a                                      ; $4327: $22
	inc c                                            ; $4328: $0c
	ld a, [hl]                                       ; $4329: $7e
	nop                                              ; $432a: $00
	jr nz, @+$0e                                     ; $432b: $20 $0c

	ld e, $0c                                        ; $432d: $1e $0c
	ld a, [hl]                                       ; $432f: $7e
	ld [bc], a                                       ; $4330: $02

jr_032_4331:
	inc c                                            ; $4331: $0c
	and b                                            ; $4332: $a0
	sub [hl]                                         ; $4333: $96
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	cp l                                             ; $4336: $bd
	ld [bc], a                                       ; $4337: $02
	jr nz, jr_032_4346                               ; $4338: $20 $0c

	jr nc, jr_032_43ba                               ; $433a: $30 $7e

	nop                                              ; $433c: $00
	jp $0c20                                         ; $433d: $c3 $20 $0c


	push bc                                          ; $4340: $c5
	ld a, [hl]                                       ; $4341: $7e
	dec b                                            ; $4342: $05
	nop                                              ; $4343: $00
	and c                                            ; $4344: $a1
	dec e                                            ; $4345: $1d

jr_032_4346:
	inc c                                            ; $4346: $0c
	ld a, [hl]                                       ; $4347: $7e
	nop                                              ; $4348: $00
	ld e, $0c                                        ; $4349: $1e $0c
	ld a, [hl]                                       ; $434b: $7e
	ld [bc], a                                       ; $434c: $02
	inc c                                            ; $434d: $0c
	and b                                            ; $434e: $a0
	cp l                                             ; $434f: $bd
	ld [bc], a                                       ; $4350: $02
	jr nz, @+$0e                                     ; $4351: $20 $0c

	jr nc, jr_032_43d3                               ; $4353: $30 $7e

	nop                                              ; $4355: $00
	jp $0c20                                         ; $4356: $c3 $20 $0c


	push bc                                          ; $4359: $c5
	ld a, [hl]                                       ; $435a: $7e

jr_032_435b:
	dec b                                            ; $435b: $05
	nop                                              ; $435c: $00
	and c                                            ; $435d: $a1
	ld e, $0c                                        ; $435e: $1e $0c
	ld a, [hl]                                       ; $4360: $7e
	nop                                              ; $4361: $00
	jr nz, jr_032_4370                               ; $4362: $20 $0c

	ld a, [hl]                                       ; $4364: $7e
	ld [bc], a                                       ; $4365: $02
	inc c                                            ; $4366: $0c
	and b                                            ; $4367: $a0
	cp l                                             ; $4368: $bd
	ld [bc], a                                       ; $4369: $02

jr_032_436a:
	ld [hl+], a                                      ; $436a: $22
	inc c                                            ; $436b: $0c
	jr nc, jr_032_4331                               ; $436c: $30 $c3

	ld a, [hl]                                       ; $436e: $7e
	nop                                              ; $436f: $00

jr_032_4370:
	ld [hl+], a                                      ; $4370: $22
	inc c                                            ; $4371: $0c
	or c                                             ; $4372: $b1
	ld d, c                                          ; $4373: $51
	inc c                                            ; $4374: $0c
	ld b, $22                                        ; $4375: $06 $22
	inc c                                            ; $4377: $0c
	jr nz, jr_032_4386                               ; $4378: $20 $0c

	ld e, $0c                                        ; $437a: $1e $0c
	cp [hl]                                          ; $437c: $be
	inc c                                            ; $437d: $0c
	dec e                                            ; $437e: $1d
	ld e, $20                                        ; $437f: $1e $20
	ld [hl+], a                                      ; $4381: $22
	cp [hl]                                          ; $4382: $be
	jp $0c22                                         ; $4383: $c3 $22 $0c


jr_032_4386:
	push bc                                          ; $4386: $c5
	dec e                                            ; $4387: $1d
	inc c                                            ; $4388: $0c
	jp $0c1d                                         ; $4389: $c3 $1d $0c


	or c                                             ; $438c: $b1
	ld b, c                                          ; $438d: $41
	rst $38                                          ; $438e: $ff
	inc bc                                           ; $438f: $03
	cp l                                             ; $4390: $bd
	ld [bc], a                                       ; $4391: $02
	dec de                                           ; $4392: $1b
	inc c                                            ; $4393: $0c
	jr jr_032_435b                                   ; $4394: $18 $c5

	sub b                                            ; $4396: $90
	ld a, l                                          ; $4397: $7d
	nop                                              ; $4398: $00
	sub [hl]                                         ; $4399: $96

jr_032_439a:
	rst $38                                          ; $439a: $ff
	dec b                                            ; $439b: $05
	ld a, [hl]                                       ; $439c: $7e
	dec b                                            ; $439d: $05
	nop                                              ; $439e: $00
	and c                                            ; $439f: $a1
	ld [hl+], a                                      ; $43a0: $22
	jr @+$80                                         ; $43a1: $18 $7e

	ld bc, $a000                                     ; $43a3: $01 $00 $a0
	jr nz, jr_032_43bc                               ; $43a6: $20 $14

	jp z, Jump_032_7e93                              ; $43a8: $ca $93 $7e

	nop                                              ; $43ab: $00
	sub [hl]                                         ; $43ac: $96
	rst $38                                          ; $43ad: $ff
	ld [bc], a                                       ; $43ae: $02
	rrca                                             ; $43af: $0f
	ld b, $c9                                        ; $43b0: $06 $c9
	ld de, $1206                                     ; $43b2: $11 $06 $12
	ld b, $14                                        ; $43b5: $06 $14
	ld b, $b1                                        ; $43b7: $06 $b1
	add c                                            ; $43b9: $81

jr_032_43ba:
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00

jr_032_43bc:
	ld a, [hl]                                       ; $43bc: $7e
	ld bc, $a000                                     ; $43bd: $01 $00 $a0
	add hl, de                                       ; $43c0: $19
	jr nc, @-$3c                                     ; $43c1: $30 $c2

	add hl, de                                       ; $43c3: $19
	inc c                                            ; $43c4: $0c
	ld a, [hl]                                       ; $43c5: $7e
	nop                                              ; $43c6: $00
	ld a, l                                          ; $43c7: $7d
	inc bc                                           ; $43c8: $03
	rst JumpTable                                          ; $43c9: $c7
	add hl, de                                       ; $43ca: $19

jr_032_43cb:
	inc c                                            ; $43cb: $0c
	ld a, l                                          ; $43cc: $7d
	nop                                              ; $43cd: $00
	jp nz, $0c19                                     ; $43ce: $c2 $19 $0c

	push bc                                          ; $43d1: $c5
	cp l                                             ; $43d2: $bd

jr_032_43d3:
	ld [bc], a                                       ; $43d3: $02
	ld d, $6c                                        ; $43d4: $16 $6c
	jr nc, jr_032_439a                               ; $43d6: $30 $c2

	ld d, $0c                                        ; $43d8: $16 $0c
	add $16                                          ; $43da: $c6 $16
	inc c                                            ; $43dc: $0c
	jp $0c16                                         ; $43dd: $c3 $16 $0c


	rst JumpTable                                          ; $43e0: $c7
	cp l                                             ; $43e1: $bd
	ld [bc], a                                       ; $43e2: $02
	rla                                              ; $43e3: $17
	inc c                                            ; $43e4: $0c
	jr nc, @-$3c                                     ; $43e5: $30 $c2

	rla                                              ; $43e7: $17
	inc c                                            ; $43e8: $0c
	push bc                                          ; $43e9: $c5
	rla                                              ; $43ea: $17
	inc c                                            ; $43eb: $0c
	jp nz, $0c17                                     ; $43ec: $c2 $17 $0c

	ret z                                            ; $43ef: $c8

	cp l                                             ; $43f0: $bd
	ld [bc], a                                       ; $43f1: $02
	add hl, de                                       ; $43f2: $19
	inc c                                            ; $43f3: $0c
	jr nc, @-$3c                                     ; $43f4: $30 $c2

	add hl, de                                       ; $43f6: $19
	inc c                                            ; $43f7: $0c
	push bc                                          ; $43f8: $c5
	add hl, de                                       ; $43f9: $19
	inc c                                            ; $43fa: $0c
	jp nz, $0c19                                     ; $43fb: $c2 $19 $0c

	ret                                              ; $43fe: $c9


	ld a, [hl]                                       ; $43ff: $7e
	ld bc, $a000                                     ; $4400: $01 $00 $a0
	cp l                                             ; $4403: $bd
	ld [bc], a                                       ; $4404: $02
	ld e, $0c                                        ; $4405: $1e $0c
	jr nc, jr_032_43cb                               ; $4407: $30 $c2

	ld e, $0c                                        ; $4409: $1e $0c
	ld a, [hl]                                       ; $440b: $7e
	nop                                              ; $440c: $00
	rst JumpTable                                          ; $440d: $c7
	ld de, $140c                                     ; $440e: $11 $0c $14
	inc c                                            ; $4411: $0c
	rla                                              ; $4412: $17
	inc c                                            ; $4413: $0c
	ld d, $0c                                        ; $4414: $16 $0c
	rla                                              ; $4416: $17
	inc c                                            ; $4417: $0c
	ld a, [de]                                       ; $4418: $1a
	inc c                                            ; $4419: $0c
	sub [hl]                                         ; $441a: $96
	jr jr_032_4424                                   ; $441b: $18 $07

	ld d, $18                                        ; $441d: $16 $18
	jp $0c16                                         ; $441f: $c3 $16 $0c


	or l                                             ; $4422: $b5
	ld d, c                                          ; $4423: $51

jr_032_4424:
	ld bc, $040c                                     ; $4424: $01 $0c $04
	dec de                                           ; $4427: $1b
	inc c                                            ; $4428: $0c
	dec de                                           ; $4429: $1b
	inc c                                            ; $442a: $0c
	sub [hl]                                         ; $442b: $96
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	or l                                             ; $442e: $b5
	ld [hl], c                                       ; $442f: $71
	ld bc, $0000                                     ; $4430: $01 $00 $00
	ld a, [hl]                                       ; $4433: $7e
	dec b                                            ; $4434: $05
	nop                                              ; $4435: $00
	and b                                            ; $4436: $a0
	ld e, $2e                                        ; $4437: $1e $2e
	jp nz, $021e                                     ; $4439: $c2 $1e $02

	rst JumpTable                                          ; $443c: $c7
	jr nz, jr_032_446d                               ; $443d: $20 $2e

	jp nz, $0220                                     ; $443f: $c2 $20 $02

	ld a, [hl]                                       ; $4442: $7e
	dec bc                                           ; $4443: $0b
	nop                                              ; $4444: $00
	and b                                            ; $4445: $a0
	rst JumpTable                                          ; $4446: $c7
	ld [hl+], a                                      ; $4447: $22
	jr nc, jr_032_44c8                               ; $4448: $30 $7e

	nop                                              ; $444a: $00
	jp $0c22                                         ; $444b: $c3 $22 $0c


	sub e                                            ; $444e: $93
	push bc                                          ; $444f: $c5
	ld e, $0c                                        ; $4450: $1e $0c
	dec e                                            ; $4452: $1d
	inc c                                            ; $4453: $0c
	dec de                                           ; $4454: $1b
	inc c                                            ; $4455: $0c
	ld a, l                                          ; $4456: $7d
	ld bc, $027e                                     ; $4457: $01 $7e $02
	nop                                              ; $445a: $00
	and b                                            ; $445b: $a0
	ret z                                            ; $445c: $c8

	ld d, $30                                        ; $445d: $16 $30
	ret                                              ; $445f: $c9


	dec e                                            ; $4460: $1d
	jr nc, @+$20                                     ; $4461: $30 $1e

	jr nc, jr_032_4487                               ; $4463: $30 $22

	rla                                              ; $4465: $17
	nop                                              ; $4466: $00
	ld bc, $71b1                                     ; $4467: $01 $b1 $71
	dec b                                            ; $446a: $05
	inc b                                            ; $446b: $04
	ld [hl+], a                                      ; $446c: $22

jr_032_446d:
	ld b, $20                                        ; $446d: $06 $20
	dec b                                            ; $446f: $05
	nop                                              ; $4470: $00
	ld bc, $1ec6                                     ; $4471: $01 $c6 $1e
	dec b                                            ; $4474: $05
	nop                                              ; $4475: $00
	ld bc, $0519                                     ; $4476: $01 $19 $05
	nop                                              ; $4479: $00
	ld bc, $0096                                     ; $447a: $01 $96 $00
	nop                                              ; $447d: $00
	or l                                             ; $447e: $b5
	ld [hl], c                                       ; $447f: $71
	ld bc, $0000                                     ; $4480: $01 $00 $00
	ld a, [hl]                                       ; $4483: $7e
	dec b                                            ; $4484: $05
	nop                                              ; $4485: $00
	and b                                            ; $4486: $a0

jr_032_4487:
	ld e, $2e                                        ; $4487: $1e $2e
	jp nz, $021e                                     ; $4489: $c2 $1e $02

	rst JumpTable                                          ; $448c: $c7
	jr nz, jr_032_44bd                               ; $448d: $20 $2e

	jp nz, $0220                                     ; $448f: $c2 $20 $02

	ld a, [hl]                                       ; $4492: $7e
	dec bc                                           ; $4493: $0b
	nop                                              ; $4494: $00
	and b                                            ; $4495: $a0
	rst JumpTable                                          ; $4496: $c7
	ld [hl+], a                                      ; $4497: $22
	jr nc, jr_032_4518                               ; $4498: $30 $7e

	nop                                              ; $449a: $00
	jp $0c22                                         ; $449b: $c3 $22 $0c


	or l                                             ; $449e: $b5
	ld [hl], c                                       ; $449f: $71
	ld [bc], a                                       ; $44a0: $02
	rst $38                                          ; $44a1: $ff
	inc b                                            ; $44a2: $04
	ld a, [hl]                                       ; $44a3: $7e
	dec b                                            ; $44a4: $05
	nop                                              ; $44a5: $00
	and b                                            ; $44a6: $a0
	ld e, $0c                                        ; $44a7: $1e $0c
	ld a, [hl]                                       ; $44a9: $7e
	nop                                              ; $44aa: $00
	dec e                                            ; $44ab: $1d
	inc c                                            ; $44ac: $0c
	dec de                                           ; $44ad: $1b
	inc c                                            ; $44ae: $0c
	dec e                                            ; $44af: $1d
	jr @+$1d                                         ; $44b0: $18 $1b

	inc c                                            ; $44b2: $0c
	dec e                                            ; $44b3: $1d
	inc c                                            ; $44b4: $0c
	or c                                             ; $44b5: $b1
	ld sp, $0000                                     ; $44b6: $31 $00 $00
	dec e                                            ; $44b9: $1d
	inc c                                            ; $44ba: $0c
	or c                                             ; $44bb: $b1
	ld [hl], c                                       ; $44bc: $71

jr_032_44bd:
	rst $38                                          ; $44bd: $ff
	inc b                                            ; $44be: $04
	rla                                              ; $44bf: $17
	inc c                                            ; $44c0: $0c
	dec de                                           ; $44c1: $1b
	inc c                                            ; $44c2: $0c
	sub [hl]                                         ; $44c3: $96
	rst $38                                          ; $44c4: $ff
	dec b                                            ; $44c5: $05
	cp l                                             ; $44c6: $bd
	ld [bc], a                                       ; $44c7: $02

jr_032_44c8:
	ld a, [de]                                       ; $44c8: $1a
	inc c                                            ; $44c9: $0c
	ld a, [bc]                                       ; $44ca: $0a
	jp $021a                                         ; $44cb: $c3 $1a $02


	ret                                              ; $44ce: $c9


	rla                                              ; $44cf: $17
	ld d, $c4                                        ; $44d0: $16 $c4
	rla                                              ; $44d2: $17
	ld [bc], a                                       ; $44d3: $02
	cp [hl]                                          ; $44d4: $be
	inc bc                                           ; $44d5: $03
	inc l                                            ; $44d6: $2c
	ld [hl+], a                                      ; $44d7: $22
	ld l, $23                                        ; $44d8: $2e $23
	cp [hl]                                          ; $44da: $be
	call nz, $032f                                   ; $44db: $c4 $2f $03
	dec h                                            ; $44de: $25
	inc bc                                           ; $44df: $03
	push bc                                          ; $44e0: $c5
	ld sp, $2703                                     ; $44e1: $31 $03 $27
	inc bc                                           ; $44e4: $03
	push bc                                          ; $44e5: $c5
	inc sp                                           ; $44e6: $33
	inc bc                                           ; $44e7: $03
	add hl, hl                                       ; $44e8: $29
	inc bc                                           ; $44e9: $03
	add $be                                          ; $44ea: $c6 $be
	inc bc                                           ; $44ec: $03
	dec [hl]                                         ; $44ed: $35
	ld a, [hl+]                                      ; $44ee: $2a
	ld [hl], $2c                                     ; $44ef: $36 $2c
	jr c, jr_032_4521                                ; $44f1: $38 $2e

	cp [hl]                                          ; $44f3: $be
	or l                                             ; $44f4: $b5
	add c                                            ; $44f5: $81
	ld bc, $07ff                                     ; $44f6: $01 $ff $07
	ld a, [hl]                                       ; $44f9: $7e
	ld [bc], a                                       ; $44fa: $02
	nop                                              ; $44fb: $00
	xor c                                            ; $44fc: $a9
	ld l, $28                                        ; $44fd: $2e $28
	cp $ff                                           ; $44ff: $fe $ff
	or h                                             ; $4501: $b4
	adc h                                            ; $4502: $8c
	ld hl, $0002                                     ; $4503: $21 $02 $00
	inc hl                                           ; $4506: $23
	cp [hl]                                          ; $4507: $be
	inc bc                                           ; $4508: $03
	inc l                                            ; $4509: $2c
	ld [hl+], a                                      ; $450a: $22
	ld l, $23                                        ; $450b: $2e $23
	cp [hl]                                          ; $450d: $be
	call nz, $032f                                   ; $450e: $c4 $2f $03
	dec h                                            ; $4511: $25
	inc bc                                           ; $4512: $03
	push bc                                          ; $4513: $c5
	ld sp, $2703                                     ; $4514: $31 $03 $27
	inc bc                                           ; $4517: $03

jr_032_4518:
	push bc                                          ; $4518: $c5
	cp [hl]                                          ; $4519: $be
	inc bc                                           ; $451a: $03
	inc sp                                           ; $451b: $33
	add hl, hl                                       ; $451c: $29
	dec [hl]                                         ; $451d: $35
	ld a, [hl+]                                      ; $451e: $2a
	ld [hl], $2c                                     ; $451f: $36 $2c

jr_032_4521:
	jr c, jr_032_4551                                ; $4521: $38 $2e

	cp [hl]                                          ; $4523: $be
	or c                                             ; $4524: $b1
	ld h, c                                          ; $4525: $61
	rst $38                                          ; $4526: $ff
	rlca                                             ; $4527: $07
	ld a, [hl]                                       ; $4528: $7e
	ld [bc], a                                       ; $4529: $02
	nop                                              ; $452a: $00
	xor c                                            ; $452b: $a9
	inc sp                                           ; $452c: $33
	inc h                                            ; $452d: $24
	cp $b5                                           ; $452e: $fe $b5
	pop hl                                           ; $4530: $e1
	nop                                              ; $4531: $00
	rst $38                                          ; $4532: $ff
	inc b                                            ; $4533: $04
	ld a, [hl]                                       ; $4534: $7e
	dec b                                            ; $4535: $05
	nop                                              ; $4536: $00
	and c                                            ; $4537: $a1
	ld [hl+], a                                      ; $4538: $22
	jr jr_032_45b9                                   ; $4539: $18 $7e

	nop                                              ; $453b: $00
	jr nz, jr_032_4556                               ; $453c: $20 $18

	ld e, $16                                        ; $453e: $1e $16
	call nz, $021e                                   ; $4540: $c4 $1e $02
	adc $1e                                          ; $4543: $ce $1e
	rla                                              ; $4545: $17
	call nz, $011e                                   ; $4546: $c4 $1e $01
	adc $1e                                          ; $4549: $ce $1e
	rla                                              ; $454b: $17
	call nz, $011e                                   ; $454c: $c4 $1e $01
	adc $1d                                          ; $454f: $ce $1d

jr_032_4551:
	inc c                                            ; $4551: $0c
	ld e, $0c                                        ; $4552: $1e $0c
	add hl, de                                       ; $4554: $19
	inc c                                            ; $4555: $0c

jr_032_4556:
	or c                                             ; $4556: $b1
	pop de                                           ; $4557: $d1
	nop                                              ; $4558: $00
	nop                                              ; $4559: $00
	ld a, [hl]                                       ; $455a: $7e
	dec bc                                           ; $455b: $0b
	nop                                              ; $455c: $00
	and b                                            ; $455d: $a0
	cp l                                             ; $455e: $bd
	ld [bc], a                                       ; $455f: $02
	dec de                                           ; $4560: $1b
	inc c                                            ; $4561: $0c
	ld h, b                                          ; $4562: $60
	ld a, [hl]                                       ; $4563: $7e
	nop                                              ; $4564: $00
	call nz, $0c1b                                   ; $4565: $c4 $1b $0c
	or c                                             ; $4568: $b1
	pop hl                                           ; $4569: $e1
	rst $38                                          ; $456a: $ff
	dec b                                            ; $456b: $05
	rla                                              ; $456c: $17
	inc c                                            ; $456d: $0c
	dec de                                           ; $456e: $1b
	inc c                                            ; $456f: $0c
	rla                                              ; $4570: $17
	inc c                                            ; $4571: $0c
	ld a, [hl]                                       ; $4572: $7e
	dec b                                            ; $4573: $05
	nop                                              ; $4574: $00
	and c                                            ; $4575: $a1
	ld [hl+], a                                      ; $4576: $22
	inc c                                            ; $4577: $0c
	ld a, [hl]                                       ; $4578: $7e
	nop                                              ; $4579: $00
	jr nz, @+$0e                                     ; $457a: $20 $0c

	ld e, $0c                                        ; $457c: $1e $0c
	ld a, [hl]                                       ; $457e: $7e
	ld [bc], a                                       ; $457f: $02
	inc c                                            ; $4580: $0c

jr_032_4581:
	and b                                            ; $4581: $a0
	sub [hl]                                         ; $4582: $96
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	cp l                                             ; $4585: $bd
	ld [bc], a                                       ; $4586: $02
	jr nz, jr_032_4595                               ; $4587: $20 $0c

	jr nc, @+$80                                     ; $4589: $30 $7e

	nop                                              ; $458b: $00
	call nz, $0c20                                   ; $458c: $c4 $20 $0c
	adc $7e                                          ; $458f: $ce $7e
	dec b                                            ; $4591: $05
	nop                                              ; $4592: $00
	and c                                            ; $4593: $a1
	dec e                                            ; $4594: $1d

jr_032_4595:
	inc c                                            ; $4595: $0c
	ld a, [hl]                                       ; $4596: $7e
	nop                                              ; $4597: $00
	ld e, $0c                                        ; $4598: $1e $0c
	ld a, [hl]                                       ; $459a: $7e
	ld [bc], a                                       ; $459b: $02
	inc c                                            ; $459c: $0c
	and b                                            ; $459d: $a0
	cp l                                             ; $459e: $bd
	ld [bc], a                                       ; $459f: $02
	jr nz, @+$0e                                     ; $45a0: $20 $0c

	jr nc, @+$80                                     ; $45a2: $30 $7e

	nop                                              ; $45a4: $00
	call nz, $0c20                                   ; $45a5: $c4 $20 $0c
	adc $7e                                          ; $45a8: $ce $7e
	dec b                                            ; $45aa: $05
	nop                                              ; $45ab: $00
	and c                                            ; $45ac: $a1
	ld e, $0c                                        ; $45ad: $1e $0c
	ld a, [hl]                                       ; $45af: $7e
	nop                                              ; $45b0: $00
	jr nz, jr_032_45bf                               ; $45b1: $20 $0c

jr_032_45b3:
	ld a, [hl]                                       ; $45b3: $7e
	ld [bc], a                                       ; $45b4: $02
	inc c                                            ; $45b5: $0c
	and b                                            ; $45b6: $a0
	cp l                                             ; $45b7: $bd
	ld [bc], a                                       ; $45b8: $02

jr_032_45b9:
	ld [hl+], a                                      ; $45b9: $22
	inc c                                            ; $45ba: $0c
	jr nc, jr_032_4581                               ; $45bb: $30 $c4

	ld a, [hl]                                       ; $45bd: $7e
	nop                                              ; $45be: $00

jr_032_45bf:
	ld [hl+], a                                      ; $45bf: $22
	inc c                                            ; $45c0: $0c
	or c                                             ; $45c1: $b1
	pop de                                           ; $45c2: $d1
	inc c                                            ; $45c3: $0c
	ld b, $22                                        ; $45c4: $06 $22
	inc c                                            ; $45c6: $0c
	jr nz, jr_032_45d5                               ; $45c7: $20 $0c

	ld e, $0c                                        ; $45c9: $1e $0c
	cp [hl]                                          ; $45cb: $be
	inc c                                            ; $45cc: $0c
	dec e                                            ; $45cd: $1d
	ld e, $20                                        ; $45ce: $1e $20
	ld [hl+], a                                      ; $45d0: $22
	cp [hl]                                          ; $45d1: $be
	call nz, $0c22                                   ; $45d2: $c4 $22 $0c

jr_032_45d5:
	adc $1d                                          ; $45d5: $ce $1d
	inc c                                            ; $45d7: $0c
	call nz, $0c1d                                   ; $45d8: $c4 $1d $0c
	or c                                             ; $45db: $b1
	pop de                                           ; $45dc: $d1
	rst $38                                          ; $45dd: $ff
	inc bc                                           ; $45de: $03
	cp l                                             ; $45df: $bd
	ld [bc], a                                       ; $45e0: $02
	dec de                                           ; $45e1: $1b
	inc c                                            ; $45e2: $0c
	jr jr_032_45b3                                   ; $45e3: $18 $ce

	sub b                                            ; $45e5: $90
	sub [hl]                                         ; $45e6: $96
	rst $38                                          ; $45e7: $ff
	inc b                                            ; $45e8: $04
	ld a, [hl]                                       ; $45e9: $7e
	dec b                                            ; $45ea: $05
	nop                                              ; $45eb: $00
	and c                                            ; $45ec: $a1
	ld [hl+], a                                      ; $45ed: $22
	jr @+$80                                         ; $45ee: $18 $7e

	nop                                              ; $45f0: $00
	jr nz, jr_032_460b                               ; $45f1: $20 $18

	rst GetHLinHL                                          ; $45f3: $cf
	ld a, [hl]                                       ; $45f4: $7e
	ld bc, $a900                                     ; $45f5: $01 $00 $a9
	ld e, $16                                        ; $45f8: $1e $16
	call nz, $021e                                   ; $45fa: $c4 $1e $02
	ld a, [hl]                                       ; $45fd: $7e
	nop                                              ; $45fe: $00
	rst GetHLinHL                                          ; $45ff: $cf
	ld e, $17                                        ; $4600: $1e $17
	jp $011e                                         ; $4602: $c3 $1e $01


	rst GetHLinHL                                          ; $4605: $cf
	ld e, $17                                        ; $4606: $1e $17
	jp $011e                                         ; $4608: $c3 $1e $01


jr_032_460b:
	rst GetHLinHL                                          ; $460b: $cf
	dec e                                            ; $460c: $1d
	inc c                                            ; $460d: $0c
	ld e, $0c                                        ; $460e: $1e $0c
	add hl, de                                       ; $4610: $19
	inc c                                            ; $4611: $0c
	or c                                             ; $4612: $b1
	pop bc                                           ; $4613: $c1
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	ld a, [hl]                                       ; $4616: $7e
	dec bc                                           ; $4617: $0b
	nop                                              ; $4618: $00
	and b                                            ; $4619: $a0
	cp l                                             ; $461a: $bd
	ld [bc], a                                       ; $461b: $02
	dec de                                           ; $461c: $1b
	inc c                                            ; $461d: $0c
	ld h, b                                          ; $461e: $60
	ld a, [hl]                                       ; $461f: $7e
	nop                                              ; $4620: $00
	jp $0c1b                                         ; $4621: $c3 $1b $0c


	or c                                             ; $4624: $b1
	pop de                                           ; $4625: $d1
	rst $38                                          ; $4626: $ff
	dec b                                            ; $4627: $05
	rla                                              ; $4628: $17
	inc c                                            ; $4629: $0c
	dec de                                           ; $462a: $1b
	inc c                                            ; $462b: $0c
	rla                                              ; $462c: $17
	inc c                                            ; $462d: $0c
	ld a, [hl]                                       ; $462e: $7e
	dec b                                            ; $462f: $05
	nop                                              ; $4630: $00
	and c                                            ; $4631: $a1
	ld [hl+], a                                      ; $4632: $22
	inc c                                            ; $4633: $0c
	ld a, [hl]                                       ; $4634: $7e
	nop                                              ; $4635: $00
	jr nz, @+$0e                                     ; $4636: $20 $0c

	ld e, $0c                                        ; $4638: $1e $0c
	ld a, [hl]                                       ; $463a: $7e
	ld [bc], a                                       ; $463b: $02

jr_032_463c:
	inc c                                            ; $463c: $0c
	and b                                            ; $463d: $a0
	sub [hl]                                         ; $463e: $96
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	cp l                                             ; $4641: $bd
	ld [bc], a                                       ; $4642: $02
	jr nz, jr_032_4651                               ; $4643: $20 $0c

	jr nc, jr_032_46c5                               ; $4645: $30 $7e

	nop                                              ; $4647: $00
	jp $0c20                                         ; $4648: $c3 $20 $0c


	call $057e                                       ; $464b: $cd $7e $05
	nop                                              ; $464e: $00
	and c                                            ; $464f: $a1
	dec e                                            ; $4650: $1d

jr_032_4651:
	inc c                                            ; $4651: $0c
	ld a, [hl]                                       ; $4652: $7e
	nop                                              ; $4653: $00
	ld e, $0c                                        ; $4654: $1e $0c

jr_032_4656:
	ld a, [hl]                                       ; $4656: $7e
	ld [bc], a                                       ; $4657: $02
	inc c                                            ; $4658: $0c
	and b                                            ; $4659: $a0
	cp l                                             ; $465a: $bd
	ld [bc], a                                       ; $465b: $02
	jr nz, @+$0e                                     ; $465c: $20 $0c

	jr nc, jr_032_46de                               ; $465e: $30 $7e

	nop                                              ; $4660: $00
	jp $0c20                                         ; $4661: $c3 $20 $0c


	call $057e                                       ; $4664: $cd $7e $05
	nop                                              ; $4667: $00
	and c                                            ; $4668: $a1
	ld e, $0c                                        ; $4669: $1e $0c
	ld a, [hl]                                       ; $466b: $7e
	nop                                              ; $466c: $00
	jr nz, jr_032_467b                               ; $466d: $20 $0c

	ld a, [hl]                                       ; $466f: $7e
	ld [bc], a                                       ; $4670: $02
	inc c                                            ; $4671: $0c
	and b                                            ; $4672: $a0
	cp l                                             ; $4673: $bd
	ld [bc], a                                       ; $4674: $02
	ld [hl+], a                                      ; $4675: $22
	inc c                                            ; $4676: $0c
	jr nc, jr_032_463c                               ; $4677: $30 $c3

	ld a, [hl]                                       ; $4679: $7e
	nop                                              ; $467a: $00

jr_032_467b:
	ld [hl+], a                                      ; $467b: $22
	inc c                                            ; $467c: $0c
	or c                                             ; $467d: $b1
	pop de                                           ; $467e: $d1
	inc c                                            ; $467f: $0c
	ld b, $22                                        ; $4680: $06 $22
	inc c                                            ; $4682: $0c
	jr nz, jr_032_4691                               ; $4683: $20 $0c

	ld e, $0c                                        ; $4685: $1e $0c
	dec e                                            ; $4687: $1d
	inc c                                            ; $4688: $0c
	ld e, $0c                                        ; $4689: $1e $0c
	jr nz, @+$0e                                     ; $468b: $20 $0c

	sub [hl]                                         ; $468d: $96
	jr jr_032_4696                                   ; $468e: $18 $06

	dec e                                            ; $4690: $1d

jr_032_4691:
	jr jr_032_4656                                   ; $4691: $18 $c3

	dec e                                            ; $4693: $1d
	inc c                                            ; $4694: $0c
	or l                                             ; $4695: $b5

jr_032_4696:
	pop af                                           ; $4696: $f1
	ld bc, $020c                                     ; $4697: $01 $0c $02
	ld e, $0c                                        ; $469a: $1e $0c
	ld e, $0c                                        ; $469c: $1e $0c
	or l                                             ; $469e: $b5
	or c                                             ; $469f: $b1
	ld bc, $0000                                     ; $46a0: $01 $00 $00
	ld a, [hl]                                       ; $46a3: $7e
	dec b                                            ; $46a4: $05
	nop                                              ; $46a5: $00
	and b                                            ; $46a6: $a0
	ld [hl+], a                                      ; $46a7: $22
	ld l, $c2                                        ; $46a8: $2e $c2
	ld [hl+], a                                      ; $46aa: $22
	ld [bc], a                                       ; $46ab: $02
	sla e                                            ; $46ac: $cb $23
	ld l, $c2                                        ; $46ae: $2e $c2
	inc hl                                           ; $46b0: $23
	ld [bc], a                                       ; $46b1: $02
	ld a, [hl]                                       ; $46b2: $7e
	dec bc                                           ; $46b3: $0b
	nop                                              ; $46b4: $00
	and b                                            ; $46b5: $a0
	sla l                                            ; $46b6: $cb $25
	jr nc, jr_032_4738                               ; $46b8: $30 $7e

	nop                                              ; $46ba: $00
	jp $0c25                                         ; $46bb: $c3 $25 $0c


	or l                                             ; $46be: $b5
	pop de                                           ; $46bf: $d1
	ld [bc], a                                       ; $46c0: $02
	rst $38                                          ; $46c1: $ff
	inc b                                            ; $46c2: $04
	ld a, [hl]                                       ; $46c3: $7e
	dec b                                            ; $46c4: $05

jr_032_46c5:
	nop                                              ; $46c5: $00
	and b                                            ; $46c6: $a0
	ld [hl+], a                                      ; $46c7: $22
	inc c                                            ; $46c8: $0c
	ld a, [hl]                                       ; $46c9: $7e
	nop                                              ; $46ca: $00
	jr nz, jr_032_46d9                               ; $46cb: $20 $0c

	ld e, $0c                                        ; $46cd: $1e $0c
	jr nz, jr_032_46e9                               ; $46cf: $20 $18

	ld e, $0c                                        ; $46d1: $1e $0c
	jr nz, jr_032_46e1                               ; $46d3: $20 $0c

	or c                                             ; $46d5: $b1
	ld sp, $0000                                     ; $46d6: $31 $00 $00

jr_032_46d9:
	jr nz, jr_032_46e7                               ; $46d9: $20 $0c

	or c                                             ; $46db: $b1
	pop bc                                           ; $46dc: $c1
	rst $38                                          ; $46dd: $ff

jr_032_46de:
	inc b                                            ; $46de: $04
	ld [hl+], a                                      ; $46df: $22
	inc c                                            ; $46e0: $0c

jr_032_46e1:
	or c                                             ; $46e1: $b1
	ld sp, $0000                                     ; $46e2: $31 $00 $00
	ld [hl+], a                                      ; $46e5: $22
	inc c                                            ; $46e6: $0c

jr_032_46e7:
	or c                                             ; $46e7: $b1
	pop de                                           ; $46e8: $d1

jr_032_46e9:
	rst $38                                          ; $46e9: $ff
	inc bc                                           ; $46ea: $03
	cp l                                             ; $46eb: $bd
	ld [bc], a                                       ; $46ec: $02
	jr nz, jr_032_46fb                               ; $46ed: $20 $0c

	inc c                                            ; $46ef: $0c
	ld e, $18                                        ; $46f0: $1e $18
	call z, $181d                                    ; $46f2: $cc $1d $18
	rr c                                             ; $46f5: $cb $19
	inc c                                            ; $46f7: $0c
	sub c                                            ; $46f8: $91
	adc $1e                                          ; $46f9: $ce $1e

jr_032_46fb:
	inc c                                            ; $46fb: $0c
	ld e, $0c                                        ; $46fc: $1e $0c
	or l                                             ; $46fe: $b5
	or c                                             ; $46ff: $b1
	ld bc, $0000                                     ; $4700: $01 $00 $00
	ld a, [hl]                                       ; $4703: $7e
	dec b                                            ; $4704: $05
	nop                                              ; $4705: $00
	and b                                            ; $4706: $a0
	ld [hl+], a                                      ; $4707: $22
	ld l, $c2                                        ; $4708: $2e $c2
	ld [hl+], a                                      ; $470a: $22
	ld [bc], a                                       ; $470b: $02
	sla e                                            ; $470c: $cb $23
	ld l, $c2                                        ; $470e: $2e $c2
	inc hl                                           ; $4710: $23
	ld [bc], a                                       ; $4711: $02
	ld a, [hl]                                       ; $4712: $7e
	dec bc                                           ; $4713: $0b
	nop                                              ; $4714: $00
	and b                                            ; $4715: $a0
	call z, $3025                                    ; $4716: $cc $25 $30
	ld a, [hl]                                       ; $4719: $7e
	nop                                              ; $471a: $00
	jp $0c25                                         ; $471b: $c3 $25 $0c


	or l                                             ; $471e: $b5
	pop hl                                           ; $471f: $e1
	ld [bc], a                                       ; $4720: $02
	rst $38                                          ; $4721: $ff
	inc b                                            ; $4722: $04
	ld a, [hl]                                       ; $4723: $7e
	dec b                                            ; $4724: $05
	nop                                              ; $4725: $00
	and b                                            ; $4726: $a0
	ld [hl+], a                                      ; $4727: $22
	inc c                                            ; $4728: $0c
	ld a, [hl]                                       ; $4729: $7e
	nop                                              ; $472a: $00
	jr nz, jr_032_4739                               ; $472b: $20 $0c

	ld e, $0c                                        ; $472d: $1e $0c
	jr nz, jr_032_4749                               ; $472f: $20 $18

	ld e, $0c                                        ; $4731: $1e $0c
	jr nz, jr_032_4741                               ; $4733: $20 $0c

	or c                                             ; $4735: $b1
	ld b, c                                          ; $4736: $41
	nop                                              ; $4737: $00

jr_032_4738:
	nop                                              ; $4738: $00

jr_032_4739:
	jr nz, jr_032_4747                               ; $4739: $20 $0c

	or c                                             ; $473b: $b1
	pop hl                                           ; $473c: $e1
	rst $38                                          ; $473d: $ff
	inc bc                                           ; $473e: $03
	ld [hl+], a                                      ; $473f: $22
	inc c                                            ; $4740: $0c

jr_032_4741:
	inc hl                                           ; $4741: $23
	inc c                                            ; $4742: $0c
	sub [hl]                                         ; $4743: $96
	rst $38                                          ; $4744: $ff
	inc b                                            ; $4745: $04
	cp l                                             ; $4746: $bd

jr_032_4747:
	ld [bc], a                                       ; $4747: $02
	ld [hl+], a                                      ; $4748: $22

jr_032_4749:
	inc c                                            ; $4749: $0c
	ld a, [bc]                                       ; $474a: $0a
	jp $0222                                         ; $474b: $c3 $22 $02


	adc $20                                          ; $474e: $ce $20
	ld d, $c3                                        ; $4750: $16 $c3
	jr nz, jr_032_4756                               ; $4752: $20 $02

	adc $1e                                          ; $4754: $ce $1e

jr_032_4756:
	ld d, $c3                                        ; $4756: $16 $c3
	ld e, $02                                        ; $4758: $1e $02
	or c                                             ; $475a: $b1
	pop de                                           ; $475b: $d1
	rst $38                                          ; $475c: $ff
	ld b, $7e                                        ; $475d: $06 $7e
	ld bc, $a00c                                     ; $475f: $01 $0c $a0
	jr nz, @+$1a                                     ; $4762: $20 $18

	or c                                             ; $4764: $b1
	add c                                            ; $4765: $81
	rst $38                                          ; $4766: $ff
	rlca                                             ; $4767: $07
	inc sp                                           ; $4768: $33
	inc h                                            ; $4769: $24
	cp $ff                                           ; $476a: $fe $ff
	or h                                             ; $476c: $b4
	adc h                                            ; $476d: $8c
	ld hl, $0004                                     ; $476e: $21 $04 $00
	cpl                                              ; $4771: $2f
	nop                                              ; $4772: $00
	inc h                                            ; $4773: $24
	rrca                                             ; $4774: $0f
	inc c                                            ; $4775: $0c
	cp $fb                                           ; $4776: $fe $fb
	jp nz, $0a0f                                     ; $4778: $c2 $0f $0a

	add $0f                                          ; $477b: $c6 $0f
	ld [bc], a                                       ; $477d: $02
	ei                                               ; $477e: $fb
	inc c                                            ; $477f: $0c
	jp nz, $0a0d                                     ; $4780: $c2 $0d $0a

	add $0d                                          ; $4783: $c6 $0d
	ld [bc], a                                       ; $4785: $02
	jp nz, $0a0d                                     ; $4786: $c2 $0d $0a

	add $0d                                          ; $4789: $c6 $0d
	ld [bc], a                                       ; $478b: $02
	call nz, $050d                                   ; $478c: $c4 $0d $05
	nop                                              ; $478f: $00
	ld bc, $050d                                     ; $4790: $01 $0d $05
	nop                                              ; $4793: $00
	ld bc, $bdc2                                     ; $4794: $01 $c2 $bd
	ld [bc], a                                       ; $4797: $02
	dec bc                                           ; $4798: $0b
	inc c                                            ; $4799: $0c
	ld a, [bc]                                       ; $479a: $0a
	add $0b                                          ; $479b: $c6 $0b
	ld [bc], a                                       ; $479d: $02
	ei                                               ; $479e: $fb
	jp nz, $0a0b                                     ; $479f: $c2 $0b $0a

	add $0b                                          ; $47a2: $c6 $0b
	ld [bc], a                                       ; $47a4: $02
	ei                                               ; $47a5: $fb
	inc c                                            ; $47a6: $0c
	jp nz, $0c0a                                     ; $47a7: $c2 $0a $0c

	add $0a                                          ; $47aa: $c6 $0a
	inc c                                            ; $47ac: $0c
	jp nz, $02bd                                     ; $47ad: $c2 $bd $02

	ld [$0a0c], sp                                   ; $47b0: $08 $0c $0a
	add $08                                          ; $47b3: $c6 $08
	ld [bc], a                                       ; $47b5: $02
	ei                                               ; $47b6: $fb
	jp nz, $0a08                                     ; $47b7: $c2 $08 $0a

	add $08                                          ; $47ba: $c6 $08
	ld [bc], a                                       ; $47bc: $02
	ei                                               ; $47bd: $fb
	ld b, $c2                                        ; $47be: $06 $c2
	cp l                                             ; $47c0: $bd
	ld [bc], a                                       ; $47c1: $02
	ld a, [bc]                                       ; $47c2: $0a
	inc c                                            ; $47c3: $0c
	ld a, [bc]                                       ; $47c4: $0a
	add $0a                                          ; $47c5: $c6 $0a
	ld [bc], a                                       ; $47c7: $02
	ei                                               ; $47c8: $fb
	jp nz, $0a0a                                     ; $47c9: $c2 $0a $0a

	add $0a                                          ; $47cc: $c6 $0a
	ld [bc], a                                       ; $47ce: $02
	ei                                               ; $47cf: $fb
	ld b, $c2                                        ; $47d0: $06 $c2
	cp l                                             ; $47d2: $bd
	ld [bc], a                                       ; $47d3: $02
	dec bc                                           ; $47d4: $0b
	inc c                                            ; $47d5: $0c
	ld a, [bc]                                       ; $47d6: $0a
	add $0b                                          ; $47d7: $c6 $0b
	ld [bc], a                                       ; $47d9: $02
	ei                                               ; $47da: $fb
	jp nz, $0a0b                                     ; $47db: $c2 $0b $0a

	add $0b                                          ; $47de: $c6 $0b
	ld [bc], a                                       ; $47e0: $02
	ei                                               ; $47e1: $fb
	rlca                                             ; $47e2: $07
	jp nz, $0a0a                                     ; $47e3: $c2 $0a $0a

	add $0a                                          ; $47e6: $c6 $0a
	ld [bc], a                                       ; $47e8: $02
	jp nz, $0c0a                                     ; $47e9: $c2 $0a $0c

	add $0a                                          ; $47ec: $c6 $0a
	inc c                                            ; $47ee: $0c
	jp nz, $0c0e                                     ; $47ef: $c2 $0e $0c

	add $0e                                          ; $47f2: $c6 $0e
	inc c                                            ; $47f4: $0c
	jp nz, $0c11                                     ; $47f5: $c2 $11 $0c

	add $11                                          ; $47f8: $c6 $11
	inc c                                            ; $47fa: $0c
	jp nz, $02bd                                     ; $47fb: $c2 $bd $02

	rrca                                             ; $47fe: $0f
	inc c                                            ; $47ff: $0c

Jump_032_4800:
	ld a, [bc]                                       ; $4800: $0a
	jp nz, $c684                                     ; $4801: $c2 $84 $c6

	rrca                                             ; $4804: $0f
	ld [bc], a                                       ; $4805: $02
	ei                                               ; $4806: $fb
	jp nz, $0a0f                                     ; $4807: $c2 $0f $0a

	add $0f                                          ; $480a: $c6 $0f
	ld [bc], a                                       ; $480c: $02
	ei                                               ; $480d: $fb
	dec bc                                           ; $480e: $0b
	jp nz, $0a0d                                     ; $480f: $c2 $0d $0a

	add $0d                                          ; $4812: $c6 $0d
	ld [bc], a                                       ; $4814: $02
	jp nz, $0c0d                                     ; $4815: $c2 $0d $0c

	add $0d                                          ; $4818: $c6 $0d
	inc c                                            ; $481a: $0c
	jp nz, $02bd                                     ; $481b: $c2 $bd $02

	dec bc                                           ; $481e: $0b
	inc c                                            ; $481f: $0c
	ld a, [bc]                                       ; $4820: $0a
	add $0b                                          ; $4821: $c6 $0b
	ld [bc], a                                       ; $4823: $02
	ei                                               ; $4824: $fb
	jp nz, $0a0b                                     ; $4825: $c2 $0b $0a

	add $0b                                          ; $4828: $c6 $0b
	ld [bc], a                                       ; $482a: $02
	ei                                               ; $482b: $fb
	inc c                                            ; $482c: $0c
	jp nz, $0c0a                                     ; $482d: $c2 $0a $0c

	add $0a                                          ; $4830: $c6 $0a
	inc c                                            ; $4832: $0c
	jp nz, $02bd                                     ; $4833: $c2 $bd $02

	ld [$0a0c], sp                                   ; $4836: $08 $0c $0a
	add $08                                          ; $4839: $c6 $08
	ld [bc], a                                       ; $483b: $02
	ei                                               ; $483c: $fb
	jp nz, $0a08                                     ; $483d: $c2 $08 $0a

	add $08                                          ; $4840: $c6 $08
	ld [bc], a                                       ; $4842: $02
	ei                                               ; $4843: $fb
	ld b, $c2                                        ; $4844: $06 $c2
	cp l                                             ; $4846: $bd
	ld [bc], a                                       ; $4847: $02
	ld a, [bc]                                       ; $4848: $0a
	inc c                                            ; $4849: $0c
	ld a, [bc]                                       ; $484a: $0a
	add $0a                                          ; $484b: $c6 $0a
	ld [bc], a                                       ; $484d: $02
	ei                                               ; $484e: $fb
	jp nz, $0a0a                                     ; $484f: $c2 $0a $0a

	add $0a                                          ; $4852: $c6 $0a
	ld [bc], a                                       ; $4854: $02
	ei                                               ; $4855: $fb
	ld b, $c2                                        ; $4856: $06 $c2
	cp l                                             ; $4858: $bd
	ld [bc], a                                       ; $4859: $02
	dec bc                                           ; $485a: $0b
	inc c                                            ; $485b: $0c
	ld a, [bc]                                       ; $485c: $0a
	add $0b                                          ; $485d: $c6 $0b
	ld [bc], a                                       ; $485f: $02
	ei                                               ; $4860: $fb
	jp nz, $0a0b                                     ; $4861: $c2 $0b $0a

	add $0b                                          ; $4864: $c6 $0b
	ld [bc], a                                       ; $4866: $02
	ei                                               ; $4867: $fb
	rlca                                             ; $4868: $07
	jp nz, $0a0a                                     ; $4869: $c2 $0a $0a

	add $0a                                          ; $486c: $c6 $0a
	ld [bc], a                                       ; $486e: $02
	jp nz, $0a0a                                     ; $486f: $c2 $0a $0a

	add $0a                                          ; $4872: $c6 $0a
	ld [bc], a                                       ; $4874: $02
	add a                                            ; $4875: $87
	call nz, $050a                                   ; $4876: $c4 $0a $05
	nop                                              ; $4879: $00
	ld bc, $0ac4                                     ; $487a: $01 $c4 $0a
	ld b, $84                                        ; $487d: $06 $84
	jp nz, $0c0e                                     ; $487f: $c2 $0e $0c

	add $0e                                          ; $4882: $c6 $0e
	inc c                                            ; $4884: $0c
	jp nz, $0c0a                                     ; $4885: $c2 $0a $0c

	add $0a                                          ; $4888: $c6 $0a
	inc c                                            ; $488a: $0c
	jp nz, $02bd                                     ; $488b: $c2 $bd $02

	dec bc                                           ; $488e: $0b
	inc c                                            ; $488f: $0c
	ld a, [bc]                                       ; $4890: $0a
	jp nz, $c684                                     ; $4891: $c2 $84 $c6

	dec bc                                           ; $4894: $0b
	ld [bc], a                                       ; $4895: $02
	jp nz, $0a0b                                     ; $4896: $c2 $0b $0a

	add $0b                                          ; $4899: $c6 $0b
	ld [bc], a                                       ; $489b: $02
	jp nz, $180b                                     ; $489c: $c2 $0b $18

	call nz, $060b                                   ; $489f: $c4 $0b $06
	add $0b                                          ; $48a2: $c6 $0b
	ld b, $c2                                        ; $48a4: $06 $c2
	dec bc                                           ; $48a6: $0b
	ld a, [bc]                                       ; $48a7: $0a
	add $0b                                          ; $48a8: $c6 $0b
	ld [bc], a                                       ; $48aa: $02
	jp nz, $180b                                     ; $48ab: $c2 $0b $18

	call nz, $060b                                   ; $48ae: $c4 $0b $06
	add $0b                                          ; $48b1: $c6 $0b
	ld b, $c2                                        ; $48b3: $06 $c2
	dec bc                                           ; $48b5: $0b
	ld a, [bc]                                       ; $48b6: $0a
	add $0b                                          ; $48b7: $c6 $0b
	ld [bc], a                                       ; $48b9: $02
	jp nz, $120b                                     ; $48ba: $c2 $0b $12

	call nz, $030b                                   ; $48bd: $c4 $0b $03
	add $0b                                          ; $48c0: $c6 $0b
	inc bc                                           ; $48c2: $03
	jp nz, $0a0b                                     ; $48c3: $c2 $0b $0a

	add $0b                                          ; $48c6: $c6 $0b
	ld [bc], a                                       ; $48c8: $02
	jp nz, $0c0e                                     ; $48c9: $c2 $0e $0c

	add $0e                                          ; $48cc: $c6 $0e
	inc c                                            ; $48ce: $0c
	jp nz, $02bd                                     ; $48cf: $c2 $bd $02

	rrca                                             ; $48d2: $0f
	inc c                                            ; $48d3: $0c
	ld a, [bc]                                       ; $48d4: $0a
	add $0f                                          ; $48d5: $c6 $0f
	ld [bc], a                                       ; $48d7: $02
	jp nz, $0a0f                                     ; $48d8: $c2 $0f $0a

	add $0f                                          ; $48db: $c6 $0f
	ld [bc], a                                       ; $48dd: $02
	jp nz, $160f                                     ; $48de: $c2 $0f $16

	add $0f                                          ; $48e1: $c6 $0f
	ld [bc], a                                       ; $48e3: $02
	call nz, $0a0f                                   ; $48e4: $c4 $0f $0a
	add $0f                                          ; $48e7: $c6 $0f
	ld [bc], a                                       ; $48e9: $02
	jp nz, $0a0f                                     ; $48ea: $c2 $0f $0a

	add $0f                                          ; $48ed: $c6 $0f
	ld [bc], a                                       ; $48ef: $02
	jp nz, $160f                                     ; $48f0: $c2 $0f $16

	add $0f                                          ; $48f3: $c6 $0f
	ld [bc], a                                       ; $48f5: $02
	call nz, $0a0f                                   ; $48f6: $c4 $0f $0a
	add $0f                                          ; $48f9: $c6 $0f
	ld [bc], a                                       ; $48fb: $02
	jp nz, $0a0f                                     ; $48fc: $c2 $0f $0a

	add $0f                                          ; $48ff: $c6 $0f
	ld [bc], a                                       ; $4901: $02
	jp nz, $160f                                     ; $4902: $c2 $0f $16

	add $0f                                          ; $4905: $c6 $0f
	ld [bc], a                                       ; $4907: $02
	jp nz, $0a0f                                     ; $4908: $c2 $0f $0a

	add $0f                                          ; $490b: $c6 $0f
	ld [bc], a                                       ; $490d: $02
	jp nz, $0c0d                                     ; $490e: $c2 $0d $0c

	add $0d                                          ; $4911: $c6 $0d
	inc c                                            ; $4913: $0c
	jp nz, $02bd                                     ; $4914: $c2 $bd $02

	dec bc                                           ; $4917: $0b
	inc c                                            ; $4918: $0c
	ld a, [bc]                                       ; $4919: $0a
	jp nz, $c684                                     ; $491a: $c2 $84 $c6

	dec bc                                           ; $491d: $0b
	ld [bc], a                                       ; $491e: $02
	jp nz, $0a0b                                     ; $491f: $c2 $0b $0a

	add $0b                                          ; $4922: $c6 $0b
	ld [bc], a                                       ; $4924: $02
	jp nz, $180b                                     ; $4925: $c2 $0b $18

	call nz, $060b                                   ; $4928: $c4 $0b $06
	add $0b                                          ; $492b: $c6 $0b
	ld b, $c2                                        ; $492d: $06 $c2
	dec bc                                           ; $492f: $0b
	ld a, [bc]                                       ; $4930: $0a
	add $0b                                          ; $4931: $c6 $0b
	ld [bc], a                                       ; $4933: $02
	jp nz, $180b                                     ; $4934: $c2 $0b $18

	call nz, $060b                                   ; $4937: $c4 $0b $06
	add $0b                                          ; $493a: $c6 $0b
	ld b, $c2                                        ; $493c: $06 $c2
	dec bc                                           ; $493e: $0b
	ld a, [bc]                                       ; $493f: $0a
	add $0b                                          ; $4940: $c6 $0b
	ld [bc], a                                       ; $4942: $02
	jp nz, $120b                                     ; $4943: $c2 $0b $12

	call nz, $030b                                   ; $4946: $c4 $0b $03
	add $0b                                          ; $4949: $c6 $0b
	inc bc                                           ; $494b: $03
	jp nz, $0a0b                                     ; $494c: $c2 $0b $0a

	add $0b                                          ; $494f: $c6 $0b
	ld [bc], a                                       ; $4951: $02
	jp nz, $0c0a                                     ; $4952: $c2 $0a $0c

	add $0a                                          ; $4955: $c6 $0a
	inc c                                            ; $4957: $0c
	jp nz, $02bd                                     ; $4958: $c2 $bd $02

	ld [$0a0c], sp                                   ; $495b: $08 $0c $0a
	add $08                                          ; $495e: $c6 $08
	ld [bc], a                                       ; $4960: $02
	jp nz, $0a08                                     ; $4961: $c2 $08 $0a

	add $08                                          ; $4964: $c6 $08
	ld [bc], a                                       ; $4966: $02
	jp nz, $1208                                     ; $4967: $c2 $08 $12

	call nz, $0308                                   ; $496a: $c4 $08 $03
	add $08                                          ; $496d: $c6 $08
	inc bc                                           ; $496f: $03
	jp nz, $0a08                                     ; $4970: $c2 $08 $0a

	add $08                                          ; $4973: $c6 $08
	ld [bc], a                                       ; $4975: $02
	jp nz, $0c08                                     ; $4976: $c2 $08 $0c

	add $08                                          ; $4979: $c6 $08
	inc c                                            ; $497b: $0c
	jp nz, $02bd                                     ; $497c: $c2 $bd $02

	ld a, [bc]                                       ; $497f: $0a
	inc c                                            ; $4980: $0c
	ld a, [bc]                                       ; $4981: $0a
	add $0a                                          ; $4982: $c6 $0a
	ld [bc], a                                       ; $4984: $02
	jp nz, $0a0c                                     ; $4985: $c2 $0c $0a

	add $0c                                          ; $4988: $c6 $0c
	ld [bc], a                                       ; $498a: $02
	jp nz, $0a0e                                     ; $498b: $c2 $0e $0a

	add $0e                                          ; $498e: $c6 $0e
	ld [bc], a                                       ; $4990: $02
	jp nz, $0a0a                                     ; $4991: $c2 $0a $0a

	add $0a                                          ; $4994: $c6 $0a
	ld [bc], a                                       ; $4996: $02
	jp nz, $0a0c                                     ; $4997: $c2 $0c $0a

	add $0c                                          ; $499a: $c6 $0c
	ld [bc], a                                       ; $499c: $02
	jp nz, $0a0e                                     ; $499d: $c2 $0e $0a

	add $0e                                          ; $49a0: $c6 $0e
	ld [bc], a                                       ; $49a2: $02
	jp nz, $0a11                                     ; $49a3: $c2 $11 $0a

	add $11                                          ; $49a6: $c6 $11
	ld [bc], a                                       ; $49a8: $02
	jp nz, $0c0f                                     ; $49a9: $c2 $0f $0c

	cp $ff                                           ; $49ac: $fe $ff
	ret nc                                           ; $49ae: $d0

	adc h                                            ; $49af: $8c
	dec de                                           ; $49b0: $1b
	ld bc, $051b                                     ; $49b1: $01 $1b $05
	dec de                                           ; $49b4: $1b
	ld b, $12                                        ; $49b5: $06 $12
	dec b                                            ; $49b7: $05
	cp [hl]                                          ; $49b8: $be
	ld b, $1b                                        ; $49b9: $06 $1b
	dec de                                           ; $49bb: $1b
	nop                                              ; $49bc: $00
	inc e                                            ; $49bd: $1c
	inc e                                            ; $49be: $1c
	cp [hl]                                          ; $49bf: $be
	cp [hl]                                          ; $49c0: $be
	ld b, $12                                        ; $49c1: $06 $12
	inc e                                            ; $49c3: $1c
	inc e                                            ; $49c4: $1c
	nop                                              ; $49c5: $00
	cp [hl]                                          ; $49c6: $be
	dec c                                            ; $49c7: $0d
	inc c                                            ; $49c8: $0c
	inc d                                            ; $49c9: $14
	inc c                                            ; $49ca: $0c
	cp $be                                           ; $49cb: $fe $be
	inc c                                            ; $49cd: $0c
	nop                                              ; $49ce: $00
	ld [hl], $4f                                     ; $49cf: $36 $4f
	add hl, bc                                       ; $49d1: $09
	ld [hl], $36                                     ; $49d2: $36 $36
	ld c, a                                          ; $49d4: $4f
	add hl, bc                                       ; $49d5: $09
	ld [hl], $12                                     ; $49d6: $36 $12
	ld c, a                                          ; $49d8: $4f
	add hl, bc                                       ; $49d9: $09
	cp [hl]                                          ; $49da: $be
	ld [hl], $06                                     ; $49db: $36 $06
	add hl, bc                                       ; $49dd: $09
	ld b, $36                                        ; $49de: $06 $36
	inc c                                            ; $49e0: $0c
	ld c, a                                          ; $49e1: $4f
	inc c                                            ; $49e2: $0c
	inc d                                            ; $49e3: $14
	inc c                                            ; $49e4: $0c
	cp [hl]                                          ; $49e5: $be
	inc c                                            ; $49e6: $0c
	nop                                              ; $49e7: $00
	ld [hl], $4f                                     ; $49e8: $36 $4f
	add hl, bc                                       ; $49ea: $09
	ld [hl], $36                                     ; $49eb: $36 $36
	ld c, a                                          ; $49ed: $4f
	add hl, bc                                       ; $49ee: $09
	ld [hl], $12                                     ; $49ef: $36 $12
	ld c, a                                          ; $49f1: $4f
	add hl, bc                                       ; $49f2: $09
	ld [hl], $18                                     ; $49f3: $36 $18
	ld c, a                                          ; $49f5: $4f
	inc d                                            ; $49f6: $14
	cp [hl]                                          ; $49f7: $be
	cp [hl]                                          ; $49f8: $be
	inc c                                            ; $49f9: $0c
	nop                                              ; $49fa: $00
	ld [hl], $4f                                     ; $49fb: $36 $4f
	add hl, bc                                       ; $49fd: $09
	ld [hl], $36                                     ; $49fe: $36 $36
	ld c, a                                          ; $4a00: $4f
	ld [hl], $09                                     ; $4a01: $36 $09
	ld [hl], $4f                                     ; $4a03: $36 $4f
	add hl, bc                                       ; $4a05: $09
	ld [hl], $36                                     ; $4a06: $36 $36
	ld c, a                                          ; $4a08: $4f
	ld [hl], $be                                     ; $4a09: $36 $be
	cp [hl]                                          ; $4a0b: $be
	inc c                                            ; $4a0c: $0c
	nop                                              ; $4a0d: $00
	ld [hl], $4f                                     ; $4a0e: $36 $4f
	add hl, bc                                       ; $4a10: $09
	ld [hl], $36                                     ; $4a11: $36 $36
	ld c, a                                          ; $4a13: $4f
	cp [hl]                                          ; $4a14: $be
	add hl, bc                                       ; $4a15: $09
	ld b, $09                                        ; $4a16: $06 $09
	ld b, $0c                                        ; $4a18: $06 $0c
	inc c                                            ; $4a1a: $0c
	inc c                                            ; $4a1b: $0c
	inc c                                            ; $4a1c: $0c
	ld [hl], $06                                     ; $4a1d: $36 $06
	add hl, bc                                       ; $4a1f: $09
	ld b, $be                                        ; $4a20: $06 $be
	inc c                                            ; $4a22: $0c
	ld c, a                                          ; $4a23: $4f
	ld [de], a                                       ; $4a24: $12
	ld c, a                                          ; $4a25: $4f

jr_032_4a26:
	add hl, bc                                       ; $4a26: $09
	inc d                                            ; $4a27: $14
	cp [hl]                                          ; $4a28: $be
	cp [hl]                                          ; $4a29: $be
	inc c                                            ; $4a2a: $0c
	nop                                              ; $4a2b: $00
	ld [hl], $4f                                     ; $4a2c: $36 $4f
	add hl, bc                                       ; $4a2e: $09
	ld [hl], $36                                     ; $4a2f: $36 $36
	ld c, a                                          ; $4a31: $4f
	add hl, bc                                       ; $4a32: $09
	ld [hl], $12                                     ; $4a33: $36 $12
	ld c, a                                          ; $4a35: $4f
	add hl, bc                                       ; $4a36: $09
	cp [hl]                                          ; $4a37: $be
	ld [hl], $06                                     ; $4a38: $36 $06
	add hl, bc                                       ; $4a3a: $09
	ld b, $36                                        ; $4a3b: $06 $36
	inc c                                            ; $4a3d: $0c
	ld c, a                                          ; $4a3e: $4f
	inc c                                            ; $4a3f: $0c
	inc d                                            ; $4a40: $14
	inc c                                            ; $4a41: $0c
	cp [hl]                                          ; $4a42: $be
	inc c                                            ; $4a43: $0c
	nop                                              ; $4a44: $00
	ld [hl], $4f                                     ; $4a45: $36 $4f
	add hl, bc                                       ; $4a47: $09
	ld [hl], $36                                     ; $4a48: $36 $36
	ld c, a                                          ; $4a4a: $4f
	add hl, bc                                       ; $4a4b: $09
	ld [hl], $12                                     ; $4a4c: $36 $12
	ld c, a                                          ; $4a4e: $4f
	add hl, bc                                       ; $4a4f: $09
	ld [hl], $36                                     ; $4a50: $36 $36
	ld c, a                                          ; $4a52: $4f
	inc d                                            ; $4a53: $14
	cp [hl]                                          ; $4a54: $be
	cp [hl]                                          ; $4a55: $be
	inc c                                            ; $4a56: $0c

jr_032_4a57:
	nop                                              ; $4a57: $00
	ld [hl], $4f                                     ; $4a58: $36 $4f
	add hl, bc                                       ; $4a5a: $09
	ld [hl], $36                                     ; $4a5b: $36 $36
	ld c, a                                          ; $4a5d: $4f
	ld [hl], $09                                     ; $4a5e: $36 $09
	ld [hl], $4f                                     ; $4a60: $36 $4f
	add hl, bc                                       ; $4a62: $09
	ld [hl], $36                                     ; $4a63: $36 $36
	ld c, a                                          ; $4a65: $4f
	jr jr_032_4a26                                   ; $4a66: $18 $be

	cp [hl]                                          ; $4a68: $be
	inc c                                            ; $4a69: $0c

jr_032_4a6a:
	add hl, bc                                       ; $4a6a: $09
	ld [hl], $4f                                     ; $4a6b: $36 $4f
	add hl, bc                                       ; $4a6d: $09
	ld [hl], $36                                     ; $4a6e: $36 $36
	ld c, a                                          ; $4a70: $4f
	cp [hl]                                          ; $4a71: $be
	ld [hl], $06                                     ; $4a72: $36 $06
	ld [hl], $06                                     ; $4a74: $36 $06
	inc c                                            ; $4a76: $0c
	inc c                                            ; $4a77: $0c
	inc c                                            ; $4a78: $0c
	inc c                                            ; $4a79: $0c
	add hl, bc                                       ; $4a7a: $09
	ld b, $09                                        ; $4a7b: $06 $09

jr_032_4a7d:
	ld b, $be                                        ; $4a7d: $06 $be
	inc c                                            ; $4a7f: $0c
	ld c, a                                          ; $4a80: $4f
	add hl, bc                                       ; $4a81: $09
	ld c, a                                          ; $4a82: $4f
	ld c, a                                          ; $4a83: $4f
	inc d                                            ; $4a84: $14
	cp [hl]                                          ; $4a85: $be
	cp [hl]                                          ; $4a86: $be
	inc c                                            ; $4a87: $0c
	nop                                              ; $4a88: $00
	ld [hl], $4f                                     ; $4a89: $36 $4f
	add hl, bc                                       ; $4a8b: $09
	add hl, bc                                       ; $4a8c: $09
	ld [hl], $4f                                     ; $4a8d: $36 $4f
	add hl, bc                                       ; $4a8f: $09
	add hl, bc                                       ; $4a90: $09
	ld [hl], $4f                                     ; $4a91: $36 $4f
	add hl, bc                                       ; $4a93: $09
	ld [hl], $4f                                     ; $4a94: $36 $4f
	add hl, bc                                       ; $4a96: $09
	jr jr_032_4a57                                   ; $4a97: $18 $be

	cp [hl]                                          ; $4a99: $be
	inc c                                            ; $4a9a: $0c
	nop                                              ; $4a9b: $00
	ld [hl], $4f                                     ; $4a9c: $36 $4f
	add hl, bc                                       ; $4a9e: $09
	ld [hl], $12                                     ; $4a9f: $36 $12
	ld c, a                                          ; $4aa1: $4f
	add hl, bc                                       ; $4aa2: $09
	ld [hl], $12                                     ; $4aa3: $36 $12
	ld c, a                                          ; $4aa5: $4f
	add hl, bc                                       ; $4aa6: $09
	ld [hl], $4f                                     ; $4aa7: $36 $4f
	add hl, bc                                       ; $4aa9: $09
	jr jr_032_4a6a                                   ; $4aaa: $18 $be

	cp [hl]                                          ; $4aac: $be
	inc c                                            ; $4aad: $0c
	nop                                              ; $4aae: $00
	ld [hl], $4f                                     ; $4aaf: $36 $4f
	add hl, bc                                       ; $4ab1: $09
	add hl, bc                                       ; $4ab2: $09
	ld [hl], $4f                                     ; $4ab3: $36 $4f
	add hl, bc                                       ; $4ab5: $09
	add hl, bc                                       ; $4ab6: $09
	ld [hl], $4f                                     ; $4ab7: $36 $4f
	add hl, bc                                       ; $4ab9: $09
	ld [hl], $4f                                     ; $4aba: $36 $4f
	add hl, bc                                       ; $4abc: $09
	jr jr_032_4a7d                                   ; $4abd: $18 $be

	cp [hl]                                          ; $4abf: $be
	inc c                                            ; $4ac0: $0c
	nop                                              ; $4ac1: $00
	ld [hl], $4f                                     ; $4ac2: $36 $4f
	add hl, bc                                       ; $4ac4: $09
	ld [hl], $09                                     ; $4ac5: $36 $09
	ld c, a                                          ; $4ac7: $4f
	cp [hl]                                          ; $4ac8: $be
	inc d                                            ; $4ac9: $14
	jr jr_032_4ad8                                   ; $4aca: $18 $0c

	inc c                                            ; $4acc: $0c
	inc c                                            ; $4acd: $0c
	inc c                                            ; $4ace: $0c
	dec c                                            ; $4acf: $0d
	ld b, $0d                                        ; $4ad0: $06 $0d
	ld b, $be                                        ; $4ad2: $06 $be
	inc c                                            ; $4ad4: $0c
	inc c                                            ; $4ad5: $0c
	ld c, a                                          ; $4ad6: $4f
	ld c, a                                          ; $4ad7: $4f

jr_032_4ad8:
	inc d                                            ; $4ad8: $14
	cp [hl]                                          ; $4ad9: $be
	cp $ff                                           ; $4ada: $fe $ff
	or [hl]                                          ; $4adc: $b6
	ld [hl], e                                       ; $4add: $73
	sub c                                            ; $4ade: $91
	ld [bc], a                                       ; $4adf: $02
	ld [de], a                                       ; $4ae0: $12
	inc bc                                           ; $4ae1: $03

jr_032_4ae2:
	dec h                                            ; $4ae2: $25
	ld [de], a                                       ; $4ae3: $12
	dec h                                            ; $4ae4: $25
	ld [de], a                                       ; $4ae5: $12
	sub [hl]                                         ; $4ae6: $96
	inc c                                            ; $4ae7: $0c
	inc bc                                           ; $4ae8: $03
	daa                                              ; $4ae9: $27
	inc c                                            ; $4aea: $0c
	sub [hl]                                         ; $4aeb: $96
	ld [de], a                                       ; $4aec: $12
	inc bc                                           ; $4aed: $03
	inc hl                                           ; $4aee: $23
	ld [de], a                                       ; $4aef: $12
	inc hl                                           ; $4af0: $23
	ld [de], a                                       ; $4af1: $12
	daa                                              ; $4af2: $27
	inc c                                            ; $4af3: $0c
	sub [hl]                                         ; $4af4: $96
	ld [de], a                                       ; $4af5: $12
	inc bc                                           ; $4af6: $03
	dec h                                            ; $4af7: $25
	ld [de], a                                       ; $4af8: $12
	dec h                                            ; $4af9: $25
	ld [de], a                                       ; $4afa: $12
	sub [hl]                                         ; $4afb: $96
	inc c                                            ; $4afc: $0c
	inc bc                                           ; $4afd: $03
	jr z, jr_032_4b0c                                ; $4afe: $28 $0c

	sub [hl]                                         ; $4b00: $96
	ld [de], a                                       ; $4b01: $12
	inc bc                                           ; $4b02: $03
	daa                                              ; $4b03: $27
	ld [de], a                                       ; $4b04: $12
	inc hl                                           ; $4b05: $23
	ld [de], a                                       ; $4b06: $12
	sub [hl]                                         ; $4b07: $96
	inc c                                            ; $4b08: $0c
	inc bc                                           ; $4b09: $03
	jr nz, jr_032_4b18                               ; $4b0a: $20 $0c

jr_032_4b0c:
	sub [hl]                                         ; $4b0c: $96
	ld [de], a                                       ; $4b0d: $12
	inc bc                                           ; $4b0e: $03
	dec h                                            ; $4b0f: $25
	ld [de], a                                       ; $4b10: $12
	dec h                                            ; $4b11: $25
	ld [de], a                                       ; $4b12: $12
	sub [hl]                                         ; $4b13: $96
	inc c                                            ; $4b14: $0c
	inc bc                                           ; $4b15: $03
	daa                                              ; $4b16: $27
	inc c                                            ; $4b17: $0c

jr_032_4b18:
	sub [hl]                                         ; $4b18: $96
	ld [de], a                                       ; $4b19: $12
	inc bc                                           ; $4b1a: $03
	inc hl                                           ; $4b1b: $23
	ld [de], a                                       ; $4b1c: $12
	inc hl                                           ; $4b1d: $23
	ld [de], a                                       ; $4b1e: $12
	sub [hl]                                         ; $4b1f: $96
	inc c                                            ; $4b20: $0c
	inc bc                                           ; $4b21: $03
	daa                                              ; $4b22: $27
	inc c                                            ; $4b23: $0c
	sub [hl]                                         ; $4b24: $96
	ld [de], a                                       ; $4b25: $12
	inc bc                                           ; $4b26: $03
	dec h                                            ; $4b27: $25
	ld [de], a                                       ; $4b28: $12
	jr z, jr_032_4b3d                                ; $4b29: $28 $12

	sub [hl]                                         ; $4b2b: $96
	jr jr_032_4b34                                   ; $4b2c: $18 $06

	daa                                              ; $4b2e: $27
	jr jr_032_4ae2                                   ; $4b2f: $18 $b1

	ld d, c                                          ; $4b31: $51
	nop                                              ; $4b32: $00
	nop                                              ; $4b33: $00

jr_032_4b34:
	daa                                              ; $4b34: $27
	inc c                                            ; $4b35: $0c
	jp $0c27                                         ; $4b36: $c3 $27 $0c


	or c                                             ; $4b39: $b1
	ld de, $0000                                     ; $4b3a: $11 $00 $00

jr_032_4b3d:
	ld a, [hl+]                                      ; $4b3d: $2a
	inc c                                            ; $4b3e: $0c
	cp $b5                                           ; $4b3f: $fe $b5
	or c                                             ; $4b41: $b1
	nop                                              ; $4b42: $00
	ld b, $03                                        ; $4b43: $06 $03
	ld a, l                                          ; $4b45: $7d
	ld bc, $0628                                     ; $4b46: $01 $28 $06
	or c                                             ; $4b49: $b1
	ld b, c                                          ; $4b4a: $41
	nop                                              ; $4b4b: $00
	nop                                              ; $4b4c: $00
	jr z, @+$08                                      ; $4b4d: $28 $06

	or c                                             ; $4b4f: $b1
	and c                                            ; $4b50: $a1
	ld b, $02                                        ; $4b51: $06 $02
	inc hl                                           ; $4b53: $23
	ld b, $28                                        ; $4b54: $06 $28
	ld b, $b1                                        ; $4b56: $06 $b1
	ld de, $0000                                     ; $4b58: $11 $00 $00
	jr z, jr_032_4b63                                ; $4b5b: $28 $06

	or c                                             ; $4b5d: $b1
	ld d, c                                          ; $4b5e: $51
	ld b, $02                                        ; $4b5f: $06 $02
	jr z, jr_032_4b69                                ; $4b61: $28 $06

jr_032_4b63:
	or c                                             ; $4b63: $b1
	ld hl, $0000                                     ; $4b64: $21 $00 $00
	jr z, @+$08                                      ; $4b67: $28 $06

jr_032_4b69:
	or c                                             ; $4b69: $b1
	add c                                            ; $4b6a: $81
	ld b, $02                                        ; $4b6b: $06 $02
	inc hl                                           ; $4b6d: $23
	ld b, $96                                        ; $4b6e: $06 $96
	ld b, $04                                        ; $4b70: $06 $04
	jr nz, jr_032_4b7a                               ; $4b72: $20 $06

	or c                                             ; $4b74: $b1
	ld sp, $0000                                     ; $4b75: $31 $00 $00
	jr nz, jr_032_4b80                               ; $4b78: $20 $06

jr_032_4b7a:
	or c                                             ; $4b7a: $b1
	and c                                            ; $4b7b: $a1
	ld b, $02                                        ; $4b7c: $06 $02
	jr nz, jr_032_4b86                               ; $4b7e: $20 $06

jr_032_4b80:
	jr z, jr_032_4b88                                ; $4b80: $28 $06

	or c                                             ; $4b82: $b1
	ld hl, $0000                                     ; $4b83: $21 $00 $00

jr_032_4b86:
	jr z, jr_032_4b8e                                ; $4b86: $28 $06

jr_032_4b88:
	or c                                             ; $4b88: $b1
	ld h, c                                          ; $4b89: $61
	ld b, $02                                        ; $4b8a: $06 $02
	jr z, jr_032_4b94                                ; $4b8c: $28 $06

jr_032_4b8e:
	or c                                             ; $4b8e: $b1
	ld hl, $0000                                     ; $4b8f: $21 $00 $00
	jr z, @+$08                                      ; $4b92: $28 $06

jr_032_4b94:
	or c                                             ; $4b94: $b1
	add c                                            ; $4b95: $81
	ld b, $02                                        ; $4b96: $06 $02
	inc hl                                           ; $4b98: $23
	ld b, $96                                        ; $4b99: $06 $96
	ld b, $02                                        ; $4b9b: $06 $02
	jr z, jr_032_4ba5                                ; $4b9d: $28 $06

	or c                                             ; $4b9f: $b1
	ld sp, $0000                                     ; $4ba0: $31 $00 $00
	jr z, @+$08                                      ; $4ba3: $28 $06

jr_032_4ba5:
	or c                                             ; $4ba5: $b1
	and c                                            ; $4ba6: $a1
	ld b, $02                                        ; $4ba7: $06 $02
	inc hl                                           ; $4ba9: $23
	ld b, $c6                                        ; $4baa: $06 $c6
	jr z, jr_032_4bb4                                ; $4bac: $28 $06

	or c                                             ; $4bae: $b1
	ld de, $0000                                     ; $4baf: $11 $00 $00
	jr z, jr_032_4bba                                ; $4bb2: $28 $06

jr_032_4bb4:
	or c                                             ; $4bb4: $b1
	ld d, c                                          ; $4bb5: $51
	ld b, $02                                        ; $4bb6: $06 $02
	jr z, jr_032_4bc0                                ; $4bb8: $28 $06

jr_032_4bba:
	or c                                             ; $4bba: $b1
	ld hl, $0000                                     ; $4bbb: $21 $00 $00
	jr z, @+$08                                      ; $4bbe: $28 $06

jr_032_4bc0:
	or c                                             ; $4bc0: $b1
	add c                                            ; $4bc1: $81
	ld b, $02                                        ; $4bc2: $06 $02
	inc hl                                           ; $4bc4: $23
	ld b, $96                                        ; $4bc5: $06 $96
	ld b, $02                                        ; $4bc7: $06 $02
	inc hl                                           ; $4bc9: $23
	ld b, $b1                                        ; $4bca: $06 $b1
	ld hl, $0000                                     ; $4bcc: $21 $00 $00
	inc hl                                           ; $4bcf: $23
	ld b, $b1                                        ; $4bd0: $06 $b1
	add c                                            ; $4bd2: $81
	ld b, $02                                        ; $4bd3: $06 $02
	inc hl                                           ; $4bd5: $23
	ld b, $28                                        ; $4bd6: $06 $28
	ld b, $b1                                        ; $4bd8: $06 $b1
	ld de, $0000                                     ; $4bda: $11 $00 $00
	jr z, @+$08                                      ; $4bdd: $28 $06

	or c                                             ; $4bdf: $b1
	ld [hl], c                                       ; $4be0: $71
	ld b, $02                                        ; $4be1: $06 $02
	ld a, [hl+]                                      ; $4be3: $2a
	ld b, $2c                                        ; $4be4: $06 $2c
	ld b, $b1                                        ; $4be6: $06 $b1
	ld hl, $0000                                     ; $4be8: $21 $00 $00
	inc l                                            ; $4beb: $2c
	ld b, $b1                                        ; $4bec: $06 $b1
	add c                                            ; $4bee: $81
	ld b, $02                                        ; $4bef: $06 $02
	jr z, jr_032_4bf9                                ; $4bf1: $28 $06

	or c                                             ; $4bf3: $b1
	ld sp, $0000                                     ; $4bf4: $31 $00 $00
	jr z, @+$08                                      ; $4bf7: $28 $06

jr_032_4bf9:
	or c                                             ; $4bf9: $b1
	and c                                            ; $4bfa: $a1
	ld b, $02                                        ; $4bfb: $06 $02
	inc hl                                           ; $4bfd: $23
	ld b, $28                                        ; $4bfe: $06 $28
	ld b, $b1                                        ; $4c00: $06 $b1
	ld de, $0000                                     ; $4c02: $11 $00 $00
	jr z, jr_032_4c0d                                ; $4c05: $28 $06

	or c                                             ; $4c07: $b1
	ld d, c                                          ; $4c08: $51
	ld b, $02                                        ; $4c09: $06 $02
	jr z, jr_032_4c13                                ; $4c0b: $28 $06

jr_032_4c0d:
	or c                                             ; $4c0d: $b1
	ld hl, $0000                                     ; $4c0e: $21 $00 $00
	jr z, @+$08                                      ; $4c11: $28 $06

jr_032_4c13:
	or c                                             ; $4c13: $b1
	ld [hl], c                                       ; $4c14: $71
	ld b, $02                                        ; $4c15: $06 $02
	inc hl                                           ; $4c17: $23
	ld b, $96                                        ; $4c18: $06 $96
	ld b, $04                                        ; $4c1a: $06 $04
	inc hl                                           ; $4c1c: $23
	ld b, $b1                                        ; $4c1d: $06 $b1
	ld sp, $0000                                     ; $4c1f: $31 $00 $00
	inc hl                                           ; $4c22: $23
	ld b, $b1                                        ; $4c23: $06 $b1
	and c                                            ; $4c25: $a1
	ld b, $02                                        ; $4c26: $06 $02
	inc hl                                           ; $4c28: $23
	ld b, $28                                        ; $4c29: $06 $28
	ld b, $b1                                        ; $4c2b: $06 $b1
	ld hl, $0000                                     ; $4c2d: $21 $00 $00
	jr z, jr_032_4c38                                ; $4c30: $28 $06

	or c                                             ; $4c32: $b1
	ld h, c                                          ; $4c33: $61
	ld b, $02                                        ; $4c34: $06 $02
	jr z, jr_032_4c3e                                ; $4c36: $28 $06

jr_032_4c38:
	or c                                             ; $4c38: $b1
	ld hl, $0000                                     ; $4c39: $21 $00 $00
	jr z, @+$08                                      ; $4c3c: $28 $06

jr_032_4c3e:
	or c                                             ; $4c3e: $b1
	add c                                            ; $4c3f: $81
	ld b, $02                                        ; $4c40: $06 $02
	inc hl                                           ; $4c42: $23
	ld b, $b1                                        ; $4c43: $06 $b1
	add c                                            ; $4c45: $81
	ld b, $02                                        ; $4c46: $06 $02
	ld hl, $b106                                     ; $4c48: $21 $06 $b1
	ld sp, $0000                                     ; $4c4b: $31 $00 $00
	ld hl, $b106                                     ; $4c4e: $21 $06 $b1
	add c                                            ; $4c51: $81
	ld b, $02                                        ; $4c52: $06 $02
	ld hl, $c506                                     ; $4c54: $21 $06 $c5
	jr z, jr_032_4c5f                                ; $4c57: $28 $06

	or c                                             ; $4c59: $b1
	ld de, $0000                                     ; $4c5a: $11 $00 $00
	jr z, jr_032_4c65                                ; $4c5d: $28 $06

jr_032_4c5f:
	or c                                             ; $4c5f: $b1
	ld d, c                                          ; $4c60: $51
	ld b, $02                                        ; $4c61: $06 $02
	jr z, jr_032_4c6b                                ; $4c63: $28 $06

jr_032_4c65:
	or c                                             ; $4c65: $b1
	ld de, $0000                                     ; $4c66: $11 $00 $00
	jr z, @+$08                                      ; $4c69: $28 $06

jr_032_4c6b:
	or c                                             ; $4c6b: $b1
	add c                                            ; $4c6c: $81
	ld b, $02                                        ; $4c6d: $06 $02
	inc hl                                           ; $4c6f: $23
	ld b, $96                                        ; $4c70: $06 $96
	ld b, $02                                        ; $4c72: $06 $02
	inc hl                                           ; $4c74: $23
	ld b, $b1                                        ; $4c75: $06 $b1
	ld sp, $0000                                     ; $4c77: $31 $00 $00
	inc hl                                           ; $4c7a: $23
	ld b, $b1                                        ; $4c7b: $06 $b1
	add c                                            ; $4c7d: $81
	ld b, $02                                        ; $4c7e: $06 $02
	daa                                              ; $4c80: $27
	ld b, $28                                        ; $4c81: $06 $28
	ld b, $b1                                        ; $4c83: $06 $b1
	ld de, $0000                                     ; $4c85: $11 $00 $00
	jr z, @+$08                                      ; $4c88: $28 $06

	sub a                                            ; $4c8a: $97
	ld e, e                                          ; $4c8b: $5b
	sub e                                            ; $4c8c: $93
	ld a, l                                          ; $4c8d: $7d
	nop                                              ; $4c8e: $00
	jr z, jr_032_4c97                                ; $4c8f: $28 $06

	inc l                                            ; $4c91: $2c
	ld b, $2f                                        ; $4c92: $06 $2f
	ld b, $93                                        ; $4c94: $06 $93
	sub a                                            ; $4c96: $97

jr_032_4c97:
	ld e, h                                          ; $4c97: $5c
	cpl                                              ; $4c98: $2f
	ld b, $2a                                        ; $4c99: $06 $2a
	ld b, $97                                        ; $4c9b: $06 $97
	nop                                              ; $4c9d: $00
	jp nz, $062a                                     ; $4c9e: $c2 $2a $06

	sub a                                            ; $4ca1: $97
	ld e, h                                          ; $4ca2: $5c
	daa                                              ; $4ca3: $27
	ld b, $97                                        ; $4ca4: $06 $97
	nop                                              ; $4ca6: $00
	jp nz, $0627                                     ; $4ca7: $c2 $27 $06

	sub a                                            ; $4caa: $97
	ld e, h                                          ; $4cab: $5c
	inc hl                                           ; $4cac: $23
	ld b, $97                                        ; $4cad: $06 $97
	nop                                              ; $4caf: $00
	jp nz, $0623                                     ; $4cb0: $c2 $23 $06

	sub a                                            ; $4cb3: $97
	ld e, h                                          ; $4cb4: $5c
	ld hl, $9706                                     ; $4cb5: $21 $06 $97
	ld c, a                                          ; $4cb8: $4f
	jr nz, jr_032_4cc7                               ; $4cb9: $20 $0c

	sub a                                            ; $4cbb: $97
	ld c, [hl]                                       ; $4cbc: $4e
	inc l                                            ; $4cbd: $2c
	ld c, $97                                        ; $4cbe: $0e $97
	nop                                              ; $4cc0: $00
	call nz, $042c                                   ; $4cc1: $c4 $2c $04
	sub a                                            ; $4cc4: $97
	ld e, h                                          ; $4cc5: $5c
	inc hl                                           ; $4cc6: $23

jr_032_4cc7:
	ld b, $28                                        ; $4cc7: $06 $28
	ld b, $2c                                        ; $4cc9: $06 $2c
	ld b, $97                                        ; $4ccb: $06 $97
	ld e, h                                          ; $4ccd: $5c
	ld a, [hl+]                                      ; $4cce: $2a
	ld b, $28                                        ; $4ccf: $06 $28
	ld b, $97                                        ; $4cd1: $06 $97
	nop                                              ; $4cd3: $00
	jp nz, $0628                                     ; $4cd4: $c2 $28 $06

	sub a                                            ; $4cd7: $97
	ld e, h                                          ; $4cd8: $5c
	dec h                                            ; $4cd9: $25
	ld b, $97                                        ; $4cda: $06 $97
	nop                                              ; $4cdc: $00
	jp nz, $0625                                     ; $4cdd: $c2 $25 $06

	sub a                                            ; $4ce0: $97
	ld e, h                                          ; $4ce1: $5c
	ld hl, $9706                                     ; $4ce2: $21 $06 $97
	nop                                              ; $4ce5: $00
	jp nz, $0621                                     ; $4ce6: $c2 $21 $06

	sub a                                            ; $4ce9: $97
	ld e, h                                          ; $4cea: $5c
	ld e, $06                                        ; $4ceb: $1e $06
	sub a                                            ; $4ced: $97
	ld c, a                                          ; $4cee: $4f
	inc e                                            ; $4cef: $1c
	inc c                                            ; $4cf0: $0c
	sub a                                            ; $4cf1: $97
	ld c, a                                          ; $4cf2: $4f
	inc hl                                           ; $4cf3: $23
	ld c, $97                                        ; $4cf4: $0e $97
	nop                                              ; $4cf6: $00
	jp nz, $0423                                     ; $4cf7: $c2 $23 $04

	sub a                                            ; $4cfa: $97
	ld e, h                                          ; $4cfb: $5c
	jr z, jr_032_4d04                                ; $4cfc: $28 $06

	inc l                                            ; $4cfe: $2c
	ld b, $2f                                        ; $4cff: $06 $2f
	ld b, $97                                        ; $4d01: $06 $97
	ld e, h                                          ; $4d03: $5c

jr_032_4d04:
	cpl                                              ; $4d04: $2f
	ld b, $2a                                        ; $4d05: $06 $2a
	ld b, $97                                        ; $4d07: $06 $97
	nop                                              ; $4d09: $00
	jp nz, $062a                                     ; $4d0a: $c2 $2a $06

	sub a                                            ; $4d0d: $97
	ld e, h                                          ; $4d0e: $5c
	daa                                              ; $4d0f: $27
	ld b, $97                                        ; $4d10: $06 $97
	nop                                              ; $4d12: $00
	jp nz, $0627                                     ; $4d13: $c2 $27 $06

	sub a                                            ; $4d16: $97
	ld e, h                                          ; $4d17: $5c
	inc hl                                           ; $4d18: $23
	ld b, $97                                        ; $4d19: $06 $97
	nop                                              ; $4d1b: $00
	jp nz, $0623                                     ; $4d1c: $c2 $23 $06

	sub a                                            ; $4d1f: $97
	ld e, h                                          ; $4d20: $5c
	ld hl, $9706                                     ; $4d21: $21 $06 $97
	ld c, a                                          ; $4d24: $4f
	jr nz, jr_032_4d33                               ; $4d25: $20 $0c

	sub a                                            ; $4d27: $97
	ld c, d                                          ; $4d28: $4a
	inc l                                            ; $4d29: $2c
	ld c, $97                                        ; $4d2a: $0e $97
	nop                                              ; $4d2c: $00
	call nz, $042c                                   ; $4d2d: $c4 $2c $04
	sub a                                            ; $4d30: $97
	ld e, h                                          ; $4d31: $5c
	inc hl                                           ; $4d32: $23

jr_032_4d33:
	ld b, $28                                        ; $4d33: $06 $28
	ld b, $2c                                        ; $4d35: $06 $2c
	ld b, $97                                        ; $4d37: $06 $97
	ld e, h                                          ; $4d39: $5c
	ld a, [hl+]                                      ; $4d3a: $2a
	ld b, $28                                        ; $4d3b: $06 $28
	ld b, $97                                        ; $4d3d: $06 $97
	nop                                              ; $4d3f: $00
	jp nz, $0628                                     ; $4d40: $c2 $28 $06

	sub a                                            ; $4d43: $97
	ld e, h                                          ; $4d44: $5c
	inc hl                                           ; $4d45: $23
	ld b, $97                                        ; $4d46: $06 $97
	nop                                              ; $4d48: $00
	jp nz, $0623                                     ; $4d49: $c2 $23 $06

	sub a                                            ; $4d4c: $97
	ld e, h                                          ; $4d4d: $5c
	ld hl, $c506                                     ; $4d4e: $21 $06 $c5
	sub a                                            ; $4d51: $97
	nop                                              ; $4d52: $00
	jr nz, @+$26                                     ; $4d53: $20 $24

	jp nz, $0c20                                     ; $4d55: $c2 $20 $0c

	or c                                             ; $4d58: $b1
	ld hl, $0000                                     ; $4d59: $21 $00 $00
	jr z, @+$0e                                      ; $4d5c: $28 $0c

	or l                                             ; $4d5e: $b5
	sub c                                            ; $4d5f: $91
	ld [bc], a                                       ; $4d60: $02
	inc c                                            ; $4d61: $0c
	ld [bc], a                                       ; $4d62: $02
	ld h, $0c                                        ; $4d63: $26 $0c
	sub [hl]                                         ; $4d65: $96
	ld b, $02                                        ; $4d66: $06 $02
	dec hl                                           ; $4d68: $2b
	ld b, $96                                        ; $4d69: $06 $96
	inc c                                            ; $4d6b: $0c
	ld [bc], a                                       ; $4d6c: $02
	jr nc, jr_032_4d7b                               ; $4d6d: $30 $0c

	sub [hl]                                         ; $4d6f: $96
	ld b, $02                                        ; $4d70: $06 $02
	cpl                                              ; $4d72: $2f
	ld b, $b1                                        ; $4d73: $06 $b1
	ld h, c                                          ; $4d75: $61
	inc c                                            ; $4d76: $0c
	inc b                                            ; $4d77: $04
	ld h, $0c                                        ; $4d78: $26 $0c
	or c                                             ; $4d7a: $b1

jr_032_4d7b:
	ld sp, $0000                                     ; $4d7b: $31 $00 $00
	ld h, $06                                        ; $4d7e: $26 $06
	or l                                             ; $4d80: $b5
	add c                                            ; $4d81: $81
	inc bc                                           ; $4d82: $03
	ld b, $02                                        ; $4d83: $06 $02
	cp [hl]                                          ; $4d85: $be
	ld b, $1f                                        ; $4d86: $06 $1f
	inc hl                                           ; $4d88: $23
	ld h, $2b                                        ; $4d89: $26 $2b
	ld h, $23                                        ; $4d8b: $26 $23
	rra                                              ; $4d8d: $1f
	cp [hl]                                          ; $4d8e: $be
	or c                                             ; $4d8f: $b1
	sub c                                            ; $4d90: $91
	inc c                                            ; $4d91: $0c
	ld [bc], a                                       ; $4d92: $02
	inc h                                            ; $4d93: $24
	inc c                                            ; $4d94: $0c
	sub [hl]                                         ; $4d95: $96
	ld b, $02                                        ; $4d96: $06 $02
	add hl, hl                                       ; $4d98: $29
	ld b, $96                                        ; $4d99: $06 $96
	inc c                                            ; $4d9b: $0c
	ld [bc], a                                       ; $4d9c: $02
	ld l, $0c                                        ; $4d9d: $2e $0c
	sub [hl]                                         ; $4d9f: $96
	ld b, $02                                        ; $4da0: $06 $02
	dec l                                            ; $4da2: $2d
	ld b, $96                                        ; $4da3: $06 $96
	inc c                                            ; $4da5: $0c
	inc bc                                           ; $4da6: $03
	inc h                                            ; $4da7: $24
	inc c                                            ; $4da8: $0c
	or c                                             ; $4da9: $b1
	ld b, c                                          ; $4daa: $41
	nop                                              ; $4dab: $00
	nop                                              ; $4dac: $00
	inc h                                            ; $4dad: $24
	ld b, $b5                                        ; $4dae: $06 $b5
	add c                                            ; $4db0: $81
	inc bc                                           ; $4db1: $03
	ld b, $03                                        ; $4db2: $06 $03
	cp [hl]                                          ; $4db4: $be
	ld b, $1d                                        ; $4db5: $06 $1d
	ld hl, $2924                                     ; $4db7: $21 $24 $29
	inc h                                            ; $4dba: $24
	ld hl, $be1d                                     ; $4dbb: $21 $1d $be
	or c                                             ; $4dbe: $b1
	sub c                                            ; $4dbf: $91
	inc c                                            ; $4dc0: $0c
	ld [bc], a                                       ; $4dc1: $02
	ld [hl+], a                                      ; $4dc2: $22
	inc c                                            ; $4dc3: $0c
	sub [hl]                                         ; $4dc4: $96
	ld b, $02                                        ; $4dc5: $06 $02
	daa                                              ; $4dc7: $27
	ld b, $96                                        ; $4dc8: $06 $96
	inc c                                            ; $4dca: $0c
	ld [bc], a                                       ; $4dcb: $02
	inc l                                            ; $4dcc: $2c
	inc c                                            ; $4dcd: $0c
	sub [hl]                                         ; $4dce: $96
	ld b, $02                                        ; $4dcf: $06 $02
	dec hl                                           ; $4dd1: $2b
	ld b, $96                                        ; $4dd2: $06 $96
	inc c                                            ; $4dd4: $0c
	inc b                                            ; $4dd5: $04
	ld [hl+], a                                      ; $4dd6: $22
	inc c                                            ; $4dd7: $0c
	or c                                             ; $4dd8: $b1
	ld b, c                                          ; $4dd9: $41
	nop                                              ; $4dda: $00
	nop                                              ; $4ddb: $00
	ld [hl+], a                                      ; $4ddc: $22
	ld b, $b5                                        ; $4ddd: $06 $b5
	sub c                                            ; $4ddf: $91
	inc bc                                           ; $4de0: $03
	ld b, $02                                        ; $4de1: $06 $02
	cp [hl]                                          ; $4de3: $be
	ld b, $1b                                        ; $4de4: $06 $1b
	rra                                              ; $4de6: $1f
	ld [hl+], a                                      ; $4de7: $22
	daa                                              ; $4de8: $27
	ld [hl+], a                                      ; $4de9: $22
	rra                                              ; $4dea: $1f
	dec de                                           ; $4deb: $1b
	cp [hl]                                          ; $4dec: $be
	or l                                             ; $4ded: $b5
	sub c                                            ; $4dee: $91
	ld [bc], a                                       ; $4def: $02
	inc c                                            ; $4df0: $0c
	ld [bc], a                                       ; $4df1: $02
	ld [hl+], a                                      ; $4df2: $22
	inc c                                            ; $4df3: $0c
	sub [hl]                                         ; $4df4: $96
	ld b, $02                                        ; $4df5: $06 $02
	jr nz, jr_032_4dff                               ; $4df7: $20 $06

	sub [hl]                                         ; $4df9: $96
	inc c                                            ; $4dfa: $0c
	ld [bc], a                                       ; $4dfb: $02
	dec h                                            ; $4dfc: $25
	inc c                                            ; $4dfd: $0c
	or c                                             ; $4dfe: $b1

jr_032_4dff:
	ld sp, $0000                                     ; $4dff: $31 $00 $00
	dec h                                            ; $4e02: $25
	ld b, $b1                                        ; $4e03: $06 $b1
	ld h, c                                          ; $4e05: $61
	inc c                                            ; $4e06: $0c
	inc b                                            ; $4e07: $04
	jr nz, jr_032_4e16                               ; $4e08: $20 $0c

	or l                                             ; $4e0a: $b5
	add c                                            ; $4e0b: $81
	inc bc                                           ; $4e0c: $03
	ld b, $02                                        ; $4e0d: $06 $02
	cp [hl]                                          ; $4e0f: $be
	ld b, $1b                                        ; $4e10: $06 $1b
	ld e, $22                                        ; $4e12: $1e $22
	dec h                                            ; $4e14: $25
	cp [hl]                                          ; $4e15: $be

jr_032_4e16:
	ret                                              ; $4e16: $c9


	cp [hl]                                          ; $4e17: $be
	ld b, $24                                        ; $4e18: $06 $24
	daa                                              ; $4e1a: $27
	ld a, [hl+]                                      ; $4e1b: $2a
	inc l                                            ; $4e1c: $2c
	cp [hl]                                          ; $4e1d: $be
	cp $ff                                           ; $4e1e: $fe $ff
	or [hl]                                          ; $4e20: $b6
	ld [hl], e                                       ; $4e21: $73
	sub c                                            ; $4e22: $91
	ld [bc], a                                       ; $4e23: $02
	ld [de], a                                       ; $4e24: $12
	ld [bc], a                                       ; $4e25: $02
	jr z, @+$14                                      ; $4e26: $28 $12

	jr z, jr_032_4e3c                                ; $4e28: $28 $12

	or c                                             ; $4e2a: $b1
	and c                                            ; $4e2b: $a1
	inc c                                            ; $4e2c: $0c
	ld [bc], a                                       ; $4e2d: $02
	ld a, [hl+]                                      ; $4e2e: $2a
	inc c                                            ; $4e2f: $0c
	or c                                             ; $4e30: $b1
	or c                                             ; $4e31: $b1
	ld [de], a                                       ; $4e32: $12
	ld [bc], a                                       ; $4e33: $02
	daa                                              ; $4e34: $27
	ld [de], a                                       ; $4e35: $12

jr_032_4e36:
	daa                                              ; $4e36: $27
	ld [de], a                                       ; $4e37: $12
	jp z, $0c2a                                      ; $4e38: $ca $2a $0c

	or c                                             ; $4e3b: $b1

jr_032_4e3c:
	sub c                                            ; $4e3c: $91
	ld [de], a                                       ; $4e3d: $12
	ld [bc], a                                       ; $4e3e: $02
	jr z, jr_032_4e53                                ; $4e3f: $28 $12

	jr z, jr_032_4e55                                ; $4e41: $28 $12

	or c                                             ; $4e43: $b1
	sub c                                            ; $4e44: $91
	inc c                                            ; $4e45: $0c
	ld [bc], a                                       ; $4e46: $02
	inc l                                            ; $4e47: $2c
	inc c                                            ; $4e48: $0c
	or c                                             ; $4e49: $b1
	sub c                                            ; $4e4a: $91
	rst $38                                          ; $4e4b: $ff
	inc bc                                           ; $4e4c: $03
	ld a, [hl+]                                      ; $4e4d: $2a
	ld [de], a                                       ; $4e4e: $12
	or c                                             ; $4e4f: $b1
	and c                                            ; $4e50: $a1
	rst $38                                          ; $4e51: $ff
	ld [bc], a                                       ; $4e52: $02

jr_032_4e53:
	daa                                              ; $4e53: $27
	ld [de], a                                       ; $4e54: $12

jr_032_4e55:
	sub [hl]                                         ; $4e55: $96
	inc c                                            ; $4e56: $0c
	ld [bc], a                                       ; $4e57: $02
	inc hl                                           ; $4e58: $23
	inc c                                            ; $4e59: $0c
	sub [hl]                                         ; $4e5a: $96
	ld [de], a                                       ; $4e5b: $12
	ld [bc], a                                       ; $4e5c: $02
	jr z, jr_032_4e71                                ; $4e5d: $28 $12

	jr z, jr_032_4e73                                ; $4e5f: $28 $12

	or c                                             ; $4e61: $b1
	sub c                                            ; $4e62: $91
	inc c                                            ; $4e63: $0c
	ld [bc], a                                       ; $4e64: $02
	ld a, [hl+]                                      ; $4e65: $2a
	inc c                                            ; $4e66: $0c
	or c                                             ; $4e67: $b1
	and c                                            ; $4e68: $a1
	ld [de], a                                       ; $4e69: $12
	ld [bc], a                                       ; $4e6a: $02
	daa                                              ; $4e6b: $27
	ld [de], a                                       ; $4e6c: $12
	daa                                              ; $4e6d: $27
	ld [de], a                                       ; $4e6e: $12
	or c                                             ; $4e6f: $b1
	sub c                                            ; $4e70: $91

jr_032_4e71:
	inc c                                            ; $4e71: $0c
	ld [bc], a                                       ; $4e72: $02

jr_032_4e73:
	ld a, [hl+]                                      ; $4e73: $2a
	inc c                                            ; $4e74: $0c
	or c                                             ; $4e75: $b1
	or c                                             ; $4e76: $b1
	ld [de], a                                       ; $4e77: $12
	ld [bc], a                                       ; $4e78: $02
	jr z, jr_032_4e8d                                ; $4e79: $28 $12

	jp z, $122c                                      ; $4e7b: $ca $2c $12

	or c                                             ; $4e7e: $b1
	add c                                            ; $4e7f: $81
	rst $38                                          ; $4e80: $ff
	rlca                                             ; $4e81: $07
	ld a, [hl+]                                      ; $4e82: $2a
	jr jr_032_4e36                                   ; $4e83: $18 $b1

	ld [hl], c                                       ; $4e85: $71
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	ld a, [hl+]                                      ; $4e88: $2a
	inc c                                            ; $4e89: $0c
	jp $0c2a                                         ; $4e8a: $c3 $2a $0c


jr_032_4e8d:
	sub [hl]                                         ; $4e8d: $96
	nop                                              ; $4e8e: $00
	nop                                              ; $4e8f: $00
	sub a                                            ; $4e90: $97
	ld e, e                                          ; $4e91: $5b
	inc [hl]                                         ; $4e92: $34
	ld b, $33                                        ; $4e93: $06 $33
	ld b, $fe                                        ; $4e95: $06 $fe
	sub a                                            ; $4e97: $97
	nop                                              ; $4e98: $00
	jp nz, $3392                                     ; $4e99: $c2 $92 $33

	ld b, $97                                        ; $4e9c: $06 $97
	ld l, d                                          ; $4e9e: $6a
	cpl                                              ; $4e9f: $2f
	ld b, $97                                        ; $4ea0: $06 $97
	nop                                              ; $4ea2: $00
	pop bc                                           ; $4ea3: $c1
	cpl                                              ; $4ea4: $2f
	ld b, $97                                        ; $4ea5: $06 $97
	ld l, d                                          ; $4ea7: $6a
	ld a, [hl+]                                      ; $4ea8: $2a
	ld b, $97                                        ; $4ea9: $06 $97
	nop                                              ; $4eab: $00
	pop bc                                           ; $4eac: $c1
	ld a, [hl+]                                      ; $4ead: $2a
	ld b, $97                                        ; $4eae: $06 $97
	ld l, d                                          ; $4eb0: $6a
	jr z, jr_032_4eb9                                ; $4eb1: $28 $06

	sub a                                            ; $4eb3: $97
	nop                                              ; $4eb4: $00
	pop bc                                           ; $4eb5: $c1
	jr z, jr_032_4ebe                                ; $4eb6: $28 $06

	sub a                                            ; $4eb8: $97

jr_032_4eb9:
	ld l, d                                          ; $4eb9: $6a
	daa                                              ; $4eba: $27
	ld b, $97                                        ; $4ebb: $06 $97
	ld a, a                                          ; $4ebd: $7f

jr_032_4ebe:
	inc hl                                           ; $4ebe: $23
	inc c                                            ; $4ebf: $0c
	sub a                                            ; $4ec0: $97
	ld e, a                                          ; $4ec1: $5f
	cpl                                              ; $4ec2: $2f
	ld [de], a                                       ; $4ec3: $12
	sub a                                            ; $4ec4: $97
	nop                                              ; $4ec5: $00
	pop bc                                           ; $4ec6: $c1
	cpl                                              ; $4ec7: $2f
	ld b, $97                                        ; $4ec8: $06 $97
	ld l, d                                          ; $4eca: $6a
	cpl                                              ; $4ecb: $2f
	ld b, $2d                                        ; $4ecc: $06 $2d
	ld b, $97                                        ; $4ece: $06 $97
	nop                                              ; $4ed0: $00
	pop bc                                           ; $4ed1: $c1
	dec l                                            ; $4ed2: $2d
	ld b, $97                                        ; $4ed3: $06 $97
	ld l, d                                          ; $4ed5: $6a
	inc l                                            ; $4ed6: $2c
	ld b, $97                                        ; $4ed7: $06 $97
	nop                                              ; $4ed9: $00
	pop bc                                           ; $4eda: $c1
	inc l                                            ; $4edb: $2c
	ld b, $97                                        ; $4edc: $06 $97
	ld l, d                                          ; $4ede: $6a
	jr z, jr_032_4ee7                                ; $4edf: $28 $06

	sub a                                            ; $4ee1: $97
	nop                                              ; $4ee2: $00
	pop bc                                           ; $4ee3: $c1
	jr z, jr_032_4eec                                ; $4ee4: $28 $06

	sub a                                            ; $4ee6: $97

jr_032_4ee7:
	ld l, d                                          ; $4ee7: $6a
	inc hl                                           ; $4ee8: $23
	ld b, $97                                        ; $4ee9: $06 $97
	nop                                              ; $4eeb: $00

jr_032_4eec:
	pop bc                                           ; $4eec: $c1
	inc hl                                           ; $4eed: $23
	ld b, $97                                        ; $4eee: $06 $97
	ld l, d                                          ; $4ef0: $6a
	ld hl, $9706                                     ; $4ef1: $21 $06 $97
	ld a, [hl]                                       ; $4ef4: $7e
	jr nz, jr_032_4f03                               ; $4ef5: $20 $0c

	sub a                                            ; $4ef7: $97
	ld l, l                                          ; $4ef8: $6d
	jr z, jr_032_4f0d                                ; $4ef9: $28 $12

	sub a                                            ; $4efb: $97
	nop                                              ; $4efc: $00
	jp nz, $0628                                     ; $4efd: $c2 $28 $06

	sub a                                            ; $4f00: $97
	ld l, d                                          ; $4f01: $6a
	inc [hl]                                         ; $4f02: $34

jr_032_4f03:
	ld b, $33                                        ; $4f03: $06 $33
	ld b, $97                                        ; $4f05: $06 $97
	nop                                              ; $4f07: $00
	pop bc                                           ; $4f08: $c1
	inc sp                                           ; $4f09: $33
	ld b, $97                                        ; $4f0a: $06 $97
	ld l, d                                          ; $4f0c: $6a

jr_032_4f0d:
	cpl                                              ; $4f0d: $2f
	ld b, $97                                        ; $4f0e: $06 $97
	nop                                              ; $4f10: $00
	pop bc                                           ; $4f11: $c1
	cpl                                              ; $4f12: $2f
	ld b, $97                                        ; $4f13: $06 $97
	ld l, d                                          ; $4f15: $6a
	ld a, [hl+]                                      ; $4f16: $2a
	ld b, $97                                        ; $4f17: $06 $97
	nop                                              ; $4f19: $00
	pop bc                                           ; $4f1a: $c1
	ld a, [hl+]                                      ; $4f1b: $2a
	ld b, $97                                        ; $4f1c: $06 $97
	ld l, d                                          ; $4f1e: $6a
	jr z, jr_032_4f27                                ; $4f1f: $28 $06

	sub a                                            ; $4f21: $97
	nop                                              ; $4f22: $00
	pop bc                                           ; $4f23: $c1
	jr z, jr_032_4f2c                                ; $4f24: $28 $06

	sub a                                            ; $4f26: $97

jr_032_4f27:
	ld l, d                                          ; $4f27: $6a
	daa                                              ; $4f28: $27
	ld b, $97                                        ; $4f29: $06 $97
	ld l, [hl]                                       ; $4f2b: $6e

jr_032_4f2c:
	inc hl                                           ; $4f2c: $23
	inc c                                            ; $4f2d: $0c
	sub a                                            ; $4f2e: $97
	ld l, [hl]                                       ; $4f2f: $6e
	cpl                                              ; $4f30: $2f
	ld [de], a                                       ; $4f31: $12
	sub a                                            ; $4f32: $97
	nop                                              ; $4f33: $00
	pop bc                                           ; $4f34: $c1
	cpl                                              ; $4f35: $2f
	ld b, $97                                        ; $4f36: $06 $97
	ld l, d                                          ; $4f38: $6a
	cpl                                              ; $4f39: $2f
	ld b, $2d                                        ; $4f3a: $06 $2d
	ld b, $97                                        ; $4f3c: $06 $97
	nop                                              ; $4f3e: $00
	pop bc                                           ; $4f3f: $c1
	dec l                                            ; $4f40: $2d
	ld b, $97                                        ; $4f41: $06 $97
	ld l, d                                          ; $4f43: $6a
	inc l                                            ; $4f44: $2c
	ld b, $97                                        ; $4f45: $06 $97
	nop                                              ; $4f47: $00
	pop bc                                           ; $4f48: $c1
	inc l                                            ; $4f49: $2c
	ld b, $97                                        ; $4f4a: $06 $97
	ld l, d                                          ; $4f4c: $6a
	jr z, jr_032_4f55                                ; $4f4d: $28 $06

	sub a                                            ; $4f4f: $97
	nop                                              ; $4f50: $00
	pop bc                                           ; $4f51: $c1
	jr z, @+$08                                      ; $4f52: $28 $06

	sub a                                            ; $4f54: $97

jr_032_4f55:
	ld l, d                                          ; $4f55: $6a
	inc hl                                           ; $4f56: $23
	ld b, $21                                        ; $4f57: $06 $21
	ld b, $20                                        ; $4f59: $06 $20
	ld b, $cc                                        ; $4f5b: $06 $cc
	sub a                                            ; $4f5d: $97
	rst $38                                          ; $4f5e: $ff
	sub [hl]                                         ; $4f5f: $96
	jr jr_032_4f69                                   ; $4f60: $18 $07

	jr nz, jr_032_4f7c                               ; $4f62: $20 $18

	jp nz, $0620                                     ; $4f64: $c2 $20 $06

	sub a                                            ; $4f67: $97
	ld l, e                                          ; $4f68: $6b

jr_032_4f69:
	sub [hl]                                         ; $4f69: $96
	nop                                              ; $4f6a: $00
	nop                                              ; $4f6b: $00
	sub e                                            ; $4f6c: $93
	inc l                                            ; $4f6d: $2c
	ld b, $2f                                        ; $4f6e: $06 $2f
	ld b, $34                                        ; $4f70: $06 $34
	ld b, $93                                        ; $4f72: $06 $93
	sub a                                            ; $4f74: $97
	ld l, d                                          ; $4f75: $6a
	inc sp                                           ; $4f76: $33
	ld b, $2f                                        ; $4f77: $06 $2f
	ld b, $97                                        ; $4f79: $06 $97
	nop                                              ; $4f7b: $00

jr_032_4f7c:
	jp nz, $062f                                     ; $4f7c: $c2 $2f $06

	sub a                                            ; $4f7f: $97
	ld l, d                                          ; $4f80: $6a
	ld a, [hl+]                                      ; $4f81: $2a
	ld b, $97                                        ; $4f82: $06 $97
	nop                                              ; $4f84: $00
	jp nz, $062a                                     ; $4f85: $c2 $2a $06

	sub a                                            ; $4f88: $97
	ld l, d                                          ; $4f89: $6a
	jr z, jr_032_4f92                                ; $4f8a: $28 $06

	sub a                                            ; $4f8c: $97
	nop                                              ; $4f8d: $00
	jp nz, $0628                                     ; $4f8e: $c2 $28 $06

	sub a                                            ; $4f91: $97

jr_032_4f92:
	ld l, d                                          ; $4f92: $6a
	daa                                              ; $4f93: $27
	ld b, $97                                        ; $4f94: $06 $97
	ld a, e                                          ; $4f96: $7b
	inc hl                                           ; $4f97: $23
	inc c                                            ; $4f98: $0c
	sub a                                            ; $4f99: $97
	ld l, l                                          ; $4f9a: $6d
	cpl                                              ; $4f9b: $2f
	ld c, $97                                        ; $4f9c: $0e $97
	nop                                              ; $4f9e: $00
	call nz, $042f                                   ; $4f9f: $c4 $2f $04
	sub a                                            ; $4fa2: $97
	ld l, d                                          ; $4fa3: $6a
	jr z, jr_032_4fac                                ; $4fa4: $28 $06

	inc l                                            ; $4fa6: $2c
	ld b, $2f                                        ; $4fa7: $06 $2f
	ld b, $97                                        ; $4fa9: $06 $97
	ld l, d                                          ; $4fab: $6a

jr_032_4fac:
	dec l                                            ; $4fac: $2d
	ld b, $2c                                        ; $4fad: $06 $2c
	ld b, $97                                        ; $4faf: $06 $97
	nop                                              ; $4fb1: $00
	jp nz, $062c                                     ; $4fb2: $c2 $2c $06

	sub a                                            ; $4fb5: $97
	ld l, d                                          ; $4fb6: $6a
	jr z, jr_032_4fbf                                ; $4fb7: $28 $06

	sub a                                            ; $4fb9: $97
	nop                                              ; $4fba: $00
	jp nz, $0628                                     ; $4fbb: $c2 $28 $06

	sub a                                            ; $4fbe: $97

jr_032_4fbf:
	ld l, d                                          ; $4fbf: $6a
	inc hl                                           ; $4fc0: $23
	ld b, $97                                        ; $4fc1: $06 $97
	nop                                              ; $4fc3: $00
	jp nz, $0623                                     ; $4fc4: $c2 $23 $06

	sub a                                            ; $4fc7: $97
	ld l, d                                          ; $4fc8: $6a
	ld hl, $9706                                     ; $4fc9: $21 $06 $97
	ld l, e                                          ; $4fcc: $6b
	jr nz, jr_032_4fdb                               ; $4fcd: $20 $0c

	sub a                                            ; $4fcf: $97
	ld e, l                                          ; $4fd0: $5d
	jr z, jr_032_4fe1                                ; $4fd1: $28 $0e

	sub a                                            ; $4fd3: $97
	nop                                              ; $4fd4: $00
	call nz, $0428                                   ; $4fd5: $c4 $28 $04
	sub a                                            ; $4fd8: $97
	ld e, d                                          ; $4fd9: $5a
	inc l                                            ; $4fda: $2c

jr_032_4fdb:
	ld b, $2f                                        ; $4fdb: $06 $2f
	ld b, $34                                        ; $4fdd: $06 $34
	ld b, $97                                        ; $4fdf: $06 $97

jr_032_4fe1:
	ld l, d                                          ; $4fe1: $6a
	inc sp                                           ; $4fe2: $33
	ld b, $2f                                        ; $4fe3: $06 $2f
	ld b, $97                                        ; $4fe5: $06 $97
	nop                                              ; $4fe7: $00
	jp nz, $062f                                     ; $4fe8: $c2 $2f $06

	sub a                                            ; $4feb: $97
	ld l, d                                          ; $4fec: $6a
	ld a, [hl+]                                      ; $4fed: $2a
	ld b, $97                                        ; $4fee: $06 $97
	nop                                              ; $4ff0: $00
	jp nz, $062a                                     ; $4ff1: $c2 $2a $06

	sub a                                            ; $4ff4: $97
	ld l, d                                          ; $4ff5: $6a
	jr z, jr_032_4ffe                                ; $4ff6: $28 $06

	sub a                                            ; $4ff8: $97
	nop                                              ; $4ff9: $00
	jp nz, $0628                                     ; $4ffa: $c2 $28 $06

	sub a                                            ; $4ffd: $97

jr_032_4ffe:
	ld l, d                                          ; $4ffe: $6a
	daa                                              ; $4fff: $27
	ld b, $97                                        ; $5000: $06 $97
	ld l, l                                          ; $5002: $6d
	inc hl                                           ; $5003: $23
	inc c                                            ; $5004: $0c
	sub a                                            ; $5005: $97
	ld c, l                                          ; $5006: $4d
	cpl                                              ; $5007: $2f
	ld c, $97                                        ; $5008: $0e $97
	nop                                              ; $500a: $00
	jp nz, $042f                                     ; $500b: $c2 $2f $04

	sub a                                            ; $500e: $97
	ld e, e                                          ; $500f: $5b
	jr z, jr_032_5018                                ; $5010: $28 $06

	inc l                                            ; $5012: $2c
	ld b, $2f                                        ; $5013: $06 $2f
	ld b, $97                                        ; $5015: $06 $97
	ld l, d                                          ; $5017: $6a

jr_032_5018:
	dec l                                            ; $5018: $2d
	ld b, $2c                                        ; $5019: $06 $2c
	ld b, $97                                        ; $501b: $06 $97
	nop                                              ; $501d: $00
	jp nz, $062c                                     ; $501e: $c2 $2c $06

	sub a                                            ; $5021: $97
	ld l, d                                          ; $5022: $6a
	jr z, jr_032_502b                                ; $5023: $28 $06

	sub a                                            ; $5025: $97
	nop                                              ; $5026: $00
	jp nz, $0628                                     ; $5027: $c2 $28 $06

	sub a                                            ; $502a: $97

jr_032_502b:
	ld l, d                                          ; $502b: $6a
	dec h                                            ; $502c: $25
	ld b, $c8                                        ; $502d: $06 $c8
	sub a                                            ; $502f: $97
	nop                                              ; $5030: $00
	jr z, jr_032_5057                                ; $5031: $28 $24

	jp nz, $0c28                                     ; $5033: $c2 $28 $0c

	or l                                             ; $5036: $b5
	ld [hl], c                                       ; $5037: $71
	ld [bc], a                                       ; $5038: $02
	rst $38                                          ; $5039: $ff
	inc bc                                           ; $503a: $03
	ld a, [hl]                                       ; $503b: $7e
	dec b                                            ; $503c: $05
	nop                                              ; $503d: $00
	xor c                                            ; $503e: $a9
	jr z, jr_032_5047                                ; $503f: $28 $06

	ld a, [hl+]                                      ; $5041: $2a
	ld b, $b5                                        ; $5042: $06 $b5
	sub c                                            ; $5044: $91
	ld [bc], a                                       ; $5045: $02
	rst $38                                          ; $5046: $ff

jr_032_5047:
	inc bc                                           ; $5047: $03
	ld a, [hl]                                       ; $5048: $7e
	dec b                                            ; $5049: $05
	nop                                              ; $504a: $00
	xor d                                            ; $504b: $aa
	dec hl                                           ; $504c: $2b
	inc c                                            ; $504d: $0c

jr_032_504e:
	sub [hl]                                         ; $504e: $96
	ld b, $01                                        ; $504f: $06 $01
	dec l                                            ; $5051: $2d
	ld b, $b1                                        ; $5052: $06 $b1
	add c                                            ; $5054: $81
	inc c                                            ; $5055: $0c
	inc b                                            ; $5056: $04

jr_032_5057:
	jr z, jr_032_5065                                ; $5057: $28 $0c

	or c                                             ; $5059: $b1
	sub c                                            ; $505a: $91
	ld b, $01                                        ; $505b: $06 $01
	ld a, [hl+]                                      ; $505d: $2a
	ld b, $7e                                        ; $505e: $06 $7e
	dec b                                            ; $5060: $05
	nop                                              ; $5061: $00
	xor e                                            ; $5062: $ab
	ld a, l                                          ; $5063: $7d
	ld a, [bc]                                       ; $5064: $0a

jr_032_5065:
	sub [hl]                                         ; $5065: $96
	jr jr_032_506c                                   ; $5066: $18 $04

	ld a, [hl+]                                      ; $5068: $2a
	jr @-$4d                                         ; $5069: $18 $b1

	and c                                            ; $506b: $a1

jr_032_506c:
	ld [de], a                                       ; $506c: $12
	ld b, $7d                                        ; $506d: $06 $7d
	nop                                              ; $506f: $00
	ld h, $12                                        ; $5070: $26 $12
	ld a, [hl]                                       ; $5072: $7e
	nop                                              ; $5073: $00
	jp nz, $0626                                     ; $5074: $c2 $26 $06

	or c                                             ; $5077: $b1
	and c                                            ; $5078: $a1
	ld b, $01                                        ; $5079: $06 $01
	ld a, [hl]                                       ; $507b: $7e
	dec b                                            ; $507c: $05
	nop                                              ; $507d: $00
	xor d                                            ; $507e: $aa
	ld h, $06                                        ; $507f: $26 $06
	jr z, jr_032_5089                                ; $5081: $28 $06

	sub [hl]                                         ; $5083: $96
	inc c                                            ; $5084: $0c
	inc bc                                           ; $5085: $03
	add hl, hl                                       ; $5086: $29
	inc c                                            ; $5087: $0c
	sub [hl]                                         ; $5088: $96

jr_032_5089:
	ld b, $01                                        ; $5089: $06 $01
	dec hl                                           ; $508b: $2b
	ld b, $96                                        ; $508c: $06 $96
	inc c                                            ; $508e: $0c
	inc bc                                           ; $508f: $03
	ld h, $0c                                        ; $5090: $26 $0c
	sub [hl]                                         ; $5092: $96
	ld b, $01                                        ; $5093: $06 $01
	jr z, jr_032_509d                                ; $5095: $28 $06

	sub [hl]                                         ; $5097: $96
	jr jr_032_509e                                   ; $5098: $18 $04

	add hl, hl                                       ; $509a: $29
	jr jr_032_504e                                   ; $509b: $18 $b1

jr_032_509d:
	sub c                                            ; $509d: $91

jr_032_509e:
	ld [de], a                                       ; $509e: $12
	dec b                                            ; $509f: $05
	ld a, [hl]                                       ; $50a0: $7e
	dec b                                            ; $50a1: $05
	nop                                              ; $50a2: $00
	xor d                                            ; $50a3: $aa
	jr nc, jr_032_50b2                               ; $50a4: $30 $0c

	jp $007e                                         ; $50a6: $c3 $7e $00


	sub [hl]                                         ; $50a9: $96
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	jr nc, @+$0e                                     ; $50ac: $30 $0c

	jp z, $057e                                      ; $50ae: $ca $7e $05

	nop                                              ; $50b1: $00

jr_032_50b2:
	xor d                                            ; $50b2: $aa
	sub [hl]                                         ; $50b3: $96
	ld b, $01                                        ; $50b4: $06 $01
	jr nc, jr_032_50be                               ; $50b6: $30 $06

	ld [hl-], a                                      ; $50b8: $32
	ld b, $96                                        ; $50b9: $06 $96
	inc c                                            ; $50bb: $0c
	ld [bc], a                                       ; $50bc: $02
	inc sp                                           ; $50bd: $33

jr_032_50be:
	inc c                                            ; $50be: $0c
	sub [hl]                                         ; $50bf: $96
	ld b, $01                                        ; $50c0: $06 $01
	dec [hl]                                         ; $50c2: $35
	ld b, $b1                                        ; $50c3: $06 $b1
	ld [hl], c                                       ; $50c5: $71
	inc c                                            ; $50c6: $0c
	inc bc                                           ; $50c7: $03
	jr nc, jr_032_50d6                               ; $50c8: $30 $0c

	sub [hl]                                         ; $50ca: $96
	ld b, $01                                        ; $50cb: $06 $01
	ld [hl-], a                                      ; $50cd: $32
	ld b, $b1                                        ; $50ce: $06 $b1
	sub c                                            ; $50d0: $91
	jr jr_032_50d7                                   ; $50d1: $18 $04

	inc sp                                           ; $50d3: $33
	jr jr_032_506c                                   ; $50d4: $18 $96

jr_032_50d6:
	ld [de], a                                       ; $50d6: $12

jr_032_50d7:
	dec b                                            ; $50d7: $05
	ld l, $12                                        ; $50d8: $2e $12
	ld a, [hl]                                       ; $50da: $7e
	nop                                              ; $50db: $00
	jp nz, $062e                                     ; $50dc: $c2 $2e $06

	or c                                             ; $50df: $b1
	pop bc                                           ; $50e0: $c1
	ld b, $02                                        ; $50e1: $06 $02
	ld l, $06                                        ; $50e3: $2e $06
	jr nc, jr_032_50ed                               ; $50e5: $30 $06

	or l                                             ; $50e7: $b5
	and c                                            ; $50e8: $a1
	ld [bc], a                                       ; $50e9: $02
	inc c                                            ; $50ea: $0c
	inc b                                            ; $50eb: $04
	ld a, [hl]                                       ; $50ec: $7e

jr_032_50ed:
	dec b                                            ; $50ed: $05
	nop                                              ; $50ee: $00
	xor d                                            ; $50ef: $aa
	ld sp, $960c                                     ; $50f0: $31 $0c $96
	ld b, $02                                        ; $50f3: $06 $02
	inc sp                                           ; $50f5: $33
	ld b, $96                                        ; $50f6: $06 $96
	inc c                                            ; $50f8: $0c
	dec b                                            ; $50f9: $05
	ld l, $0c                                        ; $50fa: $2e $0c
	sub [hl]                                         ; $50fc: $96
	ld [de], a                                       ; $50fd: $12
	inc b                                            ; $50fe: $04
	jr nc, jr_032_5113                               ; $50ff: $30 $12

	sub [hl]                                         ; $5101: $96
	jr jr_032_5109                                   ; $5102: $18 $05

	ld sp, $c318                                     ; $5104: $31 $18 $c3
	ld a, [hl]                                       ; $5107: $7e
	nop                                              ; $5108: $00

jr_032_5109:
	sub [hl]                                         ; $5109: $96
	inc c                                            ; $510a: $0c
	ld b, $31                                        ; $510b: $06 $31
	inc c                                            ; $510d: $0c
	sub [hl]                                         ; $510e: $96
	nop                                              ; $510f: $00
	nop                                              ; $5110: $00
	sub d                                            ; $5111: $92
	sub a                                            ; $5112: $97

jr_032_5113:
	ld e, e                                          ; $5113: $5b
	inc [hl]                                         ; $5114: $34
	ld b, $33                                        ; $5115: $06 $33
	ld b, $fe                                        ; $5117: $06 $fe
	rst $38                                          ; $5119: $ff
	or h                                             ; $511a: $b4
	ld [hl], e                                       ; $511b: $73
	ld hl, $1522                                     ; $511c: $21 $22 $15
	ld d, $c4                                        ; $511f: $16 $c4
	dec d                                            ; $5121: $15
	ld [bc], a                                       ; $5122: $02
	add a                                            ; $5123: $87
	jp nz, $1621                                     ; $5124: $c2 $21 $16

	call nz, $0221                                   ; $5127: $c4 $21 $02
	ld a, a                                          ; $512a: $7f
	ld [hl+], a                                      ; $512b: $22
	jp nz, $1614                                     ; $512c: $c2 $14 $16

	call nz, $0214                                   ; $512f: $c4 $14 $02
	add a                                            ; $5132: $87
	jp nz, $1620                                     ; $5133: $c2 $20 $16

	call nz, $0220                                   ; $5136: $c4 $20 $02
	ld a, a                                          ; $5139: $7f
	ld [hl+], a                                      ; $513a: $22
	jp nz, $1612                                     ; $513b: $c2 $12 $16

	call nz, $0212                                   ; $513e: $c4 $12 $02
	add a                                            ; $5141: $87
	jp nz, $161e                                     ; $5142: $c2 $1e $16

	call nz, $021e                                   ; $5145: $c4 $1e $02
	ld a, a                                          ; $5148: $7f
	ld [hl+], a                                      ; $5149: $22
	jp nz, $0610                                     ; $514a: $c2 $10 $06

	call nz, $0610                                   ; $514d: $c4 $10 $06
	jp nz, $0517                                     ; $5150: $c2 $17 $05

	nop                                              ; $5153: $00
	ld bc, $2087                                     ; $5154: $01 $87 $20
	db $10                                           ; $5157: $10
	call nz, $0220                                   ; $5158: $c4 $20 $02
	jp nz, $0a1c                                     ; $515b: $c2 $1c $0a

	call nz, $021c                                   ; $515e: $c4 $1c $02
	ld a, a                                          ; $5161: $7f
	ld [hl+], a                                      ; $5162: $22
	jp nz, $0715                                     ; $5163: $c2 $15 $07

	call nz, $0415                                   ; $5166: $c4 $15 $04
	nop                                              ; $5169: $00
	ld bc, $15c2                                     ; $516a: $01 $c2 $15
	dec b                                            ; $516d: $05
	call nz, $0115                                   ; $516e: $c4 $15 $01
	add a                                            ; $5171: $87
	jp nz, $1c21                                     ; $5172: $c2 $21 $1c

	call nz, $0221                                   ; $5175: $c4 $21 $02
	ld a, a                                          ; $5178: $7f

jr_032_5179:
	ld [hl+], a                                      ; $5179: $22
	jp nz, $0614                                     ; $517a: $c2 $14 $06

	call nz, $0514                                   ; $517d: $c4 $14 $05
	nop                                              ; $5180: $00
	ld bc, $14c2                                     ; $5181: $01 $c2 $14
	dec b                                            ; $5184: $05
	call nz, $0114                                   ; $5185: $c4 $14 $01
	add a                                            ; $5188: $87
	jp nz, $1c20                                     ; $5189: $c2 $20 $1c

	call nz, $0220                                   ; $518c: $c4 $20 $02
	ld a, a                                          ; $518f: $7f
	ld [hl+], a                                      ; $5190: $22
	jp nz, $0a12                                     ; $5191: $c2 $12 $0a

	call nz, $0212                                   ; $5194: $c4 $12 $02
	add a                                            ; $5197: $87
	jp nz, $051e                                     ; $5198: $c2 $1e $05

	call nz, $011e                                   ; $519b: $c4 $1e $01
	jp nz, $051e                                     ; $519e: $c2 $1e $05

	call nz, $011e                                   ; $51a1: $c4 $1e $01
	add $1e                                          ; $51a4: $c6 $1e
	ld b, $c2                                        ; $51a6: $06 $c2
	ld e, $05                                        ; $51a8: $1e $05
	call nz, $011e                                   ; $51aa: $c4 $1e $01
	add a                                            ; $51ad: $87
	jp nz, $02bd                                     ; $51ae: $c2 $bd $02

	rla                                              ; $51b1: $17
	inc c                                            ; $51b2: $0c
	jr jr_032_5179                                   ; $51b3: $18 $c4

	rla                                              ; $51b5: $17
	inc c                                            ; $51b6: $0c
	nop                                              ; $51b7: $00
	inc c                                            ; $51b8: $0c
	cp $c2                                           ; $51b9: $fe $c2
	ld a, a                                          ; $51bb: $7f
	ld [hl+], a                                      ; $51bc: $22
	dec d                                            ; $51bd: $15
	dec bc                                           ; $51be: $0b
	call nz, $0115                                   ; $51bf: $c4 $15 $01
	jp nz, $051c                                     ; $51c2: $c2 $1c $05

	call nz, $011c                                   ; $51c5: $c4 $1c $01
	add a                                            ; $51c8: $87
	jp nz, $1c21                                     ; $51c9: $c2 $21 $1c

	call nz, $0221                                   ; $51cc: $c4 $21 $02
	ld a, a                                          ; $51cf: $7f
	ld [hl+], a                                      ; $51d0: $22
	jp nz, $0b14                                     ; $51d1: $c2 $14 $0b

	call nz, $0114                                   ; $51d4: $c4 $14 $01
	jp nz, $051c                                     ; $51d7: $c2 $1c $05

	call nz, $011c                                   ; $51da: $c4 $1c $01
	add a                                            ; $51dd: $87
	jp nz, $1c20                                     ; $51de: $c2 $20 $1c

	call nz, $0220                                   ; $51e1: $c4 $20 $02
	ld a, a                                          ; $51e4: $7f
	ld [hl+], a                                      ; $51e5: $22
	jp nz, $0b12                                     ; $51e6: $c2 $12 $0b

	call nz, $0112                                   ; $51e9: $c4 $12 $01
	jp nz, $0519                                     ; $51ec: $c2 $19 $05

	call nz, $0119                                   ; $51ef: $c4 $19 $01
	add a                                            ; $51f2: $87
	jp nz, $1c1e                                     ; $51f3: $c2 $1e $1c

	call nz, $021e                                   ; $51f6: $c4 $1e $02
	ld a, a                                          ; $51f9: $7f
	ld [hl+], a                                      ; $51fa: $22
	jp nz, $0b10                                     ; $51fb: $c2 $10 $0b

	call nz, $0110                                   ; $51fe: $c4 $10 $01
	jp nz, $0517                                     ; $5201: $c2 $17 $05

	call nz, $0117                                   ; $5204: $c4 $17 $01
	add a                                            ; $5207: $87
	jp nz, $1120                                     ; $5208: $c2 $20 $11

	call nz, $0120                                   ; $520b: $c4 $20 $01
	jp nz, $0b1c                                     ; $520e: $c2 $1c $0b

	call nz, $011c                                   ; $5211: $c4 $1c $01
	ld a, a                                          ; $5214: $7f
	ld [hl+], a                                      ; $5215: $22
	jp nz, $0615                                     ; $5216: $c2 $15 $06

	call nz, $0615                                   ; $5219: $c4 $15 $06
	add a                                            ; $521c: $87
	jp nz, $0521                                     ; $521d: $c2 $21 $05

	call nz, $0121                                   ; $5220: $c4 $21 $01
	jp nz, $0c25                                     ; $5223: $c2 $25 $0c

	call nz, $0625                                   ; $5226: $c4 $25 $06
	jp nz, $0b25                                     ; $5229: $c2 $25 $0b

	call nz, $0125                                   ; $522c: $c4 $25 $01
	ld a, a                                          ; $522f: $7f
	ld [hl+], a                                      ; $5230: $22
	jp nz, $0b14                                     ; $5231: $c2 $14 $0b

	call nz, $0114                                   ; $5234: $c4 $14 $01
	jp nz, $2087                                     ; $5237: $c2 $87 $20

	dec b                                            ; $523a: $05
	call nz, $0120                                   ; $523b: $c4 $20 $01
	jp nz, $1c23                                     ; $523e: $c2 $23 $1c

	call nz, $0223                                   ; $5241: $c4 $23 $02
	ld a, a                                          ; $5244: $7f
	ld [hl+], a                                      ; $5245: $22
	jp nz, $0b12                                     ; $5246: $c2 $12 $0b

	call nz, $0112                                   ; $5249: $c4 $12 $01
	jp nz, $0515                                     ; $524c: $c2 $15 $05

	call nz, $0115                                   ; $524f: $c4 $15 $01
	add a                                            ; $5252: $87
	jp nz, $1c21                                     ; $5253: $c2 $21 $1c

	call nz, $0221                                   ; $5256: $c4 $21 $02
	ld a, a                                          ; $5259: $7f
	ld [hl+], a                                      ; $525a: $22
	jp nz, $0b10                                     ; $525b: $c2 $10 $0b

	call nz, $0110                                   ; $525e: $c4 $10 $01
	jp nz, $0514                                     ; $5261: $c2 $14 $05

	call nz, $0114                                   ; $5264: $c4 $14 $01
	add a                                            ; $5267: $87
	jp nz, $1020                                     ; $5268: $c2 $20 $10

	call nz, $0220                                   ; $526b: $c4 $20 $02
	jp nz, $0a1c                                     ; $526e: $c2 $1c $0a

	call nz, $021c                                   ; $5271: $c4 $1c $02
	jp nz, $227f                                     ; $5274: $c2 $7f $22

	dec d                                            ; $5277: $15
	ld b, $c4                                        ; $5278: $06 $c4
	dec d                                            ; $527a: $15
	ld b, $c2                                        ; $527b: $06 $c2
	inc e                                            ; $527d: $1c
	dec b                                            ; $527e: $05
	call nz, $011c                                   ; $527f: $c4 $1c $01
	add a                                            ; $5282: $87
	jp nz, $1c21                                     ; $5283: $c2 $21 $1c

	call nz, $0221                                   ; $5286: $c4 $21 $02
	ld a, a                                          ; $5289: $7f
	ld [hl+], a                                      ; $528a: $22
	jp nz, $0b14                                     ; $528b: $c2 $14 $0b

	call nz, $0114                                   ; $528e: $c4 $14 $01
	jp nz, $051c                                     ; $5291: $c2 $1c $05

	call nz, $011c                                   ; $5294: $c4 $1c $01
	add a                                            ; $5297: $87
	jp nz, $1c20                                     ; $5298: $c2 $20 $1c

	call nz, $0220                                   ; $529b: $c4 $20 $02
	ld a, a                                          ; $529e: $7f
	ld [hl+], a                                      ; $529f: $22
	jp nz, $0b12                                     ; $52a0: $c2 $12 $0b

	call nz, $0112                                   ; $52a3: $c4 $12 $01
	add a                                            ; $52a6: $87
	jp nz, $051e                                     ; $52a7: $c2 $1e $05

	call nz, $011e                                   ; $52aa: $c4 $1e $01
	jp nz, $1c21                                     ; $52ad: $c2 $21 $1c

	call nz, $0221                                   ; $52b0: $c4 $21 $02
	ld a, a                                          ; $52b3: $7f
	ld [hl+], a                                      ; $52b4: $22
	jp nz, $0b10                                     ; $52b5: $c2 $10 $0b

	call nz, $0110                                   ; $52b8: $c4 $10 $01
	jp nz, $0517                                     ; $52bb: $c2 $17 $05

	call nz, $0117                                   ; $52be: $c4 $17 $01
	add a                                            ; $52c1: $87
	jp nz, $1120                                     ; $52c2: $c2 $20 $11

	call nz, $0120                                   ; $52c5: $c4 $20 $01
	jp nz, $0b1c                                     ; $52c8: $c2 $1c $0b

	call nz, $011c                                   ; $52cb: $c4 $1c $01
	ld a, a                                          ; $52ce: $7f
	ld [hl+], a                                      ; $52cf: $22
	jp nz, $0615                                     ; $52d0: $c2 $15 $06

	call nz, $0615                                   ; $52d3: $c4 $15 $06
	add a                                            ; $52d6: $87
	jp nz, $0521                                     ; $52d7: $c2 $21 $05

	call nz, $0121                                   ; $52da: $c4 $21 $01
	jp nz, $0c25                                     ; $52dd: $c2 $25 $0c

	call nz, $0625                                   ; $52e0: $c4 $25 $06
	jp nz, $0b25                                     ; $52e3: $c2 $25 $0b

	call nz, $0125                                   ; $52e6: $c4 $25 $01
	ld a, a                                          ; $52e9: $7f
	ld [hl+], a                                      ; $52ea: $22
	jp nz, $0b14                                     ; $52eb: $c2 $14 $0b

	call nz, $0114                                   ; $52ee: $c4 $14 $01
	add a                                            ; $52f1: $87
	jp nz, $0520                                     ; $52f2: $c2 $20 $05

	call nz, $0120                                   ; $52f5: $c4 $20 $01
	jp nz, $1c23                                     ; $52f8: $c2 $23 $1c

	call nz, $0223                                   ; $52fb: $c4 $23 $02
	ld a, a                                          ; $52fe: $7f
	ld [hl+], a                                      ; $52ff: $22

jr_032_5300:
	jp nz, $0b12                                     ; $5300: $c2 $12 $0b

	call nz, $0112                                   ; $5303: $c4 $12 $01
	jp nz, $0512                                     ; $5306: $c2 $12 $05

	call nz, $0112                                   ; $5309: $c4 $12 $01
	add a                                            ; $530c: $87
	jp nz, $0623                                     ; $530d: $c2 $23 $06

	call nz, $0623                                   ; $5310: $c4 $23 $06
	ld a, a                                          ; $5313: $7f
	ld [hl+], a                                      ; $5314: $22
	jp nz, $0517                                     ; $5315: $c2 $17 $05

	call nz, $0117                                   ; $5318: $c4 $17 $01
	add a                                            ; $531b: $87
	jp nz, $02bd                                     ; $531c: $c2 $bd $02

	inc e                                            ; $531f: $1c
	inc c                                            ; $5320: $0c
	jr @-$3a                                         ; $5321: $18 $c4

	inc e                                            ; $5323: $1c
	ld b, $00                                        ; $5324: $06 $00
	ld [de], a                                       ; $5326: $12
	jp nz, $227f                                     ; $5327: $c2 $7f $22

	ld a, [de]                                       ; $532a: $1a
	db $10                                           ; $532b: $10
	call nz, $021a                                   ; $532c: $c4 $1a $02
	jp nz, $1018                                     ; $532f: $c2 $18 $10

	call nz, $0218                                   ; $5332: $c4 $18 $02
	jp nz, $02bd                                     ; $5335: $c2 $bd $02

	rla                                              ; $5338: $17
	inc c                                            ; $5339: $0c
	jr jr_032_5300                                   ; $533a: $18 $c4

	rla                                              ; $533c: $17
	inc c                                            ; $533d: $0c
	add $17                                          ; $533e: $c6 $17
	inc c                                            ; $5340: $0c
	jp nz, $1018                                     ; $5341: $c2 $18 $10

	call nz, $0218                                   ; $5344: $c4 $18 $02
	jp nz, $1016                                     ; $5347: $c2 $16 $10

	call nz, $0216                                   ; $534a: $c4 $16 $02
	jp nz, $02bd                                     ; $534d: $c2 $bd $02

	dec d                                            ; $5350: $15
	inc c                                            ; $5351: $0c
	ld [de], a                                       ; $5352: $12
	call nz, $0615                                   ; $5353: $c4 $15 $06
	jp nz, $121a                                     ; $5356: $c2 $1a $12

	call nz, $061a                                   ; $5359: $c4 $1a $06
	jp nz, $0b14                                     ; $535c: $c2 $14 $0b

	call nz, $0114                                   ; $535f: $c4 $14 $01
	jp nz, $0514                                     ; $5362: $c2 $14 $05

	nop                                              ; $5365: $00
	ld bc, $16c2                                     ; $5366: $01 $c2 $16
	ld b, $c4                                        ; $5369: $06 $c4
	ld d, $06                                        ; $536b: $16 $06
	jp nz, $0516                                     ; $536d: $c2 $16 $05

	nop                                              ; $5370: $00
	ld bc, $02bd                                     ; $5371: $01 $bd $02
	inc de                                           ; $5374: $13
	inc c                                            ; $5375: $0c
	ld [de], a                                       ; $5376: $12
	call nz, $0313                                   ; $5377: $c4 $13 $03
	add $13                                          ; $537a: $c6 $13
	inc bc                                           ; $537c: $03
	jp nz, $161b                                     ; $537d: $c2 $1b $16

	call nz, $021b                                   ; $5380: $c4 $1b $02
	jp nz, $227f                                     ; $5383: $c2 $7f $22

	ld [de], a                                       ; $5386: $12
	ld b, $c4                                        ; $5387: $06 $c4
	ld [de], a                                       ; $5389: $12
	ld b, $c2                                        ; $538a: $06 $c2
	add hl, de                                       ; $538c: $19
	dec b                                            ; $538d: $05
	call nz, $0119                                   ; $538e: $c4 $19 $01
	jp nz, $101e                                     ; $5391: $c2 $1e $10

	call nz, $021e                                   ; $5394: $c4 $1e $02
	jp nz, $0519                                     ; $5397: $c2 $19 $05

	call nz, $0119                                   ; $539a: $c4 $19 $01
	jp nz, $051e                                     ; $539d: $c2 $1e $05

	call nz, $011e                                   ; $53a0: $c4 $1e $01
	jp nz, $0614                                     ; $53a3: $c2 $14 $06

	call nz, $0614                                   ; $53a6: $c4 $14 $06
	jp nz, $051b                                     ; $53a9: $c2 $1b $05

	call nz, $011b                                   ; $53ac: $c4 $1b $01
	jp nz, $1020                                     ; $53af: $c2 $20 $10

	call nz, $0220                                   ; $53b2: $c4 $20 $02
	jp nz, $051b                                     ; $53b5: $c2 $1b $05

	call nz, $011b                                   ; $53b8: $c4 $1b $01
	jp nz, $0520                                     ; $53bb: $c2 $20 $05

	call nz, $0120                                   ; $53be: $c4 $20 $01
	cp $ff                                           ; $53c1: $fe $ff
	ret nc                                           ; $53c3: $d0

	ld [hl], e                                       ; $53c4: $73
	ei                                               ; $53c5: $fb
	cp [hl]                                          ; $53c6: $be
	ld b, $09                                        ; $53c7: $06 $09
	ld [de], a                                       ; $53c9: $12
	ld [de], a                                       ; $53ca: $12
	add hl, bc                                       ; $53cb: $09
	add hl, bc                                       ; $53cc: $09
	ld [de], a                                       ; $53cd: $12
	ld [de], a                                       ; $53ce: $12
	ld [de], a                                       ; $53cf: $12
	cp [hl]                                          ; $53d0: $be
	ei                                               ; $53d1: $fb
	ld b, $be                                        ; $53d2: $06 $be
	ld b, $09                                        ; $53d4: $06 $09
	ld [de], a                                       ; $53d6: $12
	ld [de], a                                       ; $53d7: $12
	add hl, bc                                       ; $53d8: $09
	ld [de], a                                       ; $53d9: $12
	ld [de], a                                       ; $53da: $12
	add hl, bc                                       ; $53db: $09
	ld [de], a                                       ; $53dc: $12
	cp [hl]                                          ; $53dd: $be
	add hl, bc                                       ; $53de: $09
	ld b, $12                                        ; $53df: $06 $12
	inc bc                                           ; $53e1: $03
	ld [de], a                                       ; $53e2: $12
	inc bc                                           ; $53e3: $03
	cp [hl]                                          ; $53e4: $be
	ld b, $12                                        ; $53e5: $06 $12
	ld [de], a                                       ; $53e7: $12
	ld [de], a                                       ; $53e8: $12
	ld [de], a                                       ; $53e9: $12
	add hl, bc                                       ; $53ea: $09
	ld [de], a                                       ; $53eb: $12
	cp [hl]                                          ; $53ec: $be
	cp $fb                                           ; $53ed: $fe $fb
	cp [hl]                                          ; $53ef: $be
	ld b, $09                                        ; $53f0: $06 $09
	ld [de], a                                       ; $53f2: $12
	ld [de], a                                       ; $53f3: $12
	add hl, bc                                       ; $53f4: $09
	ld [de], a                                       ; $53f5: $12
	ld [de], a                                       ; $53f6: $12
	ld [de], a                                       ; $53f7: $12
	ld [de], a                                       ; $53f8: $12
	cp [hl]                                          ; $53f9: $be
	cp [hl]                                          ; $53fa: $be
	ld b, $09                                        ; $53fb: $06 $09
	ld [de], a                                       ; $53fd: $12
	ld [de], a                                       ; $53fe: $12
	add hl, bc                                       ; $53ff: $09
	ld [de], a                                       ; $5400: $12
	add hl, bc                                       ; $5401: $09
	ld [de], a                                       ; $5402: $12
	ld [de], a                                       ; $5403: $12
	cp [hl]                                          ; $5404: $be
	ei                                               ; $5405: $fb
	inc bc                                           ; $5406: $03
	cp [hl]                                          ; $5407: $be
	ld b, $09                                        ; $5408: $06 $09
	ld [de], a                                       ; $540a: $12
	ld [de], a                                       ; $540b: $12
	add hl, bc                                       ; $540c: $09
	ld [de], a                                       ; $540d: $12
	ld [de], a                                       ; $540e: $12
	jr @+$14                                         ; $540f: $18 $12

	cp [hl]                                          ; $5411: $be
	add hl, bc                                       ; $5412: $09
	ld b, $09                                        ; $5413: $06 $09
	inc bc                                           ; $5415: $03
	add hl, bc                                       ; $5416: $09
	inc bc                                           ; $5417: $03
	cp [hl]                                          ; $5418: $be
	ld b, $09                                        ; $5419: $06 $09
	add hl, bc                                       ; $541b: $09
	add hl, bc                                       ; $541c: $09
	ld c, $12                                        ; $541d: $0e $12
	ld c, $be                                        ; $541f: $0e $be
	cp [hl]                                          ; $5421: $be
	ld b, $18                                        ; $5422: $06 $18
	ld c, $0e                                        ; $5424: $0e $0e
	jr jr_032_5436                                   ; $5426: $18 $0e

	ld c, $0e                                        ; $5428: $0e $0e
	inc de                                           ; $542a: $13
	cp [hl]                                          ; $542b: $be
	cp [hl]                                          ; $542c: $be
	ld b, $13                                        ; $542d: $06 $13
	ld c, $0e                                        ; $542f: $0e $0e
	inc de                                           ; $5431: $13
	ld c, $0e                                        ; $5432: $0e $0e
	ld c, $0e                                        ; $5434: $0e $0e

jr_032_5436:
	cp [hl]                                          ; $5436: $be
	cp [hl]                                          ; $5437: $be
	ld b, $0e                                        ; $5438: $06 $0e
	ld c, $13                                        ; $543a: $0e $13
	inc de                                           ; $543c: $13
	ld c, $0e                                        ; $543d: $0e $0e
	ld c, $0e                                        ; $543f: $0e $0e
	cp [hl]                                          ; $5441: $be
	cp [hl]                                          ; $5442: $be
	ld b, $09                                        ; $5443: $06 $09
	ld c, $0e                                        ; $5445: $0e $0e
	inc de                                           ; $5447: $13
	ld c, $0e                                        ; $5448: $0e $0e
	ld c, $18                                        ; $544a: $0e $18
	cp [hl]                                          ; $544c: $be
	cp [hl]                                          ; $544d: $be
	ld b, $18                                        ; $544e: $06 $18
	ld c, $0e                                        ; $5450: $0e $0e
	jr jr_032_5462                                   ; $5452: $18 $0e

	ld c, $0e                                        ; $5454: $0e $0e
	inc de                                           ; $5456: $13
	cp [hl]                                          ; $5457: $be
	cp [hl]                                          ; $5458: $be
	ld b, $13                                        ; $5459: $06 $13
	ld c, $0e                                        ; $545b: $0e $0e
	inc de                                           ; $545d: $13
	ld c, $0e                                        ; $545e: $0e $0e
	ld c, $0e                                        ; $5460: $0e $0e

jr_032_5462:
	cp [hl]                                          ; $5462: $be
	cp [hl]                                          ; $5463: $be
	ld b, $18                                        ; $5464: $06 $18
	ld c, $0e                                        ; $5466: $0e $0e
	jr @+$10                                         ; $5468: $18 $0e

	ld c, $be                                        ; $546a: $0e $be
	jr @+$14                                         ; $546c: $18 $12

	add hl, bc                                       ; $546e: $09
	inc bc                                           ; $546f: $03
	add hl, bc                                       ; $5470: $09
	inc bc                                           ; $5471: $03
	add hl, bc                                       ; $5472: $09
	ld b, $09                                        ; $5473: $06 $09
	ld b, $12                                        ; $5475: $06 $12
	ld b, $09                                        ; $5477: $06 $09
	inc c                                            ; $5479: $0c
	add hl, bc                                       ; $547a: $09
	ld b, $18                                        ; $547b: $06 $18
	inc c                                            ; $547d: $0c
	ld [de], a                                       ; $547e: $12
	ld b, $18                                        ; $547f: $06 $18
	inc c                                            ; $5481: $0c
	ld [de], a                                       ; $5482: $12
	ld b, $18                                        ; $5483: $06 $18
	jr jr_032_5490                                   ; $5485: $18 $09

	inc c                                            ; $5487: $0c
	dec c                                            ; $5488: $0d
	ld b, $0d                                        ; $5489: $06 $0d
	ld b, $09                                        ; $548b: $06 $09
	inc c                                            ; $548d: $0c
	jr jr_032_549c                                   ; $548e: $18 $0c

jr_032_5490:
	ld [de], a                                       ; $5490: $12
	ld b, $18                                        ; $5491: $06 $18
	inc c                                            ; $5493: $0c
	ld [de], a                                       ; $5494: $12
	ld b, $18                                        ; $5495: $06 $18
	ld [de], a                                       ; $5497: $12
	cp [hl]                                          ; $5498: $be
	ld b, $12                                        ; $5499: $06 $12
	ld [de], a                                       ; $549b: $12

jr_032_549c:
	ld c, $0d                                        ; $549c: $0e $0d
	ld [de], a                                       ; $549e: $12
	dec c                                            ; $549f: $0d
	dec c                                            ; $54a0: $0d
	cp [hl]                                          ; $54a1: $be
	cp [hl]                                          ; $54a2: $be
	ld b, $12                                        ; $54a3: $06 $12
	dec c                                            ; $54a5: $0d
	dec c                                            ; $54a6: $0d
	ld [de], a                                       ; $54a7: $12
	dec c                                            ; $54a8: $0d
	dec c                                            ; $54a9: $0d
	cp [hl]                                          ; $54aa: $be
	jr jr_032_54c5                                   ; $54ab: $18 $18

	add hl, bc                                       ; $54ad: $09
	inc c                                            ; $54ae: $0c
	dec c                                            ; $54af: $0d
	ld b, $0d                                        ; $54b0: $06 $0d
	ld b, $09                                        ; $54b2: $06 $09
	inc c                                            ; $54b4: $0c
	jr jr_032_54c3                                   ; $54b5: $18 $0c

jr_032_54b7:
	cp [hl]                                          ; $54b7: $be
	ld b, $09                                        ; $54b8: $06 $09
	add hl, bc                                       ; $54ba: $09
	ld [de], a                                       ; $54bb: $12
	add hl, bc                                       ; $54bc: $09
	cp [hl]                                          ; $54bd: $be
	ld [de], a                                       ; $54be: $12
	inc c                                            ; $54bf: $0c
	add hl, bc                                       ; $54c0: $09
	inc c                                            ; $54c1: $0c
	cp [hl]                                          ; $54c2: $be

jr_032_54c3:
	ld b, $09                                        ; $54c3: $06 $09

jr_032_54c5:
	ld [de], a                                       ; $54c5: $12
	ld [de], a                                       ; $54c6: $12
	add hl, bc                                       ; $54c7: $09
	add hl, bc                                       ; $54c8: $09
	add hl, bc                                       ; $54c9: $09
	cp [hl]                                          ; $54ca: $be
	cp $ff                                           ; $54cb: $fe $ff
	ret nc                                           ; $54cd: $d0

	and b                                            ; $54ce: $a0
	cp $c4                                           ; $54cf: $fe $c4
	pop de                                           ; $54d1: $d1
	sub d                                            ; $54d2: $92
	ld [hl], d                                       ; $54d3: $72
	nop                                              ; $54d4: $00
	ld [de], a                                       ; $54d5: $12
	ld a, [hl]                                       ; $54d6: $7e
	dec e                                            ; $54d7: $1d
	nop                                              ; $54d8: $00
	and b                                            ; $54d9: $a0
	add hl, hl                                       ; $54da: $29
	jr jr_032_54fd                                   ; $54db: $18 $20

	jr @+$2b                                         ; $54dd: $18 $29

	inc a                                            ; $54df: $3c
	jr nz, jr_032_54ee                               ; $54e0: $20 $0c

	add hl, hl                                       ; $54e2: $29
	inc a                                            ; $54e3: $3c
	ld a, [hl+]                                      ; $54e4: $2a
	inc c                                            ; $54e5: $0c
	daa                                              ; $54e6: $27
	ld e, $7e                                        ; $54e7: $1e $7e
	nop                                              ; $54e9: $00
	and b                                            ; $54ea: $a0
	call nz, $0cbe                                   ; $54eb: $c4 $be $0c

jr_032_54ee:
	ld a, [hl+]                                      ; $54ee: $2a
	add hl, hl                                       ; $54ef: $29
	daa                                              ; $54f0: $27
	dec h                                            ; $54f1: $25
	cp [hl]                                          ; $54f2: $be
	ld a, [hl]                                       ; $54f3: $7e
	nop                                              ; $54f4: $00
	and b                                            ; $54f5: $a0
	sub a                                            ; $54f6: $97
	dec a                                            ; $54f7: $3d
	inc h                                            ; $54f8: $24
	inc h                                            ; $54f9: $24
	jp $0097                                         ; $54fa: $c3 $97 $00


jr_032_54fd:
	ld a, l                                          ; $54fd: $7d
	ld [bc], a                                       ; $54fe: $02
	inc h                                            ; $54ff: $24
	inc h                                            ; $5500: $24
	ld a, l                                          ; $5501: $7d
	nop                                              ; $5502: $00
	sub a                                            ; $5503: $97
	dec a                                            ; $5504: $3d
	inc h                                            ; $5505: $24
	inc h                                            ; $5506: $24
	jp $0097                                         ; $5507: $c3 $97 $00


	ld a, l                                          ; $550a: $7d
	ld [bc], a                                       ; $550b: $02
	inc h                                            ; $550c: $24
	inc h                                            ; $550d: $24
	ld a, l                                          ; $550e: $7d
	nop                                              ; $550f: $00
	sub a                                            ; $5510: $97
	dec a                                            ; $5511: $3d
	jr nz, jr_032_5538                               ; $5512: $20 $24

	jp $0097                                         ; $5514: $c3 $97 $00


	jr nz, jr_032_553d                               ; $5517: $20 $24

	sub a                                            ; $5519: $97
	ld a, [hl-]                                      ; $551a: $3a
	jr nz, jr_032_5535                               ; $551b: $20 $18

	daa                                              ; $551d: $27
	jr jr_032_54b7                                   ; $551e: $18 $97

	dec hl                                           ; $5520: $2b
	ld h, $18                                        ; $5521: $26 $18
	sub a                                            ; $5523: $97
	nop                                              ; $5524: $00
	sub c                                            ; $5525: $91
	pop de                                           ; $5526: $d1
	ld [hl], d                                       ; $5527: $72
	sub a                                            ; $5528: $97
	ld c, d                                          ; $5529: $4a
	cp [hl]                                          ; $552a: $be
	inc c                                            ; $552b: $0c
	nop                                              ; $552c: $00
	dec h                                            ; $552d: $25
	inc h                                            ; $552e: $24
	dec h                                            ; $552f: $25
	cp [hl]                                          ; $5530: $be
	ld a, l                                          ; $5531: $7d
	inc bc                                           ; $5532: $03
	ld [hl+], a                                      ; $5533: $22
	inc c                                            ; $5534: $0c

jr_032_5535:
	ld a, l                                          ; $5535: $7d
	nop                                              ; $5536: $00
	dec h                                            ; $5537: $25

jr_032_5538:
	inc c                                            ; $5538: $0c
	cp [hl]                                          ; $5539: $be
	inc c                                            ; $553a: $0c
	nop                                              ; $553b: $00
	ld [hl+], a                                      ; $553c: $22

jr_032_553d:
	ld hl, $1e22                                     ; $553d: $21 $22 $1e
	cp [hl]                                          ; $5540: $be
	ld a, l                                          ; $5541: $7d
	inc bc                                           ; $5542: $03
	ld [hl+], a                                      ; $5543: $22
	inc c                                            ; $5544: $0c
	ld a, l                                          ; $5545: $7d
	nop                                              ; $5546: $00
	cp [hl]                                          ; $5547: $be
	inc c                                            ; $5548: $0c
	nop                                              ; $5549: $00
	inc h                                            ; $554a: $24
	inc hl                                           ; $554b: $23
	inc h                                            ; $554c: $24
	cp [hl]                                          ; $554d: $be
	ld a, l                                          ; $554e: $7d
	inc bc                                           ; $554f: $03
	jr nz, jr_032_555e                               ; $5550: $20 $0c

	ld a, l                                          ; $5552: $7d
	nop                                              ; $5553: $00
	inc h                                            ; $5554: $24
	inc c                                            ; $5555: $0c
	cp [hl]                                          ; $5556: $be
	inc c                                            ; $5557: $0c
	nop                                              ; $5558: $00
	jr nz, jr_032_557a                               ; $5559: $20 $1f

	jr nz, jr_032_557a                               ; $555b: $20 $1d

	cp [hl]                                          ; $555d: $be

jr_032_555e:
	ld a, l                                          ; $555e: $7d
	ld [bc], a                                       ; $555f: $02
	jr nz, @+$0e                                     ; $5560: $20 $0c

	ld a, l                                          ; $5562: $7d
	nop                                              ; $5563: $00
	cp [hl]                                          ; $5564: $be
	inc c                                            ; $5565: $0c
	nop                                              ; $5566: $00
	ld [hl+], a                                      ; $5567: $22
	ld hl, $be22                                     ; $5568: $21 $22 $be
	ld a, l                                          ; $556b: $7d
	ld [bc], a                                       ; $556c: $02
	ld e, $0c                                        ; $556d: $1e $0c
	ld a, l                                          ; $556f: $7d
	nop                                              ; $5570: $00
	ld [hl+], a                                      ; $5571: $22
	inc c                                            ; $5572: $0c
	cp [hl]                                          ; $5573: $be
	inc c                                            ; $5574: $0c
	nop                                              ; $5575: $00
	ld e, $1d                                        ; $5576: $1e $1d
	ld e, $be                                        ; $5578: $1e $be

jr_032_557a:
	ld a, l                                          ; $557a: $7d
	ld [bc], a                                       ; $557b: $02
	dec de                                           ; $557c: $1b
	inc c                                            ; $557d: $0c
	ld a, l                                          ; $557e: $7d
	nop                                              ; $557f: $00
	ld e, $0c                                        ; $5580: $1e $0c
	cp [hl]                                          ; $5582: $be
	inc c                                            ; $5583: $0c
	nop                                              ; $5584: $00
	jr nz, jr_032_55a4                               ; $5585: $20 $1d

	ld de, $1d19                                     ; $5587: $11 $19 $1d
	cp [hl]                                          ; $558a: $be
	cp [hl]                                          ; $558b: $be
	inc c                                            ; $558c: $0c
	nop                                              ; $558d: $00
	dec e                                            ; $558e: $1d
	inc e                                            ; $558f: $1c
	dec e                                            ; $5590: $1d
	ld e, $20                                        ; $5591: $1e $20
	cp [hl]                                          ; $5593: $be
	sub d                                            ; $5594: $92
	pop de                                           ; $5595: $d1
	sub a                                            ; $5596: $97
	ld a, [hl-]                                      ; $5597: $3a
	ld [hl], d                                       ; $5598: $72
	cp [hl]                                          ; $5599: $be
	inc c                                            ; $559a: $0c
	nop                                              ; $559b: $00
	ld a, [hl+]                                      ; $559c: $2a
	add hl, hl                                       ; $559d: $29
	ld a, [hl+]                                      ; $559e: $2a
	dec h                                            ; $559f: $25
	ld a, [hl+]                                      ; $55a0: $2a
	cp [hl]                                          ; $55a1: $be
	ld a, [hl+]                                      ; $55a2: $2a
	inc c                                            ; $55a3: $0c

jr_032_55a4:
	sub a                                            ; $55a4: $97
	ld a, [hl+]                                      ; $55a5: $2a

jr_032_55a6:
	inc l                                            ; $55a6: $2c
	inc c                                            ; $55a7: $0c
	sub a                                            ; $55a8: $97
	ld a, [hl-]                                      ; $55a9: $3a
	cp [hl]                                          ; $55aa: $be
	inc c                                            ; $55ab: $0c
	ld a, [hl+]                                      ; $55ac: $2a
	add hl, hl                                       ; $55ad: $29
	daa                                              ; $55ae: $27
	dec h                                            ; $55af: $25
	cp [hl]                                          ; $55b0: $be
	cp [hl]                                          ; $55b1: $be
	inc c                                            ; $55b2: $0c
	nop                                              ; $55b3: $00
	add hl, hl                                       ; $55b4: $29
	jr z, jr_032_55e0                                ; $55b5: $28 $29

	daa                                              ; $55b7: $27
	add hl, hl                                       ; $55b8: $29
	cp [hl]                                          ; $55b9: $be
	ld [hl+], a                                      ; $55ba: $22
	inc c                                            ; $55bb: $0c
	jp nc, $0c1d                                     ; $55bc: $d2 $1d $0c

	pop de                                           ; $55bf: $d1
	inc h                                            ; $55c0: $24
	inc c                                            ; $55c1: $0c
	db $d3                                           ; $55c2: $d3
	dec de                                           ; $55c3: $1b
	inc c                                            ; $55c4: $0c
	pop de                                           ; $55c5: $d1
	dec h                                            ; $55c6: $25
	inc c                                            ; $55c7: $0c
	add hl, de                                       ; $55c8: $19
	inc c                                            ; $55c9: $0c
	cp [hl]                                          ; $55ca: $be
	inc c                                            ; $55cb: $0c
	nop                                              ; $55cc: $00
	daa                                              ; $55cd: $27
	ld h, $27                                        ; $55ce: $26 $27
	ld [hl+], a                                      ; $55d0: $22
	daa                                              ; $55d1: $27
	cp [hl]                                          ; $55d2: $be
	cp [hl]                                          ; $55d3: $be
	inc c                                            ; $55d4: $0c
	jr nz, jr_032_55fc                               ; $55d5: $20 $25

	inc h                                            ; $55d7: $24
	dec h                                            ; $55d8: $25
	inc h                                            ; $55d9: $24
	dec h                                            ; $55da: $25
	cp [hl]                                          ; $55db: $be
	sub a                                            ; $55dc: $97
	nop                                              ; $55dd: $00
	add $20                                          ; $55de: $c6 $20

jr_032_55e0:
	jr jr_032_55a6                                   ; $55e0: $18 $c4

	jr nz, jr_032_55f0                               ; $55e2: $20 $0c

	ret z                                            ; $55e4: $c8

	jr nz, @+$0e                                     ; $55e5: $20 $0c

	call nz, $1820                                   ; $55e7: $c4 $20 $18
	ret z                                            ; $55ea: $c8

	cp [hl]                                          ; $55eb: $be
	inc c                                            ; $55ec: $0c
	dec e                                            ; $55ed: $1d

jr_032_55ee:
	ld e, $1d                                        ; $55ee: $1e $1d

jr_032_55f0:
	dec de                                           ; $55f0: $1b
	dec e                                            ; $55f1: $1d
	ld e, $be                                        ; $55f2: $1e $be
	cp $ff                                           ; $55f4: $fe $ff
	ret nc                                           ; $55f6: $d0

	and b                                            ; $55f7: $a0
	cp $d1                                           ; $55f8: $fe $d1
	sub d                                            ; $55fa: $92
	sub a                                            ; $55fb: $97

jr_032_55fc:
	sbc d                                            ; $55fc: $9a
	ld [hl], d                                       ; $55fd: $72
	ld a, [hl]                                       ; $55fe: $7e
	dec e                                            ; $55ff: $1d
	inc c                                            ; $5600: $0c
	xor d                                            ; $5601: $aa
	add hl, hl                                       ; $5602: $29
	ld [de], a                                       ; $5603: $12
	ret z                                            ; $5604: $c8

	sub a                                            ; $5605: $97
	nop                                              ; $5606: $00
	ld a, [hl]                                       ; $5607: $7e
	dec e                                            ; $5608: $1d
	nop                                              ; $5609: $00

jr_032_560a:
	xor d                                            ; $560a: $aa
	add hl, hl                                       ; $560b: $29
	ld b, $7e                                        ; $560c: $06 $7e
	dec e                                            ; $560e: $1d
	ld [de], a                                       ; $560f: $12

jr_032_5610:
	xor d                                            ; $5610: $aa
	sub a                                            ; $5611: $97
	ld a, d                                          ; $5612: $7a
	jr nz, jr_032_562d                               ; $5613: $20 $18

	sub a                                            ; $5615: $97
	sbc d                                            ; $5616: $9a
	add hl, hl                                       ; $5617: $29
	inc d                                            ; $5618: $14
	ret z                                            ; $5619: $c8

	sub a                                            ; $561a: $97
	nop                                              ; $561b: $00
	ld a, [hl]                                       ; $561c: $7e
	dec e                                            ; $561d: $1d
	nop                                              ; $561e: $00
	xor d                                            ; $561f: $aa
	add hl, hl                                       ; $5620: $29
	inc b                                            ; $5621: $04
	ld a, [hl]                                       ; $5622: $7e
	dec e                                            ; $5623: $1d
	ld [de], a                                       ; $5624: $12
	xor d                                            ; $5625: $aa
	sub a                                            ; $5626: $97
	sbc d                                            ; $5627: $9a
	add hl, hl                                       ; $5628: $29
	jr @-$36                                         ; $5629: $18 $c8

	sub a                                            ; $562b: $97
	nop                                              ; $562c: $00

jr_032_562d:
	ld a, [hl]                                       ; $562d: $7e
	dec e                                            ; $562e: $1d
	nop                                              ; $562f: $00
	xor c                                            ; $5630: $a9
	add hl, hl                                       ; $5631: $29
	inc c                                            ; $5632: $0c
	ld a, [hl]                                       ; $5633: $7e
	dec e                                            ; $5634: $1d
	ld [de], a                                       ; $5635: $12
	xor c                                            ; $5636: $a9
	sub a                                            ; $5637: $97

jr_032_5638:
	ld a, d                                          ; $5638: $7a
	jr nz, jr_032_5647                               ; $5639: $20 $0c

	sub a                                            ; $563b: $97
	sbc d                                            ; $563c: $9a
	add hl, hl                                       ; $563d: $29
	jr @+$2b                                         ; $563e: $18 $29

	jr jr_032_560a                                   ; $5640: $18 $c8

jr_032_5642:
	sub a                                            ; $5642: $97
	nop                                              ; $5643: $00
	ld a, [hl]                                       ; $5644: $7e
	dec e                                            ; $5645: $1d
	nop                                              ; $5646: $00

jr_032_5647:
	xor c                                            ; $5647: $a9
	add hl, hl                                       ; $5648: $29
	inc c                                            ; $5649: $0c
	ld a, [hl]                                       ; $564a: $7e
	dec e                                            ; $564b: $1d

jr_032_564c:
	ld [de], a                                       ; $564c: $12
	xor c                                            ; $564d: $a9
	sub a                                            ; $564e: $97
	ld a, h                                          ; $564f: $7c
	ld a, [hl+]                                      ; $5650: $2a
	inc c                                            ; $5651: $0c
	sub a                                            ; $5652: $97
	ld a, d                                          ; $5653: $7a
	daa                                              ; $5654: $27
	jr jr_032_55ee                                   ; $5655: $18 $97

	nop                                              ; $5657: $00
	jp $1827                                         ; $5658: $c3 $27 $18


	ld a, [hl]                                       ; $565b: $7e
	nop                                              ; $565c: $00
	and b                                            ; $565d: $a0
	add $97                                          ; $565e: $c6 $97
	nop                                              ; $5660: $00
	ld l, $0c                                        ; $5661: $2e $0c
	inc l                                            ; $5663: $2c
	inc c                                            ; $5664: $0c
	rst JumpTable                                          ; $5665: $c7
	ld a, [hl+]                                      ; $5666: $2a
	inc c                                            ; $5667: $0c
	jp z, $0c29                                      ; $5668: $ca $29 $0c

	sub a                                            ; $566b: $97
	sbc h                                            ; $566c: $9c
	daa                                              ; $566d: $27
	jr jr_032_5638                                   ; $566e: $18 $c8

	sub a                                            ; $5670: $97
	nop                                              ; $5671: $00
	ld a, [hl]                                       ; $5672: $7e
	dec e                                            ; $5673: $1d
	nop                                              ; $5674: $00
	xor c                                            ; $5675: $a9
	daa                                              ; $5676: $27
	jr jr_032_5610                                   ; $5677: $18 $97

	sbc d                                            ; $5679: $9a
	ld a, [hl]                                       ; $567a: $7e
	dec e                                            ; $567b: $1d
	ld [de], a                                       ; $567c: $12
	xor c                                            ; $567d: $a9
	jr nz, jr_032_568c                               ; $567e: $20 $0c

	daa                                              ; $5680: $27
	inc c                                            ; $5681: $0c
	sub a                                            ; $5682: $97
	sbc h                                            ; $5683: $9c
	jr z, jr_032_569e                                ; $5684: $28 $18

	ret z                                            ; $5686: $c8

	sub a                                            ; $5687: $97
	nop                                              ; $5688: $00
	ld a, [hl]                                       ; $5689: $7e
	dec e                                            ; $568a: $1d
	nop                                              ; $568b: $00

jr_032_568c:
	xor c                                            ; $568c: $a9
	jr z, jr_032_56a7                                ; $568d: $28 $18

	sub a                                            ; $568f: $97
	sbc d                                            ; $5690: $9a
	ld a, [hl]                                       ; $5691: $7e
	dec e                                            ; $5692: $1d
	ld [$20a9], sp                                   ; $5693: $08 $a9 $20
	inc c                                            ; $5696: $0c
	jr z, jr_032_56a5                                ; $5697: $28 $0c

	sub a                                            ; $5699: $97
	sbc h                                            ; $569a: $9c
	ld a, [hl]                                       ; $569b: $7e
	dec e                                            ; $569c: $1d
	inc h                                            ; $569d: $24

jr_032_569e:
	xor c                                            ; $569e: $a9
	add hl, hl                                       ; $569f: $29
	jr nc, @-$36                                     ; $56a0: $30 $c8

jr_032_56a2:
	sub a                                            ; $56a2: $97
	nop                                              ; $56a3: $00
	ld a, [hl]                                       ; $56a4: $7e

jr_032_56a5:
	dec e                                            ; $56a5: $1d
	nop                                              ; $56a6: $00

jr_032_56a7:
	xor c                                            ; $56a7: $a9
	add hl, hl                                       ; $56a8: $29
	jr jr_032_5642                                   ; $56a9: $18 $97

	ld a, e                                          ; $56ab: $7b
	ld a, [hl]                                       ; $56ac: $7e
	dec e                                            ; $56ad: $1d
	ld [de], a                                       ; $56ae: $12
	xor c                                            ; $56af: $a9
	add hl, hl                                       ; $56b0: $29

jr_032_56b1:
	jr jr_032_56dd                                   ; $56b1: $18 $2a

	jr jr_032_564c                                   ; $56b3: $18 $97

	ld c, h                                          ; $56b5: $4c
	inc l                                            ; $56b6: $2c
	jr jr_032_5737                                   ; $56b7: $18 $7e

	nop                                              ; $56b9: $00

jr_032_56ba:
	and b                                            ; $56ba: $a0
	or l                                             ; $56bb: $b5
	or c                                             ; $56bc: $b1
	ld bc, $0318                                     ; $56bd: $01 $18 $03
	sub a                                            ; $56c0: $97
	nop                                              ; $56c1: $00
	ld [hl], d                                       ; $56c2: $72
	ld l, $18                                        ; $56c3: $2e $18
	ld l, $18                                        ; $56c5: $2e $18
	ld l, $18                                        ; $56c7: $2e $18
	jp z, $1831                                      ; $56c9: $ca $31 $18

	jr nc, jr_032_56e6                               ; $56cc: $30 $18

	ld l, $18                                        ; $56ce: $2e $18
	ret                                              ; $56d0: $c9


	inc l                                            ; $56d1: $2c
	jr jr_032_5700                                   ; $56d2: $18 $2c

	jr jr_032_5702                                   ; $56d4: $18 $2c

	jr jr_032_56a2                                   ; $56d6: $18 $ca

	jr nc, jr_032_56f2                               ; $56d8: $30 $18

	ld l, $18                                        ; $56da: $2e $18
	inc l                                            ; $56dc: $2c

jr_032_56dd:
	jr jr_032_5709                                   ; $56dd: $18 $2a

	jr @+$2c                                         ; $56df: $18 $2a

	jr jr_032_570d                                   ; $56e1: $18 $2a

	jr jr_032_56b1                                   ; $56e3: $18 $cc

	daa                                              ; $56e5: $27

jr_032_56e6:
	jr jr_032_570d                                   ; $56e6: $18 $25

	jr jr_032_570e                                   ; $56e8: $18 $24

	jr @-$32                                         ; $56ea: $18 $cc

	dec h                                            ; $56ec: $25
	jr jr_032_56ba                                   ; $56ed: $18 $cb

	ld a, [hl]                                       ; $56ef: $7e
	dec e                                            ; $56f0: $1d
	inc c                                            ; $56f1: $0c

jr_032_56f2:
	xor c                                            ; $56f2: $a9
	sub [hl]                                         ; $56f3: $96
	jr nc, jr_032_56fd                               ; $56f4: $30 $07

	jr nz, jr_032_5728                               ; $56f6: $20 $30

	sub [hl]                                         ; $56f8: $96
	nop                                              ; $56f9: $00
	nop                                              ; $56fa: $00
	ld a, [hl]                                       ; $56fb: $7e
	nop                                              ; $56fc: $00

jr_032_56fd:
	and b                                            ; $56fd: $a0
	or c                                             ; $56fe: $b1
	and c                                            ; $56ff: $a1

jr_032_5700:
	jr jr_032_5705                                   ; $5700: $18 $03

jr_032_5702:
	ld sp, $c718                                     ; $5702: $31 $18 $c7

jr_032_5705:
	ld a, [hl]                                       ; $5705: $7e
	dec e                                            ; $5706: $1d
	inc h                                            ; $5707: $24
	xor c                                            ; $5708: $a9

jr_032_5709:
	inc l                                            ; $5709: $2c
	jr nc, jr_032_578a                               ; $570a: $30 $7e

	nop                                              ; $570c: $00

jr_032_570d:
	and b                                            ; $570d: $a0

jr_032_570e:
	adc $d1                                          ; $570e: $ce $d1
	sub c                                            ; $5710: $91
	ld [hl], d                                       ; $5711: $72
	sub [hl]                                         ; $5712: $96
	jr jr_032_5718                                   ; $5713: $18 $03

	ld [hl+], a                                      ; $5715: $22
	jr jr_032_573a                                   ; $5716: $18 $22

jr_032_5718:
	jr jr_032_573c                                   ; $5718: $18 $22

	jr @-$4d                                         ; $571a: $18 $b1

	pop bc                                           ; $571c: $c1
	inc c                                            ; $571d: $0c
	inc bc                                           ; $571e: $03
	cp [hl]                                          ; $571f: $be
	inc c                                            ; $5720: $0c
	daa                                              ; $5721: $27
	dec h                                            ; $5722: $25

jr_032_5723:
	inc h                                            ; $5723: $24
	dec h                                            ; $5724: $25
	inc h                                            ; $5725: $24
	ld [hl+], a                                      ; $5726: $22
	cp [hl]                                          ; $5727: $be

jr_032_5728:
	or c                                             ; $5728: $b1
	pop hl                                           ; $5729: $e1
	jr jr_032_572f                                   ; $572a: $18 $03

	ld hl, $2118                                     ; $572c: $21 $18 $21

jr_032_572f:
	jr @+$23                                         ; $572f: $18 $21

	jr @-$4d                                         ; $5731: $18 $b1

	pop bc                                           ; $5733: $c1
	inc c                                            ; $5734: $0c
	inc bc                                           ; $5735: $03
	cp [hl]                                          ; $5736: $be

jr_032_5737:
	inc c                                            ; $5737: $0c
	dec h                                            ; $5738: $25
	inc h                                            ; $5739: $24

jr_032_573a:
	dec h                                            ; $573a: $25
	daa                                              ; $573b: $27

jr_032_573c:
	cp [hl]                                          ; $573c: $be
	call $0c29                                       ; $573d: $cd $29 $0c
	adc $25                                          ; $5740: $ce $25
	inc c                                            ; $5742: $0c
	or c                                             ; $5743: $b1
	pop de                                           ; $5744: $d1
	inc c                                            ; $5745: $0c
	inc bc                                           ; $5746: $03
	cp [hl]                                          ; $5747: $be
	inc c                                            ; $5748: $0c
	ld [hl+], a                                      ; $5749: $22
	ld e, $22                                        ; $574a: $1e $22
	ld e, $be                                        ; $574c: $1e $be
	call z, $0c27                                    ; $574e: $cc $27 $0c
	adc $22                                          ; $5751: $ce $22
	inc c                                            ; $5753: $0c
	or c                                             ; $5754: $b1
	pop de                                           ; $5755: $d1
	inc c                                            ; $5756: $0c
	inc bc                                           ; $5757: $03
	inc h                                            ; $5758: $24
	inc c                                            ; $5759: $0c
	call z, $0c20                                    ; $575a: $cc $20 $0c
	call $0c27                                       ; $575d: $cd $27 $0c
	sla b                                            ; $5760: $cb $20
	inc c                                            ; $5762: $0c
	ret                                              ; $5763: $c9


	inc l                                            ; $5764: $2c
	inc c                                            ; $5765: $0c
	call z, $0c20                                    ; $5766: $cc $20 $0c
	sub [hl]                                         ; $5769: $96
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	dec h                                            ; $576c: $25
	inc c                                            ; $576d: $0c
	push bc                                          ; $576e: $c5
	dec h                                            ; $576f: $25
	jr jr_032_5723                                   ; $5770: $18 $b1

	pop hl                                           ; $5772: $e1
	inc c                                            ; $5773: $0c
	inc b                                            ; $5774: $04
	dec h                                            ; $5775: $25
	inc c                                            ; $5776: $0c
	call z, $0c31                                    ; $5777: $cc $31 $0c
	or c                                             ; $577a: $b1
	ld [hl], c                                       ; $577b: $71
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	ld sp, $960c                                     ; $577e: $31 $0c $96
	jr @+$06                                         ; $5781: $18 $04

	call $1820                                       ; $5783: $cd $20 $18
	adc $be                                          ; $5786: $ce $be
	inc c                                            ; $5788: $0c
	ld [hl+], a                                      ; $5789: $22

jr_032_578a:
	inc h                                            ; $578a: $24
	dec h                                            ; $578b: $25
	daa                                              ; $578c: $27
	cp [hl]                                          ; $578d: $be
	sub [hl]                                         ; $578e: $96
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	cp $ff                                           ; $5791: $fe $ff
	ret nc                                           ; $5793: $d0

	and b                                            ; $5794: $a0
	cp $7f                                           ; $5795: $fe $7f
	dec e                                            ; $5797: $1d
	pop de                                           ; $5798: $d1
	jp nz, $0d72                                     ; $5799: $c2 $72 $0d

	inc d                                            ; $579c: $14
	add $0d                                          ; $579d: $c6 $0d
	inc b                                            ; $579f: $04
	jp nz, $0c14                                     ; $57a0: $c2 $14 $0c

	add $14                                          ; $57a3: $c6 $14
	inc c                                            ; $57a5: $0c
	jp nz, $0c14                                     ; $57a6: $c2 $14 $0c

	add $14                                          ; $57a9: $c6 $14
	inc c                                            ; $57ab: $0c
	jp nz, $140e                                     ; $57ac: $c2 $0e $14

	add $0e                                          ; $57af: $c6 $0e
	inc b                                            ; $57b1: $04
	jp nz, $0c14                                     ; $57b2: $c2 $14 $0c

	add $14                                          ; $57b5: $c6 $14
	inc c                                            ; $57b7: $0c
	jp nz, $0c14                                     ; $57b8: $c2 $14 $0c

	add $14                                          ; $57bb: $c6 $14
	inc c                                            ; $57bd: $0c
	jp nz, $140f                                     ; $57be: $c2 $0f $14

	add $0f                                          ; $57c1: $c6 $0f
	inc b                                            ; $57c3: $04
	jp nz, $0c16                                     ; $57c4: $c2 $16 $0c

	add $16                                          ; $57c7: $c6 $16
	inc c                                            ; $57c9: $0c
	jp nz, $0c16                                     ; $57ca: $c2 $16 $0c

	add $16                                          ; $57cd: $c6 $16
	inc c                                            ; $57cf: $0c
	jp nz, $140a                                     ; $57d0: $c2 $0a $14

	add $0a                                          ; $57d3: $c6 $0a
	inc b                                            ; $57d5: $04
	jp nz, $0c0f                                     ; $57d6: $c2 $0f $0c

	add $0f                                          ; $57d9: $c6 $0f
	inc c                                            ; $57db: $0c
	jp nz, $0c0f                                     ; $57dc: $c2 $0f $0c

	add $0f                                          ; $57df: $c6 $0f
	inc c                                            ; $57e1: $0c
	jp nz, $1408                                     ; $57e2: $c2 $08 $14

	add $08                                          ; $57e5: $c6 $08
	inc b                                            ; $57e7: $04
	jp nz, $0c0f                                     ; $57e8: $c2 $0f $0c

	add $0f                                          ; $57eb: $c6 $0f
	inc c                                            ; $57ed: $0c
	jp nz, $0c0f                                     ; $57ee: $c2 $0f $0c

	add $0f                                          ; $57f1: $c6 $0f
	inc c                                            ; $57f3: $0c
	jp nz, $1408                                     ; $57f4: $c2 $08 $14

	add $08                                          ; $57f7: $c6 $08
	inc b                                            ; $57f9: $04
	jp nz, $0c10                                     ; $57fa: $c2 $10 $0c

	add $10                                          ; $57fd: $c6 $10
	inc c                                            ; $57ff: $0c
	jp nz, $0c10                                     ; $5800: $c2 $10 $0c

	add $10                                          ; $5803: $c6 $10
	inc c                                            ; $5805: $0c
	jp nz, $140d                                     ; $5806: $c2 $0d $14

	add $0d                                          ; $5809: $c6 $0d
	inc b                                            ; $580b: $04
	jp nz, $0c14                                     ; $580c: $c2 $14 $0c

	add $14                                          ; $580f: $c6 $14
	inc c                                            ; $5811: $0c
	jp nz, $0c14                                     ; $5812: $c2 $14 $0c

	add $14                                          ; $5815: $c6 $14
	inc c                                            ; $5817: $0c
	jp nz, $120d                                     ; $5818: $c2 $0d $12

	add $0d                                          ; $581b: $c6 $0d
	ld b, $c2                                        ; $581d: $06 $c2
	inc c                                            ; $581f: $0c
	ld [de], a                                       ; $5820: $12
	add $0c                                          ; $5821: $c6 $0c
	ld b, $c2                                        ; $5823: $06 $c2
	ld a, [hl]                                       ; $5825: $7e
	dec e                                            ; $5826: $1d
	inc c                                            ; $5827: $0c
	and e                                            ; $5828: $a3
	dec bc                                           ; $5829: $0b
	jr @+$80                                         ; $582a: $18 $7e

	nop                                              ; $582c: $00
	and b                                            ; $582d: $a0
	ld a, a                                          ; $582e: $7f
	dec e                                            ; $582f: $1d
	pop de                                           ; $5830: $d1
	jp nz, $1272                                     ; $5831: $c2 $72 $12

	ld [de], a                                       ; $5834: $12
	add $12                                          ; $5835: $c6 $12
	ld b, $c2                                        ; $5837: $06 $c2
	ld de, $c612                                     ; $5839: $11 $12 $c6
	ld de, $c206                                     ; $583c: $11 $06 $c2
	ld [de], a                                       ; $583f: $12
	ld [de], a                                       ; $5840: $12
	add $12                                          ; $5841: $c6 $12
	ld b, $c2                                        ; $5843: $06 $c2
	ld d, $08                                        ; $5845: $16 $08
	add $16                                          ; $5847: $c6 $16
	inc b                                            ; $5849: $04
	jp nz, $0815                                     ; $584a: $c2 $15 $08

	add $15                                          ; $584d: $c6 $15
	inc b                                            ; $584f: $04
	jp nz, $0816                                     ; $5850: $c2 $16 $08

	add $16                                          ; $5853: $c6 $16
	inc b                                            ; $5855: $04
	jp nz, $0818                                     ; $5856: $c2 $18 $08

	add $18                                          ; $5859: $c6 $18
	inc b                                            ; $585b: $04
	jp nz, $0816                                     ; $585c: $c2 $16 $08

	add $16                                          ; $585f: $c6 $16
	inc b                                            ; $5861: $04
	jp nz, $0812                                     ; $5862: $c2 $12 $08

	add $12                                          ; $5865: $c6 $12
	inc b                                            ; $5867: $04
	jp nz, $1211                                     ; $5868: $c2 $11 $12

	add $11                                          ; $586b: $c6 $11
	ld b, $c2                                        ; $586d: $06 $c2
	db $10                                           ; $586f: $10
	ld [de], a                                       ; $5870: $12
	add $10                                          ; $5871: $c6 $10
	ld b, $c2                                        ; $5873: $06 $c2
	ld de, $c612                                     ; $5875: $11 $12 $c6
	ld de, $c206                                     ; $5878: $11 $06 $c2
	inc d                                            ; $587b: $14
	ld [$14c6], sp                                   ; $587c: $08 $c6 $14
	inc b                                            ; $587f: $04
	jp nz, $0813                                     ; $5880: $c2 $13 $08

	add $13                                          ; $5883: $c6 $13
	inc b                                            ; $5885: $04
	jp nz, $0814                                     ; $5886: $c2 $14 $08

	add $14                                          ; $5889: $c6 $14
	inc b                                            ; $588b: $04
	jp nz, $0816                                     ; $588c: $c2 $16 $08

	add $16                                          ; $588f: $c6 $16
	inc b                                            ; $5891: $04
	jp nz, $0814                                     ; $5892: $c2 $14 $08

	add $14                                          ; $5895: $c6 $14
	inc b                                            ; $5897: $04
	jp nz, $0810                                     ; $5898: $c2 $10 $08

	add $10                                          ; $589b: $c6 $10
	inc b                                            ; $589d: $04
	jp nz, $120f                                     ; $589e: $c2 $0f $12

	add $0f                                          ; $58a1: $c6 $0f
	ld b, $c2                                        ; $58a3: $06 $c2
	ld c, $12                                        ; $58a5: $0e $12
	add $0e                                          ; $58a7: $c6 $0e
	ld b, $c2                                        ; $58a9: $06 $c2
	rrca                                             ; $58ab: $0f
	ld [de], a                                       ; $58ac: $12
	add $0f                                          ; $58ad: $c6 $0f
	ld b, $c2                                        ; $58af: $06 $c2
	ld [de], a                                       ; $58b1: $12
	ld [$12c6], sp                                   ; $58b2: $08 $c6 $12
	inc b                                            ; $58b5: $04
	jp nz, $0811                                     ; $58b6: $c2 $11 $08

	add $11                                          ; $58b9: $c6 $11
	inc b                                            ; $58bb: $04
	jp nz, $080f                                     ; $58bc: $c2 $0f $08

	add $0f                                          ; $58bf: $c6 $0f
	inc b                                            ; $58c1: $04
	jp nz, $0811                                     ; $58c2: $c2 $11 $08

	add $11                                          ; $58c5: $c6 $11
	inc b                                            ; $58c7: $04
	jp nz, $0812                                     ; $58c8: $c2 $12 $08

	add $12                                          ; $58cb: $c6 $12
	inc b                                            ; $58cd: $04
	jp nz, $080f                                     ; $58ce: $c2 $0f $08

	add $0f                                          ; $58d1: $c6 $0f
	inc b                                            ; $58d3: $04
	jp nz, $080d                                     ; $58d4: $c2 $0d $08

	add $0d                                          ; $58d7: $c6 $0d
	inc b                                            ; $58d9: $04
	jp nz, $0818                                     ; $58da: $c2 $18 $08

	add $18                                          ; $58dd: $c6 $18
	inc b                                            ; $58df: $04
	jp nz, $080d                                     ; $58e0: $c2 $0d $08

	add $0d                                          ; $58e3: $c6 $0d
	inc b                                            ; $58e5: $04
	jp nz, $080f                                     ; $58e6: $c2 $0f $08

	add $0f                                          ; $58e9: $c6 $0f
	inc b                                            ; $58eb: $04
	jp nz, $0811                                     ; $58ec: $c2 $11 $08

	add $11                                          ; $58ef: $c6 $11
	inc b                                            ; $58f1: $04
	jp nz, $0812                                     ; $58f2: $c2 $12 $08

	add $12                                          ; $58f5: $c6 $12
	inc b                                            ; $58f7: $04
	jp nz, $120d                                     ; $58f8: $c2 $0d $12

	add $0d                                          ; $58fb: $c6 $0d
	ld b, $c2                                        ; $58fd: $06 $c2
	rrca                                             ; $58ff: $0f
	ld [de], a                                       ; $5900: $12
	add $0f                                          ; $5901: $c6 $0f
	ld b, $c2                                        ; $5903: $06 $c2
	ld de, $c612                                     ; $5905: $11 $12 $c6
	ld de, $d106                                     ; $5908: $11 $06 $d1
	jp nz, $1d7f                                     ; $590b: $c2 $7f $1d

	ld [hl], d                                       ; $590e: $72
	ld [de], a                                       ; $590f: $12
	ld [de], a                                       ; $5910: $12
	add $12                                          ; $5911: $c6 $12
	ld b, $c2                                        ; $5913: $06 $c2
	ld de, $c612                                     ; $5915: $11 $12 $c6
	ld de, $c206                                     ; $5918: $11 $06 $c2
	ld [de], a                                       ; $591b: $12
	ld [de], a                                       ; $591c: $12
	add $12                                          ; $591d: $c6 $12
	ld b, $c2                                        ; $591f: $06 $c2
	add hl, de                                       ; $5921: $19
	ld [$19c6], sp                                   ; $5922: $08 $c6 $19
	inc b                                            ; $5925: $04
	jp nz, $081b                                     ; $5926: $c2 $1b $08

	add $1b                                          ; $5929: $c6 $1b
	inc b                                            ; $592b: $04
	jp nz, $0819                                     ; $592c: $c2 $19 $08

	add $19                                          ; $592f: $c6 $19
	inc b                                            ; $5931: $04

jr_032_5932:
	jp nz, $0818                                     ; $5932: $c2 $18 $08

	add $18                                          ; $5935: $c6 $18
	inc b                                            ; $5937: $04
	jp nz, $0816                                     ; $5938: $c2 $16 $08

	add $16                                          ; $593b: $c6 $16
	inc b                                            ; $593d: $04
	jp nz, $0814                                     ; $593e: $c2 $14 $08

	add $14                                          ; $5941: $c6 $14
	inc b                                            ; $5943: $04
	jp nz, $1211                                     ; $5944: $c2 $11 $12

	add $11                                          ; $5947: $c6 $11
	ld b, $c2                                        ; $5949: $06 $c2
	db $10                                           ; $594b: $10
	ld [de], a                                       ; $594c: $12
	add $10                                          ; $594d: $c6 $10
	ld b, $c2                                        ; $594f: $06 $c2
	ld de, $c612                                     ; $5951: $11 $12 $c6
	ld de, $c206                                     ; $5954: $11 $06 $c2
	ld d, $12                                        ; $5957: $16 $12
	add $16                                          ; $5959: $c6 $16
	ld b, $c2                                        ; $595b: $06 $c2
	jr jr_032_5971                                   ; $595d: $18 $12

	add $18                                          ; $595f: $c6 $18
	ld b, $c2                                        ; $5961: $06 $c2
	add hl, de                                       ; $5963: $19
	ld [de], a                                       ; $5964: $12
	add $19                                          ; $5965: $c6 $19
	ld b, $c2                                        ; $5967: $06 $c2
	dec de                                           ; $5969: $1b
	jr jr_032_5932                                   ; $596a: $18 $c6

	dec de                                           ; $596c: $1b
	inc c                                            ; $596d: $0c
	jp nz, $081a                                     ; $596e: $c2 $1a $08

jr_032_5971:
	add $1a                                          ; $5971: $c6 $1a
	inc b                                            ; $5973: $04
	jp nz, $081b                                     ; $5974: $c2 $1b $08

	add $1b                                          ; $5977: $c6 $1b
	inc b                                            ; $5979: $04
	jp nz, $081d                                     ; $597a: $c2 $1d $08

	add $1d                                          ; $597d: $c6 $1d
	inc b                                            ; $597f: $04
	jp nz, $0818                                     ; $5980: $c2 $18 $08

	add $18                                          ; $5983: $c6 $18
	inc b                                            ; $5985: $04
	jp nz, $0819                                     ; $5986: $c2 $19 $08

	add $19                                          ; $5989: $c6 $19
	inc b                                            ; $598b: $04
	jp nz, $1218                                     ; $598c: $c2 $18 $12

	add $18                                          ; $598f: $c6 $18
	ld b, $c2                                        ; $5991: $06 $c2
	ld d, $12                                        ; $5993: $16 $12
	add $16                                          ; $5995: $c6 $16
	ld b, $c2                                        ; $5997: $06 $c2
	add hl, de                                       ; $5999: $19
	ld [de], a                                       ; $599a: $12

jr_032_599b:
	add $19                                          ; $599b: $c6 $19
	ld b, $00                                        ; $599d: $06 $00
	inc c                                            ; $599f: $0c
	jp nz, $0811                                     ; $59a0: $c2 $11 $08

	add $11                                          ; $59a3: $c6 $11
	inc b                                            ; $59a5: $04
	jp nz, $1214                                     ; $59a6: $c2 $14 $12

	add $14                                          ; $59a9: $c6 $14
	ld b, $c2                                        ; $59ab: $06 $c2
	add hl, de                                       ; $59ad: $19
	inc h                                            ; $59ae: $24
	add $19                                          ; $59af: $c6 $19
	jr jr_032_59b3                                   ; $59b1: $18 $00

jr_032_59b3:
	inc c                                            ; $59b3: $0c
	cp $ff                                           ; $59b4: $fe $ff
	ret nc                                           ; $59b6: $d0

	and b                                            ; $59b7: $a0
	cp $fb                                           ; $59b8: $fe $fb
	db $fd                                           ; $59ba: $fd
	jp hl                                            ; $59bb: $e9


	ld e, c                                          ; $59bc: $59
	ei                                               ; $59bd: $fb
	inc b                                            ; $59be: $04
	db $fc                                           ; $59bf: $fc
	db $fd                                           ; $59c0: $fd
	db $f4                                           ; $59c1: $f4
	ld e, c                                          ; $59c2: $59
	db $fd                                           ; $59c3: $fd

jr_032_59c4:
	inc bc                                           ; $59c4: $03
	ld e, d                                          ; $59c5: $5a
	db $fc                                           ; $59c6: $fc
	ld [bc], a                                       ; $59c7: $02
	db $fd                                           ; $59c8: $fd
	db $f4                                           ; $59c9: $f4
	ld e, c                                          ; $59ca: $59
	db $fd                                           ; $59cb: $fd
	inc bc                                           ; $59cc: $03
	ld e, d                                          ; $59cd: $5a
	db $fd                                           ; $59ce: $fd
	db $f4                                           ; $59cf: $f4
	ld e, c                                          ; $59d0: $59
	rra                                              ; $59d1: $1f
	jr @-$40                                         ; $59d2: $18 $be

	inc c                                            ; $59d4: $0c
	dec e                                            ; $59d5: $1d
	dec e                                            ; $59d6: $1d
	dec e                                            ; $59d7: $1d
	dec e                                            ; $59d8: $1d
	cp [hl]                                          ; $59d9: $be
	rra                                              ; $59da: $1f
	jr jr_032_599b                                   ; $59db: $18 $be

	ld b, $2a                                        ; $59dd: $06 $2a
	ld a, [hl+]                                      ; $59df: $2a
	inc hl                                           ; $59e0: $23
	inc hl                                           ; $59e1: $23
	ld [hl+], a                                      ; $59e2: $22
	ld [hl+], a                                      ; $59e3: $22
	ld hl, $be21                                     ; $59e4: $21 $21 $be
	cp $ff                                           ; $59e7: $fe $ff
	rra                                              ; $59e9: $1f
	jr jr_032_5a09                                   ; $59ea: $18 $1d

	jr nc, jr_032_5a0d                               ; $59ec: $30 $1f

	jr jr_032_5a0d                                   ; $59ee: $18 $1d

	jr @+$20                                         ; $59f0: $18 $1e

	jr @-$01                                         ; $59f2: $18 $fd

	rra                                              ; $59f4: $1f
	jr jr_032_5a14                                   ; $59f5: $18 $1d

	inc c                                            ; $59f7: $0c
	dec e                                            ; $59f8: $1d
	inc c                                            ; $59f9: $0c
	dec e                                            ; $59fa: $1d
	jr jr_032_5a1c                                   ; $59fb: $18 $1f

	jr jr_032_5a1c                                   ; $59fd: $18 $1d

	jr @+$20                                         ; $59ff: $18 $1e

	jr @-$01                                         ; $5a01: $18 $fd

	rra                                              ; $5a03: $1f
	jr jr_032_59c4                                   ; $5a04: $18 $be

	inc c                                            ; $5a06: $0c
	dec e                                            ; $5a07: $1d
	dec e                                            ; $5a08: $1d

jr_032_5a09:
	dec e                                            ; $5a09: $1d
	dec e                                            ; $5a0a: $1d
	cp [hl]                                          ; $5a0b: $be
	rra                                              ; $5a0c: $1f

jr_032_5a0d:
	jr jr_032_5a2c                                   ; $5a0d: $18 $1d

	jr @+$20                                         ; $5a0f: $18 $1e

	jr @-$01                                         ; $5a11: $18 $fd

	ret nc                                           ; $5a13: $d0

jr_032_5a14:
	sub [hl]                                         ; $5a14: $96
	ld [hl], e                                       ; $5a15: $73
	nop                                              ; $5a16: $00

jr_032_5a17:
	jr nc, jr_032_5a17                               ; $5a17: $30 $fe

	sub e                                            ; $5a19: $93
	pop de                                           ; $5a1a: $d1
	rst JumpTable                                          ; $5a1b: $c7

jr_032_5a1c:
	jr nz, @+$26                                     ; $5a1c: $20 $24

	jp $0c20                                         ; $5a1e: $c3 $20 $0c


	rst JumpTable                                          ; $5a21: $c7
	ld e, $0c                                        ; $5a22: $1e $0c
	jr nz, jr_032_5a32                               ; $5a24: $20 $0c

	ld [hl+], a                                      ; $5a26: $22
	inc c                                            ; $5a27: $0c
	jp nz, $0c22                                     ; $5a28: $c2 $22 $0c

	rst JumpTable                                          ; $5a2b: $c7

jr_032_5a2c:
	jr nz, jr_032_5a3a                               ; $5a2c: $20 $0c

	jp nz, $0c20                                     ; $5a2e: $c2 $20 $0c

	rst JumpTable                                          ; $5a31: $c7

jr_032_5a32:
	ld e, $0c                                        ; $5a32: $1e $0c
	jp nz, $0c1e                                     ; $5a34: $c2 $1e $0c

	rst JumpTable                                          ; $5a37: $c7
	dec e                                            ; $5a38: $1d
	inc c                                            ; $5a39: $0c

jr_032_5a3a:
	jp nz, $0c1d                                     ; $5a3a: $c2 $1d $0c

	rst JumpTable                                          ; $5a3d: $c7
	dec de                                           ; $5a3e: $1b
	inc c                                            ; $5a3f: $0c
	call nz, $0c1b                                   ; $5a40: $c4 $1b $0c
	ret z                                            ; $5a43: $c8

	dec de                                           ; $5a44: $1b
	jr jr_032_5a09                                   ; $5a45: $18 $c2

	dec de                                           ; $5a47: $1b
	jr @-$38                                         ; $5a48: $18 $c6

	ld e, $0c                                        ; $5a4a: $1e $0c
	inc hl                                           ; $5a4c: $23
	inc c                                            ; $5a4d: $0c
	daa                                              ; $5a4e: $27
	inc c                                            ; $5a4f: $0c
	call nz, $0c27                                   ; $5a50: $c4 $27 $0c
	rst JumpTable                                          ; $5a53: $c7
	ld h, $0c                                        ; $5a54: $26 $0c
	jp nz, $0c26                                     ; $5a56: $c2 $26 $0c

	push bc                                          ; $5a59: $c5
	add hl, hl                                       ; $5a5a: $29
	inc c                                            ; $5a5b: $0c
	jp nz, $0c29                                     ; $5a5c: $c2 $29 $0c

	ld a, [hl]                                       ; $5a5f: $7e
	inc h                                            ; $5a60: $24
	nop                                              ; $5a61: $00
	xor e                                            ; $5a62: $ab
	add $29                                          ; $5a63: $c6 $29
	inc c                                            ; $5a65: $0c
	ld a, [hl]                                       ; $5a66: $7e
	nop                                              ; $5a67: $00
	and b                                            ; $5a68: $a0
	jp nz, $0c29                                     ; $5a69: $c2 $29 $0c

	add $7e                                          ; $5a6c: $c6 $7e
	dec e                                            ; $5a6e: $1d
	inc d                                            ; $5a6f: $14
	xor c                                            ; $5a70: $a9
	ld h, $18                                        ; $5a71: $26 $18
	jp nz, $1d7e                                     ; $5a73: $c2 $7e $1d

	nop                                              ; $5a76: $00
	xor c                                            ; $5a77: $a9
	ld h, $0c                                        ; $5a78: $26 $0c
	ld a, [hl]                                       ; $5a7a: $7e
	nop                                              ; $5a7b: $00
	sub e                                            ; $5a7c: $93
	add $22                                          ; $5a7d: $c6 $22
	ld b, $c2                                        ; $5a7f: $06 $c2
	ld [hl+], a                                      ; $5a81: $22
	ld b, $c6                                        ; $5a82: $06 $c6
	dec h                                            ; $5a84: $25
	ld b, $c2                                        ; $5a85: $06 $c2
	dec h                                            ; $5a87: $25
	ld b, $c6                                        ; $5a88: $06 $c6
	ld a, [hl+]                                      ; $5a8a: $2a
	ld b, $c2                                        ; $5a8b: $06 $c2
	ld a, [hl+]                                      ; $5a8d: $2a
	ld b, $c6                                        ; $5a8e: $06 $c6
	ld [hl+], a                                      ; $5a90: $22
	ld b, $c2                                        ; $5a91: $06 $c2
	ld [hl+], a                                      ; $5a93: $22
	ld b, $c6                                        ; $5a94: $06 $c6
	ld [hl+], a                                      ; $5a96: $22
	ld b, $c2                                        ; $5a97: $06 $c2
	ld [hl+], a                                      ; $5a99: $22
	ld b, $c6                                        ; $5a9a: $06 $c6
	dec h                                            ; $5a9c: $25
	ld b, $c2                                        ; $5a9d: $06 $c2
	dec h                                            ; $5a9f: $25
	ld b, $c6                                        ; $5aa0: $06 $c6
	ld a, [hl+]                                      ; $5aa2: $2a
	ld b, $c2                                        ; $5aa3: $06 $c2
	ld a, [hl+]                                      ; $5aa5: $2a
	ld b, $c6                                        ; $5aa6: $06 $c6
	ld hl, $c40c                                     ; $5aa8: $21 $0c $c4
	ld hl, $c60c                                     ; $5aab: $21 $0c $c6
	daa                                              ; $5aae: $27
	ld b, $c2                                        ; $5aaf: $06 $c2
	daa                                              ; $5ab1: $27
	ld b, $c6                                        ; $5ab2: $06 $c6
	ld a, [hl+]                                      ; $5ab4: $2a
	ld b, $c2                                        ; $5ab5: $06 $c2
	ld a, [hl+]                                      ; $5ab7: $2a
	ld b, $c6                                        ; $5ab8: $06 $c6
	ld hl, $c206                                     ; $5aba: $21 $06 $c2
	ld hl, $c606                                     ; $5abd: $21 $06 $c6
	ld hl, $c206                                     ; $5ac0: $21 $06 $c2
	ld hl, $c606                                     ; $5ac3: $21 $06 $c6
	daa                                              ; $5ac6: $27
	ld b, $c2                                        ; $5ac7: $06 $c2
	daa                                              ; $5ac9: $27
	ld b, $c6                                        ; $5aca: $06 $c6
	ld a, [hl+]                                      ; $5acc: $2a
	ld b, $c2                                        ; $5acd: $06 $c2
	ld a, [hl+]                                      ; $5acf: $2a
	ld b, $c6                                        ; $5ad0: $06 $c6
	inc l                                            ; $5ad2: $2c
	inc c                                            ; $5ad3: $0c
	jp nz, $0c2c                                     ; $5ad4: $c2 $2c $0c

	add $2c                                          ; $5ad7: $c6 $2c
	ld b, $c2                                        ; $5ad9: $06 $c2
	inc l                                            ; $5adb: $2c
	ld b, $c6                                        ; $5adc: $06 $c6
	ld a, [hl+]                                      ; $5ade: $2a
	ld b, $c2                                        ; $5adf: $06 $c2
	ld a, [hl+]                                      ; $5ae1: $2a
	ld b, $c6                                        ; $5ae2: $06 $c6
	add hl, hl                                       ; $5ae4: $29
	ld b, $c2                                        ; $5ae5: $06 $c2
	add hl, hl                                       ; $5ae7: $29
	ld b, $c6                                        ; $5ae8: $06 $c6
	dec h                                            ; $5aea: $25
	ld b, $c2                                        ; $5aeb: $06 $c2
	dec h                                            ; $5aed: $25
	ld b, $c6                                        ; $5aee: $06 $c6
	jr nz, @+$08                                     ; $5af0: $20 $06

	jp nz, $0620                                     ; $5af2: $c2 $20 $06

	add $1e                                          ; $5af5: $c6 $1e
	ld b, $c2                                        ; $5af7: $06 $c2
	ld e, $06                                        ; $5af9: $1e $06
	add $1d                                          ; $5afb: $c6 $1d

jr_032_5afd:
	ld b, $c2                                        ; $5afd: $06 $c2
	dec e                                            ; $5aff: $1d
	ld b, $fb                                        ; $5b00: $06 $fb
	ret z                                            ; $5b02: $c8

	jr nz, jr_032_5b07                               ; $5b03: $20 $02

	nop                                              ; $5b05: $00
	ld a, [bc]                                       ; $5b06: $0a

jr_032_5b07:
	ei                                               ; $5b07: $fb
	ld [bc], a                                       ; $5b08: $02
	ei                                               ; $5b09: $fb
	ret z                                            ; $5b0a: $c8

	ld sp, $c606                                     ; $5b0b: $31 $06 $c6
	ld sp, $fb06                                     ; $5b0e: $31 $06 $fb
	ld [bc], a                                       ; $5b11: $02
	call nz, $0c31                                   ; $5b12: $c4 $31 $0c
	add $19                                          ; $5b15: $c6 $19
	inc c                                            ; $5b17: $0c
	dec de                                           ; $5b18: $1b
	inc c                                            ; $5b19: $0c
	dec e                                            ; $5b1a: $1d
	inc c                                            ; $5b1b: $0c
	ret                                              ; $5b1c: $c9


	jp nc, Jump_032_7392                             ; $5b1d: $d2 $92 $73

	db $fd                                           ; $5b20: $fd
	ld b, c                                          ; $5b21: $41
	ld e, e                                          ; $5b22: $5b
	ei                                               ; $5b23: $fb
	db $fd                                           ; $5b24: $fd
	ld e, l                                          ; $5b25: $5d
	ld e, e                                          ; $5b26: $5b
	ei                                               ; $5b27: $fb
	ld [bc], a                                       ; $5b28: $02
	db $fd                                           ; $5b29: $fd
	ld b, c                                          ; $5b2a: $41
	ld e, e                                          ; $5b2b: $5b
	db $fd                                           ; $5b2c: $fd
	ld e, l                                          ; $5b2d: $5d
	ld e, e                                          ; $5b2e: $5b
	ret                                              ; $5b2f: $c9


	daa                                              ; $5b30: $27
	inc c                                            ; $5b31: $0c
	dec h                                            ; $5b32: $25
	inc c                                            ; $5b33: $0c
	jp $0c25                                         ; $5b34: $c3 $25 $0c


	ret z                                            ; $5b37: $c8

	cp [hl]                                          ; $5b38: $be
	inc c                                            ; $5b39: $0c
	dec e                                            ; $5b3a: $1d
	jr nz, jr_032_5b5a                               ; $5b3b: $20 $1d

	jr nz, jr_032_5afd                               ; $5b3d: $20 $be

	cp $ff                                           ; $5b3f: $fe $ff
	pop de                                           ; $5b41: $d1
	rst JumpTable                                          ; $5b42: $c7
	add hl, de                                       ; $5b43: $19
	inc c                                            ; $5b44: $0c
	dec e                                            ; $5b45: $1d
	inc c                                            ; $5b46: $0c
	ld e, $0c                                        ; $5b47: $1e $0c
	dec h                                            ; $5b49: $25
	inc h                                            ; $5b4a: $24
	jp nz, $1825                                     ; $5b4b: $c2 $25 $18

	rst JumpTable                                          ; $5b4e: $c7
	cp [hl]                                          ; $5b4f: $be
	inc c                                            ; $5b50: $0c
	dec de                                           ; $5b51: $1b
	ld e, $20                                        ; $5b52: $1e $20
	ld [hl+], a                                      ; $5b54: $22
	nop                                              ; $5b55: $00
	cp [hl]                                          ; $5b56: $be
	daa                                              ; $5b57: $27
	ld e, $c2                                        ; $5b58: $1e $c2

jr_032_5b5a:
	daa                                              ; $5b5a: $27
	ld b, $fd                                        ; $5b5b: $06 $fd
	pop de                                           ; $5b5d: $d1
	rst JumpTable                                          ; $5b5e: $c7
	daa                                              ; $5b5f: $27
	inc c                                            ; $5b60: $0c
	dec h                                            ; $5b61: $25
	inc c                                            ; $5b62: $0c
	jp nz, $0c25                                     ; $5b63: $c2 $25 $0c

	rst JumpTable                                          ; $5b66: $c7
	inc h                                            ; $5b67: $24
	inc c                                            ; $5b68: $0c
	jp nz, $0c24                                     ; $5b69: $c2 $24 $0c

	rst JumpTable                                          ; $5b6c: $c7
	dec h                                            ; $5b6d: $25
	inc c                                            ; $5b6e: $0c
	jp nz, $0c25                                     ; $5b6f: $c2 $25 $0c

	rst JumpTable                                          ; $5b72: $c7
	dec h                                            ; $5b73: $25
	inc c                                            ; $5b74: $0c
	db $fd                                           ; $5b75: $fd
	or h                                             ; $5b76: $b4
	sub [hl]                                         ; $5b77: $96
	pop bc                                           ; $5b78: $c1
	ld [bc], a                                       ; $5b79: $02
	ld [hl], e                                       ; $5b7a: $73
	ld a, [hl]                                       ; $5b7b: $7e
	dec e                                            ; $5b7c: $1d
	ld e, $a0                                        ; $5b7d: $1e $a0
	cp [hl]                                          ; $5b7f: $be
	inc c                                            ; $5b80: $0c
	jr nz, @+$27                                     ; $5b81: $20 $25

	jr nz, @+$29                                     ; $5b83: $20 $27

	cp [hl]                                          ; $5b85: $be
	cp $92                                           ; $5b86: $fe $92
	call z, $2429                                    ; $5b88: $cc $29 $24
	call nz, $0c29                                   ; $5b8b: $c4 $29 $0c
	call z, $0c27                                    ; $5b8e: $cc $27 $0c
	add hl, hl                                       ; $5b91: $29
	inc c                                            ; $5b92: $0c
	ld a, [hl+]                                      ; $5b93: $2a
	inc c                                            ; $5b94: $0c
	jp nz, $0c2a                                     ; $5b95: $c2 $2a $0c

	call z, $0c29                                    ; $5b98: $cc $29 $0c
	jp nz, $0c29                                     ; $5b9b: $c2 $29 $0c

	call z, $0c27                                    ; $5b9e: $cc $27 $0c
	jp nz, $0c27                                     ; $5ba1: $c2 $27 $0c

	call z, $0c25                                    ; $5ba4: $cc $25 $0c
	jp nz, $0c25                                     ; $5ba7: $c2 $25 $0c

	call z, $0c24                                    ; $5baa: $cc $24 $0c
	call nz, $0c24                                   ; $5bad: $c4 $24 $0c
	ret z                                            ; $5bb0: $c8

	ld e, $18                                        ; $5bb1: $1e $18
	call nz, $181e                                   ; $5bb3: $c4 $1e $18
	call z, $0c23                                    ; $5bb6: $cc $23 $0c
	daa                                              ; $5bb9: $27
	inc c                                            ; $5bba: $0c
	ld a, [hl+]                                      ; $5bbb: $2a
	inc c                                            ; $5bbc: $0c
	call nz, $0c2a                                   ; $5bbd: $c4 $2a $0c
	call $0c29                                       ; $5bc0: $cd $29 $0c
	call nz, $0c29                                   ; $5bc3: $c4 $29 $0c
	ret z                                            ; $5bc6: $c8

	inc l                                            ; $5bc7: $2c
	inc c                                            ; $5bc8: $0c
	jp nz, $0c2c                                     ; $5bc9: $c2 $2c $0c

	add $7e                                          ; $5bcc: $c6 $7e
	inc h                                            ; $5bce: $24
	nop                                              ; $5bcf: $00
	xor e                                            ; $5bd0: $ab
	ld l, $0c                                        ; $5bd1: $2e $0c
	ld a, [hl]                                       ; $5bd3: $7e
	nop                                              ; $5bd4: $00
	jp nz, $0c2e                                     ; $5bd5: $c2 $2e $0c

	ret                                              ; $5bd8: $c9


	ld a, [hl]                                       ; $5bd9: $7e
	dec e                                            ; $5bda: $1d
	inc d                                            ; $5bdb: $14
	xor c                                            ; $5bdc: $a9
	add hl, hl                                       ; $5bdd: $29
	jr z, jr_032_5c5e                                ; $5bde: $28 $7e

	dec e                                            ; $5be0: $1d
	nop                                              ; $5be1: $00
	xor c                                            ; $5be2: $a9
	jp nz, $1429                                     ; $5be3: $c2 $29 $14

	ld a, [hl]                                       ; $5be6: $7e
	nop                                              ; $5be7: $00
	and b                                            ; $5be8: $a0
	sra d                                            ; $5be9: $cb $2a
	inc c                                            ; $5beb: $0c
	add hl, hl                                       ; $5bec: $29
	inc c                                            ; $5bed: $0c
	jp z, $0c2a                                      ; $5bee: $ca $2a $0c

	add $2e                                          ; $5bf1: $c6 $2e
	inc c                                            ; $5bf3: $0c
	jp nz, $0c2e                                     ; $5bf4: $c2 $2e $0c

	ret z                                            ; $5bf7: $c8

	ld a, [hl]                                       ; $5bf8: $7e
	add hl, de                                       ; $5bf9: $19
	ld a, [bc]                                       ; $5bfa: $0a
	xor d                                            ; $5bfb: $aa
	ld sp, $c418                                     ; $5bfc: $31 $18 $c4
	ld sp, $7e0c                                     ; $5bff: $31 $0c $7e
	nop                                              ; $5c02: $00
	add $be                                          ; $5c03: $c6 $be
	inc c                                            ; $5c05: $0c
	ld [hl], $35                                     ; $5c06: $36 $35
	ld [hl], $39                                     ; $5c08: $36 $39
	cp [hl]                                          ; $5c0a: $be
	jp nz, $0c39                                     ; $5c0b: $c2 $39 $0c

	ld a, [hl]                                       ; $5c0e: $7e
	add hl, de                                       ; $5c0f: $19
	ld d, b                                          ; $5c10: $50
	xor e                                            ; $5c11: $ab
	or c                                             ; $5c12: $b1
	add c                                            ; $5c13: $81
	ld [hl-], a                                      ; $5c14: $32
	rlca                                             ; $5c15: $07
	dec a                                            ; $5c16: $3d
	xor b                                            ; $5c17: $a8
	ld a, [hl]                                       ; $5c18: $7e
	add hl, de                                       ; $5c19: $19
	nop                                              ; $5c1a: $00
	xor d                                            ; $5c1b: $aa
	sub [hl]                                         ; $5c1c: $96
	nop                                              ; $5c1d: $00
	nop                                              ; $5c1e: $00
	ld a, [hl]                                       ; $5c1f: $7e
	nop                                              ; $5c20: $00
	and b                                            ; $5c21: $a0
	adc $91                                          ; $5c22: $ce $91
	dec e                                            ; $5c24: $1d
	inc c                                            ; $5c25: $0c
	ld e, $0c                                        ; $5c26: $1e $0c

jr_032_5c28:
	jr nz, @+$0e                                     ; $5c28: $20 $0c

	call $fd73                                       ; $5c2a: $cd $73 $fd
	ld e, [hl]                                       ; $5c2d: $5e
	ld e, h                                          ; $5c2e: $5c
	jp z, $0c2a                                      ; $5c2f: $ca $2a $0c

	add hl, hl                                       ; $5c32: $29
	inc c                                            ; $5c33: $0c
	call nz, $0c29                                   ; $5c34: $c4 $29 $0c
	call z, $0c27                                    ; $5c37: $cc $27 $0c
	call nz, $0c27                                   ; $5c3a: $c4 $27 $0c
	jp z, $0a1e                                      ; $5c3d: $ca $1e $0a

	call nz, $021e                                   ; $5c40: $c4 $1e $02
	adc $1e                                          ; $5c43: $ce $1e
	inc c                                            ; $5c45: $0c
	jr nz, @+$0e                                     ; $5c46: $20 $0c

	db $fd                                           ; $5c48: $fd
	ld e, [hl]                                       ; $5c49: $5e
	ld e, h                                          ; $5c4a: $5c
	jp z, $0c2a                                      ; $5c4b: $ca $2a $0c

	add hl, hl                                       ; $5c4e: $29
	inc c                                            ; $5c4f: $0c
	call nz, $0c2a                                   ; $5c50: $c4 $2a $0c
	call $be92                                       ; $5c53: $cd $92 $be
	inc c                                            ; $5c56: $0c
	jr nz, @+$27                                     ; $5c57: $20 $25

	jr nz, @+$29                                     ; $5c59: $20 $27

	cp [hl]                                          ; $5c5b: $be
	cp $ff                                           ; $5c5c: $fe $ff

jr_032_5c5e:
	call z, $91d1                                    ; $5c5e: $cc $d1 $91
	ld [hl+], a                                      ; $5c61: $22
	jr nc, jr_032_5c28                               ; $5c62: $30 $c4

	ld [hl+], a                                      ; $5c64: $22
	inc c                                            ; $5c65: $0c
	call $0c20                                       ; $5c66: $cd $20 $0c
	ld [hl+], a                                      ; $5c69: $22
	inc c                                            ; $5c6a: $0c
	inc h                                            ; $5c6b: $24
	ld a, [bc]                                       ; $5c6c: $0a
	call nz, $0224                                   ; $5c6d: $c4 $24 $02
	call $1824                                       ; $5c70: $cd $24 $18
	dec h                                            ; $5c73: $25
	inc c                                            ; $5c74: $0c
	inc h                                            ; $5c75: $24
	inc c                                            ; $5c76: $0c
	call nz, $0c24                                   ; $5c77: $c4 $24 $0c
	call $0c22                                       ; $5c7a: $cd $22 $0c
	call nz, $0c22                                   ; $5c7d: $c4 $22 $0c
	call $0c20                                       ; $5c80: $cd $20 $0c
	ld a, [hl]                                       ; $5c83: $7e
	inc hl                                           ; $5c84: $23
	nop                                              ; $5c85: $00
	xor e                                            ; $5c86: $ab
	jp z, $0c2a                                      ; $5c87: $ca $2a $0c

	add hl, hl                                       ; $5c8a: $29
	inc c                                            ; $5c8b: $0c
	call nz, $0c29                                   ; $5c8c: $c4 $29 $0c
	call z, $0c27                                    ; $5c8f: $cc $27 $0c
	call nz, $0c27                                   ; $5c92: $c4 $27 $0c
	jp z, $007e                                      ; $5c95: $ca $7e $00

	add hl, hl                                       ; $5c98: $29
	inc c                                            ; $5c99: $0c
	call nz, $0c29                                   ; $5c9a: $c4 $29 $0c
	sla b                                            ; $5c9d: $cb $20
	inc c                                            ; $5c9f: $0c
	db $fd                                           ; $5ca0: $fd
	or h                                             ; $5ca1: $b4
	sub [hl]                                         ; $5ca2: $96
	ld hl, $7318                                     ; $5ca3: $21 $18 $73
	nop                                              ; $5ca6: $00

jr_032_5ca7:
	jr nc, jr_032_5ca7                               ; $5ca7: $30 $fe

	cp l                                             ; $5ca9: $bd
	ld [bc], a                                       ; $5caa: $02
	dec c                                            ; $5cab: $0d
	inc c                                            ; $5cac: $0c
	ld a, [bc]                                       ; $5cad: $0a
	add $0d                                          ; $5cae: $c6 $0d
	ld [bc], a                                       ; $5cb0: $02
	jp nz, $060d                                     ; $5cb1: $c2 $0d $06

	add $0d                                          ; $5cb4: $c6 $0d
	ld b, $c2                                        ; $5cb6: $06 $c2
	inc d                                            ; $5cb8: $14
	ld b, $c6                                        ; $5cb9: $06 $c6
	inc d                                            ; $5cbb: $14
	ld b, $c2                                        ; $5cbc: $06 $c2
	dec c                                            ; $5cbe: $0d
	ld b, $c6                                        ; $5cbf: $06 $c6
	dec c                                            ; $5cc1: $0d
	ld b, $c2                                        ; $5cc2: $06 $c2
	ld [de], a                                       ; $5cc4: $12
	ld b, $c6                                        ; $5cc5: $06 $c6
	ld [de], a                                       ; $5cc7: $12
	ld b, $c2                                        ; $5cc8: $06 $c2
	dec c                                            ; $5cca: $0d
	ld b, $c6                                        ; $5ccb: $06 $c6
	dec c                                            ; $5ccd: $0d
	ld b, $c2                                        ; $5cce: $06 $c2
	ld de, $c606                                     ; $5cd0: $11 $06 $c6
	ld de, $c206                                     ; $5cd3: $11 $06 $c2
	cp l                                             ; $5cd6: $bd
	ld [bc], a                                       ; $5cd7: $02
	inc c                                            ; $5cd8: $0c
	inc c                                            ; $5cd9: $0c
	ld a, [bc]                                       ; $5cda: $0a
	add $0c                                          ; $5cdb: $c6 $0c
	ld [bc], a                                       ; $5cdd: $02
	jp nz, $060c                                     ; $5cde: $c2 $0c $06

	add $0c                                          ; $5ce1: $c6 $0c
	ld b, $c2                                        ; $5ce3: $06 $c2
	inc d                                            ; $5ce5: $14
	ld b, $c6                                        ; $5ce6: $06 $c6
	inc d                                            ; $5ce8: $14
	ld b, $c2                                        ; $5ce9: $06 $c2
	inc c                                            ; $5ceb: $0c
	ld b, $c6                                        ; $5cec: $06 $c6
	inc c                                            ; $5cee: $0c
	ld b, $c2                                        ; $5cef: $06 $c2
	inc d                                            ; $5cf1: $14
	ld b, $c6                                        ; $5cf2: $06 $c6
	inc d                                            ; $5cf4: $14
	ld b, $c2                                        ; $5cf5: $06 $c2
	inc c                                            ; $5cf7: $0c
	ld b, $c6                                        ; $5cf8: $06 $c6
	inc c                                            ; $5cfa: $0c
	ld b, $c2                                        ; $5cfb: $06 $c2
	rrca                                             ; $5cfd: $0f
	ld b, $c6                                        ; $5cfe: $06 $c6
	rrca                                             ; $5d00: $0f
	ld b, $c2                                        ; $5d01: $06 $c2
	inc c                                            ; $5d03: $0c
	inc c                                            ; $5d04: $0c
	jp nz, $060b                                     ; $5d05: $c2 $0b $06

	add $0b                                          ; $5d08: $c6 $0b
	ld b, $c2                                        ; $5d0a: $06 $c2
	dec bc                                           ; $5d0c: $0b
	ld b, $c6                                        ; $5d0d: $06 $c6
	dec bc                                           ; $5d0f: $0b
	ld b, $c2                                        ; $5d10: $06 $c2
	ld [de], a                                       ; $5d12: $12
	ld b, $c6                                        ; $5d13: $06 $c6
	ld [de], a                                       ; $5d15: $12
	ld b, $c2                                        ; $5d16: $06 $c2
	dec bc                                           ; $5d18: $0b
	ld b, $c6                                        ; $5d19: $06 $c6
	dec bc                                           ; $5d1b: $0b
	ld b, $c2                                        ; $5d1c: $06 $c2
	ld [de], a                                       ; $5d1e: $12
	ld b, $c6                                        ; $5d1f: $06 $c6
	ld [de], a                                       ; $5d21: $12
	ld b, $c2                                        ; $5d22: $06 $c2
	dec bc                                           ; $5d24: $0b
	ld b, $c6                                        ; $5d25: $06 $c6
	dec bc                                           ; $5d27: $0b
	ld b, $c2                                        ; $5d28: $06 $c2
	ld b, $06                                        ; $5d2a: $06 $06
	add $06                                          ; $5d2c: $c6 $06
	ld b, $c2                                        ; $5d2e: $06 $c2
	dec bc                                           ; $5d30: $0b
	inc c                                            ; $5d31: $0c
	jp nz, $060a                                     ; $5d32: $c2 $0a $06

	add $0a                                          ; $5d35: $c6 $0a
	ld b, $c2                                        ; $5d37: $06 $c2
	ld a, [bc]                                       ; $5d39: $0a
	ld b, $c6                                        ; $5d3a: $06 $c6
	ld a, [bc]                                       ; $5d3c: $0a
	ld b, $c2                                        ; $5d3d: $06 $c2
	ld d, $06                                        ; $5d3f: $16 $06
	add $16                                          ; $5d41: $c6 $16
	ld b, $c2                                        ; $5d43: $06 $c2
	ld a, [bc]                                       ; $5d45: $0a
	ld b, $c6                                        ; $5d46: $06 $c6
	ld a, [bc]                                       ; $5d48: $0a
	ld b, $c2                                        ; $5d49: $06 $c2
	ld d, $06                                        ; $5d4b: $16 $06
	add $16                                          ; $5d4d: $c6 $16
	ld b, $c2                                        ; $5d4f: $06 $c2
	ld a, [bc]                                       ; $5d51: $0a
	ld b, $c6                                        ; $5d52: $06 $c6
	ld a, [bc]                                       ; $5d54: $0a
	ld b, $c2                                        ; $5d55: $06 $c2
	inc d                                            ; $5d57: $14
	ld b, $c6                                        ; $5d58: $06 $c6
	inc d                                            ; $5d5a: $14
	ld b, $c2                                        ; $5d5b: $06 $c2
	ld de, $c606                                     ; $5d5d: $11 $06 $c6
	ld de, $c206                                     ; $5d60: $11 $06 $c2
	ld [de], a                                       ; $5d63: $12
	ld b, $c6                                        ; $5d64: $06 $c6
	ld [de], a                                       ; $5d66: $12
	ld b, $c2                                        ; $5d67: $06 $c2
	ld [de], a                                       ; $5d69: $12
	ld b, $c6                                        ; $5d6a: $06 $c6
	ld [de], a                                       ; $5d6c: $12
	ld b, $c2                                        ; $5d6d: $06 $c2

jr_032_5d6f:
	ld de, $c606                                     ; $5d6f: $11 $06 $c6
	ld de, $c206                                     ; $5d72: $11 $06 $c2
	ld [de], a                                       ; $5d75: $12
	ld b, $c6                                        ; $5d76: $06 $c6
	ld [de], a                                       ; $5d78: $12
	ld b, $c2                                        ; $5d79: $06 $c2
	inc d                                            ; $5d7b: $14
	ld b, $c6                                        ; $5d7c: $06 $c6
	inc d                                            ; $5d7e: $14
	ld b, $c2                                        ; $5d7f: $06 $c2
	ld [de], a                                       ; $5d81: $12
	ld b, $c6                                        ; $5d82: $06 $c6
	ld [de], a                                       ; $5d84: $12
	ld b, $c2                                        ; $5d85: $06 $c2
	inc d                                            ; $5d87: $14
	ld b, $c6                                        ; $5d88: $06 $c6
	inc d                                            ; $5d8a: $14
	ld b, $c2                                        ; $5d8b: $06 $c2
	cp l                                             ; $5d8d: $bd
	ld [bc], a                                       ; $5d8e: $02
	dec d                                            ; $5d8f: $15
	inc c                                            ; $5d90: $0c
	ld a, [bc]                                       ; $5d91: $0a
	add $15                                          ; $5d92: $c6 $15
	ld [bc], a                                       ; $5d94: $02
	jp nz, $0c15                                     ; $5d95: $c2 $15 $0c

	ld a, a                                          ; $5d98: $7f
	inc e                                            ; $5d99: $1c
	add hl, de                                       ; $5d9a: $19
	inc d                                            ; $5d9b: $14
	add $19                                          ; $5d9c: $c6 $19
	inc b                                            ; $5d9e: $04
	jp nz, $0c1b                                     ; $5d9f: $c2 $1b $0c

	add $1b                                          ; $5da2: $c6 $1b
	ld b, $c2                                        ; $5da4: $06 $c2
	add hl, de                                       ; $5da6: $19
	inc c                                            ; $5da7: $0c
	add $19                                          ; $5da8: $c6 $19
	ld b, $c2                                        ; $5daa: $06 $c2
	dec de                                           ; $5dac: $1b
	inc c                                            ; $5dad: $0c
	ld a, a                                          ; $5dae: $7f
	jr jr_032_5d6f                                   ; $5daf: $18 $be

	ld b, $0d                                        ; $5db1: $06 $0d
	nop                                              ; $5db3: $00
	dec c                                            ; $5db4: $0d
	nop                                              ; $5db5: $00
	cp [hl]                                          ; $5db6: $be
	add hl, de                                       ; $5db7: $19
	ld bc, $0b00                                     ; $5db8: $01 $00 $0b
	add hl, de                                       ; $5dbb: $19
	ld b, $00                                        ; $5dbc: $06 $00
	ld b, $19                                        ; $5dbe: $06 $19
	ld bc, $0b00                                     ; $5dc0: $01 $00 $0b
	add hl, de                                       ; $5dc3: $19
	ld b, $00                                        ; $5dc4: $06 $00
	ld b, $19                                        ; $5dc6: $06 $19
	ld bc, $0b00                                     ; $5dc8: $01 $00 $0b
	add hl, de                                       ; $5dcb: $19
	ld b, $00                                        ; $5dcc: $06 $00
	ld b, $19                                        ; $5dce: $06 $19
	inc c                                            ; $5dd0: $0c
	add $0d                                          ; $5dd1: $c6 $0d
	inc c                                            ; $5dd3: $0c
	jp nz, $0a0d                                     ; $5dd4: $c2 $0d $0a

	add $0d                                          ; $5dd7: $c6 $0d
	ld [bc], a                                       ; $5dd9: $02
	jp nz, $240d                                     ; $5dda: $c2 $0d $24

	add $0d                                          ; $5ddd: $c6 $0d
	jr @-$3c                                         ; $5ddf: $18 $c2

	pop de                                           ; $5de1: $d1
	ld a, a                                          ; $5de2: $7f
	jr jr_032_5e58                                   ; $5de3: $18 $73

	ld [de], a                                       ; $5de5: $12
	ld b, $00                                        ; $5de6: $06 $00
	ld b, $12                                        ; $5de8: $06 $12
	ld b, $00                                        ; $5dea: $06 $00
	ld [de], a                                       ; $5dec: $12
	ld a, [hl]                                       ; $5ded: $7e
	dec e                                            ; $5dee: $1d
	inc c                                            ; $5def: $0c
	and b                                            ; $5df0: $a0
	ld [de], a                                       ; $5df1: $12
	inc h                                            ; $5df2: $24
	add $12                                          ; $5df3: $c6 $12
	jr jr_032_5e75                                   ; $5df5: $18 $7e

	nop                                              ; $5df7: $00
	jp nz, $0614                                     ; $5df8: $c2 $14 $06

	nop                                              ; $5dfb: $00
	ld b, $14                                        ; $5dfc: $06 $14
	ld b, $00                                        ; $5dfe: $06 $00
	ld a, [hl+]                                      ; $5e00: $2a
	ld a, [hl]                                       ; $5e01: $7e
	dec e                                            ; $5e02: $1d
	inc c                                            ; $5e03: $0c
	and b                                            ; $5e04: $a0
	inc d                                            ; $5e05: $14
	ld e, $c6                                        ; $5e06: $1e $c6
	inc d                                            ; $5e08: $14
	ld b, $7e                                        ; $5e09: $06 $7e
	nop                                              ; $5e0b: $00
	jp nz, $0cbe                                     ; $5e0c: $c2 $be $0c

	dec c                                            ; $5e0f: $0d
	inc d                                            ; $5e10: $14
	nop                                              ; $5e11: $00
	dec c                                            ; $5e12: $0d
	nop                                              ; $5e13: $00
	inc d                                            ; $5e14: $14
	dec c                                            ; $5e15: $0d
	inc d                                            ; $5e16: $14
	cp [hl]                                          ; $5e17: $be
	cp [hl]                                          ; $5e18: $be
	inc c                                            ; $5e19: $0c
	dec c                                            ; $5e1a: $0d
	inc d                                            ; $5e1b: $14
	nop                                              ; $5e1c: $00
	dec c                                            ; $5e1d: $0d
	nop                                              ; $5e1e: $00
	ld d, $14                                        ; $5e1f: $16 $14
	inc de                                           ; $5e21: $13
	cp [hl]                                          ; $5e22: $be
	ld [de], a                                       ; $5e23: $12
	ld b, $00                                        ; $5e24: $06 $00
	ld b, $12                                        ; $5e26: $06 $12
	ld b, $00                                        ; $5e28: $06 $00
	ld [de], a                                       ; $5e2a: $12
	ld a, [hl]                                       ; $5e2b: $7e
	dec e                                            ; $5e2c: $1d
	inc c                                            ; $5e2d: $0c
	and b                                            ; $5e2e: $a0
	ld [de], a                                       ; $5e2f: $12
	inc h                                            ; $5e30: $24
	add $12                                          ; $5e31: $c6 $12
	jr jr_032_5eb3                                   ; $5e33: $18 $7e

	nop                                              ; $5e35: $00
	jp nz, $0614                                     ; $5e36: $c2 $14 $06

	nop                                              ; $5e39: $00
	ld b, $14                                        ; $5e3a: $06 $14
	ld b, $00                                        ; $5e3c: $06 $00
	ld a, [hl+]                                      ; $5e3e: $2a
	ld a, [hl]                                       ; $5e3f: $7e
	dec e                                            ; $5e40: $1d
	inc c                                            ; $5e41: $0c
	and b                                            ; $5e42: $a0
	inc d                                            ; $5e43: $14
	ld e, $c6                                        ; $5e44: $1e $c6
	inc d                                            ; $5e46: $14
	ld b, $7e                                        ; $5e47: $06 $7e
	nop                                              ; $5e49: $00
	jp nz, $0cbe                                     ; $5e4a: $c2 $be $0c

	dec c                                            ; $5e4d: $0d
	inc d                                            ; $5e4e: $14
	nop                                              ; $5e4f: $00
	dec c                                            ; $5e50: $0d
	nop                                              ; $5e51: $00
	inc d                                            ; $5e52: $14
	dec c                                            ; $5e53: $0d
	inc d                                            ; $5e54: $14
	cp [hl]                                          ; $5e55: $be
	cp [hl]                                          ; $5e56: $be
	inc c                                            ; $5e57: $0c

jr_032_5e58:
	dec c                                            ; $5e58: $0d
	inc d                                            ; $5e59: $14
	nop                                              ; $5e5a: $00
	dec c                                            ; $5e5b: $0d
	nop                                              ; $5e5c: $00
	cp [hl]                                          ; $5e5d: $be
	inc d                                            ; $5e5e: $14

jr_032_5e5f:
	jr jr_032_5e5f                                   ; $5e5f: $18 $fe

	rst $38                                          ; $5e61: $ff
	ret nc                                           ; $5e62: $d0

	sub [hl]                                         ; $5e63: $96

jr_032_5e64:
	nop                                              ; $5e64: $00

jr_032_5e65:
	jr nc, jr_032_5e65                               ; $5e65: $30 $fe

	ld e, $0c                                        ; $5e67: $1e $0c
	cp [hl]                                          ; $5e69: $be
	inc c                                            ; $5e6a: $0c
	nop                                              ; $5e6b: $00
	dec e                                            ; $5e6c: $1d
	jr nz, @+$1f                                     ; $5e6d: $20 $1d

	rra                                              ; $5e6f: $1f
	rra                                              ; $5e70: $1f
	jr nz, jr_032_5e91                               ; $5e71: $20 $1e

	cp [hl]                                          ; $5e73: $be
	db $fd                                           ; $5e74: $fd

jr_032_5e75:
	and $5e                                          ; $5e75: $e6 $5e
	cp [hl]                                          ; $5e77: $be
	inc c                                            ; $5e78: $0c
	rra                                              ; $5e79: $1f
	rra                                              ; $5e7a: $1f
	jr nz, @+$1f                                     ; $5e7b: $20 $1d

	rra                                              ; $5e7d: $1f
	rra                                              ; $5e7e: $1f
	jr nz, jr_032_5e9f                               ; $5e7f: $20 $1e

	cp [hl]                                          ; $5e81: $be
	cp [hl]                                          ; $5e82: $be
	inc c                                            ; $5e83: $0c
	nop                                              ; $5e84: $00
	rra                                              ; $5e85: $1f
	jr nz, @+$1f                                     ; $5e86: $20 $1d

jr_032_5e88:
	dec e                                            ; $5e88: $1d
	dec e                                            ; $5e89: $1d
	dec e                                            ; $5e8a: $1d
	jr nz, @-$40                                     ; $5e8b: $20 $be

	cp [hl]                                          ; $5e8d: $be
	inc c                                            ; $5e8e: $0c
	rra                                              ; $5e8f: $1f
	rra                                              ; $5e90: $1f

jr_032_5e91:
	jr nz, jr_032_5eb0                               ; $5e91: $20 $1d

	rra                                              ; $5e93: $1f
	rra                                              ; $5e94: $1f
	jr nz, @+$20                                     ; $5e95: $20 $1e

	cp [hl]                                          ; $5e97: $be
	db $fd                                           ; $5e98: $fd
	and $5e                                          ; $5e99: $e6 $5e
	cp [hl]                                          ; $5e9b: $be
	inc c                                            ; $5e9c: $0c
	rra                                              ; $5e9d: $1f
	rra                                              ; $5e9e: $1f

jr_032_5e9f:
	dec e                                            ; $5e9f: $1d
	jr nz, @+$1f                                     ; $5ea0: $20 $1d

	jr nz, jr_032_5ec1                               ; $5ea2: $20 $1d

	jr nz, jr_032_5e64                               ; $5ea4: $20 $be

	cp [hl]                                          ; $5ea6: $be
	inc c                                            ; $5ea7: $0c
	jr nz, @+$1f                                     ; $5ea8: $20 $1d

	rra                                              ; $5eaa: $1f
	rra                                              ; $5eab: $1f
	cp [hl]                                          ; $5eac: $be

jr_032_5ead:
	nop                                              ; $5ead: $00
	jr jr_032_5ecf                                   ; $5eae: $18 $1f

jr_032_5eb0:
	jr jr_032_5ead                                   ; $5eb0: $18 $fb

	db $fd                                           ; $5eb2: $fd

jr_032_5eb3:
	jp c, $fb5e                                      ; $5eb3: $da $5e $fb

	inc bc                                           ; $5eb6: $03
	db $fd                                           ; $5eb7: $fd
	ldh a, [c]                                       ; $5eb8: $f2
	ld e, [hl]                                       ; $5eb9: $5e
	db $fd                                           ; $5eba: $fd
	jp c, $fd5e                                      ; $5ebb: $da $5e $fd

	jp c, $be5e                                      ; $5ebe: $da $5e $be

jr_032_5ec1:
	inc c                                            ; $5ec1: $0c
	rra                                              ; $5ec2: $1f
	rra                                              ; $5ec3: $1f
	jr nz, jr_032_5ee5                               ; $5ec4: $20 $1f

	jr nz, jr_032_5ee7                               ; $5ec6: $20 $1f

	jr nz, jr_032_5e88                               ; $5ec8: $20 $be

	rra                                              ; $5eca: $1f
	ld b, $1f                                        ; $5ecb: $06 $1f
	ld b, $be                                        ; $5ecd: $06 $be

jr_032_5ecf:
	inc c                                            ; $5ecf: $0c
	rra                                              ; $5ed0: $1f
	rra                                              ; $5ed1: $1f
	jr nz, jr_032_5ef3                               ; $5ed2: $20 $1f

	rra                                              ; $5ed4: $1f
	jr nz, @+$22                                     ; $5ed5: $20 $20

	cp [hl]                                          ; $5ed7: $be
	cp $ff                                           ; $5ed8: $fe $ff
	cp [hl]                                          ; $5eda: $be
	inc c                                            ; $5edb: $0c
	rra                                              ; $5edc: $1f
	rra                                              ; $5edd: $1f
	jr nz, jr_032_5eff                               ; $5ede: $20 $1f

	dec e                                            ; $5ee0: $1d
	rra                                              ; $5ee1: $1f
	jr nz, jr_032_5f03                               ; $5ee2: $20 $1f

	cp [hl]                                          ; $5ee4: $be

jr_032_5ee5:
	db $fd                                           ; $5ee5: $fd
	cp [hl]                                          ; $5ee6: $be

jr_032_5ee7:
	inc c                                            ; $5ee7: $0c
	nop                                              ; $5ee8: $00
	rra                                              ; $5ee9: $1f
	jr nz, jr_032_5f09                               ; $5eea: $20 $1d

	rra                                              ; $5eec: $1f
	rra                                              ; $5eed: $1f
	jr nz, jr_032_5f0e                               ; $5eee: $20 $1e

	cp [hl]                                          ; $5ef0: $be
	db $fd                                           ; $5ef1: $fd
	cp [hl]                                          ; $5ef2: $be

jr_032_5ef3:
	inc c                                            ; $5ef3: $0c
	rra                                              ; $5ef4: $1f
	rra                                              ; $5ef5: $1f
	jr nz, jr_032_5f17                               ; $5ef6: $20 $1f

	rra                                              ; $5ef8: $1f
	jr nz, jr_032_5f1b                               ; $5ef9: $20 $20

	ld e, $be                                        ; $5efb: $1e $be
	db $fd                                           ; $5efd: $fd
	ret nc                                           ; $5efe: $d0

jr_032_5eff:
	ld b, c                                          ; $5eff: $41
	cp $b5                                           ; $5f00: $fe $b5
	ld h, c                                          ; $5f02: $61

jr_032_5f03:
	nop                                              ; $5f03: $00
	ld [$7e03], sp                                   ; $5f04: $08 $03 $7e
	dec b                                            ; $5f07: $05
	nop                                              ; $5f08: $00

jr_032_5f09:
	xor c                                            ; $5f09: $a9
	inc d                                            ; $5f0a: $14
	ld [$21b1], sp                                   ; $5f0b: $08 $b1 $21

jr_032_5f0e:
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	ld a, [hl]                                       ; $5f10: $7e
	nop                                              ; $5f11: $00
	inc d                                            ; $5f12: $14
	inc bc                                           ; $5f13: $03
	pop bc                                           ; $5f14: $c1
	ld a, [hl]                                       ; $5f15: $7e
	dec b                                            ; $5f16: $05

jr_032_5f17:
	nop                                              ; $5f17: $00
	xor c                                            ; $5f18: $a9
	inc d                                            ; $5f19: $14
	dec b                                            ; $5f1a: $05

jr_032_5f1b:
	or c                                             ; $5f1b: $b1
	sub c                                            ; $5f1c: $91
	ld [$7e03], sp                                   ; $5f1d: $08 $03 $7e
	nop                                              ; $5f20: $00
	dec e                                            ; $5f21: $1d
	ld [$21b1], sp                                   ; $5f22: $08 $b1 $21
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	dec e                                            ; $5f27: $1d
	ld [$91b1], sp                                   ; $5f28: $08 $b1 $91
	ld [$1d03], sp                                   ; $5f2b: $08 $03 $1d
	ld [$21b1], sp                                   ; $5f2e: $08 $b1 $21
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	dec e                                            ; $5f33: $1d
	ld [$61b1], sp                                   ; $5f34: $08 $b1 $61
	ld [$7e03], sp                                   ; $5f37: $08 $03 $7e
	dec b                                            ; $5f3a: $05
	nop                                              ; $5f3b: $00
	xor c                                            ; $5f3c: $a9
	ld [de], a                                       ; $5f3d: $12
	ld [$21b1], sp                                   ; $5f3e: $08 $b1 $21
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	ld a, [hl]                                       ; $5f43: $7e
	nop                                              ; $5f44: $00
	ld [de], a                                       ; $5f45: $12
	inc bc                                           ; $5f46: $03
	pop bc                                           ; $5f47: $c1
	ld a, [hl]                                       ; $5f48: $7e
	dec b                                            ; $5f49: $05
	nop                                              ; $5f4a: $00
	xor c                                            ; $5f4b: $a9
	ld [de], a                                       ; $5f4c: $12
	dec b                                            ; $5f4d: $05
	or c                                             ; $5f4e: $b1
	sub c                                            ; $5f4f: $91
	ld [$7e03], sp                                   ; $5f50: $08 $03 $7e
	nop                                              ; $5f53: $00
	ld e, $08                                        ; $5f54: $1e $08
	or c                                             ; $5f56: $b1
	ld hl, $0000                                     ; $5f57: $21 $00 $00
	ld e, $08                                        ; $5f5a: $1e $08
	or c                                             ; $5f5c: $b1
	sub c                                            ; $5f5d: $91
	ld [$1e03], sp                                   ; $5f5e: $08 $03 $1e
	ld [$21b1], sp                                   ; $5f61: $08 $b1 $21
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	ld e, $08                                        ; $5f66: $1e $08
	or c                                             ; $5f68: $b1
	ld h, c                                          ; $5f69: $61
	ld [$2c04], sp                                   ; $5f6a: $08 $04 $2c
	ld [$11b1], sp                                   ; $5f6d: $08 $b1 $11
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	inc l                                            ; $5f72: $2c
	ld [$61b1], sp                                   ; $5f73: $08 $b1 $61
	ld [$2c03], sp                                   ; $5f76: $08 $03 $2c
	ld [$082e], sp                                   ; $5f79: $08 $2e $08
	or c                                             ; $5f7c: $b1
	ld d, c                                          ; $5f7d: $51
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	inc l                                            ; $5f80: $2c
	ld [$41b1], sp                                   ; $5f81: $08 $b1 $41
	ld [$2e03], sp                                   ; $5f84: $08 $03 $2e
	ld [$0096], sp                                   ; $5f87: $08 $96 $00
	nop                                              ; $5f8a: $00
	inc l                                            ; $5f8b: $2c
	dec b                                            ; $5f8c: $05
	ld l, $05                                        ; $5f8d: $2e $05
	inc l                                            ; $5f8f: $2c
	ld b, $2e                                        ; $5f90: $06 $2e
	dec b                                            ; $5f92: $05
	inc l                                            ; $5f93: $2c
	dec b                                            ; $5f94: $05
	cp [hl]                                          ; $5f95: $be
	inc b                                            ; $5f96: $04
	ld l, $2c                                        ; $5f97: $2e $2c
	ld l, $2c                                        ; $5f99: $2e $2c
	ld l, $be                                        ; $5f9b: $2e $be
	cp l                                             ; $5f9d: $bd
	ld [bc], a                                       ; $5f9e: $02
	inc l                                            ; $5f9f: $2c
	ld [bc], a                                       ; $5fa0: $02
	ld [bc], a                                       ; $5fa1: $02
	push bc                                          ; $5fa2: $c5
	sub c                                            ; $5fa3: $91
	cp [hl]                                          ; $5fa4: $be
	inc bc                                           ; $5fa5: $03
	ld l, $2c                                        ; $5fa6: $2e $2c
	ld l, $2c                                        ; $5fa8: $2e $2c
	ld l, $2c                                        ; $5faa: $2e $2c
	ld l, $2c                                        ; $5fac: $2e $2c
	ld l, $2c                                        ; $5fae: $2e $2c
	cp [hl]                                          ; $5fb0: $be
	cp [hl]                                          ; $5fb1: $be
	inc b                                            ; $5fb2: $04
	ld l, $2c                                        ; $5fb3: $2e $2c
	dec hl                                           ; $5fb5: $2b
	inc l                                            ; $5fb6: $2c
	cp [hl]                                          ; $5fb7: $be
	or c                                             ; $5fb8: $b1
	ld [hl], c                                       ; $5fb9: $71
	ld [$7e03], sp                                   ; $5fba: $08 $03 $7e
	dec b                                            ; $5fbd: $05
	nop                                              ; $5fbe: $00
	xor c                                            ; $5fbf: $a9
	ld a, [hl+]                                      ; $5fc0: $2a
	ld [$007e], sp                                   ; $5fc1: $08 $7e $00
	or c                                             ; $5fc4: $b1
	ld hl, $0000                                     ; $5fc5: $21 $00 $00
	ld a, [hl+]                                      ; $5fc8: $2a
	inc bc                                           ; $5fc9: $03
	pop bc                                           ; $5fca: $c1
	ld a, [hl]                                       ; $5fcb: $7e
	dec b                                            ; $5fcc: $05
	nop                                              ; $5fcd: $00
	xor c                                            ; $5fce: $a9
	ld a, [hl+]                                      ; $5fcf: $2a
	dec b                                            ; $5fd0: $05
	ld a, [hl+]                                      ; $5fd1: $2a
	dec b                                            ; $5fd2: $05
	nop                                              ; $5fd3: $00
	ld a, [bc]                                       ; $5fd4: $0a
	ld a, [hl]                                       ; $5fd5: $7e
	nop                                              ; $5fd6: $00
	add $30                                          ; $5fd7: $c6 $30
	ld bc, $0b31                                     ; $5fd9: $01 $31 $0b
	jr nc, @+$05                                     ; $5fdc: $30 $03

	cp l                                             ; $5fde: $bd
	ld [bc], a                                       ; $5fdf: $02
	ld l, $02                                        ; $5fe0: $2e $02
	ld bc, $0796                                     ; $5fe2: $01 $96 $07
	inc b                                            ; $5fe5: $04
	inc l                                            ; $5fe6: $2c
	rlca                                             ; $5fe7: $07
	or c                                             ; $5fe8: $b1
	ld de, $0000                                     ; $5fe9: $11 $00 $00
	inc l                                            ; $5fec: $2c
	ld [$7ec7], sp                                   ; $5fed: $08 $c7 $7e
	dec b                                            ; $5ff0: $05
	nop                                              ; $5ff1: $00
	xor c                                            ; $5ff2: $a9
	sub [hl]                                         ; $5ff3: $96
	rlca                                             ; $5ff4: $07
	inc bc                                           ; $5ff5: $03
	inc l                                            ; $5ff6: $2c
	rlca                                             ; $5ff7: $07
	ld a, [hl]                                       ; $5ff8: $7e
	nop                                              ; $5ff9: $00
	or c                                             ; $5ffa: $b1
	ld hl, $0000                                     ; $5ffb: $21 $00 $00
	inc l                                            ; $5ffe: $2c
	ld bc, $7ec7                                     ; $5fff: $01 $c7 $7e
	dec b                                            ; $6002: $05
	nop                                              ; $6003: $00
	xor d                                            ; $6004: $aa
	sub [hl]                                         ; $6005: $96
	rlca                                             ; $6006: $07
	inc bc                                           ; $6007: $03
	ld l, $07                                        ; $6008: $2e $07
	or c                                             ; $600a: $b1
	ld hl, $0000                                     ; $600b: $21 $00 $00
	ld a, [hl]                                       ; $600e: $7e
	nop                                              ; $600f: $00
	ld l, $01                                        ; $6010: $2e $01
	or c                                             ; $6012: $b1
	ld [hl], c                                       ; $6013: $71
	rlca                                             ; $6014: $07

Jump_032_6015:
	inc bc                                           ; $6015: $03
	ld a, [hl]                                       ; $6016: $7e
	dec b                                            ; $6017: $05
	nop                                              ; $6018: $00
	xor c                                            ; $6019: $a9
	ld a, [hl+]                                      ; $601a: $2a
	rlca                                             ; $601b: $07
	or c                                             ; $601c: $b1
	ld hl, $0000                                     ; $601d: $21 $00 $00
	ld a, [hl]                                       ; $6020: $7e
	nop                                              ; $6021: $00
	ld a, [hl+]                                      ; $6022: $2a
	ld bc, $71b1                                     ; $6023: $01 $b1 $71
	rlca                                             ; $6026: $07
	inc bc                                           ; $6027: $03
	ld a, [hl]                                       ; $6028: $7e
	dec b                                            ; $6029: $05
	nop                                              ; $602a: $00
	xor d                                            ; $602b: $aa
	inc l                                            ; $602c: $2c
	rlca                                             ; $602d: $07
	or c                                             ; $602e: $b1
	ld hl, $0000                                     ; $602f: $21 $00 $00
	ld a, [hl]                                       ; $6032: $7e
	nop                                              ; $6033: $00
	inc l                                            ; $6034: $2c
	ld bc, $c2b5                                     ; $6035: $01 $b5 $c2
	ld [bc], a                                       ; $6038: $02
	rst $38                                          ; $6039: $ff
	ld [bc], a                                       ; $603a: $02
	dec e                                            ; $603b: $1d
	inc b                                            ; $603c: $04
	inc d                                            ; $603d: $14
	inc b                                            ; $603e: $04
	adc $19                                          ; $603f: $ce $19
	inc b                                            ; $6041: $04
	dec e                                            ; $6042: $1d
	inc b                                            ; $6043: $04
	or c                                             ; $6044: $b1
	add c                                            ; $6045: $81
	rst $38                                          ; $6046: $ff
	inc bc                                           ; $6047: $03
	jr nz, jr_032_604e                               ; $6048: $20 $04

	dec e                                            ; $604a: $1d
	inc b                                            ; $604b: $04
	jr nz, jr_032_6052                               ; $604c: $20 $04

jr_032_604e:
	rst JumpTable                                          ; $604e: $c7
	dec h                                            ; $604f: $25
	inc bc                                           ; $6050: $03
	or c                                             ; $6051: $b1

jr_032_6052:
	db $d3                                           ; $6052: $d3
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	dec de                                           ; $6055: $1b
	ld bc, $1ece                                     ; $6056: $01 $ce $1e
	ld [bc], a                                       ; $6059: $02
	jr nz, jr_032_605e                               ; $605a: $20 $02

	or c                                             ; $605c: $b1
	db $e3                                           ; $605d: $e3

jr_032_605e:
	rst $38                                          ; $605e: $ff
	rlca                                             ; $605f: $07
	ld a, l                                          ; $6060: $7d
	ld bc, $0c24                                     ; $6061: $01 $24 $0c
	ld a, l                                          ; $6064: $7d
	nop                                              ; $6065: $00
	sub [hl]                                         ; $6066: $96
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	or l                                             ; $6069: $b5
	add c                                            ; $606a: $81
	inc bc                                           ; $606b: $03
	ld [$1903], sp                                   ; $606c: $08 $03 $19
	ld [$21b1], sp                                   ; $606f: $08 $b1 $21
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	add hl, de                                       ; $6074: $19
	ld [$81b1], sp                                   ; $6075: $08 $b1 $81
	ld [$1d03], sp                                   ; $6078: $08 $03 $1d
	ld [$21b1], sp                                   ; $607b: $08 $b1 $21
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	dec e                                            ; $6080: $1d
	ld [$81b1], sp                                   ; $6081: $08 $b1 $81
	ld [$2003], sp                                   ; $6084: $08 $03 $20
	ld [$21b1], sp                                   ; $6087: $08 $b1 $21
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	jr nz, jr_032_6096                               ; $608c: $20 $08

	or c                                             ; $608e: $b1
	add c                                            ; $608f: $81
	ld [$1f03], sp                                   ; $6090: $08 $03 $1f
	ld [$21b1], sp                                   ; $6093: $08 $b1 $21

jr_032_6096:
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	rra                                              ; $6098: $1f
	ld [$81b1], sp                                   ; $6099: $08 $b1 $81
	ld [$1b03], sp                                   ; $609c: $08 $03 $1b
	ld [$21b1], sp                                   ; $609f: $08 $b1 $21
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	dec de                                           ; $60a4: $1b
	ld [$81b1], sp                                   ; $60a5: $08 $b1 $81
	ld [$1f03], sp                                   ; $60a8: $08 $03 $1f
	ld [$21b1], sp                                   ; $60ab: $08 $b1 $21
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	rra                                              ; $60b0: $1f
	ld [$81b1], sp                                   ; $60b1: $08 $b1 $81
	ld [$1803], sp                                   ; $60b4: $08 $03 $18
	ld [$21b1], sp                                   ; $60b7: $08 $b1 $21
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	jr jr_032_60c6                                   ; $60bc: $18 $08

	or c                                             ; $60be: $b1
	add c                                            ; $60bf: $81
	ld [$1b03], sp                                   ; $60c0: $08 $03 $1b
	ld [$21b1], sp                                   ; $60c3: $08 $b1 $21

jr_032_60c6:
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	dec de                                           ; $60c8: $1b
	ld [$81b1], sp                                   ; $60c9: $08 $b1 $81
	ld [$1e03], sp                                   ; $60cc: $08 $03 $1e
	ld [$21b1], sp                                   ; $60cf: $08 $b1 $21
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	ld e, $08                                        ; $60d4: $1e $08
	or c                                             ; $60d6: $b1
	add c                                            ; $60d7: $81
	ld [$1d03], sp                                   ; $60d8: $08 $03 $1d
	ld [$21b1], sp                                   ; $60db: $08 $b1 $21
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	dec e                                            ; $60e0: $1d
	ld [$81b1], sp                                   ; $60e1: $08 $b1 $81
	ld [$1e03], sp                                   ; $60e4: $08 $03 $1e
	ld [$21b1], sp                                   ; $60e7: $08 $b1 $21
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	ld e, $08                                        ; $60ec: $1e $08
	or c                                             ; $60ee: $b1
	add c                                            ; $60ef: $81
	ld [$2003], sp                                   ; $60f0: $08 $03 $20
	ld [$21b1], sp                                   ; $60f3: $08 $b1 $21
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	jr nz, @+$0a                                     ; $60f8: $20 $08

	or l                                             ; $60fa: $b5
	add c                                            ; $60fb: $81
	inc bc                                           ; $60fc: $03
	ld [$1e03], sp                                   ; $60fd: $08 $03 $1e
	ld [$21b1], sp                                   ; $6100: $08 $b1 $21
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	ld e, $08                                        ; $6105: $1e $08
	or c                                             ; $6107: $b1
	add c                                            ; $6108: $81
	ld [$1e03], sp                                   ; $6109: $08 $03 $1e
	ld [$21b1], sp                                   ; $610c: $08 $b1 $21
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	ld e, $08                                        ; $6111: $1e $08
	or c                                             ; $6113: $b1
	add c                                            ; $6114: $81
	ld [$1e03], sp                                   ; $6115: $08 $03 $1e
	ld [$21b1], sp                                   ; $6118: $08 $b1 $21
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	ld e, $08                                        ; $611d: $1e $08
	or c                                             ; $611f: $b1
	add c                                            ; $6120: $81
	ld [$1e03], sp                                   ; $6121: $08 $03 $1e
	ld [$21b1], sp                                   ; $6124: $08 $b1 $21
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	ld e, $08                                        ; $6129: $1e $08
	or c                                             ; $612b: $b1
	add c                                            ; $612c: $81
	ld [$1b03], sp                                   ; $612d: $08 $03 $1b
	ld [$21b1], sp                                   ; $6130: $08 $b1 $21
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	dec de                                           ; $6135: $1b
	ld [$81b1], sp                                   ; $6136: $08 $b1 $81
	ld [$1e03], sp                                   ; $6139: $08 $03 $1e
	ld [$21b1], sp                                   ; $613c: $08 $b1 $21
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	ld e, $08                                        ; $6141: $1e $08
	or c                                             ; $6143: $b1
	add c                                            ; $6144: $81
	ld [$1b03], sp                                   ; $6145: $08 $03 $1b
	ld [$21b1], sp                                   ; $6148: $08 $b1 $21
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	dec de                                           ; $614d: $1b
	ld [$81b1], sp                                   ; $614e: $08 $b1 $81
	ld [$1b03], sp                                   ; $6151: $08 $03 $1b
	ld [$21b1], sp                                   ; $6154: $08 $b1 $21
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	dec de                                           ; $6159: $1b
	ld [$81b1], sp                                   ; $615a: $08 $b1 $81
	ld [$1e03], sp                                   ; $615d: $08 $03 $1e
	ld [$21b1], sp                                   ; $6160: $08 $b1 $21
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	ld e, $08                                        ; $6165: $1e $08
	or c                                             ; $6167: $b1
	add c                                            ; $6168: $81
	ld [$1d03], sp                                   ; $6169: $08 $03 $1d
	ld [$31b1], sp                                   ; $616c: $08 $b1 $31
	ld [$1d07], sp                                   ; $616f: $08 $07 $1d
	ld [$2000], sp                                   ; $6172: $08 $00 $20
	cp $ff                                           ; $6175: $fe $ff
	ret nc                                           ; $6177: $d0

	ld b, c                                          ; $6178: $41
	cp $b5                                           ; $6179: $fe $b5
	sub c                                            ; $617b: $91
	ld [bc], a                                       ; $617c: $02
	ld [$7e03], sp                                   ; $617d: $08 $03 $7e
	dec b                                            ; $6180: $05
	nop                                              ; $6181: $00
	xor c                                            ; $6182: $a9
	ld sp, $b107                                     ; $6183: $31 $07 $b1
	ld hl, $0000                                     ; $6186: $21 $00 $00
	ld a, [hl]                                       ; $6189: $7e
	nop                                              ; $618a: $00
	ld sp, $c105                                     ; $618b: $31 $05 $c1
	ld a, [hl]                                       ; $618e: $7e
	dec b                                            ; $618f: $05
	nop                                              ; $6190: $00
	xor d                                            ; $6191: $aa
	ld sp, $b104                                     ; $6192: $31 $04 $b1
	sub c                                            ; $6195: $91
	ld [$2c03], sp                                   ; $6196: $08 $03 $2c
	ld [$21b1], sp                                   ; $6199: $08 $b1 $21
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	ld a, [hl]                                       ; $619e: $7e
	nop                                              ; $619f: $00
	inc l                                            ; $61a0: $2c
	inc bc                                           ; $61a1: $03
	ld a, [hl]                                       ; $61a2: $7e
	dec b                                            ; $61a3: $05
	nop                                              ; $61a4: $00
	xor c                                            ; $61a5: $a9
	pop bc                                           ; $61a6: $c1
	inc l                                            ; $61a7: $2c
	dec b                                            ; $61a8: $05
	or c                                             ; $61a9: $b1
	and c                                            ; $61aa: $a1
	ld [$2903], sp                                   ; $61ab: $08 $03 $29
	ld [$21b1], sp                                   ; $61ae: $08 $b1 $21
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	ld a, [hl]                                       ; $61b3: $7e
	nop                                              ; $61b4: $00
	add hl, hl                                       ; $61b5: $29
	inc bc                                           ; $61b6: $03
	pop bc                                           ; $61b7: $c1
	ld a, [hl]                                       ; $61b8: $7e
	dec b                                            ; $61b9: $05
	nop                                              ; $61ba: $00
	xor c                                            ; $61bb: $a9
	add hl, hl                                       ; $61bc: $29
	dec b                                            ; $61bd: $05
	or c                                             ; $61be: $b1
	sub c                                            ; $61bf: $91
	ld [$7e03], sp                                   ; $61c0: $08 $03 $7e
	dec b                                            ; $61c3: $05
	nop                                              ; $61c4: $00
	xor d                                            ; $61c5: $aa
	ld l, $08                                        ; $61c6: $2e $08
	or c                                             ; $61c8: $b1
	ld hl, $0000                                     ; $61c9: $21 $00 $00
	ld a, [hl]                                       ; $61cc: $7e
	nop                                              ; $61cd: $00
	ld l, $03                                        ; $61ce: $2e $03
	pop bc                                           ; $61d0: $c1
	ld a, [hl]                                       ; $61d1: $7e
	dec b                                            ; $61d2: $05
	nop                                              ; $61d3: $00
	xor c                                            ; $61d4: $a9
	ld l, $05                                        ; $61d5: $2e $05
	ld l, $05                                        ; $61d7: $2e $05
	nop                                              ; $61d9: $00
	inc bc                                           ; $61da: $03
	or c                                             ; $61db: $b1
	and c                                            ; $61dc: $a1
	rlca                                             ; $61dd: $07
	inc b                                            ; $61de: $04
	ld a, [hl]                                       ; $61df: $7e
	dec b                                            ; $61e0: $05
	nop                                              ; $61e1: $00
	xor c                                            ; $61e2: $a9
	inc l                                            ; $61e3: $2c
	rlca                                             ; $61e4: $07
	or c                                             ; $61e5: $b1
	ld de, $0000                                     ; $61e6: $11 $00 $00
	ld a, [hl]                                       ; $61e9: $7e
	nop                                              ; $61ea: $00
	inc l                                            ; $61eb: $2c
	ld bc, $a1b1                                     ; $61ec: $01 $b1 $a1
	ld [$7e03], sp                                   ; $61ef: $08 $03 $7e
	dec b                                            ; $61f2: $05
	nop                                              ; $61f3: $00
	xor c                                            ; $61f4: $a9
	ld a, [hl+]                                      ; $61f5: $2a
	ld [$21b1], sp                                   ; $61f6: $08 $b1 $21
	ld [$7e00], sp                                   ; $61f9: $08 $00 $7e
	nop                                              ; $61fc: $00
	ld a, [hl+]                                      ; $61fd: $2a
	inc bc                                           ; $61fe: $03
	pop bc                                           ; $61ff: $c1
	ld a, [hl]                                       ; $6200: $7e
	dec b                                            ; $6201: $05
	nop                                              ; $6202: $00
	xor c                                            ; $6203: $a9
	ld a, [hl+]                                      ; $6204: $2a
	dec b                                            ; $6205: $05
	or c                                             ; $6206: $b1
	and c                                            ; $6207: $a1
	ld [$7e03], sp                                   ; $6208: $08 $03 $7e
	dec b                                            ; $620b: $05
	nop                                              ; $620c: $00
	xor c                                            ; $620d: $a9
	add hl, hl                                       ; $620e: $29
	ld [$21b1], sp                                   ; $620f: $08 $b1 $21
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	ld a, [hl]                                       ; $6214: $7e
	nop                                              ; $6215: $00
	add hl, hl                                       ; $6216: $29
	inc bc                                           ; $6217: $03
	pop bc                                           ; $6218: $c1
	ld a, [hl]                                       ; $6219: $7e
	dec b                                            ; $621a: $05
	nop                                              ; $621b: $00
	xor c                                            ; $621c: $a9
	add hl, hl                                       ; $621d: $29
	dec b                                            ; $621e: $05
	or c                                             ; $621f: $b1
	and c                                            ; $6220: $a1
	rlca                                             ; $6221: $07
	inc b                                            ; $6222: $04
	add hl, hl                                       ; $6223: $29
	rlca                                             ; $6224: $07
	or c                                             ; $6225: $b1
	ld hl, $0000                                     ; $6226: $21 $00 $00
	ld a, [hl]                                       ; $6229: $7e
	nop                                              ; $622a: $00
	add hl, hl                                       ; $622b: $29
	ld bc, $057e                                     ; $622c: $01 $7e $05
	nop                                              ; $622f: $00
	xor d                                            ; $6230: $aa
	or c                                             ; $6231: $b1
	and c                                            ; $6232: $a1
	rlca                                             ; $6233: $07
	inc b                                            ; $6234: $04
	ld a, [hl+]                                      ; $6235: $2a
	rlca                                             ; $6236: $07
	or c                                             ; $6237: $b1
	ld hl, $0000                                     ; $6238: $21 $00 $00
	ld a, [hl]                                       ; $623b: $7e
	nop                                              ; $623c: $00
	ld a, [hl+]                                      ; $623d: $2a
	ld bc, $a1b1                                     ; $623e: $01 $b1 $a1
	ld [$7e03], sp                                   ; $6241: $08 $03 $7e
	dec b                                            ; $6244: $05
	nop                                              ; $6245: $00
	xor d                                            ; $6246: $aa
	add hl, hl                                       ; $6247: $29
	ld [$21b1], sp                                   ; $6248: $08 $b1 $21
	nop                                              ; $624b: $00
	nop                                              ; $624c: $00
	ld a, [hl]                                       ; $624d: $7e
	nop                                              ; $624e: $00
	add hl, hl                                       ; $624f: $29
	inc bc                                           ; $6250: $03
	pop bc                                           ; $6251: $c1
	ld a, [hl]                                       ; $6252: $7e
	dec b                                            ; $6253: $05
	nop                                              ; $6254: $00
	xor c                                            ; $6255: $a9
	add hl, hl                                       ; $6256: $29
	dec b                                            ; $6257: $05
	or c                                             ; $6258: $b1
	and c                                            ; $6259: $a1
	rlca                                             ; $625a: $07
	inc bc                                           ; $625b: $03
	ld a, [hl]                                       ; $625c: $7e
	dec b                                            ; $625d: $05
	nop                                              ; $625e: $00
	and b                                            ; $625f: $a0
	dec h                                            ; $6260: $25
	rlca                                             ; $6261: $07
	or c                                             ; $6262: $b1
	ld hl, $0000                                     ; $6263: $21 $00 $00
	ld a, [hl]                                       ; $6266: $7e
	nop                                              ; $6267: $00
	dec h                                            ; $6268: $25
	ld bc, $7eca                                     ; $6269: $01 $ca $7e
	dec b                                            ; $626c: $05
	nop                                              ; $626d: $00
	xor c                                            ; $626e: $a9
	sub [hl]                                         ; $626f: $96
	rlca                                             ; $6270: $07
	inc bc                                           ; $6271: $03
	daa                                              ; $6272: $27
	rlca                                             ; $6273: $07
	or c                                             ; $6274: $b1
	ld hl, $0000                                     ; $6275: $21 $00 $00
	ld a, [hl]                                       ; $6278: $7e
	nop                                              ; $6279: $00
	daa                                              ; $627a: $27
	ld bc, $a1b1                                     ; $627b: $01 $b1 $a1
	ld [$7e03], sp                                   ; $627e: $08 $03 $7e
	dec b                                            ; $6281: $05
	nop                                              ; $6282: $00
	xor c                                            ; $6283: $a9
	add hl, hl                                       ; $6284: $29
	ld [$21b1], sp                                   ; $6285: $08 $b1 $21
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	ld a, [hl]                                       ; $628a: $7e
	nop                                              ; $628b: $00
	add hl, hl                                       ; $628c: $29
	inc bc                                           ; $628d: $03
	pop bc                                           ; $628e: $c1
	ld a, [hl]                                       ; $628f: $7e
	dec b                                            ; $6290: $05
	nop                                              ; $6291: $00
	xor c                                            ; $6292: $a9
	add hl, hl                                       ; $6293: $29
	dec b                                            ; $6294: $05
	or c                                             ; $6295: $b1
	and c                                            ; $6296: $a1
	ld [$7e03], sp                                   ; $6297: $08 $03 $7e
	dec b                                            ; $629a: $05
	nop                                              ; $629b: $00
	xor c                                            ; $629c: $a9
	ld a, [hl+]                                      ; $629d: $2a
	ld [$21b1], sp                                   ; $629e: $08 $b1 $21
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	ld a, [hl]                                       ; $62a3: $7e
	nop                                              ; $62a4: $00
	ld a, [hl+]                                      ; $62a5: $2a
	inc bc                                           ; $62a6: $03
	pop bc                                           ; $62a7: $c1
	ld a, [hl]                                       ; $62a8: $7e
	dec b                                            ; $62a9: $05
	nop                                              ; $62aa: $00
	xor c                                            ; $62ab: $a9
	ld a, [hl+]                                      ; $62ac: $2a
	dec b                                            ; $62ad: $05
	call z, $a1b5                                    ; $62ae: $cc $b5 $a1
	ld [bc], a                                       ; $62b1: $02
	ld [$7e03], sp                                   ; $62b2: $08 $03 $7e
	dec b                                            ; $62b5: $05
	nop                                              ; $62b6: $00
	xor c                                            ; $62b7: $a9
	ld sp, $b108                                     ; $62b8: $31 $08 $b1
	ld hl, $0000                                     ; $62bb: $21 $00 $00
	ld a, [hl]                                       ; $62be: $7e
	nop                                              ; $62bf: $00
	ld sp, $c103                                     ; $62c0: $31 $03 $c1
	ld a, [hl]                                       ; $62c3: $7e
	dec b                                            ; $62c4: $05
	nop                                              ; $62c5: $00
	xor c                                            ; $62c6: $a9
	ld sp, $b105                                     ; $62c7: $31 $05 $b1
	pop bc                                           ; $62ca: $c1
	ld [$2c03], sp                                   ; $62cb: $08 $03 $2c
	ld [$21b1], sp                                   ; $62ce: $08 $b1 $21
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	ld a, [hl]                                       ; $62d3: $7e
	nop                                              ; $62d4: $00
	inc l                                            ; $62d5: $2c
	inc bc                                           ; $62d6: $03
	ld a, [hl]                                       ; $62d7: $7e
	dec b                                            ; $62d8: $05
	nop                                              ; $62d9: $00
	xor c                                            ; $62da: $a9
	pop bc                                           ; $62db: $c1
	inc l                                            ; $62dc: $2c
	dec b                                            ; $62dd: $05
	or c                                             ; $62de: $b1
	or c                                             ; $62df: $b1
	ld [$2903], sp                                   ; $62e0: $08 $03 $29
	ld [$21b1], sp                                   ; $62e3: $08 $b1 $21
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	ld a, [hl]                                       ; $62e8: $7e
	nop                                              ; $62e9: $00
	add hl, hl                                       ; $62ea: $29
	inc bc                                           ; $62eb: $03
	pop bc                                           ; $62ec: $c1
	ld a, [hl]                                       ; $62ed: $7e
	dec b                                            ; $62ee: $05
	nop                                              ; $62ef: $00
	xor c                                            ; $62f0: $a9
	add hl, hl                                       ; $62f1: $29
	dec b                                            ; $62f2: $05
	or c                                             ; $62f3: $b1
	and c                                            ; $62f4: $a1
	ld [$7e03], sp                                   ; $62f5: $08 $03 $7e
	dec b                                            ; $62f8: $05
	nop                                              ; $62f9: $00
	xor c                                            ; $62fa: $a9
	ld l, $08                                        ; $62fb: $2e $08
	or c                                             ; $62fd: $b1
	ld hl, $0000                                     ; $62fe: $21 $00 $00
	ld a, [hl]                                       ; $6301: $7e
	nop                                              ; $6302: $00
	ld l, $03                                        ; $6303: $2e $03
	pop bc                                           ; $6305: $c1
	ld a, [hl]                                       ; $6306: $7e
	dec b                                            ; $6307: $05
	nop                                              ; $6308: $00
	xor c                                            ; $6309: $a9
	ld l, $05                                        ; $630a: $2e $05
	ld l, $05                                        ; $630c: $2e $05
	nop                                              ; $630e: $00
	inc bc                                           ; $630f: $03
	or c                                             ; $6310: $b1
	or c                                             ; $6311: $b1
	rlca                                             ; $6312: $07
	inc b                                            ; $6313: $04
	ld a, [hl]                                       ; $6314: $7e
	dec b                                            ; $6315: $05
	nop                                              ; $6316: $00
	xor c                                            ; $6317: $a9
	inc l                                            ; $6318: $2c
	rlca                                             ; $6319: $07
	or c                                             ; $631a: $b1
	ld de, $0000                                     ; $631b: $11 $00 $00
	ld a, [hl]                                       ; $631e: $7e
	nop                                              ; $631f: $00
	inc l                                            ; $6320: $2c
	ld bc, $b1b1                                     ; $6321: $01 $b1 $b1
	ld [$7e03], sp                                   ; $6324: $08 $03 $7e
	dec b                                            ; $6327: $05
	nop                                              ; $6328: $00
	xor c                                            ; $6329: $a9
	ld a, [hl+]                                      ; $632a: $2a
	ld [$21b1], sp                                   ; $632b: $08 $b1 $21
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	ld a, [hl]                                       ; $6330: $7e
	nop                                              ; $6331: $00
	ld a, [hl+]                                      ; $6332: $2a
	inc bc                                           ; $6333: $03
	pop bc                                           ; $6334: $c1
	ld a, [hl]                                       ; $6335: $7e
	dec b                                            ; $6336: $05
	nop                                              ; $6337: $00
	xor c                                            ; $6338: $a9
	ld a, [hl+]                                      ; $6339: $2a
	dec b                                            ; $633a: $05
	or c                                             ; $633b: $b1
	or c                                             ; $633c: $b1
	ld [$7e03], sp                                   ; $633d: $08 $03 $7e
	dec b                                            ; $6340: $05
	nop                                              ; $6341: $00
	xor c                                            ; $6342: $a9
	add hl, hl                                       ; $6343: $29
	ld [$21b1], sp                                   ; $6344: $08 $b1 $21
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	ld a, [hl]                                       ; $6349: $7e
	nop                                              ; $634a: $00
	add hl, hl                                       ; $634b: $29
	inc bc                                           ; $634c: $03
	pop bc                                           ; $634d: $c1
	ld a, [hl]                                       ; $634e: $7e
	dec b                                            ; $634f: $05
	nop                                              ; $6350: $00
	xor c                                            ; $6351: $a9
	add hl, hl                                       ; $6352: $29
	dec b                                            ; $6353: $05
	or c                                             ; $6354: $b1
	or c                                             ; $6355: $b1
	rlca                                             ; $6356: $07
	inc bc                                           ; $6357: $03
	add hl, hl                                       ; $6358: $29
	rlca                                             ; $6359: $07
	or c                                             ; $635a: $b1
	ld hl, $0000                                     ; $635b: $21 $00 $00
	ld a, [hl]                                       ; $635e: $7e
	nop                                              ; $635f: $00
	add hl, hl                                       ; $6360: $29
	ld bc, $057e                                     ; $6361: $01 $7e $05
	nop                                              ; $6364: $00
	xor d                                            ; $6365: $aa
	or c                                             ; $6366: $b1
	and c                                            ; $6367: $a1
	rlca                                             ; $6368: $07
	inc bc                                           ; $6369: $03
	ld a, [hl+]                                      ; $636a: $2a
	rlca                                             ; $636b: $07
	or c                                             ; $636c: $b1
	ld hl, $0000                                     ; $636d: $21 $00 $00
	ld a, [hl]                                       ; $6370: $7e
	nop                                              ; $6371: $00
	ld a, [hl+]                                      ; $6372: $2a
	ld bc, $a1b1                                     ; $6373: $01 $b1 $a1
	rlca                                             ; $6376: $07
	inc bc                                           ; $6377: $03
	ld a, [hl]                                       ; $6378: $7e
	dec b                                            ; $6379: $05
	nop                                              ; $637a: $00
	xor c                                            ; $637b: $a9
	daa                                              ; $637c: $27
	rlca                                             ; $637d: $07
	or c                                             ; $637e: $b1
	ld hl, $0000                                     ; $637f: $21 $00 $00
	ld a, [hl]                                       ; $6382: $7e
	nop                                              ; $6383: $00
	daa                                              ; $6384: $27
	ld bc, $057e                                     ; $6385: $01 $7e $05
	nop                                              ; $6388: $00
	xor d                                            ; $6389: $aa
	or c                                             ; $638a: $b1
	and c                                            ; $638b: $a1
	rlca                                             ; $638c: $07
	inc bc                                           ; $638d: $03
	add hl, hl                                       ; $638e: $29
	rlca                                             ; $638f: $07
	or c                                             ; $6390: $b1
	ld hl, $0000                                     ; $6391: $21 $00 $00
	ld a, [hl]                                       ; $6394: $7e
	nop                                              ; $6395: $00
	add hl, hl                                       ; $6396: $29
	ld bc, $a1b1                                     ; $6397: $01 $b1 $a1
	ld [$7e03], sp                                   ; $639a: $08 $03 $7e
	dec b                                            ; $639d: $05
	nop                                              ; $639e: $00
	xor c                                            ; $639f: $a9
	dec h                                            ; $63a0: $25
	ld [$41b1], sp                                   ; $63a1: $08 $b1 $41
	inc b                                            ; $63a4: $04
	rlca                                             ; $63a5: $07
	dec h                                            ; $63a6: $25
	inc b                                            ; $63a7: $04
	dec h                                            ; $63a8: $25
	inc b                                            ; $63a9: $04
	pop bc                                           ; $63aa: $c1
	dec h                                            ; $63ab: $25
	db $10                                           ; $63ac: $10
	ld a, [hl]                                       ; $63ad: $7e
	ld bc, $a900                                     ; $63ae: $01 $00 $a9
	sub [hl]                                         ; $63b1: $96
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	sub a                                            ; $63b4: $97
	ld l, a                                          ; $63b5: $6f
	sub c                                            ; $63b6: $91
	inc h                                            ; $63b7: $24
	db $10                                           ; $63b8: $10
	res 2, a                                         ; $63b9: $cb $97
	nop                                              ; $63bb: $00
	sub c                                            ; $63bc: $91
	sub [hl]                                         ; $63bd: $96
	ld [$7e03], sp                                   ; $63be: $08 $03 $7e
	dec b                                            ; $63c1: $05
	nop                                              ; $63c2: $00
	and b                                            ; $63c3: $a0
	ld [hl+], a                                      ; $63c4: $22
	ld [$31b1], sp                                   ; $63c5: $08 $b1 $31
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	ld a, [hl]                                       ; $63ca: $7e
	nop                                              ; $63cb: $00
	ld [hl+], a                                      ; $63cc: $22
	inc bc                                           ; $63cd: $03
	pop bc                                           ; $63ce: $c1
	ld a, [hl]                                       ; $63cf: $7e
	dec b                                            ; $63d0: $05
	nop                                              ; $63d1: $00
	and b                                            ; $63d2: $a0
	ld [hl+], a                                      ; $63d3: $22
	dec b                                            ; $63d4: $05
	or c                                             ; $63d5: $b1
	pop bc                                           ; $63d6: $c1
	ld [$2402], sp                                   ; $63d7: $08 $02 $24
	ld [$31b1], sp                                   ; $63da: $08 $b1 $31
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	ld a, [hl]                                       ; $63df: $7e
	nop                                              ; $63e0: $00
	inc h                                            ; $63e1: $24
	inc bc                                           ; $63e2: $03
	ld a, [hl]                                       ; $63e3: $7e
	dec b                                            ; $63e4: $05
	nop                                              ; $63e5: $00
	and b                                            ; $63e6: $a0
	pop bc                                           ; $63e7: $c1
	inc h                                            ; $63e8: $24
	dec b                                            ; $63e9: $05
	or c                                             ; $63ea: $b1
	pop de                                           ; $63eb: $d1
	ld [$2502], sp                                   ; $63ec: $08 $02 $25
	ld [$31b1], sp                                   ; $63ef: $08 $b1 $31
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	ld a, [hl]                                       ; $63f4: $7e
	nop                                              ; $63f5: $00
	dec h                                            ; $63f6: $25
	inc bc                                           ; $63f7: $03
	pop bc                                           ; $63f8: $c1
	ld a, [hl]                                       ; $63f9: $7e
	dec b                                            ; $63fa: $05
	nop                                              ; $63fb: $00
	and b                                            ; $63fc: $a0
	dec h                                            ; $63fd: $25
	dec b                                            ; $63fe: $05
	or c                                             ; $63ff: $b1
	or c                                             ; $6400: $b1
	ld [$7e02], sp                                   ; $6401: $08 $02 $7e
	dec b                                            ; $6404: $05
	nop                                              ; $6405: $00
	and b                                            ; $6406: $a0
	daa                                              ; $6407: $27
	ld [$21b1], sp                                   ; $6408: $08 $b1 $21
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	ld a, [hl]                                       ; $640d: $7e
	nop                                              ; $640e: $00
	daa                                              ; $640f: $27
	inc bc                                           ; $6410: $03
	pop bc                                           ; $6411: $c1
	ld a, [hl]                                       ; $6412: $7e
	dec b                                            ; $6413: $05
	nop                                              ; $6414: $00
	and b                                            ; $6415: $a0
	daa                                              ; $6416: $27
	dec b                                            ; $6417: $05
	daa                                              ; $6418: $27
	dec b                                            ; $6419: $05
	nop                                              ; $641a: $00
	dec bc                                           ; $641b: $0b
	or c                                             ; $641c: $b1
	pop de                                           ; $641d: $d1
	rlca                                             ; $641e: $07
	inc bc                                           ; $641f: $03
	inc h                                            ; $6420: $24
	rlca                                             ; $6421: $07
	or c                                             ; $6422: $b1
	ld hl, $0000                                     ; $6423: $21 $00 $00
	ld a, [hl]                                       ; $6426: $7e
	nop                                              ; $6427: $00
	inc h                                            ; $6428: $24
	ld bc, $7ecc                                     ; $6429: $01 $cc $7e
	dec b                                            ; $642c: $05
	nop                                              ; $642d: $00
	and b                                            ; $642e: $a0
	sub [hl]                                         ; $642f: $96
	rlca                                             ; $6430: $07
	inc bc                                           ; $6431: $03
	ld [hl+], a                                      ; $6432: $22
	rlca                                             ; $6433: $07
	or c                                             ; $6434: $b1
	ld hl, $0000                                     ; $6435: $21 $00 $00
	ld a, [hl]                                       ; $6438: $7e
	nop                                              ; $6439: $00
	ld [hl+], a                                      ; $643a: $22
	ld bc, $c1b1                                     ; $643b: $01 $b1 $c1
	ld [$7e02], sp                                   ; $643e: $08 $02 $7e
	dec b                                            ; $6441: $05
	nop                                              ; $6442: $00
	and b                                            ; $6443: $a0
	jr nz, jr_032_644e                               ; $6444: $20 $08

	or c                                             ; $6446: $b1
	ld hl, $0000                                     ; $6447: $21 $00 $00
	ld a, [hl]                                       ; $644a: $7e
	nop                                              ; $644b: $00
	jr nz, jr_032_6451                               ; $644c: $20 $03

jr_032_644e:
	pop bc                                           ; $644e: $c1
	ld a, [hl]                                       ; $644f: $7e
	dec b                                            ; $6450: $05

jr_032_6451:
	nop                                              ; $6451: $00
	xor c                                            ; $6452: $a9
	jr nz, jr_032_645a                               ; $6453: $20 $05

	or c                                             ; $6455: $b1
	and c                                            ; $6456: $a1
	ld [$7e03], sp                                   ; $6457: $08 $03 $7e

jr_032_645a:
	dec b                                            ; $645a: $05
	nop                                              ; $645b: $00
	xor c                                            ; $645c: $a9
	inc l                                            ; $645d: $2c
	ld [$21b1], sp                                   ; $645e: $08 $b1 $21
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	ld a, [hl]                                       ; $6463: $7e
	nop                                              ; $6464: $00
	inc l                                            ; $6465: $2c
	inc bc                                           ; $6466: $03
	pop bc                                           ; $6467: $c1
	ld a, [hl]                                       ; $6468: $7e
	dec b                                            ; $6469: $05
	nop                                              ; $646a: $00
	xor c                                            ; $646b: $a9
	inc l                                            ; $646c: $2c
	dec b                                            ; $646d: $05
	inc l                                            ; $646e: $2c
	dec b                                            ; $646f: $05
	nop                                              ; $6470: $00
	inc bc                                           ; $6471: $03
	or c                                             ; $6472: $b1
	or c                                             ; $6473: $b1
	rlca                                             ; $6474: $07
	ld [bc], a                                       ; $6475: $02
	ld a, [hl]                                       ; $6476: $7e
	dec b                                            ; $6477: $05
	nop                                              ; $6478: $00
	xor c                                            ; $6479: $a9
	ld a, [hl+]                                      ; $647a: $2a
	rlca                                             ; $647b: $07
	jp nz, $012a                                     ; $647c: $c2 $2a $01

	or c                                             ; $647f: $b1
	and c                                            ; $6480: $a1
	ld [$7e03], sp                                   ; $6481: $08 $03 $7e
	dec b                                            ; $6484: $05
	nop                                              ; $6485: $00
	xor c                                            ; $6486: $a9
	ld a, [hl+]                                      ; $6487: $2a
	ld [$21b1], sp                                   ; $6488: $08 $b1 $21
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	ld a, [hl]                                       ; $648d: $7e
	nop                                              ; $648e: $00
	ld a, [hl+]                                      ; $648f: $2a
	inc bc                                           ; $6490: $03
	pop bc                                           ; $6491: $c1
	ld a, [hl]                                       ; $6492: $7e
	dec b                                            ; $6493: $05
	nop                                              ; $6494: $00
	xor c                                            ; $6495: $a9
	ld a, [hl+]                                      ; $6496: $2a
	dec b                                            ; $6497: $05
	or c                                             ; $6498: $b1
	and c                                            ; $6499: $a1
	rlca                                             ; $649a: $07
	inc bc                                           ; $649b: $03
	add hl, hl                                       ; $649c: $29
	rlca                                             ; $649d: $07
	or c                                             ; $649e: $b1
	ld hl, $0000                                     ; $649f: $21 $00 $00
	ld a, [hl]                                       ; $64a2: $7e
	nop                                              ; $64a3: $00
	add hl, hl                                       ; $64a4: $29
	ld bc, $7eca                                     ; $64a5: $01 $ca $7e
	dec b                                            ; $64a8: $05
	nop                                              ; $64a9: $00
	xor c                                            ; $64aa: $a9
	sub [hl]                                         ; $64ab: $96
	rlca                                             ; $64ac: $07
	ld [bc], a                                       ; $64ad: $02
	daa                                              ; $64ae: $27
	rlca                                             ; $64af: $07
	or c                                             ; $64b0: $b1
	ld hl, $0000                                     ; $64b1: $21 $00 $00
	ld a, [hl]                                       ; $64b4: $7e
	nop                                              ; $64b5: $00
	daa                                              ; $64b6: $27
	ld bc, $a1b1                                     ; $64b7: $01 $b1 $a1
	ld [$7e02], sp                                   ; $64ba: $08 $02 $7e
	dec b                                            ; $64bd: $05
	nop                                              ; $64be: $00
	xor c                                            ; $64bf: $a9
	add hl, hl                                       ; $64c0: $29
	ld [$21b1], sp                                   ; $64c1: $08 $b1 $21
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	ld a, [hl]                                       ; $64c6: $7e
	nop                                              ; $64c7: $00
	add hl, hl                                       ; $64c8: $29
	inc bc                                           ; $64c9: $03
	pop bc                                           ; $64ca: $c1
	ld a, [hl]                                       ; $64cb: $7e
	dec b                                            ; $64cc: $05
	nop                                              ; $64cd: $00
	xor c                                            ; $64ce: $a9
	add hl, hl                                       ; $64cf: $29
	dec b                                            ; $64d0: $05
	or l                                             ; $64d1: $b5
	or c                                             ; $64d2: $b1
	ld bc, $0208                                     ; $64d3: $01 $08 $02
	ld a, [hl]                                       ; $64d6: $7e
	dec b                                            ; $64d7: $05
	nop                                              ; $64d8: $00
	and b                                            ; $64d9: $a0
	ld a, [hl+]                                      ; $64da: $2a
	ld [$31b1], sp                                   ; $64db: $08 $b1 $31
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	ld a, [hl]                                       ; $64e0: $7e
	nop                                              ; $64e1: $00
	ld a, [hl+]                                      ; $64e2: $2a
	inc bc                                           ; $64e3: $03
	pop bc                                           ; $64e4: $c1
	ld a, [hl]                                       ; $64e5: $7e
	dec b                                            ; $64e6: $05
	nop                                              ; $64e7: $00
	and b                                            ; $64e8: $a0
	ld a, [hl+]                                      ; $64e9: $2a
	dec b                                            ; $64ea: $05
	or c                                             ; $64eb: $b1
	or c                                             ; $64ec: $b1
	ld [$2502], sp                                   ; $64ed: $08 $02 $25
	ld [$31b1], sp                                   ; $64f0: $08 $b1 $31
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	ld a, [hl]                                       ; $64f5: $7e
	nop                                              ; $64f6: $00
	dec h                                            ; $64f7: $25
	inc bc                                           ; $64f8: $03
	ld a, [hl]                                       ; $64f9: $7e
	dec b                                            ; $64fa: $05
	nop                                              ; $64fb: $00
	and b                                            ; $64fc: $a0
	pop bc                                           ; $64fd: $c1
	dec h                                            ; $64fe: $25
	dec b                                            ; $64ff: $05
	or c                                             ; $6500: $b1
	or c                                             ; $6501: $b1
	ld [$2202], sp                                   ; $6502: $08 $02 $22
	ld [$31b1], sp                                   ; $6505: $08 $b1 $31
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	ld a, [hl]                                       ; $650a: $7e
	nop                                              ; $650b: $00
	ld [hl+], a                                      ; $650c: $22
	inc bc                                           ; $650d: $03
	pop bc                                           ; $650e: $c1
	ld a, [hl]                                       ; $650f: $7e
	dec b                                            ; $6510: $05
	nop                                              ; $6511: $00
	and b                                            ; $6512: $a0
	ld [hl+], a                                      ; $6513: $22
	dec b                                            ; $6514: $05
	or c                                             ; $6515: $b1
	and c                                            ; $6516: $a1
	ld [$7e02], sp                                   ; $6517: $08 $02 $7e
	dec b                                            ; $651a: $05
	nop                                              ; $651b: $00
	and b                                            ; $651c: $a0
	daa                                              ; $651d: $27
	ld [$21b1], sp                                   ; $651e: $08 $b1 $21
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	ld a, [hl]                                       ; $6523: $7e
	nop                                              ; $6524: $00
	daa                                              ; $6525: $27
	inc bc                                           ; $6526: $03
	pop bc                                           ; $6527: $c1
	ld a, [hl]                                       ; $6528: $7e
	dec b                                            ; $6529: $05
	nop                                              ; $652a: $00
	and b                                            ; $652b: $a0
	daa                                              ; $652c: $27
	dec b                                            ; $652d: $05
	daa                                              ; $652e: $27
	dec b                                            ; $652f: $05
	ld a, [hl]                                       ; $6530: $7e
	nop                                              ; $6531: $00
	pop bc                                           ; $6532: $c1
	daa                                              ; $6533: $27
	dec bc                                           ; $6534: $0b
	or c                                             ; $6535: $b1
	or c                                             ; $6536: $b1
	ld [$7e02], sp                                   ; $6537: $08 $02 $7e
	dec b                                            ; $653a: $05
	nop                                              ; $653b: $00

jr_032_653c:
	and b                                            ; $653c: $a0
	inc h                                            ; $653d: $24
	ld [$21b1], sp                                   ; $653e: $08 $b1 $21
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	ld a, [hl]                                       ; $6543: $7e
	nop                                              ; $6544: $00
	inc h                                            ; $6545: $24
	inc bc                                           ; $6546: $03
	pop bc                                           ; $6547: $c1
	ld a, [hl]                                       ; $6548: $7e
	dec b                                            ; $6549: $05
	nop                                              ; $654a: $00
	and b                                            ; $654b: $a0
	inc h                                            ; $654c: $24
	dec b                                            ; $654d: $05
	or c                                             ; $654e: $b1
	and c                                            ; $654f: $a1
	ld [$7e02], sp                                   ; $6550: $08 $02 $7e
	dec b                                            ; $6553: $05
	nop                                              ; $6554: $00
	and b                                            ; $6555: $a0
	jr nz, jr_032_6560                               ; $6556: $20 $08

	or c                                             ; $6558: $b1
	ld hl, $0000                                     ; $6559: $21 $00 $00
	ld a, [hl]                                       ; $655c: $7e
	nop                                              ; $655d: $00
	jr nz, jr_032_6563                               ; $655e: $20 $03

jr_032_6560:
	pop bc                                           ; $6560: $c1
	ld a, [hl]                                       ; $6561: $7e
	dec b                                            ; $6562: $05

jr_032_6563:
	nop                                              ; $6563: $00
	and b                                            ; $6564: $a0
	jr nz, jr_032_656c                               ; $6565: $20 $05

	or c                                             ; $6567: $b1
	or c                                             ; $6568: $b1
	ld [$7e02], sp                                   ; $6569: $08 $02 $7e

jr_032_656c:
	dec b                                            ; $656c: $05
	nop                                              ; $656d: $00
	and b                                            ; $656e: $a0
	dec h                                            ; $656f: $25
	ld [$21b1], sp                                   ; $6570: $08 $b1 $21
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	ld a, [hl]                                       ; $6575: $7e
	nop                                              ; $6576: $00
	dec h                                            ; $6577: $25
	inc bc                                           ; $6578: $03
	pop bc                                           ; $6579: $c1
	ld a, [hl]                                       ; $657a: $7e
	dec b                                            ; $657b: $05
	nop                                              ; $657c: $00
	xor c                                            ; $657d: $a9
	dec h                                            ; $657e: $25
	dec b                                            ; $657f: $05
	dec h                                            ; $6580: $25
	dec b                                            ; $6581: $05
	nop                                              ; $6582: $00
	inc bc                                           ; $6583: $03
	or c                                             ; $6584: $b1
	or c                                             ; $6585: $b1
	rlca                                             ; $6586: $07
	ld [bc], a                                       ; $6587: $02
	ld a, [hl]                                       ; $6588: $7e
	dec b                                            ; $6589: $05
	nop                                              ; $658a: $00
	xor c                                            ; $658b: $a9
	inc h                                            ; $658c: $24
	rlca                                             ; $658d: $07
	jp nz, $0124                                     ; $658e: $c2 $24 $01

	or c                                             ; $6591: $b1
	and c                                            ; $6592: $a1
	ld [$7e03], sp                                   ; $6593: $08 $03 $7e
	dec b                                            ; $6596: $05
	nop                                              ; $6597: $00
	xor c                                            ; $6598: $a9
	dec h                                            ; $6599: $25
	add hl, bc                                       ; $659a: $09
	ld a, [hl]                                       ; $659b: $7e
	nop                                              ; $659c: $00
	or c                                             ; $659d: $b1
	ld d, c                                          ; $659e: $51
	ld [$2507], sp                                   ; $659f: $08 $07 $25
	rlca                                             ; $65a2: $07
	nop                                              ; $65a3: $00
	jr nz, jr_032_653c                               ; $65a4: $20 $96

	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	cp $ff                                           ; $65a8: $fe $ff
	ret nc                                           ; $65aa: $d0

	ld b, c                                          ; $65ab: $41
	cp $7f                                           ; $65ac: $fe $7f
	ld [de], a                                       ; $65ae: $12
	jp nz, $080d                                     ; $65af: $c2 $0d $08

	add $0d                                          ; $65b2: $c6 $0d
	ld [$19c2], sp                                   ; $65b4: $08 $c2 $19
	ld [$19c6], sp                                   ; $65b7: $08 $c6 $19
	ld [$19c2], sp                                   ; $65ba: $08 $c2 $19
	ld [$19c6], sp                                   ; $65bd: $08 $c6 $19
	ld [$12c2], sp                                   ; $65c0: $08 $c2 $12
	ld [$12c6], sp                                   ; $65c3: $08 $c6 $12
	ld [$19c2], sp                                   ; $65c6: $08 $c2 $19
	ld [$19c6], sp                                   ; $65c9: $08 $c6 $19
	ld [$19c2], sp                                   ; $65cc: $08 $c2 $19
	ld [$19c6], sp                                   ; $65cf: $08 $c6 $19
	ld [$0dc2], sp                                   ; $65d2: $08 $c2 $0d
	ld [$0dc6], sp                                   ; $65d5: $08 $c6 $0d
	ld [$19c2], sp                                   ; $65d8: $08 $c2 $19
	ld [$19c6], sp                                   ; $65db: $08 $c6 $19
	ld [$19c2], sp                                   ; $65de: $08 $c2 $19
	ld [$19c6], sp                                   ; $65e1: $08 $c6 $19
	ld [$14c2], sp                                   ; $65e4: $08 $c2 $14
	ld [$14c6], sp                                   ; $65e7: $08 $c6 $14
	ld [$037e], sp                                   ; $65ea: $08 $7e $03
	nop                                              ; $65ed: $00
	xor c                                            ; $65ee: $a9
	jp nz, $0718                                     ; $65ef: $c2 $18 $07

	add $18                                          ; $65f2: $c6 $18
	ld bc, $007e                                     ; $65f4: $01 $7e $00
	jp nz, $0719                                     ; $65f7: $c2 $19 $07

	add $19                                          ; $65fa: $c6 $19
	ld bc, $18c2                                     ; $65fc: $01 $c2 $18
	ld [$18c6], sp                                   ; $65ff: $08 $c6 $18
	ld [$7fc2], sp                                   ; $6602: $08 $c2 $7f
	ld [de], a                                       ; $6605: $12
	dec c                                            ; $6606: $0d
	ld [$0dc6], sp                                   ; $6607: $08 $c6 $0d
	ld [$19c2], sp                                   ; $660a: $08 $c2 $19
	ld [$19c6], sp                                   ; $660d: $08 $c6 $19
	ld [$19c2], sp                                   ; $6610: $08 $c2 $19
	ld [$19c6], sp                                   ; $6613: $08 $c6 $19
	ld [$12c2], sp                                   ; $6616: $08 $c2 $12
	ld [$12c6], sp                                   ; $6619: $08 $c6 $12
	ld [$19c2], sp                                   ; $661c: $08 $c2 $19
	ld [$19c6], sp                                   ; $661f: $08 $c6 $19
	ld [$19c2], sp                                   ; $6622: $08 $c2 $19
	ld [$19c6], sp                                   ; $6625: $08 $c6 $19
	ld [$0dc2], sp                                   ; $6628: $08 $c2 $0d
	ld [$0dc6], sp                                   ; $662b: $08 $c6 $0d
	ld [$19c2], sp                                   ; $662e: $08 $c2 $19
	ld [$19c6], sp                                   ; $6631: $08 $c6 $19
	ld [$18c2], sp                                   ; $6634: $08 $c2 $18
	ld [$18c6], sp                                   ; $6637: $08 $c6 $18
	ld [$1dc2], sp                                   ; $663a: $08 $c2 $1d
	ld [$1dc6], sp                                   ; $663d: $08 $c6 $1d
	ld [$1000], sp                                   ; $6640: $08 $00 $10
	ld a, [hl]                                       ; $6643: $7e
	ld [bc], a                                       ; $6644: $02
	nop                                              ; $6645: $00
	and b                                            ; $6646: $a0
	ld a, a                                          ; $6647: $7f
	rla                                              ; $6648: $17
	call nz, $101b                                   ; $6649: $c4 $1b $10
	jp nz, Jump_032_7e81                             ; $664c: $c2 $81 $7e

	nop                                              ; $664f: $00
	ld d, $08                                        ; $6650: $16 $08
	call nz, $0711                                   ; $6652: $c4 $11 $07
	add $11                                          ; $6655: $c6 $11
	ld bc, $19c2                                     ; $6657: $01 $c2 $19
	ld [$11c4], sp                                   ; $665a: $08 $c4 $11
	rlca                                             ; $665d: $07
	add $11                                          ; $665e: $c6 $11
	ld bc, $1dc2                                     ; $6660: $01 $c2 $1d
	ld [$16c4], sp                                   ; $6663: $08 $c4 $16
	rlca                                             ; $6666: $07
	add $16                                          ; $6667: $c6 $16
	ld bc, $1bc2                                     ; $6669: $01 $c2 $1b
	ld [$13c4], sp                                   ; $666c: $08 $c4 $13
	rlca                                             ; $666f: $07
	add $13                                          ; $6670: $c6 $13
	ld bc, $16c2                                     ; $6672: $01 $c2 $16
	ld [$13c4], sp                                   ; $6675: $08 $c4 $13
	rlca                                             ; $6678: $07
	add $13                                          ; $6679: $c6 $13
	ld bc, $16c2                                     ; $667b: $01 $c2 $16
	ld [$13c4], sp                                   ; $667e: $08 $c4 $13
	rlca                                             ; $6681: $07
	add $13                                          ; $6682: $c6 $13
	ld bc, $14c2                                     ; $6684: $01 $c2 $14
	ld [$14c4], sp                                   ; $6687: $08 $c4 $14
	rlca                                             ; $668a: $07
	add $14                                          ; $668b: $c6 $14
	ld bc, $18c2                                     ; $668d: $01 $c2 $18
	ld [$14c4], sp                                   ; $6690: $08 $c4 $14
	rlca                                             ; $6693: $07
	add $14                                          ; $6694: $c6 $14
	ld bc, $14c2                                     ; $6696: $01 $c2 $14
	ld [$14c4], sp                                   ; $6699: $08 $c4 $14
	rlca                                             ; $669c: $07
	add $14                                          ; $669d: $c6 $14
	ld bc, $19c2                                     ; $669f: $01 $c2 $19
	ld [$14c4], sp                                   ; $66a2: $08 $c4 $14
	rlca                                             ; $66a5: $07
	add $14                                          ; $66a6: $c6 $14
	ld bc, $1bc2                                     ; $66a8: $01 $c2 $1b
	ld [$14c4], sp                                   ; $66ab: $08 $c4 $14
	rlca                                             ; $66ae: $07
	add $14                                          ; $66af: $c6 $14
	ld bc, $19c2                                     ; $66b1: $01 $c2 $19
	ld [$14c4], sp                                   ; $66b4: $08 $c4 $14
	rlca                                             ; $66b7: $07
	add $14                                          ; $66b8: $c6 $14
	ld bc, $81c2                                     ; $66ba: $01 $c2 $81
	ld [de], a                                       ; $66bd: $12
	ld [$16c4], sp                                   ; $66be: $08 $c4 $16
	rlca                                             ; $66c1: $07
	add $16                                          ; $66c2: $c6 $16
	ld bc, $19c2                                     ; $66c4: $01 $c2 $19
	ld [$16c4], sp                                   ; $66c7: $08 $c4 $16
	rlca                                             ; $66ca: $07
	add $16                                          ; $66cb: $c6 $16
	ld bc, $19c2                                     ; $66cd: $01 $c2 $19
	ld [$16c4], sp                                   ; $66d0: $08 $c4 $16
	rlca                                             ; $66d3: $07
	add $16                                          ; $66d4: $c6 $16
	ld bc, $1bc2                                     ; $66d6: $01 $c2 $1b
	ld [$16c4], sp                                   ; $66d9: $08 $c4 $16
	rlca                                             ; $66dc: $07
	add $16                                          ; $66dd: $c6 $16
	ld bc, $12c2                                     ; $66df: $01 $c2 $12
	ld [$16c4], sp                                   ; $66e2: $08 $c4 $16
	rlca                                             ; $66e5: $07
	add $16                                          ; $66e6: $c6 $16
	ld bc, $1bc2                                     ; $66e8: $01 $c2 $1b
	ld [$16c4], sp                                   ; $66eb: $08 $c4 $16
	rlca                                             ; $66ee: $07
	add $16                                          ; $66ef: $c6 $16
	ld bc, $14c2                                     ; $66f1: $01 $c2 $14
	ld [$0fc4], sp                                   ; $66f4: $08 $c4 $0f
	rlca                                             ; $66f7: $07
	add $0f                                          ; $66f8: $c6 $0f
	ld bc, $16c2                                     ; $66fa: $01 $c2 $16
	ld [$0fc4], sp                                   ; $66fd: $08 $c4 $0f
	rlca                                             ; $6700: $07
	add $0f                                          ; $6701: $c6 $0f
	ld bc, $18c2                                     ; $6703: $01 $c2 $18
	ld [$14c4], sp                                   ; $6706: $08 $c4 $14
	rlca                                             ; $6709: $07
	add $14                                          ; $670a: $c6 $14
	ld bc, $19c2                                     ; $670c: $01 $c2 $19
	ld [$19c4], sp                                   ; $670f: $08 $c4 $19
	inc b                                            ; $6712: $04
	add $19                                          ; $6713: $c6 $19
	inc b                                            ; $6715: $04
	nop                                              ; $6716: $00

jr_032_6717:
	jr nz, jr_032_6717                               ; $6717: $20 $fe

	rst $38                                          ; $6719: $ff
	ret nc                                           ; $671a: $d0

	ld b, c                                          ; $671b: $41
	cp $00                                           ; $671c: $fe $00
	ret nz                                           ; $671e: $c0

	nop                                              ; $671f: $00
	ret nz                                           ; $6720: $c0

	ei                                               ; $6721: $fb
	jr @+$12                                         ; $6722: $18 $10

	ld c, $10                                        ; $6724: $0e $10
	ld c, $10                                        ; $6726: $0e $10
	ei                                               ; $6728: $fb
	inc b                                            ; $6729: $04
	ei                                               ; $672a: $fb
	jr jr_032_673d                                   ; $672b: $18 $10

	ld c, $10                                        ; $672d: $0e $10
	ld c, $10                                        ; $672f: $0e $10
	ei                                               ; $6731: $fb
	inc bc                                           ; $6732: $03
	jr jr_032_6755                                   ; $6733: $18 $20

	ld [de], a                                       ; $6735: $12
	db $10                                           ; $6736: $10
	cp $ff                                           ; $6737: $fe $ff
	ret nc                                           ; $6739: $d0

	ld h, [hl]                                       ; $673a: $66
	cp $b5                                           ; $673b: $fe $b5

jr_032_673d:
	add c                                            ; $673d: $81
	ld [bc], a                                       ; $673e: $02
	rst $38                                          ; $673f: $ff
	rlca                                             ; $6740: $07
	dec de                                           ; $6741: $1b
	inc c                                            ; $6742: $0c
	or c                                             ; $6743: $b1
	ld d, c                                          ; $6744: $51
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	dec de                                           ; $6747: $1b
	ld h, $c1                                        ; $6748: $26 $c1
	ld a, l                                          ; $674a: $7d
	ld [bc], a                                       ; $674b: $02
	sub [hl]                                         ; $674c: $96
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	dec de                                           ; $674f: $1b
	db $10                                           ; $6750: $10
	pop bc                                           ; $6751: $c1
	dec de                                           ; $6752: $1b
	ld [bc], a                                       ; $6753: $02
	or c                                             ; $6754: $b1

jr_032_6755:
	ld d, c                                          ; $6755: $51
	db $10                                           ; $6756: $10
	rlca                                             ; $6757: $07
	jr nz, jr_032_676a                               ; $6758: $20 $10

	jp nz, $0220                                     ; $675a: $c2 $20 $02

	or c                                             ; $675d: $b1
	ld h, c                                          ; $675e: $61
	inc c                                            ; $675f: $0c
	rlca                                             ; $6760: $07
	inc h                                            ; $6761: $24
	ld a, [bc]                                       ; $6762: $0a
	or c                                             ; $6763: $b1
	ld [hl], c                                       ; $6764: $71
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	rra                                              ; $6767: $1f
	jr jr_032_6785                                   ; $6768: $18 $1b

jr_032_676a:
	inc b                                            ; $676a: $04
	jp $031b                                         ; $676b: $c3 $1b $03


	rst JumpTable                                          ; $676e: $c7
	nop                                              ; $676f: $00
	dec b                                            ; $6770: $05
	rra                                              ; $6771: $1f
	jr jr_032_678f                                   ; $6772: $18 $1b

	ld a, [bc]                                       ; $6774: $0a
	jp nz, $041b                                     ; $6775: $c2 $1b $04

	rst JumpTable                                          ; $6778: $c7
	nop                                              ; $6779: $00
	ld a, [bc]                                       ; $677a: $0a
	dec de                                           ; $677b: $1b
	ld a, [bc]                                       ; $677c: $0a
	jp nz, $021b                                     ; $677d: $c2 $1b $02

	rst JumpTable                                          ; $6780: $c7
	ld e, $18                                        ; $6781: $1e $18
	dec de                                           ; $6783: $1b
	inc b                                            ; $6784: $04

jr_032_6785:
	jp $031b                                         ; $6785: $c3 $1b $03


	rst JumpTable                                          ; $6788: $c7
	nop                                              ; $6789: $00
	dec b                                            ; $678a: $05
	ld e, $18                                        ; $678b: $1e $18
	dec de                                           ; $678d: $1b
	ld a, [bc]                                       ; $678e: $0a

jr_032_678f:
	jp nz, $041b                                     ; $678f: $c2 $1b $04

	rst JumpTable                                          ; $6792: $c7
	nop                                              ; $6793: $00
	ld a, [bc]                                       ; $6794: $0a
	dec de                                           ; $6795: $1b
	ld a, [bc]                                       ; $6796: $0a
	jp nz, $021b                                     ; $6797: $c2 $1b $02

	or c                                             ; $679a: $b1
	ld [hl], c                                       ; $679b: $71
	inc c                                            ; $679c: $0c
	rlca                                             ; $679d: $07
	dec e                                            ; $679e: $1d
	inc c                                            ; $679f: $0c
	inc e                                            ; $67a0: $1c
	dec bc                                           ; $67a1: $0b
	nop                                              ; $67a2: $00
	ld bc, $0696                                     ; $67a3: $01 $96 $06
	inc b                                            ; $67a6: $04
	inc d                                            ; $67a7: $14
	ld b, $1b                                        ; $67a8: $06 $1b
	ld b, $b1                                        ; $67aa: $06 $b1
	ld h, c                                          ; $67ac: $61
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	add hl, de                                       ; $67af: $19
	ld [hl+], a                                      ; $67b0: $22
	jp nz, $0219                                     ; $67b1: $c2 $19 $02

	jp z, $1800                                      ; $67b4: $ca $00 $18

	or l                                             ; $67b7: $b5
	ld [hl], c                                       ; $67b8: $71
	ld [bc], a                                       ; $67b9: $02
	inc c                                            ; $67ba: $0c
	ld b, $be                                        ; $67bb: $06 $be
	inc c                                            ; $67bd: $0c
	inc e                                            ; $67be: $1c
	jr nz, jr_032_67dc                               ; $67bf: $20 $1b

	jr nz, jr_032_67dc                               ; $67c1: $20 $19

	jr nz, jr_032_67dc                               ; $67c3: $20 $17

	jr nz, jr_032_6785                               ; $67c5: $20 $be

	cp [hl]                                          ; $67c7: $be
	inc c                                            ; $67c8: $0c
	ld e, $20                                        ; $67c9: $1e $20
	inc e                                            ; $67cb: $1c
	jr nz, @-$40                                     ; $67cc: $20 $be

	ld [hl+], a                                      ; $67ce: $22
	ld a, [bc]                                       ; $67cf: $0a
	jp nz, $0222                                     ; $67d0: $c2 $22 $02

	or c                                             ; $67d3: $b1
	ld [hl], c                                       ; $67d4: $71
	nop                                              ; $67d5: $00

jr_032_67d6:
	nop                                              ; $67d6: $00
	daa                                              ; $67d7: $27
	inc c                                            ; $67d8: $0c
	dec h                                            ; $67d9: $25
	inc c                                            ; $67da: $0c
	rst JumpTable                                          ; $67db: $c7

jr_032_67dc:
	ld [hl+], a                                      ; $67dc: $22
	inc c                                            ; $67dd: $0c
	rst JumpTable                                          ; $67de: $c7
	sub d                                            ; $67df: $92
	ld a, l                                          ; $67e0: $7d
	nop                                              ; $67e1: $00
	inc h                                            ; $67e2: $24
	rla                                              ; $67e3: $17
	jp $0124                                         ; $67e4: $c3 $24 $01


	rst JumpTable                                          ; $67e7: $c7
	inc hl                                           ; $67e8: $23
	ld a, [bc]                                       ; $67e9: $0a
	call nz, $0223                                   ; $67ea: $c4 $23 $02
	rst JumpTable                                          ; $67ed: $c7
	inc h                                            ; $67ee: $24
	ld a, [bc]                                       ; $67ef: $0a
	jp nz, $0424                                     ; $67f0: $c2 $24 $04

	nop                                              ; $67f3: $00
	ld a, [bc]                                       ; $67f4: $0a
	ret z                                            ; $67f5: $c8

	jr nz, jr_032_67fc                               ; $67f6: $20 $04

	jp $0220                                         ; $67f8: $c3 $20 $02


	nop                                              ; $67fb: $00

jr_032_67fc:
	ld b, $c8                                        ; $67fc: $06 $c8
	ld [hl+], a                                      ; $67fe: $22
	inc b                                            ; $67ff: $04
	jp $0222                                         ; $6800: $c3 $22 $02


	nop                                              ; $6803: $00
	ld b, $c8                                        ; $6804: $06 $c8
	rra                                              ; $6806: $1f
	inc c                                            ; $6807: $0c
	rra                                              ; $6808: $1f
	rla                                              ; $6809: $17
	nop                                              ; $680a: $00
	ld bc, $20ca                                     ; $680b: $01 $ca $20
	inc c                                            ; $680e: $0c

jr_032_680f:
	ret                                              ; $680f: $c9


	rra                                              ; $6810: $1f
	jr nc, jr_032_67d6                               ; $6811: $30 $c3

	rra                                              ; $6813: $1f
	inc c                                            ; $6814: $0c
	cp $ff                                           ; $6815: $fe $ff
	ret nc                                           ; $6817: $d0

	ld h, [hl]                                       ; $6818: $66
	cp $b5                                           ; $6819: $fe $b5
	pop de                                           ; $681b: $d1
	ld [bc], a                                       ; $681c: $02
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	jr nz, jr_032_683f                               ; $681f: $20 $1e

	jp $0620                                         ; $6821: $c3 $20 $06


	or c                                             ; $6824: $b1
	pop de                                           ; $6825: $d1
	inc c                                            ; $6826: $0c
	rlca                                             ; $6827: $07
	jr nz, jr_032_6836                               ; $6828: $20 $0c

	or c                                             ; $682a: $b1
	and c                                            ; $682b: $a1
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	dec de                                           ; $682e: $1b
	db $10                                           ; $682f: $10
	jp $021b                                         ; $6830: $c3 $1b $02


	or c                                             ; $6833: $b1
	pop de                                           ; $6834: $d1
	db $10                                           ; $6835: $10

jr_032_6836:
	rlca                                             ; $6836: $07
	jr nz, jr_032_6849                               ; $6837: $20 $10

	jp $0220                                         ; $6839: $c3 $20 $02


	or c                                             ; $683c: $b1
	pop de                                           ; $683d: $d1
	inc c                                            ; $683e: $0c

jr_032_683f:
	rlca                                             ; $683f: $07
	inc h                                            ; $6840: $24
	dec bc                                           ; $6841: $0b
	jp $0124                                         ; $6842: $c3 $24 $01


	or c                                             ; $6845: $b1
	pop de                                           ; $6846: $d1
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00

jr_032_6849:
	ld [hl+], a                                      ; $6849: $22
	jr jr_032_680f                                   ; $684a: $18 $c3

	ld [hl+], a                                      ; $684c: $22
	inc c                                            ; $684d: $0c
	ld a, [hl]                                       ; $684e: $7e
	ld bc, $a900                                     ; $684f: $01 $00 $a9
	sla a                                            ; $6852: $cb $27
	ld [hl+], a                                      ; $6854: $22
	ld a, [hl]                                       ; $6855: $7e
	nop                                              ; $6856: $00
	jp nz, $0227                                     ; $6857: $c2 $27 $02

	call $1622                                       ; $685a: $cd $22 $16
	jp $0222                                         ; $685d: $c3 $22 $02


	call $1820                                       ; $6860: $cd $20 $18
	jp $0c20                                         ; $6863: $c3 $20 $0c


	ld a, [hl]                                       ; $6866: $7e
	ld bc, $a900                                     ; $6867: $01 $00 $a9
	sla a                                            ; $686a: $cb $27
	ld [hl+], a                                      ; $686c: $22
	ld a, [hl]                                       ; $686d: $7e
	nop                                              ; $686e: $00
	jp nz, $0227                                     ; $686f: $c2 $27 $02

	or c                                             ; $6872: $b1
	pop de                                           ; $6873: $d1
	dec bc                                           ; $6874: $0b
	rlca                                             ; $6875: $07
	dec h                                            ; $6876: $25
	dec bc                                           ; $6877: $0b
	nop                                              ; $6878: $00
	ld bc, $0b24                                     ; $6879: $01 $24 $0b
	nop                                              ; $687c: $00
	ld bc, $0096                                     ; $687d: $01 $96 $00
	nop                                              ; $6880: $00
	dec h                                            ; $6881: $25
	dec d                                            ; $6882: $15
	jp $0325                                         ; $6883: $c3 $25 $03


	or c                                             ; $6886: $b1
	pop bc                                           ; $6887: $c1
	inc c                                            ; $6888: $0c
	rlca                                             ; $6889: $07
	inc h                                            ; $688a: $24
	inc c                                            ; $688b: $0c
	or c                                             ; $688c: $b1
	or c                                             ; $688d: $b1
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	ld a, [hl]                                       ; $6890: $7e
	ld bc, $a918                                     ; $6891: $01 $18 $a9
	cp l                                             ; $6894: $bd
	ld [bc], a                                       ; $6895: $02
	jr nz, jr_032_68a4                               ; $6896: $20 $0c

	ld d, $7e                                        ; $6898: $16 $7e
	nop                                              ; $689a: $00
	jp $0220                                         ; $689b: $c3 $20 $02


	pop bc                                           ; $689e: $c1
	jr nz, @+$0e                                     ; $689f: $20 $0c

	call $2cd3                                       ; $68a1: $cd $d3 $2c

jr_032_68a4:
	ld [bc], a                                       ; $68a4: $02
	ret z                                            ; $68a5: $c8

	jp nc, $0220                                     ; $68a6: $d2 $20 $02

	pop bc                                           ; $68a9: $c1
	jr nz, @+$04                                     ; $68aa: $20 $02

	call $2ed3                                       ; $68ac: $cd $d3 $2e
	ld [bc], a                                       ; $68af: $02
	ret z                                            ; $68b0: $c8

	jp nc, $0222                                     ; $68b1: $d2 $22 $02

	pop bc                                           ; $68b4: $c1
	ld [hl+], a                                      ; $68b5: $22
	ld [bc], a                                       ; $68b6: $02
	rst GetHLinHL                                          ; $68b7: $cf
	db $d3                                           ; $68b8: $d3
	sub d                                            ; $68b9: $92
	cpl                                              ; $68ba: $2f
	ld [bc], a                                       ; $68bb: $02
	ret z                                            ; $68bc: $c8

	jp nc, $0223                                     ; $68bd: $d2 $23 $02

	push bc                                          ; $68c0: $c5
	inc hl                                           ; $68c1: $23
	ld [bc], a                                       ; $68c2: $02
	nop                                              ; $68c3: $00
	inc b                                            ; $68c4: $04
	db $d3                                           ; $68c5: $d3
	rst JumpTable                                          ; $68c6: $c7
	cpl                                              ; $68c7: $2f
	ld [bc], a                                       ; $68c8: $02
	rst GetHLinHL                                          ; $68c9: $cf
	db $d3                                           ; $68ca: $d3
	ld l, $02                                        ; $68cb: $2e $02
	jp nc, $22c8                                     ; $68cd: $d2 $c8 $22

	ld [bc], a                                       ; $68d0: $02
	push bc                                          ; $68d1: $c5
	ld [hl+], a                                      ; $68d2: $22
	ld [bc], a                                       ; $68d3: $02
	nop                                              ; $68d4: $00
	inc b                                            ; $68d5: $04
	db $d3                                           ; $68d6: $d3
	add $2e                                          ; $68d7: $c6 $2e
	ld [bc], a                                       ; $68d9: $02
	rst GetHLinHL                                          ; $68da: $cf
	db $d3                                           ; $68db: $d3
	inc l                                            ; $68dc: $2c
	ld [bc], a                                       ; $68dd: $02
	jp nc, $20c8                                     ; $68de: $d2 $c8 $20

	ld [bc], a                                       ; $68e1: $02
	push bc                                          ; $68e2: $c5
	jr nz, jr_032_68e7                               ; $68e3: $20 $02

	nop                                              ; $68e5: $00
	inc b                                            ; $68e6: $04

jr_032_68e7:
	db $d3                                           ; $68e7: $d3
	push bc                                          ; $68e8: $c5
	inc l                                            ; $68e9: $2c
	ld [bc], a                                       ; $68ea: $02
	rst GetHLinHL                                          ; $68eb: $cf
	db $d3                                           ; $68ec: $d3
	cpl                                              ; $68ed: $2f
	ld [bc], a                                       ; $68ee: $02
	jp nc, $23c8                                     ; $68ef: $d2 $c8 $23

	ld [bc], a                                       ; $68f2: $02
	push bc                                          ; $68f3: $c5
	inc hl                                           ; $68f4: $23
	ld [bc], a                                       ; $68f5: $02
	nop                                              ; $68f6: $00
	inc b                                            ; $68f7: $04
	db $d3                                           ; $68f8: $d3
	ret z                                            ; $68f9: $c8

	cpl                                              ; $68fa: $2f
	ld [bc], a                                       ; $68fb: $02
	or c                                             ; $68fc: $b1
	add e                                            ; $68fd: $83
	rst $38                                          ; $68fe: $ff
	ld bc, $082f                                     ; $68ff: $01 $2f $08
	cpl                                              ; $6902: $2f
	ld [$2fc7], sp                                   ; $6903: $08 $c7 $2f
	ld [$2fc4], sp                                   ; $6906: $08 $c4 $2f
	inc c                                            ; $6909: $0c
	or c                                             ; $690a: $b1
	di                                               ; $690b: $f3
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	ld l, $02                                        ; $690e: $2e $02
	ret z                                            ; $6910: $c8

	jp nc, $0222                                     ; $6911: $d2 $22 $02

	nop                                              ; $6914: $00
	ld [bc], a                                       ; $6915: $02
	rst GetHLinHL                                          ; $6916: $cf
	db $d3                                           ; $6917: $d3
	cpl                                              ; $6918: $2f
	ld [bc], a                                       ; $6919: $02
	add $d2                                          ; $691a: $c6 $d2
	inc hl                                           ; $691c: $23
	ld [bc], a                                       ; $691d: $02
	add $23                                          ; $691e: $c6 $23
	ld [bc], a                                       ; $6920: $02
	rst GetHLinHL                                          ; $6921: $cf
	db $d3                                           ; $6922: $d3
	ld sp, $c802                                     ; $6923: $31 $02 $c8
	jp nc, $0225                                     ; $6926: $d2 $25 $02

	add $25                                          ; $6929: $c6 $25
	ld [bc], a                                       ; $692b: $02
	nop                                              ; $692c: $00
	inc b                                            ; $692d: $04
	push bc                                          ; $692e: $c5
	ld sp, $cf02                                     ; $692f: $31 $02 $cf
	db $d3                                           ; $6932: $d3
	cpl                                              ; $6933: $2f
	ld [bc], a                                       ; $6934: $02
	rst JumpTable                                          ; $6935: $c7
	jp nc, $0223                                     ; $6936: $d2 $23 $02

	call nz, $0223                                   ; $6939: $c4 $23 $02
	nop                                              ; $693c: $00
	inc b                                            ; $693d: $04
	db $d3                                           ; $693e: $d3
	add $2f                                          ; $693f: $c6 $2f
	ld [bc], a                                       ; $6941: $02
	rst GetHLinHL                                          ; $6942: $cf
	db $d3                                           ; $6943: $d3
	ld l, $02                                        ; $6944: $2e $02
	rst JumpTable                                          ; $6946: $c7
	jp nc, $0222                                     ; $6947: $d2 $22 $02

	call nz, $0222                                   ; $694a: $c4 $22 $02
	nop                                              ; $694d: $00
	inc b                                            ; $694e: $04
	db $d3                                           ; $694f: $d3
	add $2e                                          ; $6950: $c6 $2e
	ld [bc], a                                       ; $6952: $02
	call $31d3                                       ; $6953: $cd $d3 $31
	ld [bc], a                                       ; $6956: $02
	add $d2                                          ; $6957: $c6 $d2
	dec h                                            ; $6959: $25
	ld [bc], a                                       ; $695a: $02
	call nz, $0225                                   ; $695b: $c4 $25 $02
	nop                                              ; $695e: $00
	inc b                                            ; $695f: $04
	db $d3                                           ; $6960: $d3
	add $31                                          ; $6961: $c6 $31
	ld [bc], a                                       ; $6963: $02
	or c                                             ; $6964: $b1
	ld d, e                                          ; $6965: $53
	ld [$3103], sp                                   ; $6966: $08 $03 $31
	ld [$53b1], sp                                   ; $6969: $08 $b1 $53
	inc b                                            ; $696c: $04
	inc b                                            ; $696d: $04
	ld sp, $b504                                     ; $696e: $31 $04 $b5
	or c                                             ; $6971: $b1
	ld bc, $07ff                                     ; $6972: $01 $ff $07
	inc hl                                           ; $6975: $23
	dec bc                                           ; $6976: $0b
	jp $0123                                         ; $6977: $c3 $23 $01


	call z, $0b22                                    ; $697a: $cc $22 $0b
	jp $0122                                         ; $697d: $c3 $22 $01


	jp z, $0a1e                                      ; $6980: $ca $1e $0a

	call nz, $021e                                   ; $6983: $c4 $1e $02
	sub [hl]                                         ; $6986: $96
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	set 2, c                                         ; $6989: $cb $d1
	sub c                                            ; $698b: $91
	ld a, [hl]                                       ; $698c: $7e
	ld bc, $a900                                     ; $698d: $01 $00 $a9
	jr nz, jr_032_69a9                               ; $6990: $20 $17

	jp nz, $0120                                     ; $6992: $c2 $20 $01

	rr a                                             ; $6995: $cb $1f
	ld a, [bc]                                       ; $6997: $0a
	call nz, $021f                                   ; $6998: $c4 $1f $02
	ld a, [hl]                                       ; $699b: $7e
	nop                                              ; $699c: $00
	sla b                                            ; $699d: $cb $20
	ld a, [bc]                                       ; $699f: $0a
	jp $0420                                         ; $69a0: $c3 $20 $04


	pop bc                                           ; $69a3: $c1
	jr nz, jr_032_69b0                               ; $69a4: $20 $0a

	sla h                                            ; $69a6: $cb $24
	inc b                                            ; $69a8: $04

jr_032_69a9:
	jp $0224                                         ; $69a9: $c3 $24 $02


	nop                                              ; $69ac: $00
	ld b, $cb                                        ; $69ad: $06 $cb
	dec h                                            ; $69af: $25

jr_032_69b0:
	inc b                                            ; $69b0: $04
	jp $0225                                         ; $69b1: $c3 $25 $02


	nop                                              ; $69b4: $00
	ld b, $b1                                        ; $69b5: $06 $b1
	and c                                            ; $69b7: $a1
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	daa                                              ; $69ba: $27
	inc c                                            ; $69bb: $0c
	ld a, [hl]                                       ; $69bc: $7e
	ld bc, $a930                                     ; $69bd: $01 $30 $a9
	jp z, $5427                                      ; $69c0: $ca $27 $54

	ld a, [hl]                                       ; $69c3: $7e
	ld bc, $a900                                     ; $69c4: $01 $00 $a9
	jp $0c27                                         ; $69c7: $c3 $27 $0c


	ld a, [hl]                                       ; $69ca: $7e
	nop                                              ; $69cb: $00
	cp $ff                                           ; $69cc: $fe $ff
	ret nc                                           ; $69ce: $d0

	ld h, [hl]                                       ; $69cf: $66
	cp $81                                           ; $69d0: $fe $81
	jp nz, $1614                                     ; $69d2: $c2 $14 $16

	add $14                                          ; $69d5: $c6 $14
	ld [bc], a                                       ; $69d7: $02
	jp nz, $051b                                     ; $69d8: $c2 $1b $05

	add $1b                                          ; $69db: $c6 $1b
	ld [bc], a                                       ; $69dd: $02
	nop                                              ; $69de: $00
	dec b                                            ; $69df: $05
	jp nz, $0514                                     ; $69e0: $c2 $14 $05

	add $14                                          ; $69e3: $c6 $14
	ld bc, $00c2                                     ; $69e5: $01 $c2 $00
	ld [de], a                                       ; $69e8: $12
	inc d                                            ; $69e9: $14
	ld a, [bc]                                       ; $69ea: $0a
	add $14                                          ; $69eb: $c6 $14
	ld [bc], a                                       ; $69ed: $02
	jp nz, $0a1b                                     ; $69ee: $c2 $1b $0a

	add $1b                                          ; $69f1: $c6 $1b
	ld [bc], a                                       ; $69f3: $02
	jp nz, $0a14                                     ; $69f4: $c2 $14 $0a

	add $14                                          ; $69f7: $c6 $14
	ld [bc], a                                       ; $69f9: $02
	jp nz, $1613                                     ; $69fa: $c2 $13 $16

	add $13                                          ; $69fd: $c6 $13
	ld [bc], a                                       ; $69ff: $02
	jp nz, $051b                                     ; $6a00: $c2 $1b $05

	add $1b                                          ; $6a03: $c6 $1b
	ld [bc], a                                       ; $6a05: $02
	nop                                              ; $6a06: $00
	dec b                                            ; $6a07: $05
	jp nz, $0513                                     ; $6a08: $c2 $13 $05

	add $13                                          ; $6a0b: $c6 $13
	ld bc, $00c2                                     ; $6a0d: $01 $c2 $00
	ld [de], a                                       ; $6a10: $12
	inc de                                           ; $6a11: $13
	ld a, [bc]                                       ; $6a12: $0a
	add $13                                          ; $6a13: $c6 $13
	ld [bc], a                                       ; $6a15: $02
	jp nz, $0a1b                                     ; $6a16: $c2 $1b $0a

	add $1b                                          ; $6a19: $c6 $1b
	ld [bc], a                                       ; $6a1b: $02
	jp nz, $0a13                                     ; $6a1c: $c2 $13 $0a

	add $13                                          ; $6a1f: $c6 $13
	ld [bc], a                                       ; $6a21: $02
	jp nz, $1612                                     ; $6a22: $c2 $12 $16

	add $12                                          ; $6a25: $c6 $12
	ld [bc], a                                       ; $6a27: $02
	jp nz, $051e                                     ; $6a28: $c2 $1e $05

	add $1e                                          ; $6a2b: $c6 $1e
	ld [bc], a                                       ; $6a2d: $02
	nop                                              ; $6a2e: $00
	dec b                                            ; $6a2f: $05
	jp nz, $0512                                     ; $6a30: $c2 $12 $05

	add $12                                          ; $6a33: $c6 $12
	ld bc, $00c2                                     ; $6a35: $01 $c2 $00
	ld [de], a                                       ; $6a38: $12
	ld [de], a                                       ; $6a39: $12
	ld a, [bc]                                       ; $6a3a: $0a
	add $12                                          ; $6a3b: $c6 $12
	ld [bc], a                                       ; $6a3d: $02
	jp nz, $0a16                                     ; $6a3e: $c2 $16 $0a

	add $16                                          ; $6a41: $c6 $16
	ld [bc], a                                       ; $6a43: $02
	jp nz, $0a18                                     ; $6a44: $c2 $18 $0a

	add $18                                          ; $6a47: $c6 $18
	ld [bc], a                                       ; $6a49: $02
	jp nz, $1419                                     ; $6a4a: $c2 $19 $14

	add $19                                          ; $6a4d: $c6 $19
	inc b                                            ; $6a4f: $04
	jp nz, $0614                                     ; $6a50: $c2 $14 $06

	add $14                                          ; $6a53: $c6 $14
	ld b, $c2                                        ; $6a55: $06 $c2
	add hl, de                                       ; $6a57: $19
	ld d, $c6                                        ; $6a58: $16 $c6
	add hl, de                                       ; $6a5a: $19
	ld [bc], a                                       ; $6a5b: $02
	jp nz, $0a1b                                     ; $6a5c: $c2 $1b $0a

	add $1b                                          ; $6a5f: $c6 $1b
	ld [bc], a                                       ; $6a61: $02
	jp nz, $0a1d                                     ; $6a62: $c2 $1d $0a

	add $1d                                          ; $6a65: $c6 $1d
	ld [bc], a                                       ; $6a67: $02
	jp nz, $0a14                                     ; $6a68: $c2 $14 $0a

	add $14                                          ; $6a6b: $c6 $14
	ld [bc], a                                       ; $6a6d: $02
	jp nz, $81c2                                     ; $6a6e: $c2 $c2 $81

	inc e                                            ; $6a71: $1c
	inc d                                            ; $6a72: $14
	add $1c                                          ; $6a73: $c6 $1c
	inc b                                            ; $6a75: $04
	jp nz, $0417                                     ; $6a76: $c2 $17 $04

	add $17                                          ; $6a79: $c6 $17
	ld bc, $0700                                     ; $6a7b: $01 $00 $07
	jp nz, $061c                                     ; $6a7e: $c2 $1c $06

	add $1c                                          ; $6a81: $c6 $1c
	ld [bc], a                                       ; $6a83: $02
	jp nz, $1000                                     ; $6a84: $c2 $00 $10

	inc e                                            ; $6a87: $1c
	ld d, $c6                                        ; $6a88: $16 $c6
	inc e                                            ; $6a8a: $1c
	ld [bc], a                                       ; $6a8b: $02
	jp nz, $0a10                                     ; $6a8c: $c2 $10 $0a

	add $10                                          ; $6a8f: $c6 $10
	ld [bc], a                                       ; $6a91: $02
	jp nz, $1612                                     ; $6a92: $c2 $12 $16

	add $12                                          ; $6a95: $c6 $12
	inc b                                            ; $6a97: $04
	jp nz, $0a00                                     ; $6a98: $c2 $00 $0a

	ld [de], a                                       ; $6a9b: $12
	ld b, $c6                                        ; $6a9c: $06 $c6
	ld [de], a                                       ; $6a9e: $12
	ld [bc], a                                       ; $6a9f: $02
	jp nz, $1000                                     ; $6aa0: $c2 $00 $10

	ld e, $12                                        ; $6aa3: $1e $12
	add $1e                                          ; $6aa5: $c6 $1e
	ld [bc], a                                       ; $6aa7: $02
	jp nz, $0400                                     ; $6aa8: $c2 $00 $04

	ld e, $0a                                        ; $6aab: $1e $0a
	add $1e                                          ; $6aad: $c6 $1e
	ld [bc], a                                       ; $6aaf: $02
	jp nz, $81c2                                     ; $6ab0: $c2 $c2 $81

	inc d                                            ; $6ab3: $14
	ld d, $c6                                        ; $6ab4: $16 $c6
	inc d                                            ; $6ab6: $14
	ld [bc], a                                       ; $6ab7: $02
	jp nz, $0a16                                     ; $6ab8: $c2 $16 $0a

	add $16                                          ; $6abb: $c6 $16
	ld [bc], a                                       ; $6abd: $02

jr_032_6abe:
	jp nz, $0714                                     ; $6abe: $c2 $14 $07

	add $14                                          ; $6ac1: $c6 $14
	ld [bc], a                                       ; $6ac3: $02
	nop                                              ; $6ac4: $00
	rrca                                             ; $6ac5: $0f
	jp nz, $0a1b                                     ; $6ac6: $c2 $1b $0a

	add $1b                                          ; $6ac9: $c6 $1b
	ld [bc], a                                       ; $6acb: $02
	jp nz, $0c00                                     ; $6acc: $c2 $00 $0c

	dec de                                           ; $6acf: $1b
	ld a, [bc]                                       ; $6ad0: $0a
	add $1b                                          ; $6ad1: $c6 $1b
	ld [bc], a                                       ; $6ad3: $02
	jp nz, $0c00                                     ; $6ad4: $c2 $00 $0c

	dec de                                           ; $6ad7: $1b
	dec bc                                           ; $6ad8: $0b
	add $1b                                          ; $6ad9: $c6 $1b
	ld [bc], a                                       ; $6adb: $02
	jp nz, $0b00                                     ; $6adc: $c2 $00 $0b

	dec de                                           ; $6adf: $1b
	ld a, [bc]                                       ; $6ae0: $0a
	add $1b                                          ; $6ae1: $c6 $1b
	ld [bc], a                                       ; $6ae3: $02
	jp nz, $0c00                                     ; $6ae4: $c2 $00 $0c

	dec de                                           ; $6ae7: $1b
	ld a, [bc]                                       ; $6ae8: $0a
	add $1b                                          ; $6ae9: $c6 $1b
	ld [bc], a                                       ; $6aeb: $02
	jp nz, $0a19                                     ; $6aec: $c2 $19 $0a

	add $19                                          ; $6aef: $c6 $19
	ld [bc], a                                       ; $6af1: $02
	jp nz, $0a13                                     ; $6af2: $c2 $13 $0a

	add $13                                          ; $6af5: $c6 $13
	ld [bc], a                                       ; $6af7: $02
	cp $ff                                           ; $6af8: $fe $ff
	ret nc                                           ; $6afa: $d0

	ld h, [hl]                                       ; $6afb: $66
	cp $14                                           ; $6afc: $fe $14
	jr jr_032_6abe                                   ; $6afe: $18 $be

	inc c                                            ; $6b00: $0c
	inc c                                            ; $6b01: $0c
	ld [de], a                                       ; $6b02: $12
	add hl, bc                                       ; $6b03: $09
	ld [de], a                                       ; $6b04: $12
	inc c                                            ; $6b05: $0c
	ld [de], a                                       ; $6b06: $12
	cp [hl]                                          ; $6b07: $be
	ei                                               ; $6b08: $fb
	cp [hl]                                          ; $6b09: $be
	inc c                                            ; $6b0a: $0c
	add hl, bc                                       ; $6b0b: $09
	ld [de], a                                       ; $6b0c: $12
	inc c                                            ; $6b0d: $0c
	ld [de], a                                       ; $6b0e: $12
	cp [hl]                                          ; $6b0f: $be
	ei                                               ; $6b10: $fb
	dec b                                            ; $6b11: $05
	cp [hl]                                          ; $6b12: $be
	inc c                                            ; $6b13: $0c
	add hl, bc                                       ; $6b14: $09
	jr jr_032_6b23                                   ; $6b15: $18 $0c

	ld [de], a                                       ; $6b17: $12
	cp [hl]                                          ; $6b18: $be
	inc d                                            ; $6b19: $14
	jr jr_032_6b28                                   ; $6b1a: $18 $0c

	inc c                                            ; $6b1c: $0c
	ld [de], a                                       ; $6b1d: $12
	inc c                                            ; $6b1e: $0c
	ei                                               ; $6b1f: $fb
	cp [hl]                                          ; $6b20: $be
	inc c                                            ; $6b21: $0c
	add hl, bc                                       ; $6b22: $09

jr_032_6b23:
	ld [de], a                                       ; $6b23: $12
	inc c                                            ; $6b24: $0c
	ld [de], a                                       ; $6b25: $12
	cp [hl]                                          ; $6b26: $be
	ei                                               ; $6b27: $fb

jr_032_6b28:
	inc bc                                           ; $6b28: $03
	ei                                               ; $6b29: $fb
	cp [hl]                                          ; $6b2a: $be
	inc c                                            ; $6b2b: $0c
	add hl, bc                                       ; $6b2c: $09
	ld [de], a                                       ; $6b2d: $12
	inc c                                            ; $6b2e: $0c
	ld [de], a                                       ; $6b2f: $12
	cp [hl]                                          ; $6b30: $be
	ei                                               ; $6b31: $fb
	inc bc                                           ; $6b32: $03
	jr jr_032_6b41                                   ; $6b33: $18 $0c

	cp [hl]                                          ; $6b35: $be
	ld b, $12                                        ; $6b36: $06 $12
	inc de                                           ; $6b38: $13
	inc c                                            ; $6b39: $0c
	inc c                                            ; $6b3a: $0c
	cp [hl]                                          ; $6b3b: $be
	add hl, bc                                       ; $6b3c: $09
	inc c                                            ; $6b3d: $0c
	cp $ff                                           ; $6b3e: $fe $ff
	ret nc                                           ; $6b40: $d0

jr_032_6b41:
	ld b, [hl]                                       ; $6b41: $46
	cp $fd                                           ; $6b42: $fe $fd
	ld sp, $fd6c                                     ; $6b44: $31 $6c $fd
	ld a, h                                          ; $6b47: $7c
	ld l, h                                          ; $6b48: $6c
	pop de                                           ; $6b49: $d1
	jp z, $040f                                      ; $6b4a: $ca $0f $04

	jp $0416                                         ; $6b4d: $c3 $16 $04


	jp z, $0416                                      ; $6b50: $ca $16 $04

	jp $040f                                         ; $6b53: $c3 $0f $04


	jp z, $041b                                      ; $6b56: $ca $1b $04

	jp $0416                                         ; $6b59: $c3 $16 $04


	jp z, $041e                                      ; $6b5c: $ca $1e $04

	jp $041b                                         ; $6b5f: $c3 $1b $04


	jp z, $041b                                      ; $6b62: $ca $1b $04

	jp $041e                                         ; $6b65: $c3 $1e $04


	jp z, $0416                                      ; $6b68: $ca $16 $04

	jp $041b                                         ; $6b6b: $c3 $1b $04


	rst JumpTable                                          ; $6b6e: $c7
	daa                                              ; $6b6f: $27
	inc b                                            ; $6b70: $04
	ld a, l                                          ; $6b71: $7d
	ld [bc], a                                       ; $6b72: $02
	jp $0416                                         ; $6b73: $c3 $16 $04


	jp z, $0422                                      ; $6b76: $ca $22 $04

	ld a, l                                          ; $6b79: $7d
	nop                                              ; $6b7a: $00
	jp $0427                                         ; $6b7b: $c3 $27 $04


	jp z, $041e                                      ; $6b7e: $ca $1e $04

	jp $0422                                         ; $6b81: $c3 $22 $04


	jp z, $0422                                      ; $6b84: $ca $22 $04

	jp $041e                                         ; $6b87: $c3 $1e $04


	jp z, $041e                                      ; $6b8a: $ca $1e $04

	jp $0422                                         ; $6b8d: $c3 $22 $04


	jp z, $041b                                      ; $6b90: $ca $1b $04

	jp $041e                                         ; $6b93: $c3 $1e $04


	db $fd                                           ; $6b96: $fd
	add $6c                                          ; $6b97: $c6 $6c
	jp z, $041d                                      ; $6b99: $ca $1d $04

	jp $041e                                         ; $6b9c: $c3 $1e $04


	jp z, $0415                                      ; $6b9f: $ca $15 $04

	jp $041d                                         ; $6ba2: $c3 $1d $04


	jp z, $0411                                      ; $6ba5: $ca $11 $04

	jp $0415                                         ; $6ba8: $c3 $15 $04


	jp z, $041b                                      ; $6bab: $ca $1b $04

	jp $0411                                         ; $6bae: $c3 $11 $04


	jp z, $0415                                      ; $6bb1: $ca $15 $04

	jp $041b                                         ; $6bb4: $c3 $1b $04


	jp z, $0411                                      ; $6bb7: $ca $11 $04

	jp $0415                                         ; $6bba: $c3 $15 $04


	jp z, $0419                                      ; $6bbd: $ca $19 $04

	jp $0411                                         ; $6bc0: $c3 $11 $04


	jp z, $0415                                      ; $6bc3: $ca $15 $04

	jp $0419                                         ; $6bc6: $c3 $19 $04


	jp z, $0411                                      ; $6bc9: $ca $11 $04

	jp $0415                                         ; $6bcc: $c3 $15 $04


	jp z, $0418                                      ; $6bcf: $ca $18 $04

	jp $0411                                         ; $6bd2: $c3 $11 $04


	jp z, $0415                                      ; $6bd5: $ca $15 $04

	jp $0418                                         ; $6bd8: $c3 $18 $04


	jp z, $0411                                      ; $6bdb: $ca $11 $04

	jp $0415                                         ; $6bde: $c3 $15 $04


	db $fd                                           ; $6be1: $fd
	ld a, h                                          ; $6be2: $7c
	ld l, h                                          ; $6be3: $6c
	jp z, $0406                                      ; $6be4: $ca $06 $04

	jp $0416                                         ; $6be7: $c3 $16 $04


	jp z, $040d                                      ; $6bea: $ca $0d $04

	jp $0406                                         ; $6bed: $c3 $06 $04


	jp z, $0412                                      ; $6bf0: $ca $12 $04

	jp $040d                                         ; $6bf3: $c3 $0d $04


	jp z, $0419                                      ; $6bf6: $ca $19 $04

	jp $0412                                         ; $6bf9: $c3 $12 $04


	jp z, $0415                                      ; $6bfc: $ca $15 $04

	jp $0419                                         ; $6bff: $c3 $19 $04


	jp z, $0412                                      ; $6c02: $ca $12 $04

	jp $0415                                         ; $6c05: $c3 $15 $04


	jp z, $041e                                      ; $6c08: $ca $1e $04

	jp $0412                                         ; $6c0b: $c3 $12 $04


	jp z, $0419                                      ; $6c0e: $ca $19 $04

	jp $041e                                         ; $6c11: $c3 $1e $04


	jp z, $0415                                      ; $6c14: $ca $15 $04

	jp $0419                                         ; $6c17: $c3 $19 $04


	jp z, $0419                                      ; $6c1a: $ca $19 $04

	jp $0415                                         ; $6c1d: $c3 $15 $04


	jp z, $0415                                      ; $6c20: $ca $15 $04

	jp $0419                                         ; $6c23: $c3 $19 $04


	jp z, $0412                                      ; $6c26: $ca $12 $04

	jp $0415                                         ; $6c29: $c3 $15 $04


	db $fd                                           ; $6c2c: $fd
	add $6c                                          ; $6c2d: $c6 $6c
	cp $ff                                           ; $6c2f: $fe $ff
	pop de                                           ; $6c31: $d1
	jp z, $0d91                                      ; $6c32: $ca $91 $0d

	inc b                                            ; $6c35: $04
	jp $040d                                         ; $6c36: $c3 $0d $04


	jp z, $0414                                      ; $6c39: $ca $14 $04

	jp $040d                                         ; $6c3c: $c3 $0d $04


	jp z, $0419                                      ; $6c3f: $ca $19 $04

	jp $0414                                         ; $6c42: $c3 $14 $04


	jp z, $0420                                      ; $6c45: $ca $20 $04

	jp $0419                                         ; $6c48: $c3 $19 $04


	jp z, $041d                                      ; $6c4b: $ca $1d $04

	jp $0420                                         ; $6c4e: $c3 $20 $04


	jp z, $0419                                      ; $6c51: $ca $19 $04

	jp $041d                                         ; $6c54: $c3 $1d $04


	ret z                                            ; $6c57: $c8

	dec h                                            ; $6c58: $25
	inc b                                            ; $6c59: $04
	jp $0419                                         ; $6c5a: $c3 $19 $04


	jp z, $0420                                      ; $6c5d: $ca $20 $04

	jp $0425                                         ; $6c60: $c3 $25 $04


	jp z, $041d                                      ; $6c63: $ca $1d $04

	jp $0420                                         ; $6c66: $c3 $20 $04


	jp z, $0420                                      ; $6c69: $ca $20 $04

	jp $041d                                         ; $6c6c: $c3 $1d $04


	jp z, $041d                                      ; $6c6f: $ca $1d $04

	jp $0420                                         ; $6c72: $c3 $20 $04


	jp z, $0419                                      ; $6c75: $ca $19 $04

	jp $041d                                         ; $6c78: $c3 $1d $04


	db $fd                                           ; $6c7b: $fd
	pop de                                           ; $6c7c: $d1
	jp z, $040a                                      ; $6c7d: $ca $0a $04

	jp $0419                                         ; $6c80: $c3 $19 $04


	jp z, $0411                                      ; $6c83: $ca $11 $04

	jp $040a                                         ; $6c86: $c3 $0a $04


	jp z, $0416                                      ; $6c89: $ca $16 $04

	jp $0411                                         ; $6c8c: $c3 $11 $04


	jp z, $041d                                      ; $6c8f: $ca $1d $04

	jp $0416                                         ; $6c92: $c3 $16 $04


	jp z, $0419                                      ; $6c95: $ca $19 $04

	jp $041d                                         ; $6c98: $c3 $1d $04


	jp z, $0416                                      ; $6c9b: $ca $16 $04

	jp $0419                                         ; $6c9e: $c3 $19 $04


	ret z                                            ; $6ca1: $c8

	ld [hl+], a                                      ; $6ca2: $22
	inc b                                            ; $6ca3: $04
	jp $0416                                         ; $6ca4: $c3 $16 $04


	jp z, $041d                                      ; $6ca7: $ca $1d $04

	jp $0422                                         ; $6caa: $c3 $22 $04


	jp z, $0419                                      ; $6cad: $ca $19 $04

	jp $041d                                         ; $6cb0: $c3 $1d $04


	jp z, $041d                                      ; $6cb3: $ca $1d $04

	jp $0419                                         ; $6cb6: $c3 $19 $04


	jp z, $0419                                      ; $6cb9: $ca $19 $04

	jp $041d                                         ; $6cbc: $c3 $1d $04


	jp z, $0416                                      ; $6cbf: $ca $16 $04

	jp $0419                                         ; $6cc2: $c3 $19 $04


	db $fd                                           ; $6cc5: $fd
	pop de                                           ; $6cc6: $d1
	jp z, $0408                                      ; $6cc7: $ca $08 $04

	jp $041b                                         ; $6cca: $c3 $1b $04


	jp z, $040f                                      ; $6ccd: $ca $0f $04

	jp $0408                                         ; $6cd0: $c3 $08 $04


	jp z, $0414                                      ; $6cd3: $ca $14 $04

	jp $040f                                         ; $6cd6: $c3 $0f $04


	jp z, $041b                                      ; $6cd9: $ca $1b $04

	jp $0414                                         ; $6cdc: $c3 $14 $04


	jp z, $0418                                      ; $6cdf: $ca $18 $04

	jp $041b                                         ; $6ce2: $c3 $1b $04


	jp z, $0414                                      ; $6ce5: $ca $14 $04

	jp $0418                                         ; $6ce8: $c3 $18 $04


	jp z, $0420                                      ; $6ceb: $ca $20 $04

	jp $0414                                         ; $6cee: $c3 $14 $04


	jp z, $041b                                      ; $6cf1: $ca $1b $04

	jp $0420                                         ; $6cf4: $c3 $20 $04


	jp z, $0418                                      ; $6cf7: $ca $18 $04

	jp $041b                                         ; $6cfa: $c3 $1b $04


	jp z, $041e                                      ; $6cfd: $ca $1e $04

	jp $0418                                         ; $6d00: $c3 $18 $04


	jp z, $041b                                      ; $6d03: $ca $1b $04

	jp $041e                                         ; $6d06: $c3 $1e $04


	jp z, $0418                                      ; $6d09: $ca $18 $04

	jp $041b                                         ; $6d0c: $c3 $1b $04


	db $fd                                           ; $6d0f: $fd
	ret nc                                           ; $6d10: $d0

	ld b, [hl]                                       ; $6d11: $46
	cp $b5                                           ; $6d12: $fe $b5
	and c                                            ; $6d14: $a1
	ld [bc], a                                       ; $6d15: $02
	inc c                                            ; $6d16: $0c
	inc b                                            ; $6d17: $04
	add hl, hl                                       ; $6d18: $29
	inc c                                            ; $6d19: $0c
	or c                                             ; $6d1a: $b1
	ld hl, $0000                                     ; $6d1b: $21 $00 $00
	add hl, hl                                       ; $6d1e: $29
	inc h                                            ; $6d1f: $24
	pop bc                                           ; $6d20: $c1
	add hl, hl                                       ; $6d21: $29
	jr @-$4d                                         ; $6d22: $18 $b1

	and c                                            ; $6d24: $a1
	ld b, $05                                        ; $6d25: $06 $05
	add hl, hl                                       ; $6d27: $29
	ld b, $b1                                        ; $6d28: $06 $b1
	ld b, c                                          ; $6d2a: $41
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	add hl, hl                                       ; $6d2d: $29
	ld [bc], a                                       ; $6d2e: $02
	or c                                             ; $6d2f: $b1
	add c                                            ; $6d30: $81
	ld b, $05                                        ; $6d31: $06 $05
	ld a, [hl+]                                      ; $6d33: $2a
	ld b, $b1                                        ; $6d34: $06 $b1
	ld sp, $0000                                     ; $6d36: $31 $00 $00
	add hl, hl                                       ; $6d39: $29
	ld [bc], a                                       ; $6d3a: $02
	or c                                             ; $6d3b: $b1
	sub c                                            ; $6d3c: $91
	ld b, $05                                        ; $6d3d: $06 $05
	inc l                                            ; $6d3f: $2c
	ld b, $b1                                        ; $6d40: $06 $b1
	ld hl, $0000                                     ; $6d42: $21 $00 $00
	ld a, [hl+]                                      ; $6d45: $2a
	ld [bc], a                                       ; $6d46: $02
	or c                                             ; $6d47: $b1
	and c                                            ; $6d48: $a1
	inc c                                            ; $6d49: $0c
	inc b                                            ; $6d4a: $04
	ld l, $0c                                        ; $6d4b: $2e $0c
	or c                                             ; $6d4d: $b1
	ld hl, $0000                                     ; $6d4e: $21 $00 $00
	ld l, $24                                        ; $6d51: $2e $24
	pop bc                                           ; $6d53: $c1
	ld l, $18                                        ; $6d54: $2e $18
	or c                                             ; $6d56: $b1
	and c                                            ; $6d57: $a1
	inc c                                            ; $6d58: $0c
	dec b                                            ; $6d59: $05
	jr nc, @+$0e                                     ; $6d5a: $30 $0c

	or c                                             ; $6d5c: $b1
	ld sp, $0000                                     ; $6d5d: $31 $00 $00
	ld l, $04                                        ; $6d60: $2e $04
	or c                                             ; $6d62: $b1
	sub c                                            ; $6d63: $91
	ld b, $05                                        ; $6d64: $06 $05
	ld sp, $b106                                     ; $6d66: $31 $06 $b1
	ld sp, $0000                                     ; $6d69: $31 $00 $00
	jr nc, jr_032_6d70                               ; $6d6c: $30 $02

	or c                                             ; $6d6e: $b1
	sub c                                            ; $6d6f: $91

jr_032_6d70:
	inc c                                            ; $6d70: $0c
	inc b                                            ; $6d71: $04
	ld sp, $b10c                                     ; $6d72: $31 $0c $b1
	ld hl, $0000                                     ; $6d75: $21 $00 $00
	ld sp, $b124                                     ; $6d78: $31 $24 $b1
	sub c                                            ; $6d7b: $91
	inc c                                            ; $6d7c: $0c
	inc b                                            ; $6d7d: $04
	ld l, $0c                                        ; $6d7e: $2e $0c
	or c                                             ; $6d80: $b1
	ld hl, $0000                                     ; $6d81: $21 $00 $00
	ld l, $1c                                        ; $6d84: $2e $1c
	or c                                             ; $6d86: $b1
	and c                                            ; $6d87: $a1
	ld b, $05                                        ; $6d88: $06 $05
	ld sp, $b106                                     ; $6d8a: $31 $06 $b1
	ld b, c                                          ; $6d8d: $41
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	ld l, $02                                        ; $6d90: $2e $02
	or c                                             ; $6d92: $b1
	and c                                            ; $6d93: $a1
	inc c                                            ; $6d94: $0c
	dec b                                            ; $6d95: $05
	ld sp, $b10c                                     ; $6d96: $31 $0c $b1
	ld hl, $0000                                     ; $6d99: $21 $00 $00
	ld sp, $b10c                                     ; $6d9c: $31 $0c $b1
	and c                                            ; $6d9f: $a1
	inc c                                            ; $6da0: $0c
	dec b                                            ; $6da1: $05
	jr nc, jr_032_6db0                               ; $6da2: $30 $0c

	or c                                             ; $6da4: $b1
	ld hl, $0000                                     ; $6da5: $21 $00 $00
	jr nc, jr_032_6db6                               ; $6da8: $30 $0c

	or c                                             ; $6daa: $b1
	sub c                                            ; $6dab: $91
	inc c                                            ; $6dac: $0c
	dec b                                            ; $6dad: $05
	ld l, $0c                                        ; $6dae: $2e $0c

jr_032_6db0:
	or c                                             ; $6db0: $b1
	ld sp, $0000                                     ; $6db1: $31 $00 $00
	ld l, $0c                                        ; $6db4: $2e $0c

jr_032_6db6:
	or c                                             ; $6db6: $b1
	add c                                            ; $6db7: $81
	inc c                                            ; $6db8: $0c
	dec b                                            ; $6db9: $05
	inc l                                            ; $6dba: $2c
	inc c                                            ; $6dbb: $0c
	or c                                             ; $6dbc: $b1
	ld hl, $0000                                     ; $6dbd: $21 $00 $00
	inc l                                            ; $6dc0: $2c
	inc c                                            ; $6dc1: $0c
	or l                                             ; $6dc2: $b5
	and c                                            ; $6dc3: $a1
	ld [bc], a                                       ; $6dc4: $02
	inc c                                            ; $6dc5: $0c
	inc b                                            ; $6dc6: $04
	dec l                                            ; $6dc7: $2d
	inc c                                            ; $6dc8: $0c
	or c                                             ; $6dc9: $b1
	ld hl, $0000                                     ; $6dca: $21 $00 $00
	dec l                                            ; $6dcd: $2d
	inc h                                            ; $6dce: $24
	or c                                             ; $6dcf: $b1
	and c                                            ; $6dd0: $a1
	inc c                                            ; $6dd1: $0c
	inc b                                            ; $6dd2: $04
	add hl, hl                                       ; $6dd3: $29
	inc c                                            ; $6dd4: $0c
	or c                                             ; $6dd5: $b1
	ld hl, $0000                                     ; $6dd6: $21 $00 $00
	add hl, hl                                       ; $6dd9: $29
	inc c                                            ; $6dda: $0c
	or c                                             ; $6ddb: $b1
	and c                                            ; $6ddc: $a1
	ld b, $05                                        ; $6ddd: $06 $05
	add hl, hl                                       ; $6ddf: $29
	ld b, $b1                                        ; $6de0: $06 $b1
	ld b, c                                          ; $6de2: $41
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	add hl, hl                                       ; $6de5: $29
	ld [bc], a                                       ; $6de6: $02
	or c                                             ; $6de7: $b1
	ld [hl], c                                       ; $6de8: $71
	ld b, $05                                        ; $6de9: $06 $05
	inc sp                                           ; $6deb: $33
	ld b, $b1                                        ; $6dec: $06 $b1
	ld hl, $0000                                     ; $6dee: $21 $00 $00
	inc sp                                           ; $6df1: $33
	ld [bc], a                                       ; $6df2: $02
	or c                                             ; $6df3: $b1
	sub c                                            ; $6df4: $91
	ld b, $05                                        ; $6df5: $06 $05
	jr nc, jr_032_6dff                               ; $6df7: $30 $06

	or c                                             ; $6df9: $b1
	ld b, c                                          ; $6dfa: $41
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	jr nc, jr_032_6e01                               ; $6dfd: $30 $02

jr_032_6dff:
	or c                                             ; $6dff: $b1
	add c                                            ; $6e00: $81

jr_032_6e01:
	inc c                                            ; $6e01: $0c
	inc b                                            ; $6e02: $04
	ld sp, $b10c                                     ; $6e03: $31 $0c $b1
	ld hl, $0000                                     ; $6e06: $21 $00 $00
	ld sp, $c124                                     ; $6e09: $31 $24 $c1
	ld sp, $b118                                     ; $6e0c: $31 $18 $b1
	and c                                            ; $6e0f: $a1
	inc c                                            ; $6e10: $0c
	dec b                                            ; $6e11: $05
	ld l, $0c                                        ; $6e12: $2e $0c
	or c                                             ; $6e14: $b1
	ld b, c                                          ; $6e15: $41
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00

jr_032_6e18:
	ld sp, $b104                                     ; $6e18: $31 $04 $b1
	sub c                                            ; $6e1b: $91
	ld b, $05                                        ; $6e1c: $06 $05
	jr nc, jr_032_6e26                               ; $6e1e: $30 $06

	or c                                             ; $6e20: $b1
	ld b, c                                          ; $6e21: $41
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	ld l, $02                                        ; $6e24: $2e $02

jr_032_6e26:
	or c                                             ; $6e26: $b1
	or c                                             ; $6e27: $b1
	inc c                                            ; $6e28: $0c
	inc b                                            ; $6e29: $04
	ld sp, $b10c                                     ; $6e2a: $31 $0c $b1
	ld hl, $0000                                     ; $6e2d: $21 $00 $00
	ld sp, $b124                                     ; $6e30: $31 $24 $b1
	sub c                                            ; $6e33: $91
	inc c                                            ; $6e34: $0c
	dec b                                            ; $6e35: $05
	cpl                                              ; $6e36: $2f
	inc c                                            ; $6e37: $0c
	or c                                             ; $6e38: $b1
	ld hl, $0000                                     ; $6e39: $21 $00 $00
	cpl                                              ; $6e3c: $2f
	inc c                                            ; $6e3d: $0c
	or c                                             ; $6e3e: $b1
	sub c                                            ; $6e3f: $91
	inc c                                            ; $6e40: $0c
	dec b                                            ; $6e41: $05
	dec l                                            ; $6e42: $2d
	inc c                                            ; $6e43: $0c
	or c                                             ; $6e44: $b1
	ld sp, $0000                                     ; $6e45: $31 $00 $00
	dec l                                            ; $6e48: $2d
	inc c                                            ; $6e49: $0c
	or c                                             ; $6e4a: $b1
	sub c                                            ; $6e4b: $91
	inc c                                            ; $6e4c: $0c
	inc b                                            ; $6e4d: $04
	inc l                                            ; $6e4e: $2c
	inc c                                            ; $6e4f: $0c
	or c                                             ; $6e50: $b1
	ld hl, $0000                                     ; $6e51: $21 $00 $00
	inc l                                            ; $6e54: $2c
	jr nc, jr_032_6e18                               ; $6e55: $30 $c1

	inc l                                            ; $6e57: $2c
	inc h                                            ; $6e58: $24
	cp $ff                                           ; $6e59: $fe $ff
	ret nc                                           ; $6e5b: $d0

	ld b, [hl]                                       ; $6e5c: $46
	cp $d1                                           ; $6e5d: $fe $d1
	ld a, a                                          ; $6e5f: $7f
	ld e, $c6                                        ; $6e60: $1e $c6
	ld a, l                                          ; $6e62: $7d
	ld bc, $1d7e                                     ; $6e63: $01 $7e $1d
	nop                                              ; $6e66: $00
	xor e                                            ; $6e67: $ab
	nop                                              ; $6e68: $00
	inc c                                            ; $6e69: $0c
	add hl, hl                                       ; $6e6a: $29
	inc c                                            ; $6e6b: $0c
	add hl, hl                                       ; $6e6c: $29
	inc h                                            ; $6e6d: $24
	add hl, hl                                       ; $6e6e: $29
	jr @+$2b                                         ; $6e6f: $18 $29

	ld b, $29                                        ; $6e71: $06 $29
	ld [bc], a                                       ; $6e73: $02
	ld a, [hl+]                                      ; $6e74: $2a
	ld [$082c], sp                                   ; $6e75: $08 $2c $08
	ld l, $0c                                        ; $6e78: $2e $0c
	ld l, $24                                        ; $6e7a: $2e $24
	ld l, $18                                        ; $6e7c: $2e $18
	jr nc, @+$12                                     ; $6e7e: $30 $10

	ld sp, $3108                                     ; $6e80: $31 $08 $31
	inc c                                            ; $6e83: $0c
	ld sp, $2e24                                     ; $6e84: $31 $24 $2e
	inc c                                            ; $6e87: $0c
	ld l, $18                                        ; $6e88: $2e $18
	ld sp, $be0c                                     ; $6e8a: $31 $0c $be
	inc c                                            ; $6e8d: $0c
	ld sp, $3031                                     ; $6e8e: $31 $31 $30
	jr nc, jr_032_6ec1                               ; $6e91: $30 $2e

	ld l, $2c                                        ; $6e93: $2e $2c
	inc l                                            ; $6e95: $2c
	cp [hl]                                          ; $6e96: $be
	pop de                                           ; $6e97: $d1
	ld a, a                                          ; $6e98: $7f
	ld e, $c6                                        ; $6e99: $1e $c6
	ld a, [hl]                                       ; $6e9b: $7e
	dec e                                            ; $6e9c: $1d
	nop                                              ; $6e9d: $00
	xor c                                            ; $6e9e: $a9
	dec l                                            ; $6e9f: $2d
	inc c                                            ; $6ea0: $0c
	dec l                                            ; $6ea1: $2d
	inc h                                            ; $6ea2: $24
	add hl, hl                                       ; $6ea3: $29
	inc c                                            ; $6ea4: $0c
	add hl, hl                                       ; $6ea5: $29
	inc c                                            ; $6ea6: $0c
	add hl, hl                                       ; $6ea7: $29
	ld b, $29                                        ; $6ea8: $06 $29
	ld [bc], a                                       ; $6eaa: $02
	inc sp                                           ; $6eab: $33
	ld b, $33                                        ; $6eac: $06 $33
	ld [bc], a                                       ; $6eae: $02
	jr nc, jr_032_6eb7                               ; $6eaf: $30 $06

	jr nc, @+$04                                     ; $6eb1: $30 $02

	ld sp, $310c                                     ; $6eb3: $31 $0c $31
	inc h                                            ; $6eb6: $24

jr_032_6eb7:
	ld sp, $2e18                                     ; $6eb7: $31 $18 $2e
	db $10                                           ; $6eba: $10
	jr nc, jr_032_6ec5                               ; $6ebb: $30 $08

	ld sp, $310c                                     ; $6ebd: $31 $0c $31
	inc h                                            ; $6ec0: $24

jr_032_6ec1:
	cp [hl]                                          ; $6ec1: $be
	inc c                                            ; $6ec2: $0c
	cpl                                              ; $6ec3: $2f
	cpl                                              ; $6ec4: $2f

jr_032_6ec5:
	dec l                                            ; $6ec5: $2d
	dec l                                            ; $6ec6: $2d
	cp [hl]                                          ; $6ec7: $be
	inc l                                            ; $6ec8: $2c
	inc c                                            ; $6ec9: $0c
	inc l                                            ; $6eca: $2c
	jr nc, jr_032_6ef9                               ; $6ecb: $30 $2c

jr_032_6ecd:
	jr jr_032_6ecd                                   ; $6ecd: $18 $fe

	rst $38                                          ; $6ecf: $ff
	ret nc                                           ; $6ed0: $d0

	and l                                            ; $6ed1: $a5
	cp $c8                                           ; $6ed2: $fe $c8
	pop de                                           ; $6ed4: $d1
	sub c                                            ; $6ed5: $91
	ld [hl], h                                       ; $6ed6: $74
	db $fd                                           ; $6ed7: $fd
	add e                                            ; $6ed8: $83
	ld l, a                                          ; $6ed9: $6f
	nop                                              ; $6eda: $00
	ret nz                                           ; $6edb: $c0

	db $fd                                           ; $6edc: $fd
	add e                                            ; $6edd: $83
	ld l, a                                          ; $6ede: $6f
	jp nz, $7e92                                     ; $6edf: $c2 $92 $7e

	dec e                                            ; $6ee2: $1d
	nop                                              ; $6ee3: $00
	xor c                                            ; $6ee4: $a9
	nop                                              ; $6ee5: $00
	ld [de], a                                       ; $6ee6: $12
	cp [hl]                                          ; $6ee7: $be
	inc c                                            ; $6ee8: $0c
	jr nc, jr_032_6f19                               ; $6ee9: $30 $2e

	inc l                                            ; $6eeb: $2c
	ld a, [hl+]                                      ; $6eec: $2a
	ld a, [hl+]                                      ; $6eed: $2a
	add hl, hl                                       ; $6eee: $29
	cp [hl]                                          ; $6eef: $be
	add hl, hl                                       ; $6ef0: $29
	ld b, $91                                        ; $6ef1: $06 $91
	ld a, [hl]                                       ; $6ef3: $7e
	nop                                              ; $6ef4: $00
	and b                                            ; $6ef5: $a0
	rst JumpTable                                          ; $6ef6: $c7
	jr nz, jr_032_6efa                               ; $6ef7: $20 $01

jr_032_6ef9:
	nop                                              ; $6ef9: $00

jr_032_6efa:
	dec bc                                           ; $6efa: $0b
	jr nz, @+$0e                                     ; $6efb: $20 $0c

jr_032_6efd:
	jp $0c20                                         ; $6efd: $c3 $20 $0c


	ret z                                            ; $6f00: $c8

	jr nz, jr_032_6f0d                               ; $6f01: $20 $0a

	nop                                              ; $6f03: $00
	ld [bc], a                                       ; $6f04: $02
	sub [hl]                                         ; $6f05: $96
	jr jr_032_6f0d                                   ; $6f06: $18 $05

	jr nz, jr_032_6f22                               ; $6f08: $20 $18

	sub [hl]                                         ; $6f0a: $96
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00

jr_032_6f0d:
	ld a, [hl]                                       ; $6f0d: $7e
	rla                                              ; $6f0e: $17
	nop                                              ; $6f0f: $00
	and b                                            ; $6f10: $a0
	ld a, [bc]                                       ; $6f11: $0a
	jr jr_032_6f92                                   ; $6f12: $18 $7e

	nop                                              ; $6f14: $00
	jp z, $92d1                                      ; $6f15: $ca $d1 $92

	ld [hl], h                                       ; $6f18: $74

jr_032_6f19:
	db $fd                                           ; $6f19: $fd
	or e                                             ; $6f1a: $b3
	ld l, a                                          ; $6f1b: $6f
	ld a, [hl]                                       ; $6f1c: $7e
	rla                                              ; $6f1d: $17

jr_032_6f1e:
	nop                                              ; $6f1e: $00
	xor c                                            ; $6f1f: $a9
	ld e, $18                                        ; $6f20: $1e $18

jr_032_6f22:
	ld a, [hl]                                       ; $6f22: $7e
	nop                                              ; $6f23: $00
	dec e                                            ; $6f24: $1d
	jr @+$1d                                         ; $6f25: $18 $1b

	jr @-$68                                         ; $6f27: $18 $96

	inc c                                            ; $6f29: $0c
	inc bc                                           ; $6f2a: $03
	ld e, $0c                                        ; $6f2b: $1e $0c
	sub [hl]                                         ; $6f2d: $96
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	dec de                                           ; $6f30: $1b
	inc c                                            ; $6f31: $0c
	sub [hl]                                         ; $6f32: $96
	inc c                                            ; $6f33: $0c
	inc bc                                           ; $6f34: $03
	add hl, de                                       ; $6f35: $19

jr_032_6f36:
	inc c                                            ; $6f36: $0c
	sub [hl]                                         ; $6f37: $96
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	add hl, de                                       ; $6f3a: $19
	inc c                                            ; $6f3b: $0c
	dec e                                            ; $6f3c: $1d
	jr @+$22                                         ; $6f3d: $18 $20

	jr jr_032_6f5e                                   ; $6f3f: $18 $1d

	ld b, $c3                                        ; $6f41: $06 $c3
	dec e                                            ; $6f43: $1d
	ld b, $cb                                        ; $6f44: $06 $cb
	dec e                                            ; $6f46: $1d
	inc c                                            ; $6f47: $0c
	ld a, [hl]                                       ; $6f48: $7e
	rla                                              ; $6f49: $17
	nop                                              ; $6f4a: $00
	xor c                                            ; $6f4b: $a9
	inc hl                                           ; $6f4c: $23
	jr jr_032_6fcd                                   ; $6f4d: $18 $7e

	nop                                              ; $6f4f: $00
	ld [hl+], a                                      ; $6f50: $22
	jr jr_032_6f76                                   ; $6f51: $18 $23

	jr jr_032_6f1e                                   ; $6f53: $18 $c9

jr_032_6f55:
	dec h                                            ; $6f55: $25
	jr jr_032_6f55                                   ; $6f56: $18 $fd

	or e                                             ; $6f58: $b3
	ld l, a                                          ; $6f59: $6f
	ld a, [hl]                                       ; $6f5a: $7e
	rla                                              ; $6f5b: $17
	nop                                              ; $6f5c: $00
	xor e                                            ; $6f5d: $ab

jr_032_6f5e:
	ld e, $18                                        ; $6f5e: $1e $18
	ld a, [hl]                                       ; $6f60: $7e
	nop                                              ; $6f61: $00
	dec e                                            ; $6f62: $1d
	jr jr_032_6f80                                   ; $6f63: $18 $1b

	jr jr_032_6efd                                   ; $6f65: $18 $96

	jr nc, jr_032_6f6d                               ; $6f67: $30 $04

	jr jr_032_6f9b                                   ; $6f69: $18 $30

	sub [hl]                                         ; $6f6b: $96
	nop                                              ; $6f6c: $00

jr_032_6f6d:
	nop                                              ; $6f6d: $00
	sub [hl]                                         ; $6f6e: $96
	inc c                                            ; $6f6f: $0c
	inc b                                            ; $6f70: $04
	cp [hl]                                          ; $6f71: $be
	inc c                                            ; $6f72: $0c
	inc h                                            ; $6f73: $24
	jr nz, jr_032_6f9a                               ; $6f74: $20 $24

jr_032_6f76:
	jr nz, jr_032_6f36                               ; $6f76: $20 $be

	inc h                                            ; $6f78: $24
	ld a, [bc]                                       ; $6f79: $0a
	nop                                              ; $6f7a: $00
	ld [bc], a                                       ; $6f7b: $02
	sub [hl]                                         ; $6f7c: $96
	ld l, h                                          ; $6f7d: $6c
	inc b                                            ; $6f7e: $04
	inc h                                            ; $6f7f: $24

jr_032_6f80:
	ld l, h                                          ; $6f80: $6c
	cp $ff                                           ; $6f81: $fe $ff
	jr nz, jr_032_6f91                               ; $6f83: $20 $0c

	dec e                                            ; $6f85: $1d
	inc c                                            ; $6f86: $0c
	pop de                                           ; $6f87: $d1
	jp nz, $0c1d                                     ; $6f88: $c2 $1d $0c

	ret z                                            ; $6f8b: $c8

	add hl, de                                       ; $6f8c: $19

jr_032_6f8d:
	inc c                                            ; $6f8d: $0c

jr_032_6f8e:
	jp nz, $0c19                                     ; $6f8e: $c2 $19 $0c

jr_032_6f91:
	ret z                                            ; $6f91: $c8

jr_032_6f92:
	dec de                                           ; $6f92: $1b
	inc c                                            ; $6f93: $0c
	jp nz, $0c1b                                     ; $6f94: $c2 $1b $0c

	ret z                                            ; $6f97: $c8

	inc e                                            ; $6f98: $1c
	inc c                                            ; $6f99: $0c

jr_032_6f9a:
	rst JumpTable                                          ; $6f9a: $c7

jr_032_6f9b:
	ld [hl+], a                                      ; $6f9b: $22
	inc c                                            ; $6f9c: $0c
	ret z                                            ; $6f9d: $c8

	ld e, $0c                                        ; $6f9e: $1e $0c

jr_032_6fa0:
	jp nz, $0c1e                                     ; $6fa0: $c2 $1e $0c

	ret z                                            ; $6fa3: $c8

	rra                                              ; $6fa4: $1f
	inc c                                            ; $6fa5: $0c
	jp nz, $0c1f                                     ; $6fa6: $c2 $1f $0c

	ret z                                            ; $6fa9: $c8

	jr nz, jr_032_6fb8                               ; $6faa: $20 $0c

	jp nz, $0c20                                     ; $6fac: $c2 $20 $0c

	ret z                                            ; $6faf: $c8

	ld hl, $fd0c                                     ; $6fb0: $21 $0c $fd
	sub [hl]                                         ; $6fb3: $96
	inc c                                            ; $6fb4: $0c
	inc bc                                           ; $6fb5: $03
	ld e, $0c                                        ; $6fb6: $1e $0c

jr_032_6fb8:
	sub [hl]                                         ; $6fb8: $96
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	ld e, $0c                                        ; $6fbb: $1e $0c
	ld [hl+], a                                      ; $6fbd: $22
	jr jr_032_6f91                                   ; $6fbe: $18 $d1

	ret                                              ; $6fc0: $c9


	dec h                                            ; $6fc1: $25
	jr jr_032_6f8e                                   ; $6fc2: $18 $ca

	ld [hl+], a                                      ; $6fc4: $22
	ld b, $c3                                        ; $6fc5: $06 $c3
	ld [hl+], a                                      ; $6fc7: $22
	ld b, $ca                                        ; $6fc8: $06 $ca
	ld [hl+], a                                      ; $6fca: $22
	inc c                                            ; $6fcb: $0c
	rst JumpTable                                          ; $6fcc: $c7

jr_032_6fcd:
	ld a, [hl]                                       ; $6fcd: $7e
	rla                                              ; $6fce: $17
	nop                                              ; $6fcf: $00
	xor e                                            ; $6fd0: $ab

jr_032_6fd1:
	jr z, jr_032_6feb                                ; $6fd1: $28 $18

	ld a, [hl]                                       ; $6fd3: $7e
	nop                                              ; $6fd4: $00
	ret                                              ; $6fd5: $c9


	daa                                              ; $6fd6: $27
	jr jr_032_6fa0                                   ; $6fd7: $18 $c7

	dec h                                            ; $6fd9: $25
	jr jr_032_6f8d                                   ; $6fda: $18 $b1

	sub c                                            ; $6fdc: $91
	inc c                                            ; $6fdd: $0c
	inc bc                                           ; $6fde: $03
	ld [hl+], a                                      ; $6fdf: $22
	inc c                                            ; $6fe0: $0c
	sub [hl]                                         ; $6fe1: $96
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	ld [hl+], a                                      ; $6fe4: $22
	inc c                                            ; $6fe5: $0c
	or c                                             ; $6fe6: $b1
	and c                                            ; $6fe7: $a1

jr_032_6fe8:
	inc c                                            ; $6fe8: $0c
	inc bc                                           ; $6fe9: $03
	add hl, de                                       ; $6fea: $19

jr_032_6feb:
	inc c                                            ; $6feb: $0c
	sub [hl]                                         ; $6fec: $96
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00

jr_032_6fef:
	add hl, de                                       ; $6fef: $19
	inc c                                            ; $6ff0: $0c
	dec e                                            ; $6ff1: $1d
	jr jr_032_7014                                   ; $6ff2: $18 $20

	jr jr_032_7013                                   ; $6ff4: $18 $1d

	ld b, $c3                                        ; $6ff6: $06 $c3
	dec e                                            ; $6ff8: $1d
	ld b, $ca                                        ; $6ff9: $06 $ca
	dec e                                            ; $6ffb: $1d
	inc c                                            ; $6ffc: $0c
	ld a, [hl]                                       ; $6ffd: $7e
	rla                                              ; $6ffe: $17
	nop                                              ; $6fff: $00
	xor e                                            ; $7000: $ab
	inc hl                                           ; $7001: $23
	jr jr_032_7082                                   ; $7002: $18 $7e

	nop                                              ; $7004: $00
	ld [hl+], a                                      ; $7005: $22
	jr jr_032_6fd1                                   ; $7006: $18 $c9

	jr nz, jr_032_7022                               ; $7008: $20 $18

	or c                                             ; $700a: $b1
	and c                                            ; $700b: $a1
	inc c                                            ; $700c: $0c
	inc bc                                           ; $700d: $03
	dec e                                            ; $700e: $1d
	inc c                                            ; $700f: $0c
	sub [hl]                                         ; $7010: $96
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00

jr_032_7013:
	dec e                                            ; $7013: $1d

jr_032_7014:
	inc c                                            ; $7014: $0c
	sub [hl]                                         ; $7015: $96
	inc c                                            ; $7016: $0c
	inc bc                                           ; $7017: $03
	jr nz, jr_032_7026                               ; $7018: $20 $0c

	sub [hl]                                         ; $701a: $96
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	jr nz, jr_032_702b                               ; $701d: $20 $0c

	inc h                                            ; $701f: $24
	jr jr_032_6fe8                                   ; $7020: $18 $c6

jr_032_7022:
	daa                                              ; $7022: $27
	jr jr_032_6fef                                   ; $7023: $18 $ca

	inc h                                            ; $7025: $24

jr_032_7026:
	ld b, $c3                                        ; $7026: $06 $c3
	inc h                                            ; $7028: $24
	ld b, $ca                                        ; $7029: $06 $ca

jr_032_702b:
	inc h                                            ; $702b: $24
	inc c                                            ; $702c: $0c
	db $fd                                           ; $702d: $fd
	ret nc                                           ; $702e: $d0

	and l                                            ; $702f: $a5
	cp $ca                                           ; $7030: $fe $ca
	pop de                                           ; $7032: $d1
	sub d                                            ; $7033: $92
	ld [hl], h                                       ; $7034: $74
	db $fd                                           ; $7035: $fd
	scf                                              ; $7036: $37
	ld [hl], c                                       ; $7037: $71
	or c                                             ; $7038: $b1
	pop hl                                           ; $7039: $e1
	inc c                                            ; $703a: $0c
	dec b                                            ; $703b: $05
	daa                                              ; $703c: $27
	inc c                                            ; $703d: $0c
	ld h, $0c                                        ; $703e: $26 $0c
	daa                                              ; $7040: $27
	inc c                                            ; $7041: $0c
	ld a, [hl]                                       ; $7042: $7e
	dec e                                            ; $7043: $1d
	inc d                                            ; $7044: $14
	xor c                                            ; $7045: $a9
	or c                                             ; $7046: $b1
	or c                                             ; $7047: $b1
	inc a                                            ; $7048: $3c
	rlca                                             ; $7049: $07
	inc l                                            ; $704a: $2c

jr_032_704b:
	inc a                                            ; $704b: $3c
	call z, $012a                                    ; $704c: $cc $2a $01
	nop                                              ; $704f: $00
	dec bc                                           ; $7050: $0b
	ld a, [hl+]                                      ; $7051: $2a
	inc c                                            ; $7052: $0c
	push bc                                          ; $7053: $c5
	ld a, [hl+]                                      ; $7054: $2a
	inc c                                            ; $7055: $0c
	call z, $0c29                                    ; $7056: $cc $29 $0c
	daa                                              ; $7059: $27
	inc c                                            ; $705a: $0c
	push bc                                          ; $705b: $c5
	daa                                              ; $705c: $27
	inc c                                            ; $705d: $0c
	call z, $197e                                    ; $705e: $cc $7e $19
	inc c                                            ; $7061: $0c
	xor c                                            ; $7062: $a9
	dec h                                            ; $7063: $25
	jr jr_032_70e4                                   ; $7064: $18 $7e

	nop                                              ; $7066: $00
	db $fd                                           ; $7067: $fd

jr_032_7068:
	scf                                              ; $7068: $37
	ld [hl], c                                       ; $7069: $71
	or c                                             ; $706a: $b1
	ld [hl], c                                       ; $706b: $71
	inc c                                            ; $706c: $0c
	dec b                                            ; $706d: $05
	jr nc, jr_032_707c                               ; $706e: $30 $0c

	rst JumpTable                                          ; $7070: $c7
	ld l, $0c                                        ; $7071: $2e $0c
	ret z                                            ; $7073: $c8

	inc l                                            ; $7074: $2c
	inc c                                            ; $7075: $0c
	ret z                                            ; $7076: $c8

	ld a, [hl+]                                      ; $7077: $2a
	inc c                                            ; $7078: $0c
	call nz, $0c2a                                   ; $7079: $c4 $2a $0c

jr_032_707c:
	sra c                                            ; $707c: $cb $29
	inc c                                            ; $707e: $0c
	push bc                                          ; $707f: $c5
	add hl, hl                                       ; $7080: $29
	inc c                                            ; $7081: $0c

jr_032_7082:
	sla a                                            ; $7082: $cb $27
	inc c                                            ; $7084: $0c
	call z, $0125                                    ; $7085: $cc $25 $01
	nop                                              ; $7088: $00
	dec bc                                           ; $7089: $0b
	dec h                                            ; $708a: $25
	inc c                                            ; $708b: $0c
	push bc                                          ; $708c: $c5
	dec h                                            ; $708d: $25
	inc c                                            ; $708e: $0c
	adc $25                                          ; $708f: $ce $25
	ld a, [bc]                                       ; $7091: $0a
	nop                                              ; $7092: $00
	ld [bc], a                                       ; $7093: $02
	sub [hl]                                         ; $7094: $96
	jr jr_032_709c                                   ; $7095: $18 $05

	dec h                                            ; $7097: $25
	jr jr_032_704b                                   ; $7098: $18 $b1

	ld [hl], c                                       ; $709a: $71
	nop                                              ; $709b: $00

jr_032_709c:
	nop                                              ; $709c: $00
	ld a, [hl]                                       ; $709d: $7e
	dec de                                           ; $709e: $1b
	nop                                              ; $709f: $00
	xor e                                            ; $70a0: $ab
	ld l, $18                                        ; $70a1: $2e $18
	ld a, [hl]                                       ; $70a3: $7e
	nop                                              ; $70a4: $00
	ret                                              ; $70a5: $c9


	pop de                                           ; $70a6: $d1
	sub d                                            ; $70a7: $92
	ld [hl], h                                       ; $70a8: $74
	db $fd                                           ; $70a9: $fd
	ld h, h                                          ; $70aa: $64
	ld [hl], c                                       ; $70ab: $71
	add $7e                                          ; $70ac: $c6 $7e
	dec de                                           ; $70ae: $1b
	nop                                              ; $70af: $00
	xor e                                            ; $70b0: $ab
	cpl                                              ; $70b1: $2f
	inc h                                            ; $70b2: $24
	ld a, [hl]                                       ; $70b3: $7e
	nop                                              ; $70b4: $00
	ld l, $0c                                        ; $70b5: $2e $0c
	jp nz, $182e                                     ; $70b7: $c2 $2e $18

	jp z, $1d7e                                      ; $70ba: $ca $7e $1d

	jr jr_032_7068                                   ; $70bd: $18 $a9

	inc l                                            ; $70bf: $2c
	jr nc, jr_032_7140                               ; $70c0: $30 $7e

	nop                                              ; $70c2: $00
	jp z, $0c2a                                      ; $70c3: $ca $2a $0c

	jp nz, $0c2a                                     ; $70c6: $c2 $2a $0c

	sra c                                            ; $70c9: $cb $29
	inc c                                            ; $70cb: $0c
	jp nz, $0c29                                     ; $70cc: $c2 $29 $0c

	adc $27                                          ; $70cf: $ce $27
	inc c                                            ; $70d1: $0c
	jp nz, $0c27                                     ; $70d2: $c2 $27 $0c

	bit 7, [hl]                                      ; $70d5: $cb $7e
	rla                                              ; $70d7: $17
	nop                                              ; $70d8: $00
	xor d                                            ; $70d9: $aa
	dec h                                            ; $70da: $25
	inc h                                            ; $70db: $24
	ld a, [hl]                                       ; $70dc: $7e
	nop                                              ; $70dd: $00
	ret                                              ; $70de: $c9


	add hl, hl                                       ; $70df: $29
	inc c                                            ; $70e0: $0c
	jp nz, $1829                                     ; $70e1: $c2 $29 $18

jr_032_70e4:
	ret z                                            ; $70e4: $c8

	ld a, [hl]                                       ; $70e5: $7e
	add hl, de                                       ; $70e6: $19
	ld c, b                                          ; $70e7: $48
	xor d                                            ; $70e8: $aa
	ld sp, $7e60                                     ; $70e9: $31 $60 $7e
	nop                                              ; $70ec: $00
	add $2e                                          ; $70ed: $c6 $2e
	inc c                                            ; $70ef: $0c
	jp nz, $0c2e                                     ; $70f0: $c2 $2e $0c

	ret                                              ; $70f3: $c9


	db $fd                                           ; $70f4: $fd
	ld h, h                                          ; $70f5: $64
	ld [hl], c                                       ; $70f6: $71
	rst JumpTable                                          ; $70f7: $c7
	ld a, [hl]                                       ; $70f8: $7e
	rla                                              ; $70f9: $17
	nop                                              ; $70fa: $00
	xor e                                            ; $70fb: $ab
	jr nc, @+$26                                     ; $70fc: $30 $24

	bit 7, [hl]                                      ; $70fe: $cb $7e
	nop                                              ; $7100: $00
	xor c                                            ; $7101: $a9
	ld sp, $c20c                                     ; $7102: $31 $0c $c2
	ld sp, $c918                                     ; $7105: $31 $18 $c9
	ld a, [hl]                                       ; $7108: $7e
	dec e                                            ; $7109: $1d
	inc h                                            ; $710a: $24
	xor c                                            ; $710b: $a9
	inc sp                                           ; $710c: $33
	jr nc, @+$80                                     ; $710d: $30 $7e

	nop                                              ; $710f: $00
	rst JumpTable                                          ; $7110: $c7
	jr nc, @+$0e                                     ; $7111: $30 $0c

	jp nz, $0c30                                     ; $7113: $c2 $30 $0c

	ret z                                            ; $7116: $c8

	ld sp, $c20c                                     ; $7117: $31 $0c $c2
	ld sp, $b10c                                     ; $711a: $31 $0c $b1
	and c                                            ; $711d: $a1
	jr nc, jr_032_7123                               ; $711e: $30 $03

	inc sp                                           ; $7120: $33
	jr nc, @-$68                                     ; $7121: $30 $96

jr_032_7123:
	inc c                                            ; $7123: $0c
	inc b                                            ; $7124: $04
	cp [hl]                                          ; $7125: $be
	inc c                                            ; $7126: $0c
	inc l                                            ; $7127: $2c
	daa                                              ; $7128: $27
	inc l                                            ; $7129: $2c
	daa                                              ; $712a: $27
	cp [hl]                                          ; $712b: $be
	inc l                                            ; $712c: $2c
	ld a, [bc]                                       ; $712d: $0a
	nop                                              ; $712e: $00
	ld [bc], a                                       ; $712f: $02
	sub [hl]                                         ; $7130: $96
	ld l, h                                          ; $7131: $6c
	inc b                                            ; $7132: $04
	inc l                                            ; $7133: $2c
	ld l, h                                          ; $7134: $6c
	cp $ff                                           ; $7135: $fe $ff
	or c                                             ; $7137: $b1
	pop hl                                           ; $7138: $e1
	inc c                                            ; $7139: $0c
	dec b                                            ; $713a: $05
	add hl, hl                                       ; $713b: $29
	inc c                                            ; $713c: $0c
	sra h                                            ; $713d: $cb $2c
	inc c                                            ; $713f: $0c

jr_032_7140:
	call nz, $0c2c                                   ; $7140: $c4 $2c $0c
	adc $7e                                          ; $7143: $ce $7e
	dec e                                            ; $7145: $1d
	rrca                                             ; $7146: $0f
	xor c                                            ; $7147: $a9
	sub [hl]                                         ; $7148: $96
	inc h                                            ; $7149: $24
	dec b                                            ; $714a: $05
	dec h                                            ; $714b: $25
	inc a                                            ; $714c: $3c

jr_032_714d:
	or c                                             ; $714d: $b1
	pop de                                           ; $714e: $d1
	inc c                                            ; $714f: $0c
	dec b                                            ; $7150: $05
	ld a, [hl+]                                      ; $7151: $2a
	inc c                                            ; $7152: $0c
	push bc                                          ; $7153: $c5
	ld l, $0c                                        ; $7154: $2e $0c
	pop bc                                           ; $7156: $c1
	ld l, $0c                                        ; $7157: $2e $0c
	adc $7e                                          ; $7159: $ce $7e
	dec e                                            ; $715b: $1d
	rrca                                             ; $715c: $0f
	xor c                                            ; $715d: $a9
	sub [hl]                                         ; $715e: $96
	inc h                                            ; $715f: $24
	dec b                                            ; $7160: $05
	dec h                                            ; $7161: $25
	inc a                                            ; $7162: $3c
	db $fd                                           ; $7163: $fd
	pop de                                           ; $7164: $d1
	rst JumpTable                                          ; $7165: $c7
	ld a, [hl]                                       ; $7166: $7e
	rla                                              ; $7167: $17
	nop                                              ; $7168: $00
	xor e                                            ; $7169: $ab
	ld sp, $7e24                                     ; $716a: $31 $24 $7e
	nop                                              ; $716d: $00
	rst JumpTable                                          ; $716e: $c7
	ld l, $0c                                        ; $716f: $2e $0c
	jp nz, $182e                                     ; $7171: $c2 $2e $18

	ret z                                            ; $7174: $c8

	ld a, [hl]                                       ; $7175: $7e
	add hl, de                                       ; $7176: $19
	jr jr_032_7123                                   ; $7177: $18 $aa

	inc [hl]                                         ; $7179: $34
	jr nc, @+$80                                     ; $717a: $30 $7e

	nop                                              ; $717c: $00
	ret                                              ; $717d: $c9


	inc sp                                           ; $717e: $33
	inc c                                            ; $717f: $0c
	jp nz, $0c33                                     ; $7180: $c2 $33 $0c

	ret z                                            ; $7183: $c8

	ld sp, $c20c                                     ; $7184: $31 $0c $c2
	ld sp, $c50c                                     ; $7187: $31 $0c $c5
	ld l, $0c                                        ; $718a: $2e $0c
	jp nz, $0c2e                                     ; $718c: $c2 $2e $0c

	ret z                                            ; $718f: $c8

	ld a, [hl]                                       ; $7190: $7e
	rla                                              ; $7191: $17
	nop                                              ; $7192: $00
	xor e                                            ; $7193: $ab
	inc l                                            ; $7194: $2c
	inc h                                            ; $7195: $24
	ld a, [hl]                                       ; $7196: $7e
	nop                                              ; $7197: $00
	rst JumpTable                                          ; $7198: $c7
	ld l, $0c                                        ; $7199: $2e $0c
	jp nz, $182e                                     ; $719b: $c2 $2e $18

	ret z                                            ; $719e: $c8

	ld a, [hl]                                       ; $719f: $7e
	add hl, de                                       ; $71a0: $19
	jr jr_032_714d                                   ; $71a1: $18 $aa

	ld sp, $c630                                     ; $71a3: $31 $30 $c6
	ld a, [hl]                                       ; $71a6: $7e
	add hl, de                                       ; $71a7: $19
	ld a, [hl+]                                      ; $71a8: $2a
	xor d                                            ; $71a9: $aa
	ld l, $48                                        ; $71aa: $2e $48
	db $fd                                           ; $71ac: $fd
	ret nc                                           ; $71ad: $d0

	and l                                            ; $71ae: $a5
	cp $c2                                           ; $71af: $fe $c2
	pop de                                           ; $71b1: $d1
	ld a, a                                          ; $71b2: $7f
	ld hl, $fd74                                     ; $71b3: $21 $74 $fd
	db $ed                                           ; $71b6: $ed
	ld [hl], d                                       ; $71b7: $72
	inc d                                            ; $71b8: $14
	inc c                                            ; $71b9: $0c
	rrca                                             ; $71ba: $0f
	inc c                                            ; $71bb: $0c
	add $0f                                          ; $71bc: $c6 $0f
	inc c                                            ; $71be: $0c
	jp nz, $0c18                                     ; $71bf: $c2 $18 $0c

	add $18                                          ; $71c2: $c6 $18
	inc c                                            ; $71c4: $0c
	jp nz, $0c19                                     ; $71c5: $c2 $19 $0c

	add $19                                          ; $71c8: $c6 $19
	inc c                                            ; $71ca: $0c
	jp nz, $0c1b                                     ; $71cb: $c2 $1b $0c

	ld [$0001], sp                                   ; $71ce: $08 $01 $00
	dec bc                                           ; $71d1: $0b
	ld [$c40c], sp                                   ; $71d2: $08 $0c $c4
	ld [$c20c], sp                                   ; $71d5: $08 $0c $c2
	ld a, [bc]                                       ; $71d8: $0a
	inc c                                            ; $71d9: $0c
	inc c                                            ; $71da: $0c
	inc c                                            ; $71db: $0c
	add $0c                                          ; $71dc: $c6 $0c
	inc c                                            ; $71de: $0c
	jp nz, $1d7e                                     ; $71df: $c2 $7e $1d

	nop                                              ; $71e2: $00
	and [hl]                                         ; $71e3: $a6
	ld [$7e18], sp                                   ; $71e4: $08 $18 $7e
	nop                                              ; $71e7: $00
	db $fd                                           ; $71e8: $fd
	db $ed                                           ; $71e9: $ed
	ld [hl], d                                       ; $71ea: $72
	inc d                                            ; $71eb: $14
	inc c                                            ; $71ec: $0c
	rrca                                             ; $71ed: $0f
	inc c                                            ; $71ee: $0c
	add $0f                                          ; $71ef: $c6 $0f
	inc c                                            ; $71f1: $0c
	jp nz, $0c18                                     ; $71f2: $c2 $18 $0c

	add $18                                          ; $71f5: $c6 $18
	inc c                                            ; $71f7: $0c
	jp nz, $0c16                                     ; $71f8: $c2 $16 $0c

	add $16                                          ; $71fb: $c6 $16
	inc c                                            ; $71fd: $0c
	jp nz, $0c14                                     ; $71fe: $c2 $14 $0c

	dec c                                            ; $7201: $0d
	ld bc, $0b00                                     ; $7202: $01 $00 $0b
	dec c                                            ; $7205: $0d
	inc c                                            ; $7206: $0c
	add $0d                                          ; $7207: $c6 $0d
	inc c                                            ; $7209: $0c
	jp nz, $0a0d                                     ; $720a: $c2 $0d $0a

	nop                                              ; $720d: $00
	ld [bc], a                                       ; $720e: $02
	dec c                                            ; $720f: $0d
	inc c                                            ; $7210: $0c
	add $0d                                          ; $7211: $c6 $0d
	inc c                                            ; $7213: $0c
	jp nz, $1b7e                                     ; $7214: $c2 $7e $1b

	nop                                              ; $7217: $00
	xor d                                            ; $7218: $aa
	dec e                                            ; $7219: $1d
	jr jr_032_729a                                   ; $721a: $18 $7e

	nop                                              ; $721c: $00
	or l                                             ; $721d: $b5
	ld hl, $0021                                     ; $721e: $21 $21 $00
	nop                                              ; $7221: $00
	ld [hl], h                                       ; $7222: $74
	db $fd                                           ; $7223: $fd
	dec de                                           ; $7224: $1b
	ld [hl], e                                       ; $7225: $73
	cp [hl]                                          ; $7226: $be
	inc c                                            ; $7227: $0c
	dec c                                            ; $7228: $0d
	inc b                                            ; $7229: $04
	ld [$be0b], sp                                   ; $722a: $08 $0b $be
	add $0b                                          ; $722d: $c6 $0b
	inc c                                            ; $722f: $0c
	jp nz, $0c0d                                     ; $7230: $c2 $0d $0c

	add $0d                                          ; $7233: $c6 $0d
	inc c                                            ; $7235: $0c
	jp nz, $0c08                                     ; $7236: $c2 $08 $0c

	add $08                                          ; $7239: $c6 $08
	inc c                                            ; $723b: $0c
	jp nz, $0c10                                     ; $723c: $c2 $10 $0c

	add $10                                          ; $723f: $c6 $10
	inc c                                            ; $7241: $0c
	jp nz, $0cbe                                     ; $7242: $c2 $be $0c

	rrca                                             ; $7245: $0f
	dec c                                            ; $7246: $0d
	dec bc                                           ; $7247: $0b
	dec c                                            ; $7248: $0d
	db $10                                           ; $7249: $10
	cp [hl]                                          ; $724a: $be
	cp [hl]                                          ; $724b: $be
	inc c                                            ; $724c: $0c
	ld [$110f], sp                                   ; $724d: $08 $0f $11
	ld [de], a                                       ; $7250: $12
	cp [hl]                                          ; $7251: $be
	add $12                                          ; $7252: $c6 $12
	inc c                                            ; $7254: $0c
	jp nz, $0c11                                     ; $7255: $c2 $11 $0c

	add $11                                          ; $7258: $c6 $11
	inc c                                            ; $725a: $0c
	jp nz, $0c12                                     ; $725b: $c2 $12 $0c

	add $12                                          ; $725e: $c6 $12
	inc c                                            ; $7260: $0c
	jp nz, $0c11                                     ; $7261: $c2 $11 $0c

	add $11                                          ; $7264: $c6 $11
	inc c                                            ; $7266: $0c
	jp nz, $0cbe                                     ; $7267: $c2 $be $0c

	inc d                                            ; $726a: $14
	ld [de], a                                       ; $726b: $12
	ld de, $120f                                     ; $726c: $11 $0f $12
	cp [hl]                                          ; $726f: $be
	cp [hl]                                          ; $7270: $be
	inc c                                            ; $7271: $0c
	dec c                                            ; $7272: $0d
	inc b                                            ; $7273: $04
	ld [$be0b], sp                                   ; $7274: $08 $0b $be
	add $0b                                          ; $7277: $c6 $0b
	inc c                                            ; $7279: $0c
	jp nz, $0c10                                     ; $727a: $c2 $10 $0c

	add $10                                          ; $727d: $c6 $10
	inc c                                            ; $727f: $0c
	jp nz, $0c0f                                     ; $7280: $c2 $0f $0c

	add $0f                                          ; $7283: $c6 $0f
	inc c                                            ; $7285: $0c
	jp nz, $0c0d                                     ; $7286: $c2 $0d $0c

	add $0d                                          ; $7289: $c6 $0d
	inc c                                            ; $728b: $0c
	jp nz, $0cbe                                     ; $728c: $c2 $be $0c

	rrca                                             ; $728f: $0f
	dec c                                            ; $7290: $0d
	dec bc                                           ; $7291: $0b
	dec c                                            ; $7292: $0d
	db $10                                           ; $7293: $10
	cp [hl]                                          ; $7294: $be
	db $fd                                           ; $7295: $fd
	dec de                                           ; $7296: $1b
	ld [hl], e                                       ; $7297: $73
	cp [hl]                                          ; $7298: $be
	inc c                                            ; $7299: $0c

jr_032_729a:
	ld bc, $0804                                     ; $729a: $01 $04 $08
	dec bc                                           ; $729d: $0b
	cp [hl]                                          ; $729e: $be
	add $0b                                          ; $729f: $c6 $0b
	inc c                                            ; $72a1: $0c
	jp nz, $0c0d                                     ; $72a2: $c2 $0d $0c

	add $0d                                          ; $72a5: $c6 $0d
	inc c                                            ; $72a7: $0c
	jp nz, $0c08                                     ; $72a8: $c2 $08 $0c

	add $08                                          ; $72ab: $c6 $08
	inc c                                            ; $72ad: $0c
	jp nz, $0c10                                     ; $72ae: $c2 $10 $0c

	add $10                                          ; $72b1: $c6 $10
	inc c                                            ; $72b3: $0c
	jp nz, $0cbe                                     ; $72b4: $c2 $be $0c

	rrca                                             ; $72b7: $0f
	dec c                                            ; $72b8: $0d
	dec bc                                           ; $72b9: $0b
	dec c                                            ; $72ba: $0d
	db $10                                           ; $72bb: $10
	cp [hl]                                          ; $72bc: $be
	cp [hl]                                          ; $72bd: $be
	inc c                                            ; $72be: $0c
	ld [$110f], sp                                   ; $72bf: $08 $0f $11
	ld [de], a                                       ; $72c2: $12
	cp [hl]                                          ; $72c3: $be
	add $12                                          ; $72c4: $c6 $12
	inc c                                            ; $72c6: $0c
	jp nz, $0c11                                     ; $72c7: $c2 $11 $0c

	add $11                                          ; $72ca: $c6 $11
	inc c                                            ; $72cc: $0c
	jp nz, $0c12                                     ; $72cd: $c2 $12 $0c

	add $12                                          ; $72d0: $c6 $12
	inc c                                            ; $72d2: $0c
	jp nz, $0c11                                     ; $72d3: $c2 $11 $0c

	add $11                                          ; $72d6: $c6 $11
	inc c                                            ; $72d8: $0c
	jp nz, $0cbe                                     ; $72d9: $c2 $be $0c

	inc d                                            ; $72dc: $14
	ld [de], a                                       ; $72dd: $12
	ld de, $be0f                                     ; $72de: $11 $0f $be
	sub [hl]                                         ; $72e1: $96
	ld e, $04                                        ; $72e2: $1e $04
	ld [de], a                                       ; $72e4: $12
	ld e, $96                                        ; $72e5: $1e $96
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	xor [hl]                                         ; $72ea: $ae
	cp $ff                                           ; $72eb: $fe $ff
	dec c                                            ; $72ed: $0d
	inc c                                            ; $72ee: $0c
	ld [$c60c], sp                                   ; $72ef: $08 $0c $c6
	pop de                                           ; $72f2: $d1
	ld [$c20c], sp                                   ; $72f3: $08 $0c $c2
	dec bc                                           ; $72f6: $0b
	inc c                                            ; $72f7: $0c
	add $0b                                          ; $72f8: $c6 $0b
	inc c                                            ; $72fa: $0c
	jp nz, $0c0a                                     ; $72fb: $c2 $0a $0c

	add $0a                                          ; $72fe: $c6 $0a
	inc c                                            ; $7300: $0c
	jp nz, $0c08                                     ; $7301: $c2 $08 $0c

	ld [de], a                                       ; $7304: $12
	inc c                                            ; $7305: $0c
	dec c                                            ; $7306: $0d
	inc c                                            ; $7307: $0c
	add $0d                                          ; $7308: $c6 $0d
	inc c                                            ; $730a: $0c
	jp nz, $0c10                                     ; $730b: $c2 $10 $0c

	add $10                                          ; $730e: $c6 $10
	inc c                                            ; $7310: $0c
	jp nz, $0c0f                                     ; $7311: $c2 $0f $0c

	add $0f                                          ; $7314: $c6 $0f
	inc c                                            ; $7316: $0c
	jp nz, $0c0d                                     ; $7317: $c2 $0d $0c

	db $fd                                           ; $731a: $fd
	cp [hl]                                          ; $731b: $be
	inc c                                            ; $731c: $0c
	ld b, $09                                        ; $731d: $06 $09
	dec c                                            ; $731f: $0d
	ld b, $be                                        ; $7320: $06 $be
	add $d1                                          ; $7322: $c6 $d1
	ld b, $0c                                        ; $7324: $06 $0c
	jp nz, $0c10                                     ; $7326: $c2 $10 $0c

	add $10                                          ; $7329: $c6 $10
	inc c                                            ; $732b: $0c
	jp nz, $0c0f                                     ; $732c: $c2 $0f $0c

	add $0f                                          ; $732f: $c6 $0f
	inc c                                            ; $7331: $0c

jr_032_7332:
	jp nz, $0c0d                                     ; $7332: $c2 $0d $0c

	add $0d                                          ; $7335: $c6 $0d
	inc c                                            ; $7337: $0c
	jp nz, $007e                                     ; $7338: $c2 $7e $00

	cp [hl]                                          ; $733b: $be
	inc c                                            ; $733c: $0c
	rrca                                             ; $733d: $0f
	ld [de], a                                       ; $733e: $12
	dec c                                            ; $733f: $0d
	dec d                                            ; $7340: $15
	dec c                                            ; $7341: $0d
	cp [hl]                                          ; $7342: $be
	db $fd                                           ; $7343: $fd
	ret nc                                           ; $7344: $d0

	and l                                            ; $7345: $a5
	cp $fb                                           ; $7346: $fe $fb
	db $fd                                           ; $7348: $fd
	add [hl]                                         ; $7349: $86
	ld [hl], e                                       ; $734a: $73
	ei                                               ; $734b: $fb
	inc bc                                           ; $734c: $03
	cp [hl]                                          ; $734d: $be
	inc c                                            ; $734e: $0c
	dec e                                            ; $734f: $1d
	dec e                                            ; $7350: $1d
	ld l, $20                                        ; $7351: $2e $20
	cp [hl]                                          ; $7353: $be
	jr nz, jr_032_736e                               ; $7354: $20 $18

	jr nz, jr_032_7370                               ; $7356: $20 $18

	ei                                               ; $7358: $fb
	db $fd                                           ; $7359: $fd
	add [hl]                                         ; $735a: $86
	ld [hl], e                                       ; $735b: $73
	ei                                               ; $735c: $fb
	inc bc                                           ; $735d: $03
	cp [hl]                                          ; $735e: $be
	inc c                                            ; $735f: $0c
	dec e                                            ; $7360: $1d
	jr nz, jr_032_7380                               ; $7361: $20 $1d

	jr nz, @-$40                                     ; $7363: $20 $be

	jr nz, @+$1a                                     ; $7365: $20 $18

	rra                                              ; $7367: $1f
	inc c                                            ; $7368: $0c
	rra                                              ; $7369: $1f
	inc c                                            ; $736a: $0c
	ei                                               ; $736b: $fb
	db $fd                                           ; $736c: $fd
	sub d                                            ; $736d: $92

jr_032_736e:
	ld [hl], e                                       ; $736e: $73
	ei                                               ; $736f: $fb

jr_032_7370:
	ld c, $00                                        ; $7370: $0e $00
	jr jr_032_7332                                   ; $7372: $18 $be

	inc c                                            ; $7374: $0c
	dec e                                            ; $7375: $1d
	jr nz, jr_032_7395                               ; $7376: $20 $1d

	jr nz, jr_032_739a                               ; $7378: $20 $20

	jr nz, @-$40                                     ; $737a: $20 $be

	nop                                              ; $737c: $00
	inc h                                            ; $737d: $24
	jr nz, jr_032_738c                               ; $737e: $20 $0c

jr_032_7380:
	jr nz, jr_032_739a                               ; $7380: $20 $18

	rra                                              ; $7382: $1f

jr_032_7383:
	jr jr_032_7383                                   ; $7383: $18 $fe

	rst $38                                          ; $7385: $ff
	cp [hl]                                          ; $7386: $be
	inc c                                            ; $7387: $0c
	dec e                                            ; $7388: $1d
	dec e                                            ; $7389: $1d
	ld l, $1d                                        ; $738a: $2e $1d

jr_032_738c:
	dec e                                            ; $738c: $1d
	dec e                                            ; $738d: $1d
	ld l, $1d                                        ; $738e: $2e $1d
	cp [hl]                                          ; $7390: $be
	db $fd                                           ; $7391: $fd

Jump_032_7392:
	cp [hl]                                          ; $7392: $be
	inc c                                            ; $7393: $0c
	rra                                              ; $7394: $1f

jr_032_7395:
	dec e                                            ; $7395: $1d
	jr nz, jr_032_73b5                               ; $7396: $20 $1d

	rra                                              ; $7398: $1f
	rra                                              ; $7399: $1f

jr_032_739a:
	jr nz, jr_032_73b9                               ; $739a: $20 $1d

	cp [hl]                                          ; $739c: $be
	db $fd                                           ; $739d: $fd
	or [hl]                                          ; $739e: $b6
	ld a, b                                          ; $739f: $78
	ld sp, $ff03                                     ; $73a0: $31 $03 $ff
	ld b, $7d                                        ; $73a3: $06 $7d
	ld [bc], a                                       ; $73a5: $02
	ld e, $0e                                        ; $73a6: $1e $0e
	ld e, $06                                        ; $73a8: $1e $06
	ld e, $10                                        ; $73aa: $1e $10
	ld a, l                                          ; $73ac: $7d
	nop                                              ; $73ad: $00
	sub b                                            ; $73ae: $90
	ei                                               ; $73af: $fb
	or c                                             ; $73b0: $b1
	add c                                            ; $73b1: $81
	rst $38                                          ; $73b2: $ff
	ld [bc], a                                       ; $73b3: $02
	cpl                                              ; $73b4: $2f

jr_032_73b5:
	rlca                                             ; $73b5: $07
	rst JumpTable                                          ; $73b6: $c7
	ld l, $06                                        ; $73b7: $2e $06

jr_032_73b9:
	add $2c                                          ; $73b9: $c6 $2c
	ld b, $c5                                        ; $73bb: $06 $c5
	ld a, [hl+]                                      ; $73bd: $2a
	dec b                                            ; $73be: $05
	ei                                               ; $73bf: $fb
	ld [$81b5], sp                                   ; $73c0: $08 $b5 $81
	ld bc, $0000                                     ; $73c3: $01 $00 $00
	jr z, jr_032_73e0                                ; $73c6: $28 $18

	jp $0828                                         ; $73c8: $c3 $28 $08


	ret z                                            ; $73cb: $c8

	jr z, jr_032_73d2                                ; $73cc: $28 $04

	jp $0428                                         ; $73ce: $c3 $28 $04


	ret z                                            ; $73d1: $c8

jr_032_73d2:
	jr z, jr_032_73d8                                ; $73d2: $28 $04

	jp $0428                                         ; $73d4: $c3 $28 $04


	ret z                                            ; $73d7: $c8

jr_032_73d8:
	jr z, jr_032_73e6                                ; $73d8: $28 $0c

	call nz, $0428                                   ; $73da: $c4 $28 $04
	or c                                             ; $73dd: $b1
	add c                                            ; $73de: $81
	rst $38                                          ; $73df: $ff

jr_032_73e0:
	ld b, $94                                        ; $73e0: $06 $94
	ld a, $23                                        ; $73e2: $3e $23
	db $10                                           ; $73e4: $10
	or c                                             ; $73e5: $b1

jr_032_73e6:
	or c                                             ; $73e6: $b1
	rst $38                                          ; $73e7: $ff
	ld b, $94                                        ; $73e8: $06 $94

jr_032_73ea:
	ld [$0c19], sp                                   ; $73ea: $08 $19 $0c
	or c                                             ; $73ed: $b1
	ld sp, $0000                                     ; $73ee: $31 $00 $00
	add hl, de                                       ; $73f1: $19
	inc b                                            ; $73f2: $04
	ret                                              ; $73f3: $c9


	inc e                                            ; $73f4: $1c
	ld [$1cc3], sp                                   ; $73f5: $08 $c3 $1c
	db $10                                           ; $73f8: $10
	ret                                              ; $73f9: $c9


	dec de                                           ; $73fa: $1b
	ld [$1bc3], sp                                   ; $73fb: $08 $c3 $1b
	ld [$1bc2], sp                                   ; $73fe: $08 $c2 $1b
	ld [$1bc1], sp                                   ; $7401: $08 $c1 $1b
	ld [$b6ff], sp                                   ; $7404: $08 $ff $b6
	ld a, b                                          ; $7407: $78
	pop de                                           ; $7408: $d1
	inc bc                                           ; $7409: $03
	rst $38                                          ; $740a: $ff
	ld [bc], a                                       ; $740b: $02

jr_032_740c:
	ld e, $0c                                        ; $740c: $1e $0c
	ld e, $06                                        ; $740e: $1e $06
	sub [hl]                                         ; $7410: $96

jr_032_7411:
	rst $38                                          ; $7411: $ff
	inc bc                                           ; $7412: $03
	ld e, $12                                        ; $7413: $1e $12
	ld a, [hl]                                       ; $7415: $7e
	ld bc, $a016                                     ; $7416: $01 $16 $a0
	sub [hl]                                         ; $7419: $96
	rst $38                                          ; $741a: $ff
	rlca                                             ; $741b: $07
	inc hl                                           ; $741c: $23
	jr nc, @-$32                                     ; $741d: $30 $cc

	ld a, [hl+]                                      ; $741f: $2a
	jr nc, jr_032_744e                               ; $7420: $30 $2c

	inc b                                            ; $7422: $04
	jp $042c                                         ; $7423: $c3 $2c $04


	call $042a                                       ; $7426: $cd $2a $04
	jp $042a                                         ; $7429: $c3 $2a $04


	call $0428                                       ; $742c: $cd $28 $04
	jp $0428                                         ; $742f: $c3 $28 $04


	or c                                             ; $7432: $b1
	pop de                                           ; $7433: $d1
	rst $38                                          ; $7434: $ff
	rlca                                             ; $7435: $07
	ld a, [hl+]                                      ; $7436: $2a
	jr jr_032_73ea                                   ; $7437: $18 $b1

	ld sp, $0000                                     ; $7439: $31 $00 $00
	ld a, [hl+]                                      ; $743c: $2a
	jr jr_032_740c                                   ; $743d: $18 $cd

	ld a, [hl+]                                      ; $743f: $2a
	inc b                                            ; $7440: $04
	jp $0c2a                                         ; $7441: $c3 $2a $0c


	call $042c                                       ; $7444: $cd $2c $04
	jp $042c                                         ; $7447: $c3 $2c $04


	sra l                                            ; $744a: $cb $2d
	jr jr_032_7411                                   ; $744c: $18 $c3

jr_032_744e:
	dec l                                            ; $744e: $2d
	ld [$2ccb], sp                                   ; $744f: $08 $cb $2c
	inc b                                            ; $7452: $04
	jp $042c                                         ; $7453: $c3 $2c $04


	sra l                                            ; $7456: $cb $2d
	inc b                                            ; $7458: $04
	jp $042d                                         ; $7459: $c3 $2d $04


	sra h                                            ; $745c: $cb $2c
	inc c                                            ; $745e: $0c
	jp $042c                                         ; $745f: $c3 $2c $04


	sra b                                            ; $7462: $cb $28
	inc c                                            ; $7464: $0c
	jp $0428                                         ; $7465: $c3 $28 $04


	sra h                                            ; $7468: $cb $2c
	inc c                                            ; $746a: $0c
	jp $042c                                         ; $746b: $c3 $2c $04


	or c                                             ; $746e: $b1
	or c                                             ; $746f: $b1
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	ld a, [hl+]                                      ; $7472: $2a
	ld [$2ac3], sp                                   ; $7473: $08 $c3 $2a
	db $10                                           ; $7476: $10
	jp z, $082f                                      ; $7477: $ca $2f $08

	jp $082f                                         ; $747a: $c3 $2f $08


	jp nz, $082f                                     ; $747d: $c2 $2f $08

	pop bc                                           ; $7480: $c1
	cpl                                              ; $7481: $2f
	ld [$b4ff], sp                                   ; $7482: $08 $ff $b4
	ld a, b                                          ; $7485: $78
	ld hl, $0005                                     ; $7486: $21 $05 $00
	inc h                                            ; $7489: $24
	db $fd                                           ; $748a: $fd
	ld [$7175], sp                                   ; $748b: $08 $75 $71
	db $fd                                           ; $748e: $fd
	ld [$7375], sp                                   ; $748f: $08 $75 $73
	db $fd                                           ; $7492: $fd
	ld [$7575], sp                                   ; $7493: $08 $75 $75
	db $fd                                           ; $7496: $fd
	ld [$7775], sp                                   ; $7497: $08 $75 $77
	db $fd                                           ; $749a: $fd
	ld [$7075], sp                                   ; $749b: $08 $75 $70
	jp nz, $1715                                     ; $749e: $c2 $15 $17

	call nz, $0115                                   ; $74a1: $c4 $15 $01
	jp nz, $0414                                     ; $74a4: $c2 $14 $04

	call nz, $0c14                                   ; $74a7: $c4 $14 $0c
	jp nz, $0410                                     ; $74aa: $c2 $10 $04

	call nz, $0410                                   ; $74ad: $c4 $10 $04
	jp nz, $040b                                     ; $74b0: $c2 $0b $04

	call nz, $040b                                   ; $74b3: $c4 $0b $04
	jp nz, $040b                                     ; $74b6: $c2 $0b $04

	call nz, $040b                                   ; $74b9: $c4 $0b $04
	jp nz, $040d                                     ; $74bc: $c2 $0d $04

	call nz, $040d                                   ; $74bf: $c4 $0d $04
	ld a, [hl]                                       ; $74c2: $7e
	ld bc, sUnmappedPlayer1stName                                     ; $74c3: $01 $00 $a2
	jp nz, $180e                                     ; $74c6: $c2 $0e $18

	ld a, [hl]                                       ; $74c9: $7e
	nop                                              ; $74ca: $00
	call nz, $080e                                   ; $74cb: $c4 $0e $08
	add h                                            ; $74ce: $84
	jp nz, $0417                                     ; $74cf: $c2 $17 $04

	call nz, $0417                                   ; $74d2: $c4 $17 $04
	jp nz, $0419                                     ; $74d5: $c2 $19 $04

	call nz, $0419                                   ; $74d8: $c4 $19 $04
	ld a, [hl]                                       ; $74db: $7e
	ld bc, sUnmappedPlayer1stName                                     ; $74dc: $01 $00 $a2
	jp nz, $0e83                                     ; $74df: $c2 $83 $0e

	jr @-$3c                                         ; $74e2: $18 $c2

	add h                                            ; $74e4: $84
	ld a, [hl]                                       ; $74e5: $7e
	dec c                                            ; $74e6: $0d
	nop                                              ; $74e7: $00
	and c                                            ; $74e8: $a1
	cp [hl]                                          ; $74e9: $be
	inc b                                            ; $74ea: $04
	dec bc                                           ; $74eb: $0b
	inc c                                            ; $74ec: $0c
	dec c                                            ; $74ed: $0d
	ld c, $0f                                        ; $74ee: $0e $0f
	db $10                                           ; $74f0: $10
	cp [hl]                                          ; $74f1: $be
	ld a, [hl]                                       ; $74f2: $7e
	nop                                              ; $74f3: $00
	add e                                            ; $74f4: $83
	rla                                              ; $74f5: $17
	ld [$17c4], sp                                   ; $74f6: $08 $c4 $17
	ld [$17c6], sp                                   ; $74f9: $08 $c6 $17
	ld [$c283], sp                                   ; $74fc: $08 $83 $c2
	rla                                              ; $74ff: $17
	ld [$17c4], sp                                   ; $7500: $08 $c4 $17
	db $10                                           ; $7503: $10
	add $17                                          ; $7504: $c6 $17
	ld [$c2ff], sp                                   ; $7506: $08 $ff $c2
	pop de                                           ; $7509: $d1
	rla                                              ; $750a: $17
	rla                                              ; $750b: $17
	call nz, $17d1                                   ; $750c: $c4 $d1 $17
	ld bc, $d0fd                                     ; $750f: $01 $fd $d0
	ld a, b                                          ; $7512: $78
	nop                                              ; $7513: $00
	inc h                                            ; $7514: $24
	dec bc                                           ; $7515: $0b
	ld [$040d], sp                                   ; $7516: $08 $0d $04
	dec c                                            ; $7519: $0d
	inc b                                            ; $751a: $04
	cp [hl]                                          ; $751b: $be
	ld [$0b0d], sp                                   ; $751c: $08 $0d $0b
	dec c                                            ; $751f: $0d
	dec c                                            ; $7520: $0d
	cp [hl]                                          ; $7521: $be
	dec bc                                           ; $7522: $0b
	ld [$080d], sp                                   ; $7523: $08 $0d $08
	dec c                                            ; $7526: $0d
	ld [$100b], sp                                   ; $7527: $08 $0b $10

jr_032_752a:
	dec c                                            ; $752a: $0d
	ld [$080b], sp                                   ; $752b: $08 $0b $08
	dec c                                            ; $752e: $0d
	ld [$080d], sp                                   ; $752f: $08 $0d $08
	dec c                                            ; $7532: $0d
	inc b                                            ; $7533: $04
	cp [hl]                                          ; $7534: $be
	inc bc                                           ; $7535: $03
	ld c, $0e                                        ; $7536: $0e $0e
	ld c, $0e                                        ; $7538: $0e $0e
	ld c, $0e                                        ; $753a: $0e $0e
	cp [hl]                                          ; $753c: $be
	ld c, $02                                        ; $753d: $0e $02
	dec bc                                           ; $753f: $0b
	ld [$040d], sp                                   ; $7540: $08 $0d $04
	dec c                                            ; $7543: $0d
	inc b                                            ; $7544: $04
	dec c                                            ; $7545: $0d
	ld [$040d], sp                                   ; $7546: $08 $0d $04
	cp [hl]                                          ; $7549: $be
	inc bc                                           ; $754a: $03
	dec c                                            ; $754b: $0d
	ld c, $0e                                        ; $754c: $0e $0e
	ld c, $0e                                        ; $754e: $0e $0e
	ld c, $be                                        ; $7550: $0e $be
	ld c, $02                                        ; $7552: $0e $02
	cp [hl]                                          ; $7554: $be

jr_032_7555:
	inc bc                                           ; $7555: $03
	dec bc                                           ; $7556: $0b
	ld c, $0e                                        ; $7557: $0e $0e
	ld c, $0e                                        ; $7559: $0e $0e
	ld c, $0e                                        ; $755b: $0e $0e
	ld c, $0e                                        ; $755d: $0e $0e
	ld c, $0e                                        ; $755f: $0e $0e
	ld c, $0e                                        ; $7561: $0e $0e
	ld c, $0e                                        ; $7563: $0e $0e
	ld c, $be                                        ; $7565: $0e $be
	cp [hl]                                          ; $7567: $be
	inc bc                                           ; $7568: $03
	dec bc                                           ; $7569: $0b
	ld c, $0e                                        ; $756a: $0e $0e
	ld c, $0e                                        ; $756c: $0e $0e
	ld c, $0e                                        ; $756e: $0e $0e
	ld c, $0e                                        ; $7570: $0e $0e
	ld c, $0e                                        ; $7572: $0e $0e
	ld c, $0e                                        ; $7574: $0e $0e
	ld c, $0e                                        ; $7576: $0e $0e
	ld c, $be                                        ; $7578: $0e $be
	jr @+$1a                                         ; $757a: $18 $18

	dec bc                                           ; $757c: $0b
	jr @+$01                                         ; $757d: $18 $ff

	or h                                             ; $757f: $b4
	or h                                             ; $7580: $b4
	ld sp, $6202                                     ; $7581: $31 $02 $62
	ld a, [hl]                                       ; $7584: $7e
	dec e                                            ; $7585: $1d
	nop                                              ; $7586: $00
	and b                                            ; $7587: $a0
	nop                                              ; $7588: $00
	db $10                                           ; $7589: $10
	cp [hl]                                          ; $758a: $be
	inc c                                            ; $758b: $0c
	inc hl                                           ; $758c: $23
	inc h                                            ; $758d: $24
	dec h                                            ; $758e: $25
	ld h, $be                                        ; $758f: $26 $be
	daa                                              ; $7591: $27
	ld [$007e], sp                                   ; $7592: $08 $7e $00
	and b                                            ; $7595: $a0
	cp $00                                           ; $7596: $fe $00
	jr jr_032_752a                                   ; $7598: $18 $90

	db $fd                                           ; $759a: $fd
	ld d, l                                          ; $759b: $55
	ld [hl], a                                       ; $759c: $77
	or c                                             ; $759d: $b1
	ld sp, $0000                                     ; $759e: $31 $00 $00

jr_032_75a1:
	inc h                                            ; $75a1: $24
	jr jr_032_7555                                   ; $75a2: $18 $b1

	sub c                                            ; $75a4: $91
	jr jr_032_75ab                                   ; $75a5: $18 $04

	ld e, $18                                        ; $75a7: $1e $18
	ld e, $18                                        ; $75a9: $1e $18

jr_032_75ab:
	or c                                             ; $75ab: $b1
	ld sp, $0000                                     ; $75ac: $31 $00 $00
	ld e, $18                                        ; $75af: $1e $18
	or c                                             ; $75b1: $b1
	and c                                            ; $75b2: $a1
	jr @+$06                                         ; $75b3: $18 $04

	ld [hl+], a                                      ; $75b5: $22
	jr jr_032_75da                                   ; $75b6: $18 $22

	jr @-$4d                                         ; $75b8: $18 $b1

	ld sp, $0000                                     ; $75ba: $31 $00 $00
	ld [hl+], a                                      ; $75bd: $22
	jr @-$4d                                         ; $75be: $18 $b1

	and c                                            ; $75c0: $a1
	dec de                                           ; $75c1: $1b
	inc b                                            ; $75c2: $04
	ld e, $1b                                        ; $75c3: $1e $1b
	or c                                             ; $75c5: $b1
	add c                                            ; $75c6: $81
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	dec de                                           ; $75c9: $1b
	ld b, $1c                                        ; $75ca: $06 $1c
	rlca                                             ; $75cc: $07
	dec e                                            ; $75cd: $1d
	ld [$a1b1], sp                                   ; $75ce: $08 $b1 $a1
	jr @+$06                                         ; $75d1: $18 $04

	ld e, $18                                        ; $75d3: $1e $18
	ld [hl+], a                                      ; $75d5: $22
	jr jr_032_7656                                   ; $75d6: $18 $7e

jr_032_75d8:
	dec e                                            ; $75d8: $1d
	nop                                              ; $75d9: $00

jr_032_75da:
	xor c                                            ; $75da: $a9
	sub [hl]                                         ; $75db: $96
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	ld e, $18                                        ; $75de: $1e $18
	ld a, [hl]                                       ; $75e0: $7e
	nop                                              ; $75e1: $00
	and b                                            ; $75e2: $a0
	jp $181e                                         ; $75e3: $c3 $1e $18


	db $fd                                           ; $75e6: $fd
	ld d, l                                          ; $75e7: $55
	ld [hl], a                                       ; $75e8: $77
	or c                                             ; $75e9: $b1
	ld sp, $0000                                     ; $75ea: $31 $00 $00
	inc h                                            ; $75ed: $24
	jr jr_032_75a1                                   ; $75ee: $18 $b1

	sub c                                            ; $75f0: $91
	jr jr_032_75f7                                   ; $75f1: $18 $04

	ld e, $18                                        ; $75f3: $1e $18
	sub [hl]                                         ; $75f5: $96
	nop                                              ; $75f6: $00

jr_032_75f7:
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	inc bc                                           ; $75f9: $03

jr_032_75fa:
	ret z                                            ; $75fa: $c8

	dec de                                           ; $75fb: $1b
	ld b, $1c                                        ; $75fc: $06 $1c
	rlca                                             ; $75fe: $07
	dec e                                            ; $75ff: $1d

jr_032_7600:
	ld [$b1b1], sp                                   ; $7600: $08 $b1 $b1
	jr @+$06                                         ; $7603: $18 $04

	ld e, $18                                        ; $7605: $1e $18
	dec e                                            ; $7607: $1d
	jr jr_032_7688                                   ; $7608: $18 $7e

	dec e                                            ; $760a: $1d
	nop                                              ; $760b: $00
	xor c                                            ; $760c: $a9
	sub [hl]                                         ; $760d: $96
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	dec de                                           ; $7610: $1b
	jr @+$80                                         ; $7611: $18 $7e

	nop                                              ; $7613: $00
	and b                                            ; $7614: $a0
	sub [hl]                                         ; $7615: $96
	inc h                                            ; $7616: $24
	inc b                                            ; $7617: $04
	add hl, de                                       ; $7618: $19
	inc h                                            ; $7619: $24
	sub [hl]                                         ; $761a: $96
	inc c                                            ; $761b: $0c
	inc b                                            ; $761c: $04
	add hl, de                                       ; $761d: $19
	inc c                                            ; $761e: $0c
	sub [hl]                                         ; $761f: $96
	jr @+$06                                         ; $7620: $18 $04

	add hl, de                                       ; $7622: $19
	jr jr_032_763e                                   ; $7623: $18 $19

	jr jr_032_75d8                                   ; $7625: $18 $b1

	ld sp, $0000                                     ; $7627: $31 $00 $00
	add hl, de                                       ; $762a: $19
	jr jr_032_762d                                   ; $762b: $18 $00

jr_032_762d:
	jr @-$49                                         ; $762d: $18 $b5

	and c                                            ; $762f: $a1
	ld [bc], a                                       ; $7630: $02
	jr jr_032_7637                                   ; $7631: $18 $04

	ld h, d                                          ; $7633: $62
	nop                                              ; $7634: $00
	jr jr_032_7659                                   ; $7635: $18 $22

jr_032_7637:
	jr jr_032_765b                                   ; $7637: $18 $22

	jr @-$4d                                         ; $7639: $18 $b1

	ld sp, $0000                                     ; $763b: $31 $00 $00

jr_032_763e:
	ld [hl+], a                                      ; $763e: $22
	jr @-$4d                                         ; $763f: $18 $b1

	or c                                             ; $7641: $b1
	jr @+$06                                         ; $7642: $18 $04

	add hl, de                                       ; $7644: $19
	jr jr_032_7660                                   ; $7645: $18 $19

	jr jr_032_75fa                                   ; $7647: $18 $b1

	ld sp, $0000                                     ; $7649: $31 $00 $00
	add hl, de                                       ; $764c: $19
	jr jr_032_7600                                   ; $764d: $18 $b1

	and c                                            ; $764f: $a1
	dec de                                           ; $7650: $1b
	inc b                                            ; $7651: $04
	ld [hl+], a                                      ; $7652: $22
	dec de                                           ; $7653: $1b
	or c                                             ; $7654: $b1
	add c                                            ; $7655: $81

jr_032_7656:
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	rra                                              ; $7658: $1f

jr_032_7659:
	ld b, $20                                        ; $7659: $06 $20

jr_032_765b:
	rlca                                             ; $765b: $07
	ld hl, $b108                                     ; $765c: $21 $08 $b1
	and c                                            ; $765f: $a1

jr_032_7660:
	jr @+$06                                         ; $7660: $18 $04

	ld [hl+], a                                      ; $7662: $22
	jr @+$26                                         ; $7663: $18 $24

	jr jr_032_76e5                                   ; $7665: $18 $7e

	dec e                                            ; $7667: $1d
	nop                                              ; $7668: $00
	xor c                                            ; $7669: $a9
	sub [hl]                                         ; $766a: $96
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	ld [hl+], a                                      ; $766d: $22
	jr jr_032_76ee                                   ; $766e: $18 $7e

	nop                                              ; $7670: $00
	and b                                            ; $7671: $a0
	jp $1822                                         ; $7672: $c3 $22 $18


	or c                                             ; $7675: $b1
	and c                                            ; $7676: $a1
	jr jr_032_767d                                   ; $7677: $18 $04

	jr nz, jr_032_7693                               ; $7679: $20 $18

	jr nz, jr_032_7695                               ; $767b: $20 $18

jr_032_767d:
	or c                                             ; $767d: $b1
	ld sp, $0000                                     ; $767e: $31 $00 $00
	jr nz, jr_032_769b                               ; $7681: $20 $18

	or c                                             ; $7683: $b1
	sub c                                            ; $7684: $91
	jr @+$06                                         ; $7685: $18 $04

	dec h                                            ; $7687: $25

jr_032_7688:
	jr jr_032_76af                                   ; $7688: $18 $25

	jr @-$4d                                         ; $768a: $18 $b1

	ld sp, $0000                                     ; $768c: $31 $00 $00
	dec h                                            ; $768f: $25
	jr @-$4d                                         ; $7690: $18 $b1

	and c                                            ; $7692: $a1

jr_032_7693:
	dec de                                           ; $7693: $1b
	inc b                                            ; $7694: $04

jr_032_7695:
	jr nz, @+$1d                                     ; $7695: $20 $1b

	or c                                             ; $7697: $b1
	add c                                            ; $7698: $81
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00

jr_032_769b:
	ld [hl+], a                                      ; $769b: $22
	ld b, $23                                        ; $769c: $06 $23
	rlca                                             ; $769e: $07
	inc h                                            ; $769f: $24
	ld [$81b1], sp                                   ; $76a0: $08 $b1 $81
	jr @+$06                                         ; $76a3: $18 $04

	dec h                                            ; $76a5: $25
	jr @+$26                                         ; $76a6: $18 $24

	jr @+$80                                         ; $76a8: $18 $7e

	dec e                                            ; $76aa: $1d
	nop                                              ; $76ab: $00
	xor c                                            ; $76ac: $a9
	or c                                             ; $76ad: $b1
	and c                                            ; $76ae: $a1

jr_032_76af:
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	jr nz, jr_032_76cb                               ; $76b1: $20 $18

	ld a, [hl]                                       ; $76b3: $7e
	nop                                              ; $76b4: $00
	and b                                            ; $76b5: $a0
	jp $1820                                         ; $76b6: $c3 $20 $18


	or c                                             ; $76b9: $b1
	sub c                                            ; $76ba: $91
	jr jr_032_76c1                                   ; $76bb: $18 $04

	dec h                                            ; $76bd: $25
	jr jr_032_773e                                   ; $76be: $18 $7e

	dec e                                            ; $76c0: $1d

jr_032_76c1:
	nop                                              ; $76c1: $00
	xor d                                            ; $76c2: $aa
	sub [hl]                                         ; $76c3: $96
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	dec h                                            ; $76c6: $25
	jr jr_032_7747                                   ; $76c7: $18 $7e

	nop                                              ; $76c9: $00
	and b                                            ; $76ca: $a0

jr_032_76cb:
	jp $1819                                         ; $76cb: $c3 $19 $18


	or c                                             ; $76ce: $b1
	sub c                                            ; $76cf: $91
	jr jr_032_76d6                                   ; $76d0: $18 $04

	dec h                                            ; $76d2: $25
	jr @+$80                                         ; $76d3: $18 $7e

	dec e                                            ; $76d5: $1d

jr_032_76d6:
	nop                                              ; $76d6: $00

jr_032_76d7:
	xor d                                            ; $76d7: $aa
	sub [hl]                                         ; $76d8: $96
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	dec h                                            ; $76db: $25
	jr jr_032_775c                                   ; $76dc: $18 $7e

	nop                                              ; $76de: $00
	and b                                            ; $76df: $a0
	jp $1819                                         ; $76e0: $c3 $19 $18


	or c                                             ; $76e3: $b1
	sub c                                            ; $76e4: $91

jr_032_76e5:
	jr jr_032_76eb                                   ; $76e5: $18 $04

	ld [hl+], a                                      ; $76e7: $22
	jr @+$80                                         ; $76e8: $18 $7e

	dec e                                            ; $76ea: $1d

jr_032_76eb:
	nop                                              ; $76eb: $00
	xor d                                            ; $76ec: $aa
	sub [hl]                                         ; $76ed: $96

jr_032_76ee:
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	ld [hl+], a                                      ; $76f0: $22
	jr jr_032_7771                                   ; $76f1: $18 $7e

	nop                                              ; $76f3: $00
	and b                                            ; $76f4: $a0
	jp $1822                                         ; $76f5: $c3 $22 $18


	or c                                             ; $76f8: $b1
	sub c                                            ; $76f9: $91
	jr jr_032_7700                                   ; $76fa: $18 $04

	inc hl                                           ; $76fc: $23
	jr @+$80                                         ; $76fd: $18 $7e

	dec e                                            ; $76ff: $1d

jr_032_7700:
	nop                                              ; $7700: $00
	xor d                                            ; $7701: $aa
	sub [hl]                                         ; $7702: $96
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	inc hl                                           ; $7705: $23
	jr @+$80                                         ; $7706: $18 $7e

	nop                                              ; $7708: $00
	and b                                            ; $7709: $a0
	jp $1823                                         ; $770a: $c3 $23 $18


	or c                                             ; $770d: $b1
	and c                                            ; $770e: $a1

jr_032_770f:
	jr jr_032_7715                                   ; $770f: $18 $04

	dec de                                           ; $7711: $1b

jr_032_7712:
	jr jr_032_7792                                   ; $7712: $18 $7e

	dec e                                            ; $7714: $1d

jr_032_7715:
	nop                                              ; $7715: $00
	xor d                                            ; $7716: $aa
	sub [hl]                                         ; $7717: $96
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	dec de                                           ; $771a: $1b
	jr jr_032_779b                                   ; $771b: $18 $7e

	nop                                              ; $771d: $00
	and b                                            ; $771e: $a0
	or c                                             ; $771f: $b1
	ld sp, $0000                                     ; $7720: $31 $00 $00
	dec de                                           ; $7723: $1b
	jr jr_032_76d7                                   ; $7724: $18 $b1

	and c                                            ; $7726: $a1
	jr jr_032_772d                                   ; $7727: $18 $04

	jr nz, jr_032_7743                               ; $7729: $20 $18

	ld a, [hl]                                       ; $772b: $7e
	dec e                                            ; $772c: $1d

jr_032_772d:
	nop                                              ; $772d: $00
	xor d                                            ; $772e: $aa
	sub [hl]                                         ; $772f: $96
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	jr nz, jr_032_774c                               ; $7732: $20 $18

	ld a, [hl]                                       ; $7734: $7e
	nop                                              ; $7735: $00
	and b                                            ; $7736: $a0
	jp $1820                                         ; $7737: $c3 $20 $18


	or c                                             ; $773a: $b1
	and c                                            ; $773b: $a1
	jr jr_032_7742                                   ; $773c: $18 $04

jr_032_773e:
	inc hl                                           ; $773e: $23
	jr @+$80                                         ; $773f: $18 $7e

	dec e                                            ; $7741: $1d

jr_032_7742:
	nop                                              ; $7742: $00

jr_032_7743:
	xor d                                            ; $7743: $aa
	sub [hl]                                         ; $7744: $96
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00

jr_032_7747:
	inc hl                                           ; $7747: $23
	jr jr_032_77c8                                   ; $7748: $18 $7e

	nop                                              ; $774a: $00
	and b                                            ; $774b: $a0

jr_032_774c:
	ld [hl+], a                                      ; $774c: $22
	jr jr_032_7712                                   ; $774d: $18 $c3

	ld [hl+], a                                      ; $774f: $22
	jr jr_032_7752                                   ; $7750: $18 $00

jr_032_7752:
	jr jr_032_7752                                   ; $7752: $18 $fe

	rst $38                                          ; $7754: $ff
	or c                                             ; $7755: $b1
	add c                                            ; $7756: $81
	jr @+$06                                         ; $7757: $18 $04

	dec e                                            ; $7759: $1d
	jr jr_032_7779                                   ; $775a: $18 $1d

jr_032_775c:
	jr jr_032_770f                                   ; $775c: $18 $b1

	ld sp, $0000                                     ; $775e: $31 $00 $00

jr_032_7761:
	dec e                                            ; $7761: $1d
	jr jr_032_7715                                   ; $7762: $18 $b1

	and c                                            ; $7764: $a1
	jr jr_032_776b                                   ; $7765: $18 $04

	jr nz, @+$1a                                     ; $7767: $20 $18

	jr nz, jr_032_7783                               ; $7769: $20 $18

jr_032_776b:
	or c                                             ; $776b: $b1
	ld sp, $0000                                     ; $776c: $31 $00 $00
	jr nz, @+$1a                                     ; $776f: $20 $18

jr_032_7771:
	or c                                             ; $7771: $b1
	and c                                            ; $7772: $a1
	dec de                                           ; $7773: $1b
	inc b                                            ; $7774: $04
	dec e                                            ; $7775: $1d
	dec de                                           ; $7776: $1b
	or c                                             ; $7777: $b1
	add c                                            ; $7778: $81

jr_032_7779:
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	dec e                                            ; $777b: $1d
	ld b, $1b                                        ; $777c: $06 $1b
	rlca                                             ; $777e: $07
	inc e                                            ; $777f: $1c
	ld [$a1b1], sp                                   ; $7780: $08 $b1 $a1

jr_032_7783:
	jr @+$06                                         ; $7783: $18 $04

	jr nz, jr_032_779f                               ; $7785: $20 $18

	ld [hl+], a                                      ; $7787: $22
	jr jr_032_7808                                   ; $7788: $18 $7e

	dec e                                            ; $778a: $1d

jr_032_778b:
	nop                                              ; $778b: $00
	xor c                                            ; $778c: $a9
	or c                                             ; $778d: $b1
	sub c                                            ; $778e: $91
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	inc h                                            ; $7791: $24

jr_032_7792:
	jr jr_032_7812                                   ; $7792: $18 $7e

	nop                                              ; $7794: $00
	and b                                            ; $7795: $a0
	db $fd                                           ; $7796: $fd
	or h                                             ; $7797: $b4
	or h                                             ; $7798: $b4
	pop af                                           ; $7799: $f1
	ld [bc], a                                       ; $779a: $02

jr_032_779b:
	sub a                                            ; $779b: $97
	ld l, c                                          ; $779c: $69
	ld h, d                                          ; $779d: $62
	inc hl                                           ; $779e: $23

jr_032_779f:
	inc c                                            ; $779f: $0c
	inc h                                            ; $77a0: $24
	inc c                                            ; $77a1: $0c
	dec h                                            ; $77a2: $25
	inc c                                            ; $77a3: $0c
	sub a                                            ; $77a4: $97
	ld e, d                                          ; $77a5: $5a
	ld h, $0c                                        ; $77a6: $26 $0c
	daa                                              ; $77a8: $27
	inc c                                            ; $77a9: $0c
	jr z, jr_032_77b8                                ; $77aa: $28 $0c

	cp $92                                           ; $77ac: $fe $92
	sub [hl]                                         ; $77ae: $96
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	sub a                                            ; $77b1: $97
	ld e, a                                          ; $77b2: $5f
	ld a, [hl]                                       ; $77b3: $7e
	dec e                                            ; $77b4: $1d
	jr jr_032_7761                                   ; $77b5: $18 $aa

	add hl, hl                                       ; $77b7: $29

jr_032_77b8:
	inc h                                            ; $77b8: $24
	jr z, @+$0e                                      ; $77b9: $28 $0c

	add hl, hl                                       ; $77bb: $29
	jr nc, @+$27                                     ; $77bc: $30 $25

	jr jr_032_77e7                                   ; $77be: $18 $27

	jr @+$2b                                         ; $77c0: $18 $29

	inc h                                            ; $77c2: $24
	jr z, jr_032_77d1                                ; $77c3: $28 $0c

	add hl, hl                                       ; $77c5: $29
	jr nc, @-$67                                     ; $77c6: $30 $97

jr_032_77c8:
	ld e, [hl]                                       ; $77c8: $5e
	ld l, $18                                        ; $77c9: $2e $18
	sub a                                            ; $77cb: $97
	ld e, a                                          ; $77cc: $5f

jr_032_77cd:
	add hl, hl                                       ; $77cd: $29
	jr jr_032_77fa                                   ; $77ce: $18 $2a

	inc h                                            ; $77d0: $24

jr_032_77d1:
	add hl, hl                                       ; $77d1: $29
	inc c                                            ; $77d2: $0c
	ld a, [hl+]                                      ; $77d3: $2a
	jr nc, jr_032_77fd                               ; $77d4: $30 $27

	jr @+$2b                                         ; $77d6: $18 $29

	jr jr_032_7804                                   ; $77d8: $18 $2a

	inc h                                            ; $77da: $24
	add hl, hl                                       ; $77db: $29
	inc c                                            ; $77dc: $0c
	ld a, [hl+]                                      ; $77dd: $2a
	jr nc, jr_032_780c                               ; $77de: $30 $2c

	jr @+$29                                         ; $77e0: $18 $27

	jr jr_032_780d                                   ; $77e2: $18 $29

	inc h                                            ; $77e4: $24
	jr z, @+$0e                                      ; $77e5: $28 $0c

jr_032_77e7:
	add hl, hl                                       ; $77e7: $29
	jr nc, jr_032_780f                               ; $77e8: $30 $25

	jr jr_032_7813                                   ; $77ea: $18 $27

	jr jr_032_7817                                   ; $77ec: $18 $29

	inc h                                            ; $77ee: $24
	jr z, jr_032_77fd                                ; $77ef: $28 $0c

	add hl, hl                                       ; $77f1: $29
	jr nc, jr_032_778b                               ; $77f2: $30 $97

	ld e, [hl]                                       ; $77f4: $5e
	ld l, $18                                        ; $77f5: $2e $18
	sub a                                            ; $77f7: $97
	ld e, a                                          ; $77f8: $5f
	add hl, hl                                       ; $77f9: $29

jr_032_77fa:
	jr @+$2c                                         ; $77fa: $18 $2a

	inc h                                            ; $77fc: $24

jr_032_77fd:
	add hl, hl                                       ; $77fd: $29
	inc c                                            ; $77fe: $0c
	ld a, [hl+]                                      ; $77ff: $2a
	jr nc, @+$2e                                     ; $7800: $30 $2c

	jr @+$26                                         ; $7802: $18 $24

jr_032_7804:
	jr jr_032_782d                                   ; $7804: $18 $27

	ld c, b                                          ; $7806: $48
	dec h                                            ; $7807: $25

jr_032_7808:
	jr jr_032_77cd                                   ; $7808: $18 $c3

	sub a                                            ; $780a: $97
	nop                                              ; $780b: $00

jr_032_780c:
	dec h                                            ; $780c: $25

jr_032_780d:
	jr jr_032_779f                                   ; $780d: $18 $90

jr_032_780f:
	call z, $1819                                    ; $780f: $cc $19 $18

jr_032_7812:
	pop de                                           ; $7812: $d1

jr_032_7813:
	sub b                                            ; $7813: $90
	call z, $1962                                    ; $7814: $cc $62 $19

jr_032_7817:
	ld [$19c4], sp                                   ; $7817: $08 $c4 $19
	inc b                                            ; $781a: $04
	call z, $081a                                    ; $781b: $cc $1a $08
	call nz, $041a                                   ; $781e: $c4 $1a $04
	call z, $081b                                    ; $7821: $cc $1b $08
	call nz, $041b                                   ; $7824: $c4 $1b $04
	call z, $081a                                    ; $7827: $cc $1a $08
	call nz, $041a                                   ; $782a: $c4 $1a $04

jr_032_782d:
	call z, $081b                                    ; $782d: $cc $1b $08
	call nz, $041b                                   ; $7830: $c4 $1b $04
	call z, $081c                                    ; $7833: $cc $1c $08
	call nz, $041c                                   ; $7836: $c4 $1c $04
	call z, $081d                                    ; $7839: $cc $1d $08
	call nz, $041d                                   ; $783c: $c4 $1d $04
	call z, $081c                                    ; $783f: $cc $1c $08
	call nz, $041c                                   ; $7842: $c4 $1c $04
	call z, $081d                                    ; $7845: $cc $1d $08
	call nz, $041d                                   ; $7848: $c4 $1d $04
	call z, $081e                                    ; $784b: $cc $1e $08
	call nz, $041e                                   ; $784e: $c4 $1e $04
	call z, $081d                                    ; $7851: $cc $1d $08
	call nz, $041d                                   ; $7854: $c4 $1d $04
	call z, $081e                                    ; $7857: $cc $1e $08
	call nz, $041e                                   ; $785a: $c4 $1e $04
	call z, $081f                                    ; $785d: $cc $1f $08
	call nz, $041f                                   ; $7860: $c4 $1f $04
	call z, $0820                                    ; $7863: $cc $20 $08
	call nz, $0420                                   ; $7866: $c4 $20 $04
	call z, $081f                                    ; $7869: $cc $1f $08
	call nz, $041f                                   ; $786c: $c4 $1f $04
	call z, $0820                                    ; $786f: $cc $20 $08
	call nz, $0420                                   ; $7872: $c4 $20 $04
	call z, $0821                                    ; $7875: $cc $21 $08
	call nz, $0421                                   ; $7878: $c4 $21 $04
	call z, $0822                                    ; $787b: $cc $22 $08
	call nz, $0422                                   ; $787e: $c4 $22 $04
	call z, $0821                                    ; $7881: $cc $21 $08
	call nz, $0421                                   ; $7884: $c4 $21 $04
	call z, $0822                                    ; $7887: $cc $22 $08
	call nz, $0422                                   ; $788a: $c4 $22 $04
	call z, $0823                                    ; $788d: $cc $23 $08
	call nz, $0423                                   ; $7890: $c4 $23 $04
	call z, $0824                                    ; $7893: $cc $24 $08
	call nz, $0424                                   ; $7896: $c4 $24 $04
	call z, $0825                                    ; $7899: $cc $25 $08
	call nz, $0425                                   ; $789c: $c4 $25 $04
	call z, $0826                                    ; $789f: $cc $26 $08
	call nz, $0426                                   ; $78a2: $c4 $26 $04
	jp z, $0827                                      ; $78a5: $ca $27 $08

	call nz, $0427                                   ; $78a8: $c4 $27 $04
	sla [hl]                                         ; $78ab: $cb $26
	ld [$26c4], sp                                   ; $78ad: $08 $c4 $26
	inc b                                            ; $78b0: $04
	call z, $0825                                    ; $78b1: $cc $25 $08
	call nz, $0425                                   ; $78b4: $c4 $25 $04
	call z, $0824                                    ; $78b7: $cc $24 $08
	call nz, $0424                                   ; $78ba: $c4 $24 $04
	call z, $0823                                    ; $78bd: $cc $23 $08
	call nz, $0423                                   ; $78c0: $c4 $23 $04
	call z, $0822                                    ; $78c3: $cc $22 $08
	call nz, $0422                                   ; $78c6: $c4 $22 $04
	call z, $0821                                    ; $78c9: $cc $21 $08
	call nz, $0421                                   ; $78cc: $c4 $21 $04
	call z, $0820                                    ; $78cf: $cc $20 $08
	call nz, $0420                                   ; $78d2: $c4 $20 $04
	call z, $081f                                    ; $78d5: $cc $1f $08
	call nz, $041f                                   ; $78d8: $c4 $1f $04
	call z, $0820                                    ; $78db: $cc $20 $08
	call nz, $0420                                   ; $78de: $c4 $20 $04
	call z, $081e                                    ; $78e1: $cc $1e $08
	call nz, $041e                                   ; $78e4: $c4 $1e $04
	call z, $0820                                    ; $78e7: $cc $20 $08
	call nz, $0420                                   ; $78ea: $c4 $20 $04
	ret z                                            ; $78ed: $c8

	daa                                              ; $78ee: $27
	ld [$27c2], sp                                   ; $78ef: $08 $c2 $27
	inc b                                            ; $78f2: $04
	ret                                              ; $78f3: $c9


	ld h, $08                                        ; $78f4: $26 $08
	jp $0426                                         ; $78f6: $c3 $26 $04


	call z, $0825                                    ; $78f9: $cc $25 $08
	call nz, $0425                                   ; $78fc: $c4 $25 $04
	call z, $0824                                    ; $78ff: $cc $24 $08
	call nz, $0424                                   ; $7902: $c4 $24 $04
	call z, $0823                                    ; $7905: $cc $23 $08
	call nz, $0423                                   ; $7908: $c4 $23 $04
	call z, $0822                                    ; $790b: $cc $22 $08
	call nz, $0422                                   ; $790e: $c4 $22 $04
	pop de                                           ; $7911: $d1
	sub b                                            ; $7912: $90
	call z, $2162                                    ; $7913: $cc $62 $21
	ld [$21c4], sp                                   ; $7916: $08 $c4 $21
	inc b                                            ; $7919: $04
	call z, $0820                                    ; $791a: $cc $20 $08
	call nz, $0420                                   ; $791d: $c4 $20 $04
	call z, $081f                                    ; $7920: $cc $1f $08
	call nz, $041f                                   ; $7923: $c4 $1f $04
	call z, $0820                                    ; $7926: $cc $20 $08
	call nz, $0420                                   ; $7929: $c4 $20 $04
	call z, $0822                                    ; $792c: $cc $22 $08
	call nz, $0422                                   ; $792f: $c4 $22 $04
	call z, $0820                                    ; $7932: $cc $20 $08
	call nz, $0420                                   ; $7935: $c4 $20 $04
	call z, $0819                                    ; $7938: $cc $19 $08
	call nz, $0419                                   ; $793b: $c4 $19 $04
	call z, $081a                                    ; $793e: $cc $1a $08
	call nz, $041a                                   ; $7941: $c4 $1a $04
	call z, $081b                                    ; $7944: $cc $1b $08
	call nz, $041b                                   ; $7947: $c4 $1b $04
	call z, $081a                                    ; $794a: $cc $1a $08
	call nz, $041a                                   ; $794d: $c4 $1a $04
	call z, $081b                                    ; $7950: $cc $1b $08
	call nz, $041b                                   ; $7953: $c4 $1b $04
	call z, $081c                                    ; $7956: $cc $1c $08
	call nz, $041c                                   ; $7959: $c4 $1c $04
	call z, $081d                                    ; $795c: $cc $1d $08
	call nz, $041d                                   ; $795f: $c4 $1d $04
	call z, $081c                                    ; $7962: $cc $1c $08
	call nz, $041c                                   ; $7965: $c4 $1c $04
	call z, $081d                                    ; $7968: $cc $1d $08
	call nz, $041d                                   ; $796b: $c4 $1d $04
	call z, $081e                                    ; $796e: $cc $1e $08
	call nz, $041e                                   ; $7971: $c4 $1e $04
	call z, $081d                                    ; $7974: $cc $1d $08
	call nz, $041d                                   ; $7977: $c4 $1d $04
	call z, $081e                                    ; $797a: $cc $1e $08
	call nz, $041e                                   ; $797d: $c4 $1e $04
	call z, $081f                                    ; $7980: $cc $1f $08
	call nz, $041f                                   ; $7983: $c4 $1f $04
	call z, $0820                                    ; $7986: $cc $20 $08
	call nz, $0420                                   ; $7989: $c4 $20 $04
	call z, $0821                                    ; $798c: $cc $21 $08
	call nz, $0421                                   ; $798f: $c4 $21 $04
	call z, $0822                                    ; $7992: $cc $22 $08
	call nz, $0422                                   ; $7995: $c4 $22 $04
	ret z                                            ; $7998: $c8

	daa                                              ; $7999: $27
	ld [$27c4], sp                                   ; $799a: $08 $c4 $27
	inc b                                            ; $799d: $04
	call z, $0822                                    ; $799e: $cc $22 $08
	call nz, $0422                                   ; $79a1: $c4 $22 $04
	call z, $0825                                    ; $79a4: $cc $25 $08
	call nz, $0425                                   ; $79a7: $c4 $25 $04
	call z, $0824                                    ; $79aa: $cc $24 $08
	call nz, $0424                                   ; $79ad: $c4 $24 $04
	call z, $0823                                    ; $79b0: $cc $23 $08
	call nz, $0423                                   ; $79b3: $c4 $23 $04
	call z, $0822                                    ; $79b6: $cc $22 $08
	call nz, $0422                                   ; $79b9: $c4 $22 $04
	call z, $0821                                    ; $79bc: $cc $21 $08
	call nz, $0421                                   ; $79bf: $c4 $21 $04
	call z, $0820                                    ; $79c2: $cc $20 $08
	call nz, $0420                                   ; $79c5: $c4 $20 $04
	call z, $081f                                    ; $79c8: $cc $1f $08
	call nz, $041f                                   ; $79cb: $c4 $1f $04
	call z, $0820                                    ; $79ce: $cc $20 $08
	call nz, $0420                                   ; $79d1: $c4 $20 $04
	call z, $0821                                    ; $79d4: $cc $21 $08
	call nz, $0421                                   ; $79d7: $c4 $21 $04
	call z, $0822                                    ; $79da: $cc $22 $08
	call nz, $0422                                   ; $79dd: $c4 $22 $04
	call z, $0823                                    ; $79e0: $cc $23 $08
	call nz, $0423                                   ; $79e3: $c4 $23 $04
	ret z                                            ; $79e6: $c8

	daa                                              ; $79e7: $27
	ld [$27c2], sp                                   ; $79e8: $08 $c2 $27
	inc b                                            ; $79eb: $04
	call z, $0825                                    ; $79ec: $cc $25 $08
	call nz, $0425                                   ; $79ef: $c4 $25 $04
	call z, $0824                                    ; $79f2: $cc $24 $08
	call nz, $0424                                   ; $79f5: $c4 $24 $04
	call z, $0825                                    ; $79f8: $cc $25 $08
	call nz, $0425                                   ; $79fb: $c4 $25 $04
	call z, $0822                                    ; $79fe: $cc $22 $08
	call nz, $0422                                   ; $7a01: $c4 $22 $04
	call z, $081e                                    ; $7a04: $cc $1e $08
	call nz, $041e                                   ; $7a07: $c4 $1e $04
	call z, $081b                                    ; $7a0a: $cc $1b $08
	call nz, $041b                                   ; $7a0d: $c4 $1b $04
	call z, $0819                                    ; $7a10: $cc $19 $08
	call nz, $0419                                   ; $7a13: $c4 $19 $04
	call z, $0818                                    ; $7a16: $cc $18 $08
	call nz, $0418                                   ; $7a19: $c4 $18 $04
	call z, $0819                                    ; $7a1c: $cc $19 $08
	call nz, $0419                                   ; $7a1f: $c4 $19 $04
	call z, $081d                                    ; $7a22: $cc $1d $08
	call nz, $041d                                   ; $7a25: $c4 $1d $04
	call z, $0822                                    ; $7a28: $cc $22 $08
	call nz, $0422                                   ; $7a2b: $c4 $22 $04
	call z, $0820                                    ; $7a2e: $cc $20 $08
	call nz, $0420                                   ; $7a31: $c4 $20 $04
	call z, $181e                                    ; $7a34: $cc $1e $18
	jp $181e                                         ; $7a37: $c3 $1e $18


	sub a                                            ; $7a3a: $97
	adc d                                            ; $7a3b: $8a
	sub [hl]                                         ; $7a3c: $96
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	sub d                                            ; $7a3f: $92
	ld a, [hl]                                       ; $7a40: $7e
	dec e                                            ; $7a41: $1d
	nop                                              ; $7a42: $00
	jr nz, jr_032_7a5d                               ; $7a43: $20 $18

	cp $ff                                           ; $7a45: $fe $ff
	ret nc                                           ; $7a47: $d0

	or h                                             ; $7a48: $b4
	ld a, a                                          ; $7a49: $7f
	jr jr_032_7aae                                   ; $7a4a: $18 $62

	pop de                                           ; $7a4c: $d1
	jp nz, Jump_032_4800                             ; $7a4d: $c2 $00 $48

	cp $fd                                           ; $7a50: $fe $fd
	dec l                                            ; $7a52: $2d
	ld a, h                                          ; $7a53: $7c
	jp nz, $0c0f                                     ; $7a54: $c2 $0f $0c

	call nz, $0c0f                                   ; $7a57: $c4 $0f $0c
	jp nz, $0c16                                     ; $7a5a: $c2 $16 $0c

jr_032_7a5d:
	call nz, $0c16                                   ; $7a5d: $c4 $16 $0c
	jp nz, $0c16                                     ; $7a60: $c2 $16 $0c

	call nz, $0c16                                   ; $7a63: $c4 $16 $0c
	jp nz, $0c0a                                     ; $7a66: $c2 $0a $0c

	call nz, $0c0a                                   ; $7a69: $c4 $0a $0c
	jp nz, $0c12                                     ; $7a6c: $c2 $12 $0c

	call nz, $0c12                                   ; $7a6f: $c4 $12 $0c
	jp nz, $0c12                                     ; $7a72: $c2 $12 $0c

	call nz, $0c12                                   ; $7a75: $c4 $12 $0c
	jp nz, $0cbe                                     ; $7a78: $c2 $be $0c

	rrca                                             ; $7a7b: $0f
	ld c, $0f                                        ; $7a7c: $0e $0f
	ld de, $1412                                     ; $7a7e: $11 $12 $14
	cp [hl]                                          ; $7a81: $be
	ld a, a                                          ; $7a82: $7f
	inc e                                            ; $7a83: $1c
	jp nz, $0c16                                     ; $7a84: $c2 $16 $0c

	call nz, $0c16                                   ; $7a87: $c4 $16 $0c
	jp nz, $0c12                                     ; $7a8a: $c2 $12 $0c

	call nz, $0c12                                   ; $7a8d: $c4 $12 $0c

jr_032_7a90:
	ld a, a                                          ; $7a90: $7f
	jr @-$3c                                         ; $7a91: $18 $c2

	ld a, [hl]                                       ; $7a93: $7e
	dec e                                            ; $7a94: $1d
	nop                                              ; $7a95: $00
	and d                                            ; $7a96: $a2
	rrca                                             ; $7a97: $0f
	jr jr_032_7b18                                   ; $7a98: $18 $7e

	nop                                              ; $7a9a: $00
	and b                                            ; $7a9b: $a0
	db $fd                                           ; $7a9c: $fd
	dec l                                            ; $7a9d: $2d
	ld a, h                                          ; $7a9e: $7c
	jp nz, $0c0f                                     ; $7a9f: $c2 $0f $0c

	call nz, $0c0f                                   ; $7aa2: $c4 $0f $0c
	jp nz, $0c16                                     ; $7aa5: $c2 $16 $0c

	call nz, $0c16                                   ; $7aa8: $c4 $16 $0c
	jp nz, $0c16                                     ; $7aab: $c2 $16 $0c

jr_032_7aae:
	call nz, $0c16                                   ; $7aae: $c4 $16 $0c
	jp nz, $0c08                                     ; $7ab1: $c2 $08 $0c

	call nz, $0c08                                   ; $7ab4: $c4 $08 $0c
	jp nz, $0c0a                                     ; $7ab7: $c2 $0a $0c

	call nz, $0c0a                                   ; $7aba: $c4 $0a $0c
	jp nz, $1d7e                                     ; $7abd: $c2 $7e $1d

	nop                                              ; $7ac0: $00
	and d                                            ; $7ac1: $a2
	inc c                                            ; $7ac2: $0c
	jr jr_032_7b43                                   ; $7ac3: $18 $7e

	nop                                              ; $7ac5: $00
	and b                                            ; $7ac6: $a0
	jp nz, $0c0d                                     ; $7ac7: $c2 $0d $0c

	add $0d                                          ; $7aca: $c6 $0d
	jr jr_032_7a90                                   ; $7acc: $18 $c2

	dec c                                            ; $7ace: $0d
	ld b, $c6                                        ; $7acf: $06 $c6
	dec c                                            ; $7ad1: $0d
	ld b, $c2                                        ; $7ad2: $06 $c2
	dec c                                            ; $7ad4: $0d
	inc c                                            ; $7ad5: $0c
	add $0d                                          ; $7ad6: $c6 $0d
	inc c                                            ; $7ad8: $0c
	jp nz, $0c0d                                     ; $7ad9: $c2 $0d $0c

	add $0d                                          ; $7adc: $c6 $0d
	inc c                                            ; $7ade: $0c
	nop                                              ; $7adf: $00
	jr nc, @-$2d                                     ; $7ae0: $30 $d1

	jp nz, $187f                                     ; $7ae2: $c2 $7f $18

	ld h, d                                          ; $7ae5: $62
	ld b, $0c                                        ; $7ae6: $06 $0c
	call nz, $0c06                                   ; $7ae8: $c4 $06 $0c
	jp nz, $0c0d                                     ; $7aeb: $c2 $0d $0c

	call nz, $0c0d                                   ; $7aee: $c4 $0d $0c
	jp nz, $0c0d                                     ; $7af1: $c2 $0d $0c

	call nz, $0c0d                                   ; $7af4: $c4 $0d $0c
	jp nz, $0c01                                     ; $7af7: $c2 $01 $0c

	call nz, $0c01                                   ; $7afa: $c4 $01 $0c
	jp nz, $0c12                                     ; $7afd: $c2 $12 $0c

	call nz, $0c12                                   ; $7b00: $c4 $12 $0c
	jp nz, $0c12                                     ; $7b03: $c2 $12 $0c

	call nz, $0c12                                   ; $7b06: $c4 $12 $0c
	jp nz, $0c06                                     ; $7b09: $c2 $06 $0c

	call nz, $0c06                                   ; $7b0c: $c4 $06 $0c
	jp nz, $0c0d                                     ; $7b0f: $c2 $0d $0c

	call nz, $0c0d                                   ; $7b12: $c4 $0d $0c
	jp nz, $0c0d                                     ; $7b15: $c2 $0d $0c

jr_032_7b18:
	call nz, $0c0d                                   ; $7b18: $c4 $0d $0c
	jp nz, $0c12                                     ; $7b1b: $c2 $12 $0c

	call nz, $0c12                                   ; $7b1e: $c4 $12 $0c
	jp nz, $0c11                                     ; $7b21: $c2 $11 $0c

	call nz, $0c11                                   ; $7b24: $c4 $11 $0c
	ld a, [hl]                                       ; $7b27: $7e
	dec e                                            ; $7b28: $1d
	nop                                              ; $7b29: $00
	and c                                            ; $7b2a: $a1
	jp nz, $1812                                     ; $7b2b: $c2 $12 $18

	ld a, [hl]                                       ; $7b2e: $7e
	nop                                              ; $7b2f: $00
	and b                                            ; $7b30: $a0
	jp nz, $0c08                                     ; $7b31: $c2 $08 $0c

	call nz, $0c08                                   ; $7b34: $c4 $08 $0c
	jp nz, $0c0d                                     ; $7b37: $c2 $0d $0c

	call nz, $0c0d                                   ; $7b3a: $c4 $0d $0c
	jp nz, $0c0d                                     ; $7b3d: $c2 $0d $0c

	call nz, $0c0d                                   ; $7b40: $c4 $0d $0c

jr_032_7b43:
	jp nz, $0c01                                     ; $7b43: $c2 $01 $0c

	call nz, $0c01                                   ; $7b46: $c4 $01 $0c
	ld a, a                                          ; $7b49: $7f
	inc e                                            ; $7b4a: $1c
	jp nz, $0c14                                     ; $7b4b: $c2 $14 $0c

	call nz, $0c14                                   ; $7b4e: $c4 $14 $0c
	jp nz, $0c14                                     ; $7b51: $c2 $14 $0c

	call nz, $0c14                                   ; $7b54: $c4 $14 $0c
	ld a, a                                          ; $7b57: $7f
	jr @-$3c                                         ; $7b58: $18 $c2

	ld [$c40c], sp                                   ; $7b5a: $08 $0c $c4
	ld [$c20c], sp                                   ; $7b5d: $08 $0c $c2
	dec c                                            ; $7b60: $0d
	inc c                                            ; $7b61: $0c

jr_032_7b62:
	call nz, $0c0d                                   ; $7b62: $c4 $0d $0c
	jp nz, $0c0d                                     ; $7b65: $c2 $0d $0c

	call nz, $0c0d                                   ; $7b68: $c4 $0d $0c
	ld a, a                                          ; $7b6b: $7f
	inc e                                            ; $7b6c: $1c
	jp nz, $0c14                                     ; $7b6d: $c2 $14 $0c

	call nz, $0c14                                   ; $7b70: $c4 $14 $0c
	ld a, a                                          ; $7b73: $7f
	jr @-$3c                                         ; $7b74: $18 $c2

	ld [de], a                                       ; $7b76: $12
	inc c                                            ; $7b77: $0c
	call nz, $0c12                                   ; $7b78: $c4 $12 $0c
	ld a, [hl]                                       ; $7b7b: $7e

jr_032_7b7c:
	dec e                                            ; $7b7c: $1d
	nop                                              ; $7b7d: $00
	and d                                            ; $7b7e: $a2
	jp nz, $1811                                     ; $7b7f: $c2 $11 $18

	ld a, [hl]                                       ; $7b82: $7e
	nop                                              ; $7b83: $00
	and b                                            ; $7b84: $a0
	jp nz, $0c12                                     ; $7b85: $c2 $12 $0c

	call nz, $0c12                                   ; $7b88: $c4 $12 $0c
	ld a, a                                          ; $7b8b: $7f
	inc e                                            ; $7b8c: $1c
	jp nz, $0c16                                     ; $7b8d: $c2 $16 $0c

	call nz, $0c16                                   ; $7b90: $c4 $16 $0c
	ld a, [hl]                                       ; $7b93: $7e
	dec e                                            ; $7b94: $1d
	nop                                              ; $7b95: $00
	and c                                            ; $7b96: $a1
	jp nz, $1816                                     ; $7b97: $c2 $16 $18

	ld a, [hl]                                       ; $7b9a: $7e
	nop                                              ; $7b9b: $00

jr_032_7b9c:
	and b                                            ; $7b9c: $a0
	ld a, a                                          ; $7b9d: $7f
	jr jr_032_7b62                                   ; $7b9e: $18 $c2

	dec c                                            ; $7ba0: $0d
	inc c                                            ; $7ba1: $0c
	call nz, $0c0d                                   ; $7ba2: $c4 $0d $0c
	ld a, a                                          ; $7ba5: $7f
	inc e                                            ; $7ba6: $1c
	jp nz, $0c16                                     ; $7ba7: $c2 $16 $0c

	call nz, $0c16                                   ; $7baa: $c4 $16 $0c
	ld a, [hl]                                       ; $7bad: $7e
	dec e                                            ; $7bae: $1d
	nop                                              ; $7baf: $00
	and c                                            ; $7bb0: $a1
	jp nz, $1816                                     ; $7bb1: $c2 $16 $18

	ld a, [hl]                                       ; $7bb4: $7e
	nop                                              ; $7bb5: $00
	and b                                            ; $7bb6: $a0
	ld a, a                                          ; $7bb7: $7f
	jr jr_032_7b7c                                   ; $7bb8: $18 $c2

	rrca                                             ; $7bba: $0f
	inc c                                            ; $7bbb: $0c
	call nz, $0c0f                                   ; $7bbc: $c4 $0f $0c
	jp nz, $0c13                                     ; $7bbf: $c2 $13 $0c

	call nz, $0c13                                   ; $7bc2: $c4 $13 $0c
	ld a, [hl]                                       ; $7bc5: $7e
	dec e                                            ; $7bc6: $1d
	nop                                              ; $7bc7: $00
	and c                                            ; $7bc8: $a1
	jp nz, $1813                                     ; $7bc9: $c2 $13 $18

	ld a, [hl]                                       ; $7bcc: $7e
	nop                                              ; $7bcd: $00
	and b                                            ; $7bce: $a0
	ld a, a                                          ; $7bcf: $7f
	inc e                                            ; $7bd0: $1c
	jp nz, $0c14                                     ; $7bd1: $c2 $14 $0c

	call nz, $0c14                                   ; $7bd4: $c4 $14 $0c
	ld a, a                                          ; $7bd7: $7f
	jr jr_032_7b9c                                   ; $7bd8: $18 $c2

jr_032_7bda:
	rrca                                             ; $7bda: $0f
	inc c                                            ; $7bdb: $0c
	call nz, $0c0f                                   ; $7bdc: $c4 $0f $0c
	ld a, [hl]                                       ; $7bdf: $7e
	dec e                                            ; $7be0: $1d
	nop                                              ; $7be1: $00
	and c                                            ; $7be2: $a1
	jp nz, $180f                                     ; $7be3: $c2 $0f $18

	ld a, [hl]                                       ; $7be6: $7e
	nop                                              ; $7be7: $00
	and b                                            ; $7be8: $a0
	jp nz, $0c0b                                     ; $7be9: $c2 $0b $0c

	call nz, $0c0b                                   ; $7bec: $c4 $0b $0c
	jp nz, $0c12                                     ; $7bef: $c2 $12 $0c

	call nz, $0c12                                   ; $7bf2: $c4 $12 $0c
	jp nz, $0c12                                     ; $7bf5: $c2 $12 $0c

	call nz, $0c12                                   ; $7bf8: $c4 $12 $0c
	jp nz, $0c0d                                     ; $7bfb: $c2 $0d $0c

	call nz, $0c0d                                   ; $7bfe: $c4 $0d $0c
	jp nz, $0c11                                     ; $7c01: $c2 $11 $0c

	call nz, $0c11                                   ; $7c04: $c4 $11 $0c
	jp nz, $1d7e                                     ; $7c07: $c2 $7e $1d

	nop                                              ; $7c0a: $00
	and c                                            ; $7c0b: $a1
	ld de, $7e18                                     ; $7c0c: $11 $18 $7e
	nop                                              ; $7c0f: $00
	and b                                            ; $7c10: $a0
	jp nz, $0c0d                                     ; $7c11: $c2 $0d $0c

	add $0d                                          ; $7c14: $c6 $0d
	jr jr_032_7bda                                   ; $7c16: $18 $c2

	ld [de], a                                       ; $7c18: $12
	ld b, $c6                                        ; $7c19: $06 $c6
	ld [de], a                                       ; $7c1b: $12
	ld b, $c2                                        ; $7c1c: $06 $c2
	ld [de], a                                       ; $7c1e: $12
	inc c                                            ; $7c1f: $0c
	add $12                                          ; $7c20: $c6 $12
	inc c                                            ; $7c22: $0c
	jp nz, $1806                                     ; $7c23: $c2 $06 $18

	add $06                                          ; $7c26: $c6 $06
	jr jr_032_7c2a                                   ; $7c28: $18 $00

jr_032_7c2a:
	jr jr_032_7c2a                                   ; $7c2a: $18 $fe

	rst $38                                          ; $7c2c: $ff
	pop de                                           ; $7c2d: $d1
	jp nz, $0c0d                                     ; $7c2e: $c2 $0d $0c

	call nz, $0c0d                                   ; $7c31: $c4 $0d $0c
	jp nz, $0c14                                     ; $7c34: $c2 $14 $0c

	call nz, $0c14                                   ; $7c37: $c4 $14 $0c
	jp nz, $0c14                                     ; $7c3a: $c2 $14 $0c

	call nz, $0c14                                   ; $7c3d: $c4 $14 $0c
	jp nz, $0c08                                     ; $7c40: $c2 $08 $0c

	call nz, $0c08                                   ; $7c43: $c4 $08 $0c
	jp nz, $0c11                                     ; $7c46: $c2 $11 $0c

	call nz, $0c11                                   ; $7c49: $c4 $11 $0c
	jp nz, $0c11                                     ; $7c4c: $c2 $11 $0c

	call nz, $0c11                                   ; $7c4f: $c4 $11 $0c
	jp nz, $0cbe                                     ; $7c52: $c2 $be $0c

	dec c                                            ; $7c55: $0d
	inc c                                            ; $7c56: $0c
	dec c                                            ; $7c57: $0d
	rrca                                             ; $7c58: $0f
	ld de, $be12                                     ; $7c59: $11 $12 $be
	jp nz, $0c14                                     ; $7c5c: $c2 $14 $0c

	call nz, $0c14                                   ; $7c5f: $c4 $14 $0c
	jp nz, $0c11                                     ; $7c62: $c2 $11 $0c

	call nz, $0c11                                   ; $7c65: $c4 $11 $0c
	ld a, [hl]                                       ; $7c68: $7e
	dec e                                            ; $7c69: $1d
	nop                                              ; $7c6a: $00
	and d                                            ; $7c6b: $a2
	jp nz, $180d                                     ; $7c6c: $c2 $0d $18

	ld a, [hl]                                       ; $7c6f: $7e
	nop                                              ; $7c70: $00
	and b                                            ; $7c71: $a0
	db $fd                                           ; $7c72: $fd
	ret nc                                           ; $7c73: $d0

	or h                                             ; $7c74: $b4
	nop                                              ; $7c75: $00
	ld c, b                                          ; $7c76: $48
	cp $fb                                           ; $7c77: $fe $fb
	db $fd                                           ; $7c79: $fd
	sub [hl]                                         ; $7c7a: $96
	ld a, h                                          ; $7c7b: $7c
	ei                                               ; $7c7c: $fb
	rrca                                             ; $7c7d: $0f
	dec e                                            ; $7c7e: $1d

jr_032_7c7f:
	jr jr_032_7c81                                   ; $7c7f: $18 $00

jr_032_7c81:
	jr nc, jr_032_7c7f                               ; $7c81: $30 $fc

	db $fd                                           ; $7c83: $fd
	sbc l                                            ; $7c84: $9d
	ld a, h                                          ; $7c85: $7c
	db $fc                                           ; $7c86: $fc
	rlca                                             ; $7c87: $07
	rra                                              ; $7c88: $1f
	jr jr_032_7ca8                                   ; $7c89: $18 $1d

	inc c                                            ; $7c8b: $0c
	dec e                                            ; $7c8c: $1d
	inc c                                            ; $7c8d: $0c
	dec e                                            ; $7c8e: $1d
	jr jr_032_7cae                                   ; $7c8f: $18 $1d

	jr jr_032_7c93                                   ; $7c91: $18 $00

jr_032_7c93:
	jr nc, jr_032_7c93                               ; $7c93: $30 $fe

	rst $38                                          ; $7c95: $ff
	rra                                              ; $7c96: $1f
	jr jr_032_7cb6                                   ; $7c97: $18 $1d

	jr jr_032_7cb8                                   ; $7c99: $18 $1d

	jr @-$01                                         ; $7c9b: $18 $fd

	rra                                              ; $7c9d: $1f
	jr @+$1f                                         ; $7c9e: $18 $1d

	inc c                                            ; $7ca0: $0c
	dec e                                            ; $7ca1: $1d
	inc c                                            ; $7ca2: $0c
	dec e                                            ; $7ca3: $1d
	jr @+$21                                         ; $7ca4: $18 $1f

	jr @+$1f                                         ; $7ca6: $18 $1d

jr_032_7ca8:
	jr jr_032_7cc7                                   ; $7ca8: $18 $1d

	jr @-$01                                         ; $7caa: $18 $fd

	or h                                             ; $7cac: $b4
	sub c                                            ; $7cad: $91

jr_032_7cae:
	or c                                             ; $7cae: $b1
	nop                                              ; $7caf: $00
	ld [hl], d                                       ; $7cb0: $72
	ei                                               ; $7cb1: $fb
	db $fd                                           ; $7cb2: $fd
	add hl, bc                                       ; $7cb3: $09
	ld a, l                                          ; $7cb4: $7d
	ei                                               ; $7cb5: $fb

jr_032_7cb6:
	inc bc                                           ; $7cb6: $03
	ld a, [hl]                                       ; $7cb7: $7e

jr_032_7cb8:
	ld a, [de]                                       ; $7cb8: $1a
	nop                                              ; $7cb9: $00
	and b                                            ; $7cba: $a0
	db $10                                           ; $7cbb: $10
	ld b, $7d                                        ; $7cbc: $06 $7d
	inc bc                                           ; $7cbe: $03
	ld de, $7d0c                                     ; $7cbf: $11 $0c $7d
	dec b                                            ; $7cc2: $05
	db $10                                           ; $7cc3: $10
	ld b, $7d                                        ; $7cc4: $06 $7d
	rlca                                             ; $7cc6: $07

jr_032_7cc7:
	ld de, $7d0c                                     ; $7cc7: $11 $0c $7d
	add hl, bc                                       ; $7cca: $09
	db $10                                           ; $7ccb: $10
	ld b, $7d                                        ; $7ccc: $06 $7d
	ld a, [bc]                                       ; $7cce: $0a
	ld de, $7d0c                                     ; $7ccf: $11 $0c $7d
	dec bc                                           ; $7cd2: $0b
	db $10                                           ; $7cd3: $10
	ld b, $7d                                        ; $7cd4: $06 $7d
	inc c                                            ; $7cd6: $0c
	ld de, $be0c                                     ; $7cd7: $11 $0c $be
	inc bc                                           ; $7cda: $03
	ld [de], a                                       ; $7cdb: $12
	nop                                              ; $7cdc: $00
	ld [de], a                                       ; $7cdd: $12
	nop                                              ; $7cde: $00
	ld [de], a                                       ; $7cdf: $12
	nop                                              ; $7ce0: $00
	ld [de], a                                       ; $7ce1: $12
	nop                                              ; $7ce2: $00
	cp [hl]                                          ; $7ce3: $be
	cp $cd                                           ; $7ce4: $fe $cd
	pop de                                           ; $7ce6: $d1
	sub c                                            ; $7ce7: $91
	ld [hl], d                                       ; $7ce8: $72
	ld a, [hl]                                       ; $7ce9: $7e
	nop                                              ; $7cea: $00
	ld a, l                                          ; $7ceb: $7d
	ld [bc], a                                       ; $7cec: $02
	db $fc                                           ; $7ced: $fc
	db $fd                                           ; $7cee: $fd
	ld e, $7d                                        ; $7cef: $1e $7d
	db $fc                                           ; $7cf1: $fc
	inc b                                            ; $7cf2: $04
	ret z                                            ; $7cf3: $c8

	pop de                                           ; $7cf4: $d1
	sub b                                            ; $7cf5: $90
	ld a, [hl]                                       ; $7cf6: $7e
	dec e                                            ; $7cf7: $1d
	nop                                              ; $7cf8: $00
	and b                                            ; $7cf9: $a0
	ld [hl], b                                       ; $7cfa: $70
	inc d                                            ; $7cfb: $14
	jr nc, @-$2f                                     ; $7cfc: $30 $cf

	ld [$c860], sp                                   ; $7cfe: $08 $60 $c8
	inc d                                            ; $7d01: $14
	jr nc, jr_032_7d76                               ; $7d02: $30 $72

	ld a, [hl]                                       ; $7d04: $7e
	nop                                              ; $7d05: $00
	and b                                            ; $7d06: $a0
	cp $ff                                           ; $7d07: $fe $ff
	db $10                                           ; $7d09: $10
	ld b, $11                                        ; $7d0a: $06 $11
	inc c                                            ; $7d0c: $0c
	db $10                                           ; $7d0d: $10
	ld b, $11                                        ; $7d0e: $06 $11
	inc c                                            ; $7d10: $0c
	db $10                                           ; $7d11: $10
	ld b, $11                                        ; $7d12: $06 $11
	inc c                                            ; $7d14: $0c
	db $10                                           ; $7d15: $10
	ld b, $11                                        ; $7d16: $06 $11
	inc c                                            ; $7d18: $0c
	db $10                                           ; $7d19: $10
	inc c                                            ; $7d1a: $0c
	ld [de], a                                       ; $7d1b: $12
	inc c                                            ; $7d1c: $0c
	db $fd                                           ; $7d1d: $fd
	pop de                                           ; $7d1e: $d1
	call z, $0c1d                                    ; $7d1f: $cc $1d $0c
	call nz, $0c1d                                   ; $7d22: $c4 $1d $0c
	call z, $091d                                    ; $7d25: $cc $1d $09
	call nz, $091d                                   ; $7d28: $c4 $1d $09
	call z, $091d                                    ; $7d2b: $cc $1d $09
	call nz, $091d                                   ; $7d2e: $c4 $1d $09
	call z, $0a1d                                    ; $7d31: $cc $1d $0a
	call nz, $021d                                   ; $7d34: $c4 $1d $02
	call z, $0a1e                                    ; $7d37: $cc $1e $0a
	call nz, $021e                                   ; $7d3a: $c4 $1e $02
	call z, $0a1c                                    ; $7d3d: $cc $1c $0a
	call nz, $021c                                   ; $7d40: $c4 $1c $02
	db $fd                                           ; $7d43: $fd
	or h                                             ; $7d44: $b4
	sub c                                            ; $7d45: $91
	or c                                             ; $7d46: $b1
	inc bc                                           ; $7d47: $03

jr_032_7d48:
	ld [hl], d                                       ; $7d48: $72
	ei                                               ; $7d49: $fb
	db $fd                                           ; $7d4a: $fd
	or [hl]                                          ; $7d4b: $b6
	ld a, l                                          ; $7d4c: $7d
	ei                                               ; $7d4d: $fb
	inc bc                                           ; $7d4e: $03
	ld a, [hl]                                       ; $7d4f: $7e
	ld a, [de]                                       ; $7d50: $1a
	nop                                              ; $7d51: $00
	and b                                            ; $7d52: $a0
	ld hl, $7d06                                     ; $7d53: $21 $06 $7d
	inc bc                                           ; $7d56: $03
	ld [hl+], a                                      ; $7d57: $22
	inc c                                            ; $7d58: $0c
	ld a, l                                          ; $7d59: $7d
	dec b                                            ; $7d5a: $05
	ld hl, $7d06                                     ; $7d5b: $21 $06 $7d
	rlca                                             ; $7d5e: $07
	ld [hl+], a                                      ; $7d5f: $22
	inc c                                            ; $7d60: $0c
	ld a, l                                          ; $7d61: $7d
	add hl, bc                                       ; $7d62: $09
	ld hl, $7d06                                     ; $7d63: $21 $06 $7d
	ld a, [bc]                                       ; $7d66: $0a
	ld [hl+], a                                      ; $7d67: $22
	inc c                                            ; $7d68: $0c
	ld a, l                                          ; $7d69: $7d
	dec bc                                           ; $7d6a: $0b
	ld hl, $7d06                                     ; $7d6b: $21 $06 $7d
	inc c                                            ; $7d6e: $0c
	ld [hl+], a                                      ; $7d6f: $22
	inc c                                            ; $7d70: $0c
	cp [hl]                                          ; $7d71: $be
	inc bc                                           ; $7d72: $03
	inc hl                                           ; $7d73: $23
	nop                                              ; $7d74: $00
	inc hl                                           ; $7d75: $23

jr_032_7d76:
	nop                                              ; $7d76: $00
	inc hl                                           ; $7d77: $23
	nop                                              ; $7d78: $00
	inc hl                                           ; $7d79: $23
	nop                                              ; $7d7a: $00
	cp [hl]                                          ; $7d7b: $be
	cp $cd                                           ; $7d7c: $fe $cd
	pop de                                           ; $7d7e: $d1
	sub b                                            ; $7d7f: $90
	ld [hl], d                                       ; $7d80: $72
	ld a, [hl]                                       ; $7d81: $7e
	nop                                              ; $7d82: $00
	ld a, l                                          ; $7d83: $7d
	nop                                              ; $7d84: $00
	db $fc                                           ; $7d85: $fc
	db $fd                                           ; $7d86: $fd
	bit 7, l                                         ; $7d87: $cb $7d
	db $fc                                           ; $7d89: $fc
	inc b                                            ; $7d8a: $04
	pop de                                           ; $7d8b: $d1
	sub c                                            ; $7d8c: $91
	sub a                                            ; $7d8d: $97
	ld a, e                                          ; $7d8e: $7b
	ld [hl], d                                       ; $7d8f: $72
	ld a, l                                          ; $7d90: $7d
	ld [bc], a                                       ; $7d91: $02
	add hl, hl                                       ; $7d92: $29
	jr @+$7f                                         ; $7d93: $18 $7d

	nop                                              ; $7d95: $00
	ld [hl+], a                                      ; $7d96: $22
	jr jr_032_7e16                                   ; $7d97: $18 $7d

	inc bc                                           ; $7d99: $03
	jr z, jr_032_7db4                                ; $7d9a: $28 $18

	ld a, l                                          ; $7d9c: $7d
	ld bc, $1822                                     ; $7d9d: $01 $22 $18
	ld a, l                                          ; $7da0: $7d
	ld [bc], a                                       ; $7da1: $02
	daa                                              ; $7da2: $27
	jr jr_032_7e22                                   ; $7da3: $18 $7d

	ld bc, $1822                                     ; $7da5: $01 $22 $18
	ld a, l                                          ; $7da8: $7d
	inc bc                                           ; $7da9: $03
	add hl, hl                                       ; $7daa: $29
	jr @+$7f                                         ; $7dab: $18 $7d

	nop                                              ; $7dad: $00
	ld [hl+], a                                      ; $7dae: $22
	jr jr_032_7d48                                   ; $7daf: $18 $97

	nop                                              ; $7db1: $00
	ld a, l                                          ; $7db2: $7d
	nop                                              ; $7db3: $00

jr_032_7db4:
	cp $ff                                           ; $7db4: $fe $ff
	ld hl, $2206                                     ; $7db6: $21 $06 $22
	inc c                                            ; $7db9: $0c
	ld hl, $2206                                     ; $7dba: $21 $06 $22
	inc c                                            ; $7dbd: $0c
	ld hl, $2206                                     ; $7dbe: $21 $06 $22
	inc c                                            ; $7dc1: $0c
	ld hl, $2206                                     ; $7dc2: $21 $06 $22
	inc c                                            ; $7dc5: $0c

Jump_032_7dc6:
	ld hl, $230c                                     ; $7dc6: $21 $0c $23
	inc c                                            ; $7dc9: $0c
	db $fd                                           ; $7dca: $fd
	pop de                                           ; $7dcb: $d1
	sra [hl]                                         ; $7dcc: $cb $2e
	inc c                                            ; $7dce: $0c
	call nz, $0c2e                                   ; $7dcf: $c4 $2e $0c
	sra [hl]                                         ; $7dd2: $cb $2e
	add hl, bc                                       ; $7dd4: $09
	call nz, $092e                                   ; $7dd5: $c4 $2e $09
	sra [hl]                                         ; $7dd8: $cb $2e
	add hl, bc                                       ; $7dda: $09
	call nz, $092e                                   ; $7ddb: $c4 $2e $09
	jp z, $0a2e                                      ; $7dde: $ca $2e $0a

	call nz, $022e                                   ; $7de1: $c4 $2e $02
	sra a                                            ; $7de4: $cb $2f
	ld a, [bc]                                       ; $7de6: $0a
	call nz, $022f                                   ; $7de7: $c4 $2f $02
	sra h                                            ; $7dea: $cb $2c
	ld a, [bc]                                       ; $7dec: $0a
	call nz, $022c                                   ; $7ded: $c4 $2c $02
	db $fd                                           ; $7df0: $fd
	or h                                             ; $7df1: $b4
	sub c                                            ; $7df2: $91
	ld hl, $7218                                     ; $7df3: $21 $18 $72
	ei                                               ; $7df6: $fb
	db $fd                                           ; $7df7: $fd
	sbc b                                            ; $7df8: $98
	ld a, [hl]                                       ; $7df9: $7e
	ei                                               ; $7dfa: $fb
	inc bc                                           ; $7dfb: $03
	ld a, [bc]                                       ; $7dfc: $0a
	ld c, b                                          ; $7dfd: $48
	call nz, $0322                                   ; $7dfe: $c4 $22 $03
	add $0a                                          ; $7e01: $c6 $0a
	inc bc                                           ; $7e03: $03
	call nz, $0329                                   ; $7e04: $c4 $29 $03
	add $22                                          ; $7e07: $c6 $22
	inc bc                                           ; $7e09: $03
	call nz, $032e                                   ; $7e0a: $c4 $2e $03
	add $29                                          ; $7e0d: $c6 $29
	inc bc                                           ; $7e0f: $03
	call nz, $0335                                   ; $7e10: $c4 $35 $03
	add $2e                                          ; $7e13: $c6 $2e
	inc bc                                           ; $7e15: $03

jr_032_7e16:
	cp $c2                                           ; $7e16: $fe $c2
	pop de                                           ; $7e18: $d1
	ld a, a                                          ; $7e19: $7f
	rra                                              ; $7e1a: $1f
	ld [hl], d                                       ; $7e1b: $72
	db $fc                                           ; $7e1c: $fc
	db $fd                                           ; $7e1d: $fd
	and e                                            ; $7e1e: $a3
	ld a, [hl]                                       ; $7e1f: $7e
	db $fc                                           ; $7e20: $fc
	inc b                                            ; $7e21: $04

jr_032_7e22:
	jp nz, $d272                                     ; $7e22: $c2 $72 $d2

	ld a, a                                          ; $7e25: $7f
	jr nz, jr_032_7e62                               ; $7e26: $20 $3a

	inc bc                                           ; $7e28: $03
	add $3a                                          ; $7e29: $c6 $3a
	inc bc                                           ; $7e2b: $03
	jp nz, $063a                                     ; $7e2c: $c2 $3a $06

	add $3a                                          ; $7e2f: $c6 $3a
	ld b, $c2                                        ; $7e31: $06 $c2
	ld a, [hl-]                                      ; $7e33: $3a
	inc bc                                           ; $7e34: $03
	add $3a                                          ; $7e35: $c6 $3a
	inc bc                                           ; $7e37: $03
	jp nz, $063a                                     ; $7e38: $c2 $3a $06

	add $3a                                          ; $7e3b: $c6 $3a
	ld b, $d3                                        ; $7e3d: $06 $d3
	ld a, a                                          ; $7e3f: $7f
	inc e                                            ; $7e40: $1c
	dec a                                            ; $7e41: $3d
	inc c                                            ; $7e42: $0c
	add $3d                                          ; $7e43: $c6 $3d
	inc c                                            ; $7e45: $0c
	jp nz, $063d                                     ; $7e46: $c2 $3d $06

	add $3d                                          ; $7e49: $c6 $3d
	ld b, $c2                                        ; $7e4b: $06 $c2
	dec a                                            ; $7e4d: $3d
	ld b, $c6                                        ; $7e4e: $06 $c6
	dec a                                            ; $7e50: $3d
	ld b, $c2                                        ; $7e51: $06 $c2
	dec a                                            ; $7e53: $3d
	inc bc                                           ; $7e54: $03
	add $3d                                          ; $7e55: $c6 $3d
	inc bc                                           ; $7e57: $03
	jp nz, $033d                                     ; $7e58: $c2 $3d $03

	add $3d                                          ; $7e5b: $c6 $3d
	inc bc                                           ; $7e5d: $03
	jp nc, $3cc2                                     ; $7e5e: $d2 $c2 $3c

	inc bc                                           ; $7e61: $03

jr_032_7e62:
	add $3c                                          ; $7e62: $c6 $3c
	inc bc                                           ; $7e64: $03

Jump_032_7e65:
	jp nz, $063c                                     ; $7e65: $c2 $3c $06

	add $3c                                          ; $7e68: $c6 $3c
	ld b, $c2                                        ; $7e6a: $06 $c2
	inc a                                            ; $7e6c: $3c
	inc bc                                           ; $7e6d: $03
	add $3c                                          ; $7e6e: $c6 $3c
	inc bc                                           ; $7e70: $03
	jp nz, $063c                                     ; $7e71: $c2 $3c $06

	add $3c                                          ; $7e74: $c6 $3c
	ld b, $d3                                        ; $7e76: $06 $d3
	jp nz, $0c3b                                     ; $7e78: $c2 $3b $0c

	add $3b                                          ; $7e7b: $c6 $3b
	inc c                                            ; $7e7d: $0c
	jp nz, $063b                                     ; $7e7e: $c2 $3b $06

Jump_032_7e81:
	add $3b                                          ; $7e81: $c6 $3b
	ld b, $c2                                        ; $7e83: $06 $c2
	dec sp                                           ; $7e85: $3b
	ld b, $c6                                        ; $7e86: $06 $c6
	dec sp                                           ; $7e88: $3b
	ld b, $c2                                        ; $7e89: $06 $c2
	dec sp                                           ; $7e8b: $3b
	inc bc                                           ; $7e8c: $03
	add $3b                                          ; $7e8d: $c6 $3b

jr_032_7e8f:
	inc bc                                           ; $7e8f: $03
	jp nz, $033b                                     ; $7e90: $c2 $3b $03

Jump_032_7e93:
	add $3b                                          ; $7e93: $c6 $3b
	inc bc                                           ; $7e95: $03
	cp $ff                                           ; $7e96: $fe $ff
	ld a, [bc]                                       ; $7e98: $0a
	ld c, b                                          ; $7e99: $48
	ld a, [hl]                                       ; $7e9a: $7e
	dec e                                            ; $7e9b: $1d
	nop                                              ; $7e9c: $00
	and a                                            ; $7e9d: $a7
	dec bc                                           ; $7e9e: $0b
	jr jr_032_7f1f                                   ; $7e9f: $18 $7e

	nop                                              ; $7ea1: $00
	db $fd                                           ; $7ea2: $fd
	pop de                                           ; $7ea3: $d1
	jp nz, $180a                                     ; $7ea4: $c2 $0a $18

	add $0a                                          ; $7ea7: $c6 $0a
	jr jr_032_7eab                                   ; $7ea9: $18 $00

jr_032_7eab:
	jr @-$3c                                         ; $7eab: $18 $c2

jr_032_7ead:
	dec bc                                           ; $7ead: $0b
	ld a, [bc]                                       ; $7eae: $0a
	add $0b                                          ; $7eaf: $c6 $0b
	ld [bc], a                                       ; $7eb1: $02
	jp nz, $0a08                                     ; $7eb2: $c2 $08 $0a

	add $08                                          ; $7eb5: $c6 $08
	ld [bc], a                                       ; $7eb7: $02
	db $fd                                           ; $7eb8: $fd
	ret nc                                           ; $7eb9: $d0

	sub c                                            ; $7eba: $91
	ei                                               ; $7ebb: $fb
	db $fd                                           ; $7ebc: $fd
	pop af                                           ; $7ebd: $f1
	ld a, [hl]                                       ; $7ebe: $7e
	ei                                               ; $7ebf: $fb

jr_032_7ec0:
	inc bc                                           ; $7ec0: $03
	ei                                               ; $7ec1: $fb
	cpl                                              ; $7ec2: $2f
	ld b, $30                                        ; $7ec3: $06 $30
	ld b, $fb                                        ; $7ec5: $06 $fb
	dec b                                            ; $7ec7: $05
	cp [hl]                                          ; $7ec8: $be
	ld b, $2f                                        ; $7ec9: $06 $2f
	jr nz, jr_032_7eed                               ; $7ecb: $20 $20

	jr nz, jr_032_7eef                               ; $7ecd: $20 $20

	jr nz, jr_032_7e8f                               ; $7ecf: $20 $be

	cp $fc                                           ; $7ed1: $fe $fc
	db $fd                                           ; $7ed3: $fd
	dec b                                            ; $7ed4: $05
	ld a, a                                          ; $7ed5: $7f
	db $fc                                           ; $7ed6: $fc
	inc b                                            ; $7ed7: $04
	cp [hl]                                          ; $7ed8: $be
	jr jr_032_7efa                                   ; $7ed9: $18 $1f

	rra                                              ; $7edb: $1f
	rra                                              ; $7edc: $1f
	rra                                              ; $7edd: $1f
	cp [hl]                                          ; $7ede: $be
	cp [hl]                                          ; $7edf: $be
	inc c                                            ; $7ee0: $0c
	rra                                              ; $7ee1: $1f
	dec hl                                           ; $7ee2: $2b
	rra                                              ; $7ee3: $1f
	dec hl                                           ; $7ee4: $2b
	rra                                              ; $7ee5: $1f
	dec hl                                           ; $7ee6: $2b
	cp [hl]                                          ; $7ee7: $be
	cp [hl]                                          ; $7ee8: $be
	ld b, $20                                        ; $7ee9: $06 $20
	jr nz, @+$22                                     ; $7eeb: $20 $20

jr_032_7eed:
	jr nz, jr_032_7ead                               ; $7eed: $20 $be

jr_032_7eef:
	cp $ff                                           ; $7eef: $fe $ff
	cp [hl]                                          ; $7ef1: $be
	ld b, $2f                                        ; $7ef2: $06 $2f
	jr nc, jr_032_7f25                               ; $7ef4: $30 $2f

	jr nc, jr_032_7f27                               ; $7ef6: $30 $2f

	jr nc, jr_032_7f29                               ; $7ef8: $30 $2f

jr_032_7efa:
	jr nc, jr_032_7f2b                               ; $7efa: $30 $2f

	jr nc, jr_032_7f2d                               ; $7efc: $30 $2f

	jr nc, jr_032_7f2f                               ; $7efe: $30 $2f

	jr nc, jr_032_7ec0                               ; $7f00: $30 $be

	ld e, $0c                                        ; $7f02: $1e $0c
	db $fd                                           ; $7f04: $fd
	rra                                              ; $7f05: $1f
	inc c                                            ; $7f06: $0c
	rra                                              ; $7f07: $1f
	inc c                                            ; $7f08: $0c
	jr nz, jr_032_7f17                               ; $7f09: $20 $0c

	cp [hl]                                          ; $7f0b: $be
	ld b, $1f                                        ; $7f0c: $06 $1f
	jr nz, jr_032_7f2f                               ; $7f0e: $20 $1f

	jr nz, @-$40                                     ; $7f10: $20 $be

	rra                                              ; $7f12: $1f
	inc c                                            ; $7f13: $0c
	jr nz, jr_032_7f22                               ; $7f14: $20 $0c

	rra                                              ; $7f16: $1f

jr_032_7f17:
	ld b, $20                                        ; $7f17: $06 $20
	ld b, $fd                                        ; $7f19: $06 $fd
	rst $38                                          ; $7f1b: $ff
	rst $38                                          ; $7f1c: $ff
	rst $38                                          ; $7f1d: $ff
	rst $38                                          ; $7f1e: $ff

jr_032_7f1f:
	rst $38                                          ; $7f1f: $ff
	rst $38                                          ; $7f20: $ff
	rst $38                                          ; $7f21: $ff

jr_032_7f22:
	rst $38                                          ; $7f22: $ff
	rst $38                                          ; $7f23: $ff
	rst $38                                          ; $7f24: $ff

jr_032_7f25:
	rst $38                                          ; $7f25: $ff
	rst $38                                          ; $7f26: $ff

jr_032_7f27:
	rst $38                                          ; $7f27: $ff
	rst $38                                          ; $7f28: $ff

jr_032_7f29:
	rst $38                                          ; $7f29: $ff
	rst $38                                          ; $7f2a: $ff

jr_032_7f2b:
	rst $38                                          ; $7f2b: $ff
	rst $38                                          ; $7f2c: $ff

jr_032_7f2d:
	rst $38                                          ; $7f2d: $ff
	rst $38                                          ; $7f2e: $ff

jr_032_7f2f:
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
