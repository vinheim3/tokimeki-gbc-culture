; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

	ld l, d                                          ; $4000: $6a
	nop                                              ; $4001: $00
	sbc h                                            ; $4002: $9c
	ld [$0800], sp                                   ; $4003: $08 $00 $08
	ld a, [$0499]                                    ; $4006: $fa $99 $04
	ld [bc], a                                       ; $4009: $02
	ld h, h                                          ; $400a: $64
	dec h                                            ; $400b: $25
	ld [hl+], a                                      ; $400c: $22
	inc hl                                           ; $400d: $23
	ld h, a                                          ; $400e: $67
	ldh a, [$df]                                     ; $400f: $f0 $df
	ld b, $98                                        ; $4011: $06 $98
	ld a, [bc]                                       ; $4013: $0a
	ld [$2362], sp                                   ; $4014: $08 $62 $23
	jr nz, jr_019_403a                               ; $4017: $20 $21

	ld [$ef6b], sp                                   ; $4019: $08 $6b $ef
	sub a                                            ; $401c: $97
	inc c                                            ; $401d: $0c
	db $10                                           ; $401e: $10
	ld c, $14                                        ; $401f: $0e $14
	inc hl                                           ; $4021: $23
	ld [hl+], a                                      ; $4022: $22
	inc hl                                           ; $4023: $23
	ld [hl+], a                                      ; $4024: $22
	ld a, e                                          ; $4025: $7b
	ldh a, [c]                                       ; $4026: $f2
	ld [hl], e                                       ; $4027: $73
	ldh a, [$9b]                                     ; $4028: $f0 $9b
	ld [de], a                                       ; $402a: $12
	jr jr_019_4043                                   ; $402b: $18 $16

	ld a, [de]                                       ; $402d: $1a
	ld a, e                                          ; $402e: $7b
	ldh a, [$9e]                                     ; $402f: $f0 $9e
	ld h, h                                          ; $4031: $64
	cp $73                                           ; $4032: $fe $73
	ldh a, [$9b]                                     ; $4034: $f0 $9b
	ld a, [de]                                       ; $4036: $1a
	inc e                                            ; $4037: $1c
	ld e, $20                                        ; $4038: $1e $20

jr_019_403a:
	sbc $25                                          ; $403a: $de $25
	sbc [hl]                                         ; $403c: $9e
	ld h, d                                          ; $403d: $62
	ld h, a                                          ; $403e: $67
	ldh [$9b], a                                     ; $403f: $e0 $9b
	jr nz, jr_019_4067                               ; $4041: $20 $24

jr_019_4043:
	ld [hl+], a                                      ; $4043: $22

Call_019_4044:
	jr z, jr_019_409d                                ; $4044: $28 $57

	ret nc                                           ; $4046: $d0

	sbc e                                            ; $4047: $9b
	ld h, $2c                                        ; $4048: $26 $2c
	ld a, [hl+]                                      ; $404a: $2a
	ld l, $7b                                        ; $404b: $2e $7b
	ldh a, [$9e]                                     ; $404d: $f0 $9e
	ld h, b                                          ; $404f: $60
	ld h, a                                          ; $4050: $67
	ldh a, [$97]                                     ; $4051: $f0 $97
	ld l, $32                                        ; $4053: $2e $32
	jr nc, jr_019_408d                               ; $4055: $30 $36

	ld hl, $2120                                     ; $4057: $21 $20 $21
	jr nz, @+$69                                     ; $405a: $20 $67

	ldh a, [hDisp1_OBP0]                                     ; $405c: $f0 $93
	inc [hl]                                         ; $405e: $34
	ld a, [hl-]                                      ; $405f: $3a
	jr c, jr_019_40a0                                ; $4060: $38 $3e

	ld hl, $2322                                     ; $4062: $21 $22 $23
	jr nz, jr_019_4067                               ; $4065: $20 $00

jr_019_4067:
	nop                                              ; $4067: $00
	inc a                                            ; $4068: $3c
	ld hl, $80df                                     ; $4069: $21 $df $80
	cp $9a                                           ; $406c: $fe $9a
	ld bc, $0200                                     ; $406e: $01 $00 $02
	ld a, [hl-]                                      ; $4071: $3a
	ld a, [bc]                                       ; $4072: $0a
	ld [hl], a                                       ; $4073: $77
	ld hl, sp-$64                                    ; $4074: $f8 $9c
	ld bc, $3b02                                     ; $4076: $01 $02 $3b
	call c, $9e0a                                    ; $4079: $dc $0a $9e
	ld a, [hl-]                                      ; $407c: $3a
	cp $7f                                           ; $407d: $fe $7f
	or $7f                                           ; $407f: $f6 $7f
	cp $77                                           ; $4081: $fe $77
	ld hl, sp-$0a                                    ; $4083: $f8 $f6
	sbc d                                            ; $4085: $9a
	inc bc                                           ; $4086: $03
	ld b, $0c                                        ; $4087: $06 $0c
	jr @+$32                                         ; $4089: $18 $30

	rst FarCall                                          ; $408b: $f7
	sbc l                                            ; $408c: $9d

jr_019_408d:
	rrca                                             ; $408d: $0f
	rlca                                             ; $408e: $07
	ldh a, [$9c]                                     ; $408f: $f0 $9c
	ld a, b                                          ; $4091: $78
	inc b                                            ; $4092: $04
	inc c                                            ; $4093: $0c
	ld sp, hl                                        ; $4094: $f9
	sbc e                                            ; $4095: $9b
	jr jr_019_40cc                                   ; $4096: $18 $34

	add sp, $10                                      ; $4098: $e8 $10
	ld a, [$069a]                                    ; $409a: $fa $9a $06

jr_019_409d:
	add hl, bc                                       ; $409d: $09
	rla                                              ; $409e: $17
	rra                                              ; $409f: $1f

jr_019_40a0:
	rra                                              ; $40a0: $1f
	ld h, a                                          ; $40a1: $67
	ld hl, sp-$66                                    ; $40a2: $f8 $9a
	rra                                              ; $40a4: $1f
	rrca                                             ; $40a5: $0f
	rlca                                             ; $40a6: $07
	inc bc                                           ; $40a7: $03
	ld bc, $67fe                                     ; $40a8: $01 $fe $67
	ld hl, sp+$73                                    ; $40ab: $f8 $73
	add sp, -$21                                     ; $40ad: $e8 $df
	add hl, de                                       ; $40af: $19
	sbc [hl]                                         ; $40b0: $9e
	ld c, $f6                                        ; $40b1: $0e $f6
	sbc [hl]                                         ; $40b3: $9e
	ld b, $7b                                        ; $40b4: $06 $7b
	ld l, [hl]                                       ; $40b6: $6e
	ld [hl], e                                       ; $40b7: $73
	jp hl                                            ; $40b8: $e9


	sbc [hl]                                         ; $40b9: $9e
	ld b, $6f                                        ; $40ba: $06 $6f
	rst SubAFromDE                                          ; $40bc: $df
	sbc l                                            ; $40bd: $9d
	jr nz, jr_019_40f0                               ; $40be: $20 $30

	sbc $28                                          ; $40c0: $de $28
	cp $9d                                           ; $40c2: $fe $9d
	ld d, b                                          ; $40c4: $50
	ld [$04de], sp                                   ; $40c5: $08 $de $04
	sub h                                            ; $40c8: $94
	jr c, jr_019_413b                                ; $40c9: $38 $70

	nop                                              ; $40cb: $00

jr_019_40cc:
	ld [$fcfc], sp                                   ; $40cc: $08 $fc $fc
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	ld b, h                                          ; $40d1: $44
	adc b                                            ; $40d2: $88
	ld [hl], b                                       ; $40d3: $70
	ld [hl], e                                       ; $40d4: $73
	ld hl, sp-$10                                    ; $40d5: $f8 $f0
	sbc l                                            ; $40d7: $9d
	db $10                                           ; $40d8: $10
	ld b, b                                          ; $40d9: $40
	ld c, a                                          ; $40da: $4f
	ld hl, sp+$77                                    ; $40db: $f8 $77
	ld d, [hl]                                       ; $40dd: $56
	sbc h                                            ; $40de: $9c
	ld [$0800], sp                                   ; $40df: $08 $00 $08
	db $fc                                           ; $40e2: $fc
	ld [hl], a                                       ; $40e3: $77
	ld hl, sp+$57                                    ; $40e4: $f8 $57
	db $f4                                           ; $40e6: $f4
	ld a, [$f09e]                                    ; $40e7: $fa $9e $f0
	ld sp, hl                                        ; $40ea: $f9
	sbc [hl]                                         ; $40eb: $9e
	jr nz, jr_019_4169                               ; $40ec: $20 $7b

	cp $37                                           ; $40ee: $fe $37

jr_019_40f0:
	db $f4                                           ; $40f0: $f4
	ei                                               ; $40f1: $fb
	sbc e                                            ; $40f2: $9b
	rlca                                             ; $40f3: $07
	inc b                                            ; $40f4: $04
	inc b                                            ; $40f5: $04
	rlca                                             ; $40f6: $07
	ld h, e                                          ; $40f7: $63
	inc c                                            ; $40f8: $0c
	sbc $07                                          ; $40f9: $de $07

jr_019_40fb:
	ld a, a                                          ; $40fb: $7f
	ldh a, [c]                                       ; $40fc: $f2
	di                                               ; $40fd: $f3
	sbc d                                            ; $40fe: $9a
	ldh a, [rAUD2LOW]                                ; $40ff: $f0 $18
	jr jr_019_40fb                                   ; $4101: $18 $f8

	ld hl, sp-$07                                    ; $4103: $f8 $f9
	sbc $f8                                          ; $4105: $de $f8
	sbc [hl]                                         ; $4107: $9e
	jr jr_019_416d                                   ; $4108: $18 $63

	xor b                                            ; $410a: $a8
	ld l, a                                          ; $410b: $6f
	adc $9b                                          ; $410c: $ce $9b
	ld [$0406], sp                                   ; $410e: $08 $06 $04
	ld [$ec66], sp                                   ; $4111: $08 $66 $ec
	ld a, a                                          ; $4114: $7f
	ld h, c                                          ; $4115: $61
	sbc h                                            ; $4116: $9c
	ld [de], a                                       ; $4117: $12
	ld a, [bc]                                       ; $4118: $0a
	dec b                                            ; $4119: $05
	di                                               ; $411a: $f3
	sbc d                                            ; $411b: $9a
	ldh [rAUD1SWEEP], a                              ; $411c: $e0 $10
	ld h, b                                          ; $411e: $60
	jr nz, jr_019_4131                               ; $411f: $20 $10

	ld h, e                                          ; $4121: $63
	ld l, h                                          ; $4122: $6c
	rst SubAFromDE                                          ; $4123: $df
	xor b                                            ; $4124: $a8
	sbc h                                            ; $4125: $9c
	or b                                             ; $4126: $b0
	and b                                            ; $4127: $a0
	and b                                            ; $4128: $a0
	ld a, e                                          ; $4129: $7b
	dec a                                            ; $412a: $3d
	sbc [hl]                                         ; $412b: $9e
	rst $38                                          ; $412c: $ff
	jp c, $df80                                      ; $412d: $da $80 $df

	rst $38                                          ; $4130: $ff

jr_019_4131:
	db $db                                           ; $4131: $db
	ret nz                                           ; $4132: $c0

	ld h, a                                          ; $4133: $67
	pop af                                           ; $4134: $f1
	db $db                                           ; $4135: $db
	ret nz                                           ; $4136: $c0

	rst SubAFromDE                                          ; $4137: $df
	rst $38                                          ; $4138: $ff
	ldh a, [$99]                                     ; $4139: $f0 $99

jr_019_413b:
	ld h, b                                          ; $413b: $60
	ld a, b                                          ; $413c: $78
	ld a, [hl]                                       ; $413d: $7e
	ld a, [hl]                                       ; $413e: $7e
	ld a, b                                          ; $413f: $78
	ld h, b                                          ; $4140: $60

jr_019_4141:
	rst SubAFromBC                                          ; $4141: $e7
	rst SubAFromDE                                          ; $4142: $df
	ld a, [hl]                                       ; $4143: $7e
	rst SubAFromDE                                          ; $4144: $df
	inc a                                            ; $4145: $3c
	rst SubAFromDE                                          ; $4146: $df
	jr jr_019_4141                                   ; $4147: $18 $f8

	dec [hl]                                         ; $4149: $35
	ld bc, $9cfa                                     ; $414a: $01 $fa $9c
	ld e, $00                                        ; $414d: $1e $00
	ld hl, $fe57                                     ; $414f: $21 $57 $fe
	rst SubAFromDE                                          ; $4152: $df
	ld e, $df                                        ; $4153: $1e $df
	ld hl, $dff1                                     ; $4155: $21 $f1 $df
	inc c                                            ; $4158: $0c
	rst SubAFromDE                                          ; $4159: $df
	inc b                                            ; $415a: $04
	rst SubAFromDE                                          ; $415b: $df
	inc c                                            ; $415c: $0c
	rst SubAFromDE                                          ; $415d: $df
	ld [$0cdb], sp                                   ; $415e: $08 $db $0c
	add sp, -$66                                     ; $4161: $e8 $9a
	ld [hl], b                                       ; $4163: $70
	nop                                              ; $4164: $00

jr_019_4165:
	ld h, b                                          ; $4165: $60
	nop                                              ; $4166: $00
	ld d, b                                          ; $4167: $50
	ld a, e                                          ; $4168: $7b

jr_019_4169:
	ld a, [$94f1]                                    ; $4169: $fa $f1 $94
	ld [bc], a                                       ; $416c: $02

jr_019_416d:
	nop                                              ; $416d: $00
	inc d                                            ; $416e: $14
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	ld [hl+], a                                      ; $4171: $22
	ld [hl+], a                                      ; $4172: $22
	rra                                              ; $4173: $1f
	dec a                                            ; $4174: $3d
	inc b                                            ; $4175: $04
	ld [hl-], a                                      ; $4176: $32
	ld [hl], a                                       ; $4177: $77
	or $7f                                           ; $4178: $f6 $7f

jr_019_417a:
	ldh a, [$9d]                                     ; $417a: $f0 $9d
	jr jr_019_41a2                                   ; $417c: $18 $24

	ld sp, hl                                        ; $417e: $f9
	rst SubAFromDE                                          ; $417f: $df
	ld [$1cdf], sp                                   ; $4180: $08 $df $1c
	rst SubAFromDE                                          ; $4183: $df
	jr c, jr_019_4165                                ; $4184: $38 $df

jr_019_4186:
	ld [hl], b                                       ; $4186: $70
	rst SubAFromDE                                          ; $4187: $df
	ldh [$9d], a                                     ; $4188: $e0 $9d
	ret nz                                           ; $418a: $c0

	ld b, b                                          ; $418b: $40
	db $fc                                           ; $418c: $fc
	sbc b                                            ; $418d: $98
	and b                                            ; $418e: $a0
	nop                                              ; $418f: $00
	ld [hl], b                                       ; $4190: $70
	ld b, h                                          ; $4191: $44
	jr c, jr_019_4194                                ; $4192: $38 $00

jr_019_4194:
	jr nz, jr_019_4186                               ; $4194: $20 $f0

	sbc d                                            ; $4196: $9a
	inc e                                            ; $4197: $1c
	ld bc, $0123                                     ; $4198: $01 $23 $01
	ld hl, $e87b                                     ; $419b: $21 $7b $e8
	sbc [hl]                                         ; $419e: $9e
	db $10                                           ; $419f: $10
	db $ec                                           ; $41a0: $ec
	ld a, a                                          ; $41a1: $7f

jr_019_41a2:
	adc $9a                                          ; $41a2: $ce $9a
	ld b, h                                          ; $41a4: $44
	add b                                            ; $41a5: $80
	ret nz                                           ; $41a6: $c0

	add b                                            ; $41a7: $80
	ret nz                                           ; $41a8: $c0

	dec sp                                           ; $41a9: $3b
	ret z                                            ; $41aa: $c8

	ld a, a                                          ; $41ab: $7f
	ld b, h                                          ; $41ac: $44
	sbc d                                            ; $41ad: $9a
	ld [de], a                                       ; $41ae: $12
	ld e, $21                                        ; $41af: $1e $21
	dec l                                            ; $41b1: $2d
	nop                                              ; $41b2: $00
	ld [hl], a                                       ; $41b3: $77
	cp $7f                                           ; $41b4: $fe $7f
	ld hl, sp+$7b                                    ; $41b6: $f8 $7b
	db $fd                                           ; $41b8: $fd
	sbc h                                            ; $41b9: $9c
	ld hl, $3f3f                                     ; $41ba: $21 $3f $3f
	db $dd                                           ; $41bd: $dd
	ld e, $f7                                        ; $41be: $1e $f7
	sbc c                                            ; $41c0: $99
	ld c, $10                                        ; $41c1: $0e $10
	ld e, $21                                        ; $41c3: $1e $21
	dec [hl]                                         ; $41c5: $35
	nop                                              ; $41c6: $00
	ld [hl], a                                       ; $41c7: $77
	cp $93                                           ; $41c8: $fe $93
	rra                                              ; $41ca: $1f
	jr nz, jr_019_41db                               ; $41cb: $20 $0e

	ld de, $0000                                     ; $41cd: $11 $00 $00
	rra                                              ; $41d0: $1f
	rra                                              ; $41d1: $1f
	ccf                                              ; $41d2: $3f
	ccf                                              ; $41d3: $3f
	ld a, $3e                                        ; $41d4: $3e $3e
	ld e, e                                          ; $41d6: $5b
	ret nz                                           ; $41d7: $c0

	sbc d                                            ; $41d8: $9a
	db $10                                           ; $41d9: $10
	inc e                                            ; $41da: $1c

jr_019_41db:
	jr nz, jr_019_4219                               ; $41db: $20 $3c

	add b                                            ; $41dd: $80
	ld [hl], a                                       ; $41de: $77

jr_019_41df:
	cp $93                                           ; $41df: $fe $93
	inc e                                            ; $41e1: $1c
	and b                                            ; $41e2: $a0
	nop                                              ; $41e3: $00
	inc e                                            ; $41e4: $1c
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	inc a                                            ; $41e7: $3c
	inc a                                            ; $41e8: $3c
	ld a, h                                          ; $41e9: $7c
	ld a, h                                          ; $41ea: $7c
	ld l, h                                          ; $41eb: $6c
	ld l, h                                          ; $41ec: $6c
	ld sp, hl                                        ; $41ed: $f9
	rst SubAFromDE                                          ; $41ee: $df
	jr nc, jr_019_417a                               ; $41ef: $30 $89

	nop                                              ; $41f1: $00
	ld bc, $1b18                                     ; $41f2: $01 $18 $1b
	ld bc, $0102                                     ; $41f5: $01 $02 $01
	nop                                              ; $41f8: $00
	dec c                                            ; $41f9: $0d
	inc c                                            ; $41fa: $0c
	dec sp                                           ; $41fb: $3b
	dec sp                                           ; $41fc: $3b
	ld c, $0e                                        ; $41fd: $0e $0e
	inc sp                                           ; $41ff: $33
	inc sp                                           ; $4200: $33
	dec c                                            ; $4201: $0d
	dec c                                            ; $4202: $0d
	ld [bc], a                                       ; $4203: $02
	ld [bc], a                                       ; $4204: $02
	ld bc, $f801                                     ; $4205: $01 $01 $f8
	adc b                                            ; $4208: $88
	ldh [rSVBK], a                                   ; $4209: $e0 $70
	adc b                                            ; $420b: $88
	ld a, b                                          ; $420c: $78
	inc b                                            ; $420d: $04
	inc a                                            ; $420e: $3c
	nop                                              ; $420f: $00
	db $ec                                           ; $4210: $ec
	nop                                              ; $4211: $00
	ld h, h                                          ; $4212: $64
	nop                                              ; $4213: $00
	jr c, jr_019_421a                                ; $4214: $38 $04

	ldh a, [hDisp0_WY]                                     ; $4216: $f0 $88
	ld b, b                                          ; $4218: $40

jr_019_4219:
	ld b, b                                          ; $4219: $40

jr_019_421a:
	and b                                            ; $421a: $a0
	and b                                            ; $421b: $a0
	ret nc                                           ; $421c: $d0

	ret nc                                           ; $421d: $d0

	ld a, b                                          ; $421e: $78
	ld a, b                                          ; $421f: $78
	ld sp, hl                                        ; $4220: $f9
	rst SubAFromDE                                          ; $4221: $df
	inc b                                            ; $4222: $04
	rst SubAFromDE                                          ; $4223: $df
	ld [hl+], a                                      ; $4224: $22
	rst SubAFromDE                                          ; $4225: $df
	dec bc                                           ; $4226: $0b
	rst SubAFromDE                                          ; $4227: $df
	inc l                                            ; $4228: $2c
	sbc e                                            ; $4229: $9b
	dec sp                                           ; $422a: $3b
	jr c, jr_019_4262                                ; $422b: $38 $35

	jr nc, jr_019_42aa                               ; $422d: $30 $7b

	cp $96                                           ; $422f: $fe $96
	jr nz, jr_019_426a                               ; $4231: $20 $37

	db $10                                           ; $4233: $10
	dec sp                                           ; $4234: $3b
	jr z, jr_019_4267                                ; $4235: $28 $30

	inc b                                            ; $4237: $04
	jr nz, jr_019_4249                               ; $4238: $20 $0f

	ld sp, hl                                        ; $423a: $f9
	rst SubAFromDE                                          ; $423b: $df
	ld b, b                                          ; $423c: $40
	rst SubAFromDE                                          ; $423d: $df
	sub b                                            ; $423e: $90
	rst SubAFromDE                                          ; $423f: $df
	db $e4                                           ; $4240: $e4
	rst SubAFromDE                                          ; $4241: $df
	jr z, jr_019_41df                                ; $4242: $28 $9b

Call_019_4244:
	call c, $ac1c                                    ; $4244: $dc $1c $ac
	inc c                                            ; $4247: $0c
	ld a, e                                          ; $4248: $7b

jr_019_4249:
	cp $96                                           ; $4249: $fe $96
	inc b                                            ; $424b: $04
	ldh [rP1], a                                     ; $424c: $e0 $00
	ret nc                                           ; $424e: $d0

	nop                                              ; $424f: $00
	jr jr_019_4252                                   ; $4250: $18 $00

jr_019_4252:
	nop                                              ; $4252: $00
	add h                                            ; $4253: $84
	db $f4                                           ; $4254: $f4
	ld a, a                                          ; $4255: $7f
	sub d                                            ; $4256: $92
	ld a, [hl]                                       ; $4257: $7e
	sbc [hl]                                         ; $4258: $9e
	ld a, d                                          ; $4259: $7a
	xor d                                            ; $425a: $aa
	sub l                                            ; $425b: $95
	add hl, de                                       ; $425c: $19
	ld a, [de]                                       ; $425d: $1a
	inc h                                            ; $425e: $24
	inc h                                            ; $425f: $24
	ld [hl+], a                                      ; $4260: $22
	ld [hl+], a                                      ; $4261: $22

jr_019_4262:
	inc h                                            ; $4262: $24
	inc h                                            ; $4263: $24
	jr jr_019_427e                                   ; $4264: $18 $18

	ld e, e                                          ; $4266: $5b

jr_019_4267:
	add b                                            ; $4267: $80
	rst $38                                          ; $4268: $ff
	rst SubAFromDE                                          ; $4269: $df

jr_019_426a:
	ldh a, [hDisp1_SCY]                                     ; $426a: $f0 $90
	ld hl, sp-$18                                    ; $426c: $f8 $e8
	db $ec                                           ; $426e: $ec
	ld b, b                                          ; $426f: $40
	inc b                                            ; $4270: $04
	add sp, $04                                      ; $4271: $e8 $04
	ld hl, sp+$04                                    ; $4273: $f8 $04
	ld [hl], b                                       ; $4275: $70
	ld [$9060], sp                                   ; $4276: $08 $60 $90

jr_019_4279:
	ld [$dd08], sp                                   ; $4279: $08 $08 $dd
	db $fc                                           ; $427c: $fc
	db $fd                                           ; $427d: $fd

jr_019_427e:
	ld d, d                                          ; $427e: $52

Jump_019_427f:
	nop                                              ; $427f: $00
	rst $38                                          ; $4280: $ff
	sub a                                            ; $4281: $97
	ld a, a                                          ; $4282: $7f
	nop                                              ; $4283: $00
	ld a, a                                          ; $4284: $7f
	dec a                                            ; $4285: $3d
	ld h, a                                          ; $4286: $67
	dec h                                            ; $4287: $25
	ld l, a                                          ; $4288: $6f
	dec h                                            ; $4289: $25
	ld a, e                                          ; $428a: $7b
	ld a, [$2492]                                    ; $428b: $fa $92 $24
	ld l, a                                          ; $428e: $6f
	dec h                                            ; $428f: $25
	nop                                              ; $4290: $00
	nop                                              ; $4291: $00
	rst $38                                          ; $4292: $ff
	nop                                              ; $4293: $00
	rst $38                                          ; $4294: $ff
	rst $38                                          ; $4295: $ff
	jr nc, jr_019_42c8                               ; $4296: $30 $30

	ld [hl], a                                       ; $4298: $77
	jr nc, jr_019_4279                               ; $4299: $30 $de

	rst $38                                          ; $429b: $ff
	ld a, e                                          ; $429c: $7b
	or $6f                                           ; $429d: $f6 $6f
	ldh a, [$6f]                                     ; $429f: $f0 $6f
	ld a, [$f65f]                                    ; $42a1: $fa $5f $f6
	rst SubAFromDE                                          ; $42a4: $df
	inc c                                            ; $42a5: $0c
	sbc l                                            ; $42a6: $9d
	db $fd                                           ; $42a7: $fd
	inc c                                            ; $42a8: $0c
	ld h, e                                          ; $42a9: $63

jr_019_42aa:
	ldh a, [$98]                                     ; $42aa: $f0 $98
	ld bc, $bdff                                     ; $42ac: $01 $ff $bd
	rst SubAFromBC                                          ; $42af: $e7
	and l                                            ; $42b0: $a5
	rst AddAOntoHL                                          ; $42b1: $ef
	and l                                            ; $42b2: $a5
	ld a, e                                          ; $42b3: $7b
	ld a, [$259b]                                    ; $42b4: $fa $9b $25
	rst AddAOntoHL                                          ; $42b7: $ef
	and l                                            ; $42b8: $a5
	ld l, a                                          ; $42b9: $6f
	ld a, e                                          ; $42ba: $7b
	or [hl]                                          ; $42bb: $b6
	ld c, e                                          ; $42bc: $4b
	cp $9e                                           ; $42bd: $fe $9e
	inc h                                            ; $42bf: $24
	ld h, a                                          ; $42c0: $67
	and b                                            ; $42c1: $a0
	ld a, e                                          ; $42c2: $7b
	sub [hl]                                         ; $42c3: $96
	sbc d                                            ; $42c4: $9a
	ld a, a                                          ; $42c5: $7f
	ld l, a                                          ; $42c6: $6f
	dec h                                            ; $42c7: $25

jr_019_42c8:
	rst AddAOntoHL                                          ; $42c8: $ef
	dec h                                            ; $42c9: $25
	ld h, a                                          ; $42ca: $67
	ret nc                                           ; $42cb: $d0

	ld a, e                                          ; $42cc: $7b
	add $9e                                          ; $42cd: $c6 $9e
	rst $38                                          ; $42cf: $ff
	inc hl                                           ; $42d0: $23
	nop                                              ; $42d1: $00
	rst SubAFromDE                                          ; $42d2: $df
	rst $38                                          ; $42d3: $ff
	rst SubAFromDE                                          ; $42d4: $df
	add b                                            ; $42d5: $80
	sbc b                                            ; $42d6: $98
	or a                                             ; $42d7: $b7
	cp b                                             ; $42d8: $b8
	cp b                                             ; $42d9: $b8
	or b                                             ; $42da: $b0
	cp [hl]                                          ; $42db: $be
	cp b                                             ; $42dc: $b8
	or h                                             ; $42dd: $b4
	ld a, e                                          ; $42de: $7b
	ld a, [$b092]                                    ; $42df: $fa $92 $b0
	and b                                            ; $42e2: $a0
	rst $38                                          ; $42e3: $ff
	rst $38                                          ; $42e4: $ff
	ld bc, $ed01                                     ; $42e5: $01 $01 $ed
	dec e                                            ; $42e8: $1d
	dec e                                            ; $42e9: $1d
	dec c                                            ; $42ea: $0d
	ld a, l                                          ; $42eb: $7d
	dec e                                            ; $42ec: $1d
	dec l                                            ; $42ed: $2d
	ld a, e                                          ; $42ee: $7b
	ld a, [$0d9d]                                    ; $42ef: $fa $9d $0d
	dec b                                            ; $42f2: $05
	ld hl, $9380                                     ; $42f3: $21 $80 $93
	or b                                             ; $42f6: $b0
	or d                                             ; $42f7: $b2
	cp d                                             ; $42f8: $ba
	cp l                                             ; $42f9: $bd
	cp a                                             ; $42fa: $bf
	cp a                                             ; $42fb: $bf
	add b                                            ; $42fc: $80
	rst $38                                          ; $42fd: $ff
	and b                                            ; $42fe: $a0
	and b                                            ; $42ff: $a0
	or b                                             ; $4300: $b0
	cp d                                             ; $4301: $ba
	ld [hl], a                                       ; $4302: $77
	ld hl, sp-$21                                    ; $4303: $f8 $df
	xor l                                            ; $4305: $ad
	sbc $bd                                          ; $4306: $de $bd
	sub h                                            ; $4308: $94
	ld e, l                                          ; $4309: $5d
	ld bc, $05ff                                     ; $430a: $01 $ff $05
	dec b                                            ; $430d: $05
	dec c                                            ; $430e: $0d
	dec e                                            ; $430f: $1d
	dec e                                            ; $4310: $1d
	cp l                                             ; $4311: $bd
	ld bc, $16ff                                     ; $4312: $01 $ff $16
	nop                                              ; $4315: $00
	rst SubAFromDE                                          ; $4316: $df
	ld [hl+], a                                      ; $4317: $22
	rst SubAFromDE                                          ; $4318: $df
	ld a, a                                          ; $4319: $7f
	rst SubAFromDE                                          ; $431a: $df
	rst $38                                          ; $431b: $ff
	db $db                                           ; $431c: $db
	ld a, a                                          ; $431d: $7f
	ld [hl], a                                       ; $431e: $77
	ld hl, sp-$21                                    ; $431f: $f8 $df
	ld b, h                                          ; $4321: $44
	rst SubAFromDE                                          ; $4322: $df
	cp $df                                           ; $4323: $fe $df
	rst $38                                          ; $4325: $ff
	db $db                                           ; $4326: $db
	cp $77                                           ; $4327: $fe $77
	ld hl, sp+$16                                    ; $4329: $f8 $16
	nop                                              ; $432b: $00
	rst SubAFromDE                                          ; $432c: $df
	ld a, a                                          ; $432d: $7f
	rst SubAFromDE                                          ; $432e: $df
	rst $38                                          ; $432f: $ff
	db $db                                           ; $4330: $db
	ld a, a                                          ; $4331: $7f
	ld [hl], a                                       ; $4332: $77
	ld hl, sp-$21                                    ; $4333: $f8 $df
	ld [hl+], a                                      ; $4335: $22
	rst SubAFromDE                                          ; $4336: $df
	cp $df                                           ; $4337: $fe $df
	rst $38                                          ; $4339: $ff
	db $db                                           ; $433a: $db
	cp $77                                           ; $433b: $fe $77
	ld hl, sp-$21                                    ; $433d: $f8 $df
	ld b, h                                          ; $433f: $44
	inc hl                                           ; $4340: $23
	nop                                              ; $4341: $00
	rst SubAFromDE                                          ; $4342: $df
	rst $38                                          ; $4343: $ff
	rst SubAFromDE                                          ; $4344: $df
	add b                                            ; $4345: $80
	add e                                            ; $4346: $83
	adc a                                            ; $4347: $8f
	or a                                             ; $4348: $b7
	cp l                                             ; $4349: $bd
	xor [hl]                                         ; $434a: $ae
	and d                                            ; $434b: $a2
	sbc h                                            ; $434c: $9c
	or [hl]                                          ; $434d: $b6
	cp b                                             ; $434e: $b8
	cp d                                             ; $434f: $ba
	cp [hl]                                          ; $4350: $be
	adc d                                            ; $4351: $8a
	add [hl]                                         ; $4352: $86
	rst $38                                          ; $4353: $ff
	rst $38                                          ; $4354: $ff
	ld bc, $fd01                                     ; $4355: $01 $01 $fd
	dec e                                            ; $4358: $1d
	dec c                                            ; $4359: $0d
	dec b                                            ; $435a: $05
	add l                                            ; $435b: $85
	add c                                            ; $435c: $81
	push bc                                          ; $435d: $c5
	pop bc                                           ; $435e: $c1
	ld de, $9911                                     ; $435f: $11 $11 $99
	sbc c                                            ; $4362: $99
	inc h                                            ; $4363: $24
	nop                                              ; $4364: $00
	add b                                            ; $4365: $80
	cp d                                             ; $4366: $ba
	add c                                            ; $4367: $81
	cp [hl]                                          ; $4368: $be
	or b                                             ; $4369: $b0
	xor a                                            ; $436a: $af
	sbc h                                            ; $436b: $9c
	sbc e                                            ; $436c: $9b
	add [hl]                                         ; $436d: $86
	add l                                            ; $436e: $85
	add e                                            ; $436f: $83
	add d                                            ; $4370: $82
	add c                                            ; $4371: $81
	add b                                            ; $4372: $80
	add b                                            ; $4373: $80
	rst $38                                          ; $4374: $ff
	rst $38                                          ; $4375: $ff
	push bc                                          ; $4376: $c5
	pop bc                                           ; $4377: $c1
	dec c                                            ; $4378: $0d
	add l                                            ; $4379: $85
	dec [hl]                                         ; $437a: $35
	ld a, c                                          ; $437b: $79
	xor l                                            ; $437c: $ad
	dec d                                            ; $437d: $15
	push de                                          ; $437e: $d5
	dec c                                            ; $437f: $0d
	ld sp, hl                                        ; $4380: $f9
	add l                                            ; $4381: $85
	ld bc, $ff01                                     ; $4382: $01 $01 $ff
	sbc [hl]                                         ; $4385: $9e
	rst $38                                          ; $4386: $ff
	ld a, [de]                                       ; $4387: $1a
	nop                                              ; $4388: $00
	rst SubAFromDE                                          ; $4389: $df
	rst $38                                          ; $438a: $ff
	rst SubAFromDE                                          ; $438b: $df
	add b                                            ; $438c: $80
	sbc $bf                                          ; $438d: $de $bf
	rst SubAFromDE                                          ; $438f: $df
	and c                                            ; $4390: $a1
	sbc [hl]                                         ; $4391: $9e
	add b                                            ; $4392: $80
	ld l, a                                          ; $4393: $6f
	cp $df                                           ; $4394: $fe $df
	rst $38                                          ; $4396: $ff
	rst SubAFromDE                                          ; $4397: $df
	ld bc, $fdde                                     ; $4398: $01 $de $fd
	rst SubAFromDE                                          ; $439b: $df
	add l                                            ; $439c: $85
	sbc [hl]                                         ; $439d: $9e
	ld bc, $fe6f                                     ; $439e: $01 $6f $fe
	ld [hl+], a                                      ; $43a1: $22
	nop                                              ; $43a2: $00
	sub [hl]                                         ; $43a3: $96
	and c                                            ; $43a4: $a1
	add b                                            ; $43a5: $80
	and c                                            ; $43a6: $a1
	add b                                            ; $43a7: $80
	cp a                                             ; $43a8: $bf
	sbc [hl]                                         ; $43a9: $9e
	and c                                            ; $43aa: $a1
	cp a                                             ; $43ab: $bf
	sbc [hl]                                         ; $43ac: $9e
	sbc $bf                                          ; $43ad: $de $bf
	rst SubAFromDE                                          ; $43af: $df
	add b                                            ; $43b0: $80
	rst SubAFromDE                                          ; $43b1: $df
	rst $38                                          ; $43b2: $ff
	sub [hl]                                         ; $43b3: $96
	add l                                            ; $43b4: $85
	ld bc, $0185                                     ; $43b5: $01 $85 $01
	db $fd                                           ; $43b8: $fd
	ld a, c                                          ; $43b9: $79
	add l                                            ; $43ba: $85
	db $fd                                           ; $43bb: $fd
	ld a, c                                          ; $43bc: $79
	sbc $fd                                          ; $43bd: $de $fd
	rst SubAFromDE                                          ; $43bf: $df
	ld bc, $ffdf                                     ; $43c0: $01 $df $ff
	add hl, de                                       ; $43c3: $19
	add b                                            ; $43c4: $80
	sbc d                                            ; $43c5: $9a
	rst $38                                          ; $43c6: $ff
	add b                                            ; $43c7: $80
	cp a                                             ; $43c8: $bf
	xor l                                            ; $43c9: $ad
	xor l                                            ; $43ca: $ad
	sbc $a1                                          ; $43cb: $de $a1
	ld [hl], e                                       ; $43cd: $73
	ld hl, sp-$67                                    ; $43ce: $f8 $99
	xor l                                            ; $43d0: $ad
	and l                                            ; $43d1: $a5
	xor l                                            ; $43d2: $ad
	rst $38                                          ; $43d3: $ff
	ld bc, $dcfd                                     ; $43d4: $01 $fd $dc
	xor l                                            ; $43d7: $ad
	ld l, e                                          ; $43d8: $6b
	ld hl, sp-$62                                    ; $43d9: $f8 $9e
	dec h                                            ; $43db: $25
	ld e, $80                                        ; $43dc: $1e $80
	db $dd                                           ; $43de: $dd
	and c                                            ; $43df: $a1
	sbc d                                            ; $43e0: $9a
	or e                                             ; $43e1: $b3
	cp a                                             ; $43e2: $bf
	add b                                            ; $43e3: $80
	rst $38                                          ; $43e4: $ff
	xor c                                            ; $43e5: $a9
	sbc $ad                                          ; $43e6: $de $ad
	sbc [hl]                                         ; $43e8: $9e
	and c                                            ; $43e9: $a1
	ld a, e                                          ; $43ea: $7b
	ld hl, sp-$23                                    ; $43eb: $f8 $dd
	dec b                                            ; $43ed: $05
	sub [hl]                                         ; $43ee: $96
	adc l                                            ; $43ef: $8d
	db $fd                                           ; $43f0: $fd
	ld bc, $75ff                                     ; $43f1: $01 $ff $75
	ld h, l                                          ; $43f4: $65
	ld d, l                                          ; $43f5: $55
	ld [hl], l                                       ; $43f6: $75
	dec b                                            ; $43f7: $05
	ld a, e                                          ; $43f8: $7b
	ld hl, sp+$23                                    ; $43f9: $f8 $23
	nop                                              ; $43fb: $00
	rst SubAFromDE                                          ; $43fc: $df
	rst $38                                          ; $43fd: $ff
	rst SubAFromDE                                          ; $43fe: $df
	add b                                            ; $43ff: $80
	add e                                            ; $4400: $83
	cp a                                             ; $4401: $bf
	cp l                                             ; $4402: $bd
	cp c                                             ; $4403: $b9
	or b                                             ; $4404: $b0
	and d                                            ; $4405: $a2
	add b                                            ; $4406: $80
	sbc h                                            ; $4407: $9c
	adc b                                            ; $4408: $88
	cp [hl]                                          ; $4409: $be
	cp [hl]                                          ; $440a: $be
	cp a                                             ; $440b: $bf
	sbc h                                            ; $440c: $9c
	rst $38                                          ; $440d: $ff
	rst $38                                          ; $440e: $ff
	ld bc, $f501                                     ; $440f: $01 $01 $f5
	db $fd                                           ; $4412: $fd
	pop hl                                           ; $4413: $e1
	db $fd                                           ; $4414: $fd
	push bc                                          ; $4415: $c5
	ld a, l                                          ; $4416: $7d
	dec c                                            ; $4417: $0d
	ld a, l                                          ; $4418: $7d
	dec e                                            ; $4419: $1d
	db $fd                                           ; $441a: $fd
	dec e                                            ; $441b: $1d
	db $fd                                           ; $441c: $fd
	ld [hl+], a                                      ; $441d: $22
	nop                                              ; $441e: $00
	add h                                            ; $441f: $84
	cp a                                             ; $4420: $bf
	add c                                            ; $4421: $81
	cp [hl]                                          ; $4422: $be
	adc c                                            ; $4423: $89
	cp a                                             ; $4424: $bf
	xor e                                            ; $4425: $ab
	cp [hl]                                          ; $4426: $be
	cp [hl]                                          ; $4427: $be
	sbc h                                            ; $4428: $9c
	sbc [hl]                                         ; $4429: $9e
	add b                                            ; $442a: $80
	cp h                                             ; $442b: $bc
	add b                                            ; $442c: $80
	add b                                            ; $442d: $80
	rst $38                                          ; $442e: $ff
	rst $38                                          ; $442f: $ff
	sbc l                                            ; $4430: $9d
	ld c, l                                          ; $4431: $4d
	dec c                                            ; $4432: $0d
	add l                                            ; $4433: $85
	and l                                            ; $4434: $a5
	dec b                                            ; $4435: $05
	ld [hl], l                                       ; $4436: $75
	ld bc, $017d                                     ; $4437: $01 $7d $01
	ld hl, $01de                                     ; $443a: $21 $de $01
	rst SubAFromDE                                          ; $443d: $df
	rst $38                                          ; $443e: $ff
	jr jr_019_4441                                   ; $443f: $18 $00

jr_019_4441:
	rst SubAFromDE                                          ; $4441: $df
	rst $38                                          ; $4442: $ff
	rst SubAFromDE                                          ; $4443: $df

Call_019_4444:
	add b                                            ; $4444: $80
	ret c                                            ; $4445: $d8

	cp a                                             ; $4446: $bf
	sbc b                                            ; $4447: $98
	and e                                            ; $4448: $a3
	and b                                            ; $4449: $a0
	add a                                            ; $444a: $87
	rst $38                                          ; $444b: $ff
	rst $38                                          ; $444c: $ff
	ld bc, $da01                                     ; $444d: $01 $01 $da
	db $fd                                           ; $4450: $fd
	sbc d                                            ; $4451: $9a
	push bc                                          ; $4452: $c5
	pop bc                                           ; $4453: $c1
	adc l                                            ; $4454: $8d
	ld c, c                                          ; $4455: $49
	sbc l                                            ; $4456: $9d
	jr jr_019_4459                                   ; $4457: $18 $00

jr_019_4459:
	sbc d                                            ; $4459: $9a
	and h                                            ; $445a: $a4
	adc a                                            ; $445b: $8f
	xor l                                            ; $445c: $ad
	sbc a                                            ; $445d: $9f
	and e                                            ; $445e: $a3
	jp c, $dfbf                                      ; $445f: $da $bf $df

	add b                                            ; $4462: $80
	rst SubAFromDE                                          ; $4463: $df
	rst $38                                          ; $4464: $ff
	sbc h                                            ; $4465: $9c
	ld e, c                                          ; $4466: $59
	cp l                                             ; $4467: $bd
	push bc                                          ; $4468: $c5
	ret c                                            ; $4469: $d8

	db $fd                                           ; $446a: $fd
	rst SubAFromDE                                          ; $446b: $df
	ld bc, $ffdf                                     ; $446c: $01 $df $ff
	ld a, [de]                                       ; $446f: $1a
	nop                                              ; $4470: $00
	rst SubAFromDE                                          ; $4471: $df
	rst $38                                          ; $4472: $ff
	rst SubAFromDE                                          ; $4473: $df
	add b                                            ; $4474: $80
	sbc $bf                                          ; $4475: $de $bf
	rst SubAFromDE                                          ; $4477: $df
	and c                                            ; $4478: $a1
	sbc [hl]                                         ; $4479: $9e
	add b                                            ; $447a: $80
	db $db                                           ; $447b: $db
	sub d                                            ; $447c: $92
	rst SubAFromDE                                          ; $447d: $df
	rst $38                                          ; $447e: $ff
	rst SubAFromDE                                          ; $447f: $df
	ld bc, $fdde                                     ; $4480: $01 $de $fd
	rst SubAFromDE                                          ; $4483: $df
	add l                                            ; $4484: $85
	sbc [hl]                                         ; $4485: $9e
	ld bc, $49db                                     ; $4486: $01 $db $49
	jr nz, jr_019_448b                               ; $4489: $20 $00

jr_019_448b:
	sbc c                                            ; $448b: $99
	and c                                            ; $448c: $a1
	add b                                            ; $448d: $80
	cp a                                             ; $448e: $bf
	and c                                            ; $448f: $a1
	sbc [hl]                                         ; $4490: $9e
	cp a                                             ; $4491: $bf
	ld a, e                                          ; $4492: $7b
	ei                                               ; $4493: $fb
	ld a, e                                          ; $4494: $7b
	cp $df                                           ; $4495: $fe $df
	add b                                            ; $4497: $80
	rst SubAFromDE                                          ; $4498: $df
	rst $38                                          ; $4499: $ff
	sbc c                                            ; $449a: $99
	add l                                            ; $449b: $85
	ld bc, $85fd                                     ; $449c: $01 $fd $85
	ld a, c                                          ; $449f: $79
	db $fd                                           ; $44a0: $fd
	ld a, e                                          ; $44a1: $7b
	ei                                               ; $44a2: $fb
	ld a, e                                          ; $44a3: $7b
	cp $df                                           ; $44a4: $fe $df
	ld bc, $ffdf                                     ; $44a6: $01 $df $ff
	dec e                                            ; $44a9: $1d
	nop                                              ; $44aa: $00
	rst SubAFromDE                                          ; $44ab: $df
	rst $38                                          ; $44ac: $ff
	sbc $80                                          ; $44ad: $de $80
	sbc d                                            ; $44af: $9a
	cp a                                             ; $44b0: $bf
	and c                                            ; $44b1: $a1
	sbc [hl]                                         ; $44b2: $9e
	add b                                            ; $44b3: $80
	and c                                            ; $44b4: $a1
	db $db                                           ; $44b5: $db
	adc d                                            ; $44b6: $8a
	rst SubAFromDE                                          ; $44b7: $df
	rst $38                                          ; $44b8: $ff
	rst SubAFromDE                                          ; $44b9: $df
	ld bc, $3d97                                     ; $44ba: $01 $97 $3d
	db $fd                                           ; $44bd: $fd
	or c                                             ; $44be: $b1
	ld h, c                                          ; $44bf: $61
	pop hl                                           ; $44c0: $e1
	ld b, c                                          ; $44c1: $41
	ld h, c                                          ; $44c2: $61
	pop bc                                           ; $44c3: $c1
	ld [hl], a                                       ; $44c4: $77
	cp $22                                           ; $44c5: $fe $22
	add b                                            ; $44c7: $80
	sub h                                            ; $44c8: $94
	add b                                            ; $44c9: $80
	and b                                            ; $44ca: $a0
	cp a                                             ; $44cb: $bf
	and b                                            ; $44cc: $a0
	add b                                            ; $44cd: $80
	add c                                            ; $44ce: $81
	add b                                            ; $44cf: $80
	rst $38                                          ; $44d0: $ff
	and b                                            ; $44d1: $a0
	or c                                             ; $44d2: $b1
	sbc a                                            ; $44d3: $9f
	sbc $bf                                          ; $44d4: $de $bf
	ld a, a                                          ; $44d6: $7f
	ld hl, sp-$6c                                    ; $44d7: $f8 $94
	ld h, c                                          ; $44d9: $61
	cp l                                             ; $44da: $bd
	cp l                                             ; $44db: $bd
	pop bc                                           ; $44dc: $c1
	add c                                            ; $44dd: $81
	sub c                                            ; $44de: $91
	ld bc, $c1ff                                     ; $44df: $01 $ff $c1
	ld h, c                                          ; $44e2: $61
	ld a, l                                          ; $44e3: $7d
	sbc $fd                                          ; $44e4: $de $fd
	ld a, a                                          ; $44e6: $7f
	ld hl, sp+$21                                    ; $44e7: $f8 $21
	add b                                            ; $44e9: $80
	sub l                                            ; $44ea: $95
	rst $38                                          ; $44eb: $ff
	add b                                            ; $44ec: $80
	cp e                                             ; $44ed: $bb
	sbc l                                            ; $44ee: $9d
	or h                                             ; $44ef: $b4
	sub e                                            ; $44f0: $93
	add h                                            ; $44f1: $84
	adc d                                            ; $44f2: $8a
	rst $38                                          ; $44f3: $ff
	add b                                            ; $44f4: $80
	db $dd                                           ; $44f5: $dd
	cp a                                             ; $44f6: $bf
	sub e                                            ; $44f7: $93
	cp h                                             ; $44f8: $bc
	cp d                                             ; $44f9: $ba
	rst $38                                          ; $44fa: $ff
	ld bc, $6dbd                                     ; $44fb: $01 $bd $6d
	add hl, de                                       ; $44fe: $19
	push de                                          ; $44ff: $d5
	ld hl, $ff51                                     ; $4500: $21 $51 $ff
	ld bc, $fddd                                     ; $4503: $01 $dd $fd
	sbc l                                            ; $4506: $9d
	dec a                                            ; $4507: $3d
	ld e, l                                          ; $4508: $5d
	inc h                                            ; $4509: $24
	nop                                              ; $450a: $00
	add b                                            ; $450b: $80
	adc d                                            ; $450c: $8a
	cp d                                             ; $450d: $ba
	sbc d                                            ; $450e: $9a
	xor d                                            ; $450f: $aa
	xor b                                            ; $4510: $a8
	sbc b                                            ; $4511: $98
	sub h                                            ; $4512: $94
	xor h                                            ; $4513: $ac
	cp e                                             ; $4514: $bb
	adc a                                            ; $4515: $8f
	or b                                             ; $4516: $b0
	sbc a                                            ; $4517: $9f
	add b                                            ; $4518: $80
	add b                                            ; $4519: $80
	rst $38                                          ; $451a: $ff
	rst $38                                          ; $451b: $ff
	ld d, c                                          ; $451c: $51
	ld e, l                                          ; $451d: $5d
	ld e, c                                          ; $451e: $59
	ld d, l                                          ; $451f: $55
	dec e                                            ; $4520: $1d
	dec e                                            ; $4521: $1d
	dec l                                            ; $4522: $2d
	dec h                                            ; $4523: $25
	push hl                                          ; $4524: $e5
	push bc                                          ; $4525: $c5
	ld a, c                                          ; $4526: $79
	db $fd                                           ; $4527: $fd
	ld bc, $ff01                                     ; $4528: $01 $01 $ff
	sbc [hl]                                         ; $452b: $9e
	rst $38                                          ; $452c: $ff
	dec a                                            ; $452d: $3d
	add b                                            ; $452e: $80
	sbc l                                            ; $452f: $9d
	rst $38                                          ; $4530: $ff
	add b                                            ; $4531: $80
	db $db                                           ; $4532: $db
	cp a                                             ; $4533: $bf
	ld [hl], a                                       ; $4534: $77
	ld hl, sp-$6d                                    ; $4535: $f8 $93
	cp [hl]                                          ; $4537: $be
	cp l                                             ; $4538: $bd
	cp a                                             ; $4539: $bf
	cp l                                             ; $453a: $bd
	rst $38                                          ; $453b: $ff
	ld bc, $fdfd                                     ; $453c: $01 $fd $fd
	dec c                                            ; $453f: $0d
	dec d                                            ; $4540: $15
	cp l                                             ; $4541: $bd
	dec d                                            ; $4542: $15
	ld a, e                                          ; $4543: $7b
	ld hl, sp-$73                                    ; $4544: $f8 $8d
	dec c                                            ; $4546: $0d
	dec b                                            ; $4547: $05
	ld de, $11b9                                     ; $4548: $11 $b9 $11
	cp [hl]                                          ; $454b: $be
	and a                                            ; $454c: $a7
	and e                                            ; $454d: $a3
	and a                                            ; $454e: $a7
	cp a                                             ; $454f: $bf
	cp a                                             ; $4550: $bf
	add b                                            ; $4551: $80
	rst $38                                          ; $4552: $ff
	and h                                            ; $4553: $a4
	add e                                            ; $4554: $83
	add c                                            ; $4555: $81
	add e                                            ; $4556: $83
	and a                                            ; $4557: $a7
	ld a, e                                          ; $4558: $7b
	ld hl, sp-$65                                    ; $4559: $f8 $9b
	dec b                                            ; $455b: $05
	adc l                                            ; $455c: $8d
	sbc l                                            ; $455d: $9d
	pop af                                           ; $455e: $f1
	sbc $01                                          ; $455f: $de $01
	ld a, a                                          ; $4561: $7f
	pop hl                                           ; $4562: $e1
	sbc l                                            ; $4563: $9d
	add l                                            ; $4564: $85
	dec c                                            ; $4565: $0d
	sbc $fd                                          ; $4566: $de $fd
	ld a, a                                          ; $4568: $7f
	ld hl, sp+$23                                    ; $4569: $f8 $23
	nop                                              ; $456b: $00
	rst SubAFromDE                                          ; $456c: $df
	rst $38                                          ; $456d: $ff
	rst SubAFromDE                                          ; $456e: $df
	add b                                            ; $456f: $80
	add e                                            ; $4570: $83
	cp [hl]                                          ; $4571: $be
	cp a                                             ; $4572: $bf
	cp l                                             ; $4573: $bd
	cp [hl]                                          ; $4574: $be
	cp l                                             ; $4575: $bd
	cp [hl]                                          ; $4576: $be
	add a                                            ; $4577: $87
	cp l                                             ; $4578: $bd
	cp e                                             ; $4579: $bb
	add h                                            ; $457a: $84
	cp a                                             ; $457b: $bf
	or l                                             ; $457c: $b5
	rst $38                                          ; $457d: $ff
	rst $38                                          ; $457e: $ff
	ld bc, $7d01                                     ; $457f: $01 $01 $7d
	db $fd                                           ; $4582: $fd
	cp l                                             ; $4583: $bd
	ld a, l                                          ; $4584: $7d
	cp l                                             ; $4585: $bd
	ld a, l                                          ; $4586: $7d
	pop hl                                           ; $4587: $e1
	cp l                                             ; $4588: $bd
	db $dd                                           ; $4589: $dd
	ld hl, $adfd                                     ; $458a: $21 $fd $ad
	inc e                                            ; $458d: $1c
	add b                                            ; $458e: $80
	db $db                                           ; $458f: $db
	cp a                                             ; $4590: $bf
	sub l                                            ; $4591: $95
	add b                                            ; $4592: $80
	rst $38                                          ; $4593: $ff
	add h                                            ; $4594: $84
	or l                                             ; $4595: $b5
	add h                                            ; $4596: $84
	or l                                             ; $4597: $b5
	add l                                            ; $4598: $85
	add b                                            ; $4599: $80
	add b                                            ; $459a: $80
	rst $38                                          ; $459b: $ff
	db $db                                           ; $459c: $db
	db $fd                                           ; $459d: $fd
	sub l                                            ; $459e: $95
	ld bc, $21ff                                     ; $459f: $01 $ff $21
	xor l                                            ; $45a2: $ad
	ld hl, $a1ad                                     ; $45a3: $21 $ad $a1
	ld bc, $ff01                                     ; $45a6: $01 $01 $ff
	ld [hl+], a                                      ; $45a9: $22
	add b                                            ; $45aa: $80
	sub a                                            ; $45ab: $97
	rst $38                                          ; $45ac: $ff
	add b                                            ; $45ad: $80
	cp a                                             ; $45ae: $bf
	cp h                                             ; $45af: $bc
	cp c                                             ; $45b0: $b9
	or e                                             ; $45b1: $b3
	and [hl]                                         ; $45b2: $a6
	adc l                                            ; $45b3: $8d
	ld [hl], a                                       ; $45b4: $77
	ld hl, sp-$6d                                    ; $45b5: $f8 $93
	cp b                                             ; $45b7: $b8
	or c                                             ; $45b8: $b1
	and e                                            ; $45b9: $a3
	add a                                            ; $45ba: $87
	rst $38                                          ; $45bb: $ff
	ld bc, $fdfd                                     ; $45bc: $01 $fd $fd
	dec a                                            ; $45bf: $3d
	dec b                                            ; $45c0: $05
	xor l                                            ; $45c1: $ad
	ld a, l                                          ; $45c2: $7d
	ld a, e                                          ; $45c3: $7b
	ld hl, sp-$66                                    ; $45c4: $f8 $9a
	ld a, l                                          ; $45c6: $7d
	db $fd                                           ; $45c7: $fd
	add l                                            ; $45c8: $85
	xor c                                            ; $45c9: $a9
	ld d, c                                          ; $45ca: $51
	ld [hl+], a                                      ; $45cb: $22
	nop                                              ; $45cc: $00
	sub [hl]                                         ; $45cd: $96
	cp e                                             ; $45ce: $bb
	adc [hl]                                         ; $45cf: $8e
	sub a                                            ; $45d0: $97
	cp l                                             ; $45d1: $bd
	xor a                                            ; $45d2: $af
	or b                                             ; $45d3: $b0
	add a                                            ; $45d4: $87
	xor b                                            ; $45d5: $a8
	and b                                            ; $45d6: $a0
	sbc $bf                                          ; $45d7: $de $bf
	rst SubAFromDE                                          ; $45d9: $df
	add b                                            ; $45da: $80
	rst SubAFromDE                                          ; $45db: $df
	rst $38                                          ; $45dc: $ff
	sub [hl]                                         ; $45dd: $96
	ld sp, hl                                        ; $45de: $f9
	and l                                            ; $45df: $a5
	ld [hl], l                                       ; $45e0: $75
	ret                                              ; $45e1: $c9


	jp hl                                            ; $45e2: $e9


	dec d                                            ; $45e3: $15
	dec d                                            ; $45e4: $15
	xor l                                            ; $45e5: $ad
	dec c                                            ; $45e6: $0d
	sbc $fd                                          ; $45e7: $de $fd
	rst SubAFromDE                                          ; $45e9: $df
	ld bc, $ffdf                                     ; $45ea: $01 $df $ff
	ld hl, $9a80                                     ; $45ed: $21 $80 $9a
	rst $38                                          ; $45f0: $ff
	add b                                            ; $45f1: $80
	cp a                                             ; $45f2: $bf
	cp c                                             ; $45f3: $b9
	or b                                             ; $45f4: $b0
	sbc $a0                                          ; $45f5: $de $a0
	ld a, e                                          ; $45f7: $7b
	ld hl, sp+$7f                                    ; $45f8: $f8 $7f
	rst FarCall                                          ; $45fa: $f7
	sub a                                            ; $45fb: $97
	or a                                             ; $45fc: $b7
	cp a                                             ; $45fd: $bf
	cp a                                             ; $45fe: $bf
	rst $38                                          ; $45ff: $ff
	ld bc, $9dfd                                     ; $4600: $01 $fd $9d
	dec c                                            ; $4603: $0d
	sbc $05                                          ; $4604: $de $05
	ld a, e                                          ; $4606: $7b
	ld hl, sp+$7f                                    ; $4607: $f8 $7f
	rst FarCall                                          ; $4609: $f7
	sbc h                                            ; $460a: $9c
	db $ed                                           ; $460b: $ed
	db $fd                                           ; $460c: $fd
	db $fd                                           ; $460d: $fd
	inc e                                            ; $460e: $1c
	add b                                            ; $460f: $80
	sub a                                            ; $4610: $97
	and b                                            ; $4611: $a0
	or b                                             ; $4612: $b0
	cp b                                             ; $4613: $b8
	cp h                                             ; $4614: $bc
	cp [hl]                                          ; $4615: $be
	cp a                                             ; $4616: $bf
	add b                                            ; $4617: $80
	rst $38                                          ; $4618: $ff
	db $db                                           ; $4619: $db
	cp a                                             ; $461a: $bf
	ld a, a                                          ; $461b: $7f
	ld hl, sp-$69                                    ; $461c: $f8 $97
	dec b                                            ; $461e: $05
	dec c                                            ; $461f: $0d
	dec e                                            ; $4620: $1d
	dec a                                            ; $4621: $3d
	ld a, l                                          ; $4622: $7d
	db $fd                                           ; $4623: $fd
	ld bc, $dbff                                     ; $4624: $01 $ff $db
	db $fd                                           ; $4627: $fd
	ld a, a                                          ; $4628: $7f
	ld hl, sp+$22                                    ; $4629: $f8 $22
	add b                                            ; $462b: $80
	sbc e                                            ; $462c: $9b
	rst $38                                          ; $462d: $ff
	add b                                            ; $462e: $80
	or b                                             ; $462f: $b0
	xor a                                            ; $4630: $af
	sbc $9f                                          ; $4631: $de $9f
	adc [hl]                                         ; $4633: $8e
	cp [hl]                                          ; $4634: $be
	rst $38                                          ; $4635: $ff
	add b                                            ; $4636: $80
	or a                                             ; $4637: $b7
	and b                                            ; $4638: $a0
	add [hl]                                         ; $4639: $86
	and [hl]                                         ; $463a: $a6
	and [hl]                                         ; $463b: $a6
	and b                                            ; $463c: $a0
	rst $38                                          ; $463d: $ff
	ld bc, $5dfd                                     ; $463e: $01 $fd $5d
	call $1515                                       ; $4641: $cd $15 $15

Call_019_4644:
	push de                                          ; $4644: $d5
	ld a, e                                          ; $4645: $7b
	ld hl, sp-$63                                    ; $4646: $f8 $9d
	adc l                                            ; $4648: $8d
	ld b, l                                          ; $4649: $45
	sbc $51                                          ; $464a: $de $51
	ld [hl+], a                                      ; $464c: $22
	nop                                              ; $464d: $00
	sbc l                                            ; $464e: $9d
	or [hl]                                          ; $464f: $b6
	cp c                                             ; $4650: $b9
	sbc $bf                                          ; $4651: $de $bf
	rst SubAFromDE                                          ; $4653: $df
	cp c                                             ; $4654: $b9
	adc l                                            ; $4655: $8d
	or b                                             ; $4656: $b0
	cp a                                             ; $4657: $bf
	cp c                                             ; $4658: $b9
	cp h                                             ; $4659: $bc
	cp e                                             ; $465a: $bb
	add b                                            ; $465b: $80
	add b                                            ; $465c: $80
	rst $38                                          ; $465d: $ff
	rst $38                                          ; $465e: $ff
	push bc                                          ; $465f: $c5
	add c                                            ; $4660: $81
	adc l                                            ; $4661: $8d
	dec b                                            ; $4662: $05
	db $fd                                           ; $4663: $fd
	adc l                                            ; $4664: $8d
	push af                                          ; $4665: $f5
	db $fd                                           ; $4666: $fd
	ld bc, $fe77                                     ; $4667: $01 $77 $fe
	sbc h                                            ; $466a: $9c
	ld bc, rIE                                     ; $466b: $01 $ff $ff
	ld e, $80                                        ; $466e: $1e $80
	sbc h                                            ; $4670: $9c
	rst $38                                          ; $4671: $ff
	add b                                            ; $4672: $80
	or b                                             ; $4673: $b0
	db $dd                                           ; $4674: $dd
	or a                                             ; $4675: $b7
	sbc d                                            ; $4676: $9a
	or b                                             ; $4677: $b0
	rst $38                                          ; $4678: $ff
	add b                                            ; $4679: $80
	and b                                            ; $467a: $a0
	and b                                            ; $467b: $a0
	db $dd                                           ; $467c: $dd
	and a                                            ; $467d: $a7
	sbc h                                            ; $467e: $9c
	rst $38                                          ; $467f: $ff
	ld bc, $dd0d                                     ; $4680: $01 $0d $dd
	db $ed                                           ; $4683: $ed
	sbc d                                            ; $4684: $9a
	dec c                                            ; $4685: $0d
	rst $38                                          ; $4686: $ff
	ld bc, $0505                                     ; $4687: $01 $05 $05
	db $dd                                           ; $468a: $dd
	push hl                                          ; $468b: $e5
	ld [hl+], a                                      ; $468c: $22
	nop                                              ; $468d: $00
	add [hl]                                         ; $468e: $86
	or b                                             ; $468f: $b0
	and b                                            ; $4690: $a0

Jump_019_4691:
	or h                                             ; $4691: $b4
	and h                                            ; $4692: $a4
	cp [hl]                                          ; $4693: $be
	xor d                                            ; $4694: $aa
	or h                                             ; $4695: $b4
	and h                                            ; $4696: $a4
	or e                                             ; $4697: $b3
	and c                                            ; $4698: $a1
	or b                                             ; $4699: $b0
	and b                                            ; $469a: $a0
	add b                                            ; $469b: $80
	add b                                            ; $469c: $80
	rst $38                                          ; $469d: $ff
	rst $38                                          ; $469e: $ff
	dec c                                            ; $469f: $0d
	dec b                                            ; $46a0: $05
	dec l                                            ; $46a1: $2d
	dec d                                            ; $46a2: $15
	adc l                                            ; $46a3: $8d
	ld b, l                                          ; $46a4: $45
	dec c                                            ; $46a5: $0d
	dec b                                            ; $46a6: $05
	call $fc7b                                       ; $46a7: $cd $7b $fc
	rst SubAFromDE                                          ; $46aa: $df
	ld bc, $ffdf                                     ; $46ab: $01 $df $ff
	ld [hl+], a                                      ; $46ae: $22
	nop                                              ; $46af: $00
	rst SubAFromDE                                          ; $46b0: $df
	rst $38                                          ; $46b1: $ff
	rst SubAFromDE                                          ; $46b2: $df
	add b                                            ; $46b3: $80
	rst SubAFromDE                                          ; $46b4: $df
	cp a                                             ; $46b5: $bf
	sbc b                                            ; $46b6: $98
	or d                                             ; $46b7: $b2
	and e                                            ; $46b8: $a3
	cp a                                             ; $46b9: $bf
	and b                                            ; $46ba: $a0
	or d                                             ; $46bb: $b2
	xor d                                            ; $46bc: $aa
	or b                                             ; $46bd: $b0
	ld a, e                                          ; $46be: $7b
	db $fc                                           ; $46bf: $fc
	rst SubAFromDE                                          ; $46c0: $df
	rst $38                                          ; $46c1: $ff
	rst SubAFromDE                                          ; $46c2: $df
	ld bc, $fddf                                     ; $46c3: $01 $df $fd
	sbc b                                            ; $46c6: $98
	ld c, l                                          ; $46c7: $4d
	push bc                                          ; $46c8: $c5
	db $fd                                           ; $46c9: $fd
	dec b                                            ; $46ca: $05
	xor l                                            ; $46cb: $ad
	add l                                            ; $46cc: $85
	dec c                                            ; $46cd: $0d
	ld a, e                                          ; $46ce: $7b
	db $fc                                           ; $46cf: $fc
	jr nz, @-$7e                                     ; $46d0: $20 $80

	sub l                                            ; $46d2: $95
	or b                                             ; $46d3: $b0
	or d                                             ; $46d4: $b2
	or b                                             ; $46d5: $b0
	or d                                             ; $46d6: $b2
	cp a                                             ; $46d7: $bf
	cp a                                             ; $46d8: $bf
	add b                                            ; $46d9: $80
	rst $38                                          ; $46da: $ff
	and b                                            ; $46db: $a0
	xor d                                            ; $46dc: $aa
	ld a, e                                          ; $46dd: $7b
	cp $7b                                           ; $46de: $fe $7b
	ld hl, sp-$6b                                    ; $46e0: $f8 $95
	dec c                                            ; $46e2: $0d
	xor l                                            ; $46e3: $ad
	dec c                                            ; $46e4: $0d
	xor l                                            ; $46e5: $ad
	db $fd                                           ; $46e6: $fd
	db $fd                                           ; $46e7: $fd
	ld bc, $05ff                                     ; $46e8: $01 $ff $05
	add l                                            ; $46eb: $85
	ld a, e                                          ; $46ec: $7b
	cp $7b                                           ; $46ed: $fe $7b
	ld hl, sp+$20                                    ; $46ef: $f8 $20
	add b                                            ; $46f1: $80
	sub a                                            ; $46f2: $97
	rst $38                                          ; $46f3: $ff
	add b                                            ; $46f4: $80
	cp a                                             ; $46f5: $bf
	and a                                            ; $46f6: $a7
	and h                                            ; $46f7: $a4
	and h                                            ; $46f8: $a4
	and a                                            ; $46f9: $a7
	and a                                            ; $46fa: $a7
	ld a, e                                          ; $46fb: $7b
	ld hl, sp-$22                                    ; $46fc: $f8 $de
	cp b                                             ; $46fe: $b8
	rst SubAFromDE                                          ; $46ff: $df
	and b                                            ; $4700: $a0
	sub a                                            ; $4701: $97
	rst $38                                          ; $4702: $ff
	ld bc, $f5fd                                     ; $4703: $01 $fd $f5
	dec e                                            ; $4706: $1d
	dec e                                            ; $4707: $1d
	db $fd                                           ; $4708: $fd
	db $fd                                           ; $4709: $fd
	ld a, e                                          ; $470a: $7b
	ld hl, sp-$62                                    ; $470b: $f8 $9e
	dec c                                            ; $470d: $0d
	db $dd                                           ; $470e: $dd
	dec b                                            ; $470f: $05
	dec e                                            ; $4710: $1d
	add b                                            ; $4711: $80
	call c, $97a7                                    ; $4712: $dc $a7 $97
	cp a                                             ; $4715: $bf
	add b                                            ; $4716: $80
	rst $38                                          ; $4717: $ff
	and b                                            ; $4718: $a0
	cp b                                             ; $4719: $b8
	cp b                                             ; $471a: $b8
	cp e                                             ; $471b: $bb
	cp b                                             ; $471c: $b8
	ld a, e                                          ; $471d: $7b
	ld hl, sp-$23                                    ; $471e: $f8 $dd
	db $fd                                           ; $4720: $fd
	sbc e                                            ; $4721: $9b
	push af                                          ; $4722: $f5
	db $fd                                           ; $4723: $fd
	ld bc, $deff                                     ; $4724: $01 $ff $de
	dec b                                            ; $4727: $05
	sbc l                                            ; $4728: $9d
	push hl                                          ; $4729: $e5
	dec c                                            ; $472a: $0d
	ld a, e                                          ; $472b: $7b
	ld hl, sp+$42                                    ; $472c: $f8 $42
	nop                                              ; $472e: $00
	rst SubAFromDE                                          ; $472f: $df
	rst $38                                          ; $4730: $ff
	rst SubAFromDE                                          ; $4731: $df
	jp $81df                                         ; $4732: $c3 $df $81


	rst SubAFromHL                                          ; $4735: $d7
	sbc c                                            ; $4736: $99
	rst SubAFromDE                                          ; $4737: $df
	rst $38                                          ; $4738: $ff
	db $dd                                           ; $4739: $dd
	rst SubAFromBC                                          ; $473a: $e7
	db $dd                                           ; $473b: $dd
	rst JumpTable                                          ; $473c: $c7
	db $db                                           ; $473d: $db
	rst SubAFromBC                                          ; $473e: $e7
	ld d, a                                          ; $473f: $57
	ldh [$df], a                                     ; $4740: $e0 $df
	ld sp, hl                                        ; $4742: $f9
	rst SubAFromDE                                          ; $4743: $df
	di                                               ; $4744: $f3
	ccf                                              ; $4745: $3f
	ldh a, [$dd]                                     ; $4746: $f0 $dd
	di                                               ; $4748: $f3
	db $dd                                           ; $4749: $dd
	db $e3                                           ; $474a: $e3
	db $dd                                           ; $474b: $dd
	jp $93df                                         ; $474c: $c3 $df $93


	rst SubAFromDE                                          ; $474f: $df
	rst $38                                          ; $4750: $ff
	db $dd                                           ; $4751: $dd
	add c                                            ; $4752: $81
	reti                                             ; $4753: $d9


	sbc a                                            ; $4754: $9f
	rst SubAFromDE                                          ; $4755: $df
	add e                                            ; $4756: $83
	ld d, a                                          ; $4757: $57
	ret nc                                           ; $4758: $d0

	ld l, a                                          ; $4759: $6f
	ldh a, [$dd]                                     ; $475a: $f0 $dd
	add c                                            ; $475c: $81
	cpl                                              ; $475d: $2f
	or b                                             ; $475e: $b0
	rst SubAFromDE                                          ; $475f: $df
	sbc c                                            ; $4760: $99
	rst SubAFromDE                                          ; $4761: $df
	add c                                            ; $4762: $81
	ccf                                              ; $4763: $3f
	ldh a, [$d5]                                     ; $4764: $f0 $d5
	rst $38                                          ; $4766: $ff
	rst SubAFromDE                                          ; $4767: $df
	rst SubAFromBC                                          ; $4768: $e7
	rst SubAFromDE                                          ; $4769: $df
	add c                                            ; $476a: $81
	ld [hl], a                                       ; $476b: $77
	ld l, h                                          ; $476c: $6c
	rst SubAFromHL                                          ; $476d: $d7
	rst $38                                          ; $476e: $ff
	ld a, $00                                        ; $476f: $3e $00
	rst SubAFromHL                                          ; $4771: $d7
	sbc c                                            ; $4772: $99
	rst SubAFromDE                                          ; $4773: $df
	add c                                            ; $4774: $81
	rst SubAFromDE                                          ; $4775: $df
	jp $ffdf                                         ; $4776: $c3 $df $ff


	rst SubAFromHL                                          ; $4779: $d7
	rst SubAFromBC                                          ; $477a: $e7
	db $dd                                           ; $477b: $dd
	jp $ffdf                                         ; $477c: $c3 $df $ff


	rst SubAFromDE                                          ; $477f: $df
	di                                               ; $4780: $f3
	db $dd                                           ; $4781: $dd
	rst SubAFromBC                                          ; $4782: $e7
	db $dd                                           ; $4783: $dd
	rst GetHLinHL                                          ; $4784: $cf
	db $dd                                           ; $4785: $dd
	add c                                            ; $4786: $81
	ld [hl], a                                       ; $4787: $77
	ldh a, [$df]                                     ; $4788: $f0 $df
	ld sp, hl                                        ; $478a: $f9
	ld d, a                                          ; $478b: $57
	ret nc                                           ; $478c: $d0

	rst SubAFromDE                                          ; $478d: $df
	sub e                                            ; $478e: $93
	db $dd                                           ; $478f: $dd
	add c                                            ; $4790: $81
	reti                                             ; $4791: $d9


	di                                               ; $4792: $f3
	rst SubAFromDE                                          ; $4793: $df
	rst $38                                          ; $4794: $ff
	rst SubAFromDE                                          ; $4795: $df
	add c                                            ; $4796: $81
	db $dd                                           ; $4797: $dd
	ld sp, hl                                        ; $4798: $f9
	ld e, a                                          ; $4799: $5f
	ldh [$df], a                                     ; $479a: $e0 $df
	add c                                            ; $479c: $81
	ld c, a                                          ; $479d: $4f
	and b                                            ; $479e: $a0
	ld l, a                                          ; $479f: $6f
	or b                                             ; $47a0: $b0
	reti                                             ; $47a1: $d9


	rst SubAFromBC                                          ; $47a2: $e7
	rst SubAFromDE                                          ; $47a3: $df
	rst $38                                          ; $47a4: $ff
	rst SubAFromDE                                          ; $47a5: $df
	jp $e04f                                         ; $47a6: $c3 $4f $e0


	rst SubAFromDE                                          ; $47a9: $df
	pop bc                                           ; $47aa: $c1
	ld c, a                                          ; $47ab: $4f
	ret nz                                           ; $47ac: $c0

	add hl, bc                                       ; $47ad: $09
	add b                                            ; $47ae: $80
	pop af                                           ; $47af: $f1
	reti                                             ; $47b0: $d9


	rst $38                                          ; $47b1: $ff
	daa                                              ; $47b2: $27
	add sp, -$2f                                     ; $47b3: $e8 $d1
	rst $38                                          ; $47b5: $ff
	inc d                                            ; $47b6: $14
	add b                                            ; $47b7: $80
	rst SubAFromHL                                          ; $47b8: $d7
	rst $38                                          ; $47b9: $ff
	sbc d                                            ; $47ba: $9a
	rst SubAFromBC                                          ; $47bb: $e7
	jp $e781                                         ; $47bc: $c3 $81 $e7


	rst SubAFromBC                                          ; $47bf: $e7
	ld [hl], a                                       ; $47c0: $77
	ld hl, sp-$64                                    ; $47c1: $f8 $9c
	rst SubAFromBC                                          ; $47c3: $e7
	add c                                            ; $47c4: $81
	jp $f877                                         ; $47c5: $c3 $77 $f8


	set 7, a                                         ; $47c8: $cb $ff
	ld a, [bc]                                       ; $47ca: $0a
	nop                                              ; $47cb: $00
	rst SubAFromDE                                          ; $47cc: $df
	rst $38                                          ; $47cd: $ff
	rst SubAFromDE                                          ; $47ce: $df
	add e                                            ; $47cf: $83
	rst SubAFromHL                                          ; $47d0: $d7
	add hl, sp                                       ; $47d1: $39
	rst SubAFromDE                                          ; $47d2: $df
	add e                                            ; $47d3: $83
	inc c                                            ; $47d4: $0c
	nop                                              ; $47d5: $00
	rst SubAFromDE                                          ; $47d6: $df
	rst $38                                          ; $47d7: $ff
	rst SubAFromDE                                          ; $47d8: $df
	rst SubAFromBC                                          ; $47d9: $e7
	rst SubAFromDE                                          ; $47da: $df
	rst JumpTable                                          ; $47db: $c7
	reti                                             ; $47dc: $d9


	rst SubAFromBC                                          ; $47dd: $e7
	rst SubAFromDE                                          ; $47de: $df
	jp $0012                                         ; $47df: $c3 $12 $00


	rst SubAFromDE                                          ; $47e2: $df
	rst $38                                          ; $47e3: $ff
	rst SubAFromDE                                          ; $47e4: $df
	add e                                            ; $47e5: $83
	rst SubAFromDE                                          ; $47e6: $df
	add hl, sp                                       ; $47e7: $39
	rst SubAFromDE                                          ; $47e8: $df
	pop af                                           ; $47e9: $f1
	rst SubAFromDE                                          ; $47ea: $df
	jp $87df                                         ; $47eb: $c3 $df $87


	rst SubAFromDE                                          ; $47ee: $df
	rra                                              ; $47ef: $1f
	rst SubAFromDE                                          ; $47f0: $df
	ld bc, $0012                                     ; $47f1: $01 $12 $00
	rst SubAFromDE                                          ; $47f4: $df
	rst $38                                          ; $47f5: $ff
	rst SubAFromDE                                          ; $47f6: $df
	add c                                            ; $47f7: $81
	rst SubAFromDE                                          ; $47f8: $df
	di                                               ; $47f9: $f3
	rst SubAFromDE                                          ; $47fa: $df
	rst SubAFromBC                                          ; $47fb: $e7
	rst SubAFromDE                                          ; $47fc: $df
	jp $f9df                                         ; $47fd: $c3 $df $f9


	rst SubAFromDE                                          ; $4800: $df
	add hl, sp                                       ; $4801: $39
	rst SubAFromDE                                          ; $4802: $df
	add e                                            ; $4803: $83
	stop                                             ; $4804: $10 $00
	rst SubAFromDE                                          ; $4806: $df
	rst $38                                          ; $4807: $ff
	rst SubAFromDE                                          ; $4808: $df
	db $e3                                           ; $4809: $e3
	rst SubAFromDE                                          ; $480a: $df
	db $d3                                           ; $480b: $d3
	rst SubAFromDE                                          ; $480c: $df
	or e                                             ; $480d: $b3
	rst SubAFromDE                                          ; $480e: $df
	ld [hl], e                                       ; $480f: $73
	rst SubAFromDE                                          ; $4810: $df
	ld bc, $f3dd                                     ; $4811: $01 $dd $f3
	stop                                             ; $4814: $10 $00
	rst SubAFromDE                                          ; $4816: $df
	rst $38                                          ; $4817: $ff
	rst SubAFromDE                                          ; $4818: $df
	inc bc                                           ; $4819: $03
	rst SubAFromDE                                          ; $481a: $df
	ccf                                              ; $481b: $3f
	rst SubAFromDE                                          ; $481c: $df
	inc bc                                           ; $481d: $03
	db $dd                                           ; $481e: $dd
	ld sp, hl                                        ; $481f: $f9
	rst SubAFromDE                                          ; $4820: $df
	add hl, sp                                       ; $4821: $39
	rst SubAFromDE                                          ; $4822: $df
	add e                                            ; $4823: $83
	stop                                             ; $4824: $10 $00
	rst SubAFromDE                                          ; $4826: $df
	rst $38                                          ; $4827: $ff
	rst SubAFromDE                                          ; $4828: $df
	jp $9fdf                                         ; $4829: $c3 $df $9f


	rst SubAFromDE                                          ; $482c: $df
	ccf                                              ; $482d: $3f
	rst SubAFromDE                                          ; $482e: $df
	inc bc                                           ; $482f: $03
	db $dd                                           ; $4830: $dd
	add hl, sp                                       ; $4831: $39
	rst SubAFromDE                                          ; $4832: $df
	add e                                            ; $4833: $83
	ld c, $00                                        ; $4834: $0e $00
	rst SubAFromDE                                          ; $4836: $df
	rst $38                                          ; $4837: $ff
	rst SubAFromDE                                          ; $4838: $df
	ld bc, $39df                                     ; $4839: $01 $df $39
	rst SubAFromDE                                          ; $483c: $df
	di                                               ; $483d: $f3
	rst SubAFromDE                                          ; $483e: $df
	rst SubAFromBC                                          ; $483f: $e7
	db $db                                           ; $4840: $db
	rst GetHLinHL                                          ; $4841: $cf
	ld [de], a                                       ; $4842: $12
	nop                                              ; $4843: $00
	rst SubAFromDE                                          ; $4844: $df
	rst $38                                          ; $4845: $ff
	rst SubAFromDE                                          ; $4846: $df
	add a                                            ; $4847: $87
	rst SubAFromDE                                          ; $4848: $df
	dec sp                                           ; $4849: $3b
	rst SubAFromDE                                          ; $484a: $df
	dec de                                           ; $484b: $1b
	rst SubAFromDE                                          ; $484c: $df
	add e                                            ; $484d: $83
	rst SubAFromDE                                          ; $484e: $df
	ld h, c                                          ; $484f: $61
	rst SubAFromDE                                          ; $4850: $df
	ld a, c                                          ; $4851: $79
	rst SubAFromDE                                          ; $4852: $df
	add e                                            ; $4853: $83
	stop                                             ; $4854: $10 $00
	rst SubAFromDE                                          ; $4856: $df
	rst $38                                          ; $4857: $ff
	rst SubAFromDE                                          ; $4858: $df
	add e                                            ; $4859: $83
	db $dd                                           ; $485a: $dd
	add hl, sp                                       ; $485b: $39
	rst SubAFromDE                                          ; $485c: $df
	add c                                            ; $485d: $81
	rst SubAFromDE                                          ; $485e: $df
	ld sp, hl                                        ; $485f: $f9
	rst SubAFromDE                                          ; $4860: $df
	di                                               ; $4861: $f3
	rst SubAFromDE                                          ; $4862: $df
	add a                                            ; $4863: $87
	ld e, $00                                        ; $4864: $1e $00
	rst SubAFromDE                                          ; $4866: $df
	rst $38                                          ; $4867: $ff
	rst SubAFromDE                                          ; $4868: $df
	di                                               ; $4869: $f3
	rst SubAFromDE                                          ; $486a: $df
	ldh a, [$df]                                     ; $486b: $f0 $df
	and $df                                          ; $486d: $e6 $df
	ret nc                                           ; $486f: $d0

	rst SubAFromDE                                          ; $4870: $df
	ldh a, [c]                                       ; $4871: $f2
	rst SubAFromDE                                          ; $4872: $df
	ret nz                                           ; $4873: $c0

	rst SubAFromDE                                          ; $4874: $df
	cp $dd                                           ; $4875: $fe $dd
	rst $38                                          ; $4877: $ff
	rst SubAFromDE                                          ; $4878: $df
	rrca                                             ; $4879: $0f
	rst SubAFromDE                                          ; $487a: $df
	ld a, a                                          ; $487b: $7f
	ld [hl], a                                       ; $487c: $77
	db $fc                                           ; $487d: $fc
	rst SubAFromDE                                          ; $487e: $df
	rlca                                             ; $487f: $07
	rst SubAFromDE                                          ; $4880: $df
	ld a, a                                          ; $4881: $7f
	ld d, $00                                        ; $4882: $16 $00
	rst SubAFromDE                                          ; $4884: $df
	rst $38                                          ; $4885: $ff
	rst SubAFromDE                                          ; $4886: $df
	ldh a, [$df]                                     ; $4887: $f0 $df
	di                                               ; $4889: $f3
	ld l, a                                          ; $488a: $6f
	db $fc                                           ; $488b: $fc
	rst SubAFromDE                                          ; $488c: $df
	rst SubAFromBC                                          ; $488d: $e7
	rst SubAFromDE                                          ; $488e: $df
	rst GetHLinHL                                          ; $488f: $cf
	rst SubAFromDE                                          ; $4890: $df
	rst $38                                          ; $4891: $ff
	rst SubAFromDE                                          ; $4892: $df
	rrca                                             ; $4893: $0f
	rst SubAFromDE                                          ; $4894: $df
	rst GetHLinHL                                          ; $4895: $cf
	ld e, a                                          ; $4896: $5f
	db $fc                                           ; $4897: $fc
	ld [de], a                                       ; $4898: $12
	nop                                              ; $4899: $00
	rst SubAFromDE                                          ; $489a: $df
	rst $38                                          ; $489b: $ff
	rst SubAFromDE                                          ; $489c: $df
	ldh a, [$dd]                                     ; $489d: $f0 $dd
	di                                               ; $489f: $f3
	ld h, a                                          ; $48a0: $67
	ld a, [$ffdf]                                    ; $48a1: $fa $df $ff
	rst SubAFromDE                                          ; $48a4: $df
	rrca                                             ; $48a5: $0f
	db $dd                                           ; $48a6: $dd
	rst GetHLinHL                                          ; $48a7: $cf
	ld h, a                                          ; $48a8: $67
	ld a, [$0022]                                    ; $48a9: $fa $22 $00
	rst SubAFromDE                                          ; $48ac: $df
	or b                                             ; $48ad: $b0
	rst SubAFromDE                                          ; $48ae: $df
	inc sp                                           ; $48af: $33
	rst SubAFromDE                                          ; $48b0: $df
	ld [hl], e                                       ; $48b1: $73
	rst SubAFromDE                                          ; $48b2: $df
	ld [hl], b                                       ; $48b3: $70
	rst SubAFromDE                                          ; $48b4: $df
	ld [hl], e                                       ; $48b5: $73
	rst SubAFromDE                                          ; $48b6: $df
	inc sp                                           ; $48b7: $33
	rst SubAFromDE                                          ; $48b8: $df
	or b                                             ; $48b9: $b0
	rst SubAFromDE                                          ; $48ba: $df
	rst $38                                          ; $48bb: $ff
	rst SubAFromDE                                          ; $48bc: $df
	dec c                                            ; $48bd: $0d
	rst SubAFromDE                                          ; $48be: $df
	call z, $cedf                                    ; $48bf: $cc $df $ce
	rst SubAFromDE                                          ; $48c2: $df
	ld c, $df                                        ; $48c3: $0e $df
	adc $df                                          ; $48c5: $ce $df
	call z, $0ddf                                    ; $48c7: $cc $df $0d
	rst SubAFromDE                                          ; $48ca: $df
	rst $38                                          ; $48cb: $ff
	ld [hl+], a                                      ; $48cc: $22
	nop                                              ; $48cd: $00
	rst SubAFromDE                                          ; $48ce: $df
	or b                                             ; $48cf: $b0
	rst SubAFromDE                                          ; $48d0: $df
	inc sp                                           ; $48d1: $33
	rst SubAFromDE                                          ; $48d2: $df
	ld [hl], b                                       ; $48d3: $70
	rst SubAFromDE                                          ; $48d4: $df
	ld [hl], e                                       ; $48d5: $73
	rst SubAFromDE                                          ; $48d6: $df
	ld [hl], b                                       ; $48d7: $70
	rst SubAFromDE                                          ; $48d8: $df
	daa                                              ; $48d9: $27
	rst SubAFromDE                                          ; $48da: $df
	adc a                                            ; $48db: $8f
	rst SubAFromDE                                          ; $48dc: $df
	rst $38                                          ; $48dd: $ff
	rst SubAFromDE                                          ; $48de: $df
	dec c                                            ; $48df: $0d
	rst SubAFromDE                                          ; $48e0: $df
	call z, $0edf                                    ; $48e1: $cc $df $0e
	rst SubAFromDE                                          ; $48e4: $df
	adc $df                                          ; $48e5: $ce $df
	ld c, $df                                        ; $48e7: $0e $df
	call z, $8ddf                                    ; $48e9: $cc $df $8d
	rst SubAFromDE                                          ; $48ec: $df
	rst $38                                          ; $48ed: $ff
	ld [hl+], a                                      ; $48ee: $22
	nop                                              ; $48ef: $00
	rst SubAFromDE                                          ; $48f0: $df
	cp [hl]                                          ; $48f1: $be
	rst SubAFromDE                                          ; $48f2: $df
	ld [hl], $df                                     ; $48f3: $36 $df
	ld [hl], d                                       ; $48f5: $72
	rst SubAFromDE                                          ; $48f6: $df
	ld a, d                                          ; $48f7: $7a
	rst SubAFromDE                                          ; $48f8: $df
	ld a, h                                          ; $48f9: $7c
	rst SubAFromDE                                          ; $48fa: $df
	add hl, sp                                       ; $48fb: $39
	rst SubAFromDE                                          ; $48fc: $df
	or e                                             ; $48fd: $b3
	rst SubAFromDE                                          ; $48fe: $df
	rst $38                                          ; $48ff: $ff
	rst SubAFromDE                                          ; $4900: $df
	ld a, l                                          ; $4901: $7d
	rst SubAFromDE                                          ; $4902: $df
	ld l, h                                          ; $4903: $6c
	rst SubAFromDE                                          ; $4904: $df
	ld c, [hl]                                       ; $4905: $4e
	rst SubAFromDE                                          ; $4906: $df
	ld e, [hl]                                       ; $4907: $5e
	rst SubAFromDE                                          ; $4908: $df
	ld a, $df                                        ; $4909: $3e $df
	sbc h                                            ; $490b: $9c
	rst SubAFromDE                                          ; $490c: $df
	call $ffdf                                       ; $490d: $cd $df $ff
	ld [hl+], a                                      ; $4910: $22
	nop                                              ; $4911: $00
	rst SubAFromDE                                          ; $4912: $df
	cp [hl]                                          ; $4913: $be
	rst SubAFromDE                                          ; $4914: $df
	ld a, $df                                        ; $4915: $3e $df
	ld h, b                                          ; $4917: $60

jr_019_4918:
	rst SubAFromDE                                          ; $4918: $df
	ld a, b                                          ; $4919: $78
	rst SubAFromDE                                          ; $491a: $df
	ld [hl], d                                       ; $491b: $72
	rst SubAFromDE                                          ; $491c: $df
	inc h                                            ; $491d: $24
	rst SubAFromDE                                          ; $491e: $df
	cp [hl]                                          ; $491f: $be
	rst SubAFromDE                                          ; $4920: $df
	rst $38                                          ; $4921: $ff
	rst SubAFromDE                                          ; $4922: $df
	ld a, l                                          ; $4923: $7d
	rst SubAFromDE                                          ; $4924: $df
	ld h, h                                          ; $4925: $64
	rst SubAFromDE                                          ; $4926: $df
	ld c, [hl]                                       ; $4927: $4e
	rst SubAFromDE                                          ; $4928: $df
	ld e, $df                                        ; $4929: $1e $df
	ld c, [hl]                                       ; $492b: $4e
	rst SubAFromDE                                          ; $492c: $df
	ld h, h                                          ; $492d: $64
	rst SubAFromDE                                          ; $492e: $df
	ld a, l                                          ; $492f: $7d
	rst SubAFromDE                                          ; $4930: $df
	rst $38                                          ; $4931: $ff
	ld [hl+], a                                      ; $4932: $22
	nop                                              ; $4933: $00
	rst SubAFromDE                                          ; $4934: $df
	cp [hl]                                          ; $4935: $be
	rst SubAFromDE                                          ; $4936: $df
	jr nc, jr_019_4918                               ; $4937: $30 $df

	ld a, h                                          ; $4939: $7c
	rst SubAFromDE                                          ; $493a: $df
	ld a, b                                          ; $493b: $78
	rst SubAFromDE                                          ; $493c: $df
	ld [hl], d                                       ; $493d: $72
	rst SubAFromDE                                          ; $493e: $df
	ld h, $df                                        ; $493f: $26 $df
	cp [hl]                                          ; $4941: $be
	rst SubAFromDE                                          ; $4942: $df
	rst $38                                          ; $4943: $ff
	rst SubAFromDE                                          ; $4944: $df
	ld a, l                                          ; $4945: $7d
	rst SubAFromDE                                          ; $4946: $df
	inc c                                            ; $4947: $0c
	rst SubAFromDE                                          ; $4948: $df
	ld a, $df                                        ; $4949: $3e $df
	ld e, $df                                        ; $494b: $1e $df
	ld c, [hl]                                       ; $494d: $4e
	rst SubAFromDE                                          ; $494e: $df
	ld h, h                                          ; $494f: $64
	rst SubAFromDE                                          ; $4950: $df
	ld a, l                                          ; $4951: $7d
	rst SubAFromDE                                          ; $4952: $df
	rst $38                                          ; $4953: $ff
	ld [hl+], a                                      ; $4954: $22
	nop                                              ; $4955: $00
	rst SubAFromDE                                          ; $4956: $df
	cp h                                             ; $4957: $bc
	rst SubAFromDE                                          ; $4958: $df
	add hl, sp                                       ; $4959: $39
	rst SubAFromDE                                          ; $495a: $df
	ld [hl], b                                       ; $495b: $70
	rst SubAFromDE                                          ; $495c: $df
	ld l, [hl]                                       ; $495d: $6e
	rst SubAFromDE                                          ; $495e: $df
	ld [hl], b                                       ; $495f: $70
	rst SubAFromDE                                          ; $4960: $df
	ld a, [hl-]                                      ; $4961: $3a
	rst SubAFromDE                                          ; $4962: $df
	and b                                            ; $4963: $a0
	rst SubAFromDE                                          ; $4964: $df
	rst $38                                          ; $4965: $ff
	rst SubAFromDE                                          ; $4966: $df
	dec a                                            ; $4967: $3d
	rst SubAFromDE                                          ; $4968: $df
	sbc h                                            ; $4969: $9c
	rst SubAFromDE                                          ; $496a: $df
	ld c, $df                                        ; $496b: $0e $df
	halt                                             ; $496d: $76
	rst SubAFromDE                                          ; $496e: $df
	ld c, $df                                        ; $496f: $0e $df
	ld e, h                                          ; $4971: $5c
	rst SubAFromDE                                          ; $4972: $df
	dec b                                            ; $4973: $05
	rst SubAFromDE                                          ; $4974: $df
	rst $38                                          ; $4975: $ff
	ld e, $00                                        ; $4976: $1e $00
	rst SubAFromDE                                          ; $4978: $df
	cp [hl]                                          ; $4979: $be
	rst SubAFromDE                                          ; $497a: $df
	ld a, $df                                        ; $497b: $3e $df
	ld [hl], b                                       ; $497d: $70
	db $dd                                           ; $497e: $dd
	ld a, [hl]                                       ; $497f: $7e
	rst SubAFromDE                                          ; $4980: $df
	ld a, $df                                        ; $4981: $3e $df
	and b                                            ; $4983: $a0
	rst SubAFromDE                                          ; $4984: $df
	rst $38                                          ; $4985: $ff
	rst SubAFromDE                                          ; $4986: $df
	ld a, l                                          ; $4987: $7d
	rst SubAFromDE                                          ; $4988: $df
	ld a, h                                          ; $4989: $7c
	rst SubAFromDE                                          ; $498a: $df
	ld c, $dd                                        ; $498b: $0e $dd
	ld a, [hl]                                       ; $498d: $7e
	rst SubAFromDE                                          ; $498e: $df
	ld a, h                                          ; $498f: $7c
	rst SubAFromDE                                          ; $4990: $df
	dec b                                            ; $4991: $05
	rst SubAFromDE                                          ; $4992: $df
	rst $38                                          ; $4993: $ff
	inc e                                            ; $4994: $1c
	nop                                              ; $4995: $00
	rst SubAFromDE                                          ; $4996: $df
	rst $38                                          ; $4997: $ff
	rst SubAFromDE                                          ; $4998: $df
	pop bc                                           ; $4999: $c1
	db $dd                                           ; $499a: $dd
	sbc h                                            ; $499b: $9c
	rst SubAFromDE                                          ; $499c: $df
	ret nz                                           ; $499d: $c0

	rst SubAFromDE                                          ; $499e: $df
	db $fc                                           ; $499f: $fc
	rst SubAFromDE                                          ; $49a0: $df
	ld sp, hl                                        ; $49a1: $f9
	rst SubAFromDE                                          ; $49a2: $df
	jp $ffdf                                         ; $49a3: $c3 $df $ff


	rst SubAFromDE                                          ; $49a6: $df
	ld bc, $39df                                     ; $49a7: $01 $df $39
	rst SubAFromDE                                          ; $49aa: $df
	di                                               ; $49ab: $f3
	rst SubAFromDE                                          ; $49ac: $df
	rst SubAFromBC                                          ; $49ad: $e7
	db $db                                           ; $49ae: $db
	rst GetHLinHL                                          ; $49af: $cf
	jr nz, jr_019_49b2                               ; $49b0: $20 $00

jr_019_49b2:
	rst SubAFromDE                                          ; $49b2: $df
	rst $38                                          ; $49b3: $ff
	rst SubAFromDE                                          ; $49b4: $df
	pop bc                                           ; $49b5: $c1
	db $dd                                           ; $49b6: $dd
	sbc h                                            ; $49b7: $9c
	rst SubAFromDE                                          ; $49b8: $df
	ret nz                                           ; $49b9: $c0

	rst SubAFromDE                                          ; $49ba: $df
	db $fc                                           ; $49bb: $fc
	rst SubAFromDE                                          ; $49bc: $df
	ld sp, hl                                        ; $49bd: $f9
	rst SubAFromDE                                          ; $49be: $df
	jp $ffdf                                         ; $49bf: $c3 $df $ff


	rst SubAFromDE                                          ; $49c2: $df
	add a                                            ; $49c3: $87
	rst SubAFromDE                                          ; $49c4: $df
	dec sp                                           ; $49c5: $3b
	rst SubAFromDE                                          ; $49c6: $df
	dec de                                           ; $49c7: $1b
	rst SubAFromDE                                          ; $49c8: $df
	add e                                            ; $49c9: $83
	rst SubAFromDE                                          ; $49ca: $df
	ld h, c                                          ; $49cb: $61
	rst SubAFromDE                                          ; $49cc: $df
	ld a, c                                          ; $49cd: $79
	rst SubAFromDE                                          ; $49ce: $df
	add e                                            ; $49cf: $83
	ld e, $00                                        ; $49d0: $1e $00
	rst SubAFromDE                                          ; $49d2: $df
	rst $38                                          ; $49d3: $ff
	rst SubAFromDE                                          ; $49d4: $df
	pop bc                                           ; $49d5: $c1
	db $dd                                           ; $49d6: $dd
	sbc h                                            ; $49d7: $9c
	rst SubAFromDE                                          ; $49d8: $df
	ret nz                                           ; $49d9: $c0

	rst SubAFromDE                                          ; $49da: $df
	db $fc                                           ; $49db: $fc
	rst SubAFromDE                                          ; $49dc: $df
	ld sp, hl                                        ; $49dd: $f9
	rst SubAFromDE                                          ; $49de: $df
	jp $ffdf                                         ; $49df: $c3 $df $ff


	rst SubAFromDE                                          ; $49e2: $df
	add e                                            ; $49e3: $83
	db $dd                                           ; $49e4: $dd
	add hl, sp                                       ; $49e5: $39
	rst SubAFromDE                                          ; $49e6: $df
	add c                                            ; $49e7: $81
	rst SubAFromDE                                          ; $49e8: $df
	ld sp, hl                                        ; $49e9: $f9
	rst SubAFromDE                                          ; $49ea: $df
	di                                               ; $49eb: $f3
	rst SubAFromDE                                          ; $49ec: $df
	add a                                            ; $49ed: $87
	ld [de], a                                       ; $49ee: $12
	nop                                              ; $49ef: $00
	rst SubAFromDE                                          ; $49f0: $df
	rst $38                                          ; $49f1: $ff
	rst SubAFromDE                                          ; $49f2: $df
	pop bc                                           ; $49f3: $c1
	rst SubAFromHL                                          ; $49f4: $d7
	sbc h                                            ; $49f5: $9c
	rst SubAFromDE                                          ; $49f6: $df
	pop bc                                           ; $49f7: $c1
	rst SubAFromDE                                          ; $49f8: $df
	rst $38                                          ; $49f9: $ff
	rst SubAFromDE                                          ; $49fa: $df
	add e                                            ; $49fb: $83
	rst SubAFromHL                                          ; $49fc: $d7
	add hl, sp                                       ; $49fd: $39
	rst SubAFromDE                                          ; $49fe: $df
	add e                                            ; $49ff: $83
	inc c                                            ; $4a00: $0c
	nop                                              ; $4a01: $00
	rst SubAFromDE                                          ; $4a02: $df
	rst $38                                          ; $4a03: $ff
	rst SubAFromDE                                          ; $4a04: $df
	cp $df                                           ; $4a05: $fe $df
	db $fc                                           ; $4a07: $fc
	reti                                             ; $4a08: $d9


	cp $df                                           ; $4a09: $fe $df
	db $fc                                           ; $4a0b: $fc
	ld [$df00], sp                                   ; $4a0c: $08 $00 $df
	rst $38                                          ; $4a0f: $ff
	push de                                          ; $4a10: $d5
	ld a, a                                          ; $4a11: $7f
	rst SubAFromDE                                          ; $4a12: $df
	ccf                                              ; $4a13: $3f
	ld [de], a                                       ; $4a14: $12
	nop                                              ; $4a15: $00
	rst SubAFromDE                                          ; $4a16: $df
	rst $38                                          ; $4a17: $ff
	rst SubAFromDE                                          ; $4a18: $df
	ld hl, sp-$21                                    ; $4a19: $f8 $df
	di                                               ; $4a1b: $f3
	rst SubAFromDE                                          ; $4a1c: $df
	rst $38                                          ; $4a1d: $ff
	rst SubAFromDE                                          ; $4a1e: $df
	db $fc                                           ; $4a1f: $fc
	rst SubAFromDE                                          ; $4a20: $df
	ld hl, sp-$21                                    ; $4a21: $f8 $df
	pop af                                           ; $4a23: $f1
	rst SubAFromDE                                          ; $4a24: $df
	ldh a, [rAUD1ENV]                                ; $4a25: $f0 $12
	nop                                              ; $4a27: $00
	rst SubAFromDE                                          ; $4a28: $df
	rst $38                                          ; $4a29: $ff
	rst SubAFromDE                                          ; $4a2a: $df
	ccf                                              ; $4a2b: $3f
	rst SubAFromDE                                          ; $4a2c: $df
	sbc a                                            ; $4a2d: $9f
	rst SubAFromDE                                          ; $4a2e: $df
	rra                                              ; $4a2f: $1f
	rst SubAFromDE                                          ; $4a30: $df
	ccf                                              ; $4a31: $3f
	rst SubAFromDE                                          ; $4a32: $df
	ld a, a                                          ; $4a33: $7f
	rst SubAFromDE                                          ; $4a34: $df
	rst $38                                          ; $4a35: $ff
	rst SubAFromDE                                          ; $4a36: $df
	rra                                              ; $4a37: $1f
	ld [de], a                                       ; $4a38: $12
	nop                                              ; $4a39: $00
	rst SubAFromDE                                          ; $4a3a: $df
	rst $38                                          ; $4a3b: $ff
	rst SubAFromDE                                          ; $4a3c: $df
	ld hl, sp-$21                                    ; $4a3d: $f8 $df
	rst $38                                          ; $4a3f: $ff
	rst SubAFromDE                                          ; $4a40: $df
	cp $df                                           ; $4a41: $fe $df
	db $fc                                           ; $4a43: $fc
	rst SubAFromDE                                          ; $4a44: $df
	rst $38                                          ; $4a45: $ff
	rst SubAFromDE                                          ; $4a46: $df
	di                                               ; $4a47: $f3
	rst SubAFromDE                                          ; $4a48: $df
	ld hl, sp+$10                                    ; $4a49: $f8 $10
	nop                                              ; $4a4b: $00
	rst SubAFromDE                                          ; $4a4c: $df
	rst $38                                          ; $4a4d: $ff
	rst SubAFromDE                                          ; $4a4e: $df
	rra                                              ; $4a4f: $1f
	rst SubAFromDE                                          ; $4a50: $df
	ccf                                              ; $4a51: $3f
	rst SubAFromDE                                          ; $4a52: $df
	ld a, a                                          ; $4a53: $7f
	rst SubAFromDE                                          ; $4a54: $df
	ccf                                              ; $4a55: $3f
	db $dd                                           ; $4a56: $dd
	sbc a                                            ; $4a57: $9f
	rst SubAFromDE                                          ; $4a58: $df
	ccf                                              ; $4a59: $3f
	stop                                             ; $4a5a: $10 $00
	rst SubAFromDE                                          ; $4a5c: $df
	rst $38                                          ; $4a5d: $ff
	rst SubAFromDE                                          ; $4a5e: $df
	cp $df                                           ; $4a5f: $fe $df
	db $fd                                           ; $4a61: $fd
	rst SubAFromDE                                          ; $4a62: $df
	ei                                               ; $4a63: $fb
	rst SubAFromDE                                          ; $4a64: $df
	rst FarCall                                          ; $4a65: $f7
	rst SubAFromDE                                          ; $4a66: $df
	ldh a, [$dd]                                     ; $4a67: $f0 $dd
	rst $38                                          ; $4a69: $ff
	ld a, [bc]                                       ; $4a6a: $0a
	nop                                              ; $4a6b: $00
	rst SubAFromDE                                          ; $4a6c: $df
	rst $38                                          ; $4a6d: $ff
	reti                                             ; $4a6e: $d9


	ccf                                              ; $4a6f: $3f
	rst SubAFromDE                                          ; $4a70: $df
	rra                                              ; $4a71: $1f
	db $dd                                           ; $4a72: $dd
	ccf                                              ; $4a73: $3f
	stop                                             ; $4a74: $10 $00
	rst SubAFromDE                                          ; $4a76: $df
	rst $38                                          ; $4a77: $ff
	rst SubAFromDE                                          ; $4a78: $df
	ldh a, [$df]                                     ; $4a79: $f0 $df
	di                                               ; $4a7b: $f3
	rst SubAFromDE                                          ; $4a7c: $df
	ldh a, [$dd]                                     ; $4a7d: $f0 $dd
	rst $38                                          ; $4a7f: $ff
	rst SubAFromDE                                          ; $4a80: $df
	di                                               ; $4a81: $f3
	rst SubAFromDE                                          ; $4a82: $df
	ld hl, sp+$0c                                    ; $4a83: $f8 $0c
	nop                                              ; $4a85: $00
	rst SubAFromDE                                          ; $4a86: $df
	rst $38                                          ; $4a87: $ff
	rst SubAFromDE                                          ; $4a88: $df
	ccf                                              ; $4a89: $3f
	ld [hl], a                                       ; $4a8a: $77
	db $fc                                           ; $4a8b: $fc
	db $db                                           ; $4a8c: $db
	sbc a                                            ; $4a8d: $9f
	rst SubAFromDE                                          ; $4a8e: $df
	ccf                                              ; $4a8f: $3f
	stop                                             ; $4a90: $10 $00
	rst SubAFromDE                                          ; $4a92: $df
	rst $38                                          ; $4a93: $ff
	rst SubAFromDE                                          ; $4a94: $df
	db $fc                                           ; $4a95: $fc
	rst SubAFromDE                                          ; $4a96: $df
	ld sp, hl                                        ; $4a97: $f9
	rst SubAFromDE                                          ; $4a98: $df
	di                                               ; $4a99: $f3
	rst SubAFromDE                                          ; $4a9a: $df
	ldh a, [$dd]                                     ; $4a9b: $f0 $dd
	di                                               ; $4a9d: $f3
	rst SubAFromDE                                          ; $4a9e: $df
	ld hl, sp+$0e                                    ; $4a9f: $f8 $0e
	nop                                              ; $4aa1: $00
	rst SubAFromDE                                          ; $4aa2: $df
	rst $38                                          ; $4aa3: $ff
	rst SubAFromDE                                          ; $4aa4: $df
	ccf                                              ; $4aa5: $3f
	db $dd                                           ; $4aa6: $dd
	rst $38                                          ; $4aa7: $ff
	rst SubAFromDE                                          ; $4aa8: $df
	ccf                                              ; $4aa9: $3f
	db $dd                                           ; $4aaa: $dd
	sbc a                                            ; $4aab: $9f
	rst SubAFromDE                                          ; $4aac: $df
	ccf                                              ; $4aad: $3f
	ld c, $00                                        ; $4aae: $0e $00
	rst SubAFromDE                                          ; $4ab0: $df
	rst $38                                          ; $4ab1: $ff
	rst SubAFromDE                                          ; $4ab2: $df
	ldh a, [$df]                                     ; $4ab3: $f0 $df
	di                                               ; $4ab5: $f3
	rst SubAFromDE                                          ; $4ab6: $df
	rst $38                                          ; $4ab7: $ff
	rst SubAFromDE                                          ; $4ab8: $df
	cp $db                                           ; $4ab9: $fe $db
	db $fc                                           ; $4abb: $fc
	ld c, $00                                        ; $4abc: $0e $00
	rst SubAFromDE                                          ; $4abe: $df
	rst $38                                          ; $4abf: $ff
	rst SubAFromDE                                          ; $4ac0: $df
	rra                                              ; $4ac1: $1f
	rst SubAFromDE                                          ; $4ac2: $df
	sbc a                                            ; $4ac3: $9f
	rst SubAFromDE                                          ; $4ac4: $df
	ccf                                              ; $4ac5: $3f
	rst SubAFromDE                                          ; $4ac6: $df
	ld a, a                                          ; $4ac7: $7f
	db $db                                           ; $4ac8: $db
	rst $38                                          ; $4ac9: $ff
	ld [de], a                                       ; $4aca: $12
	nop                                              ; $4acb: $00
	rst SubAFromDE                                          ; $4acc: $df
	rst $38                                          ; $4acd: $ff
	rst SubAFromDE                                          ; $4ace: $df
	ld hl, sp-$21                                    ; $4acf: $f8 $df
	di                                               ; $4ad1: $f3
	rst SubAFromDE                                          ; $4ad2: $df
	pop af                                           ; $4ad3: $f1
	rst SubAFromDE                                          ; $4ad4: $df
	ld hl, sp-$21                                    ; $4ad5: $f8 $df
	or $df                                           ; $4ad7: $f6 $df
	rst FarCall                                          ; $4ad9: $f7
	rst SubAFromDE                                          ; $4ada: $df
	ld hl, sp+$10                                    ; $4adb: $f8 $10
	nop                                              ; $4add: $00
	rst SubAFromDE                                          ; $4ade: $df
	rst $38                                          ; $4adf: $ff
	rst SubAFromDE                                          ; $4ae0: $df
	ld a, a                                          ; $4ae1: $7f
	db $dd                                           ; $4ae2: $dd
	cp a                                             ; $4ae3: $bf
	rst SubAFromDE                                          ; $4ae4: $df
	ccf                                              ; $4ae5: $3f
	rst SubAFromDE                                          ; $4ae6: $df
	rra                                              ; $4ae7: $1f
	rst SubAFromDE                                          ; $4ae8: $df
	sbc a                                            ; $4ae9: $9f
	rst SubAFromDE                                          ; $4aea: $df
	ccf                                              ; $4aeb: $3f
	ld c, $00                                        ; $4aec: $0e $00
	rst SubAFromDE                                          ; $4aee: $df
	rst $38                                          ; $4aef: $ff
	rst SubAFromDE                                          ; $4af0: $df
	ld hl, sp-$23                                    ; $4af1: $f8 $dd
	di                                               ; $4af3: $f3
	rst SubAFromDE                                          ; $4af4: $df
	ld hl, sp-$23                                    ; $4af5: $f8 $dd
	rst $38                                          ; $4af7: $ff
	rst SubAFromDE                                          ; $4af8: $df
	ld hl, sp+$10                                    ; $4af9: $f8 $10
	nop                                              ; $4afb: $00
	rst SubAFromDE                                          ; $4afc: $df
	rst $38                                          ; $4afd: $ff
	rst SubAFromDE                                          ; $4afe: $df
	ccf                                              ; $4aff: $3f
	db $dd                                           ; $4b00: $dd
	sbc a                                            ; $4b01: $9f
	rst SubAFromDE                                          ; $4b02: $df
	rra                                              ; $4b03: $1f
	rst SubAFromDE                                          ; $4b04: $df
	sbc a                                            ; $4b05: $9f
	rst SubAFromDE                                          ; $4b06: $df
	ccf                                              ; $4b07: $3f
	rst SubAFromDE                                          ; $4b08: $df
	ld a, a                                          ; $4b09: $7f
	inc c                                            ; $4b0a: $0c
	nop                                              ; $4b0b: $00
	rst SubAFromDE                                          ; $4b0c: $df
	rst $38                                          ; $4b0d: $ff
	rst SubAFromDE                                          ; $4b0e: $df
	di                                               ; $4b0f: $f3
	rst SubAFromDE                                          ; $4b10: $df
	db $e3                                           ; $4b11: $e3
	reti                                             ; $4b12: $d9


	di                                               ; $4b13: $f3
	rst SubAFromDE                                          ; $4b14: $df
	pop hl                                           ; $4b15: $e1
	ld [de], a                                       ; $4b16: $12
	nop                                              ; $4b17: $00
	rst SubAFromDE                                          ; $4b18: $df
	rst $38                                          ; $4b19: $ff
	rst SubAFromDE                                          ; $4b1a: $df
	pop bc                                           ; $4b1b: $c1
	rst SubAFromDE                                          ; $4b1c: $df
	sbc h                                            ; $4b1d: $9c
	rst SubAFromDE                                          ; $4b1e: $df
	ld hl, sp-$21                                    ; $4b1f: $f8 $df
	pop hl                                           ; $4b21: $e1
	rst SubAFromDE                                          ; $4b22: $df
	jp $8fdf                                         ; $4b23: $c3 $df $8f


	rst SubAFromDE                                          ; $4b26: $df
	add b                                            ; $4b27: $80
	ld [de], a                                       ; $4b28: $12
	nop                                              ; $4b29: $00
	rst SubAFromDE                                          ; $4b2a: $df
	rst $38                                          ; $4b2b: $ff
	rst SubAFromDE                                          ; $4b2c: $df
	ret nz                                           ; $4b2d: $c0

	rst SubAFromDE                                          ; $4b2e: $df
	ld sp, hl                                        ; $4b2f: $f9
	rst SubAFromDE                                          ; $4b30: $df
	di                                               ; $4b31: $f3
	rst SubAFromDE                                          ; $4b32: $df
	pop hl                                           ; $4b33: $e1
	rst SubAFromDE                                          ; $4b34: $df
	db $fc                                           ; $4b35: $fc
	rst SubAFromDE                                          ; $4b36: $df
	sbc h                                            ; $4b37: $9c
	rst SubAFromDE                                          ; $4b38: $df
	pop bc                                           ; $4b39: $c1
	inc a                                            ; $4b3a: $3c
	nop                                              ; $4b3b: $00
	rst SubAFromDE                                          ; $4b3c: $df
	rst $38                                          ; $4b3d: $ff
	rst SubAFromDE                                          ; $4b3e: $df
	ld sp, hl                                        ; $4b3f: $f9
	rst SubAFromDE                                          ; $4b40: $df
	db $fc                                           ; $4b41: $fc
	rst SubAFromDE                                          ; $4b42: $df
	cp $df                                           ; $4b43: $fe $df
	add b                                            ; $4b45: $80
	rst SubAFromDE                                          ; $4b46: $df
	rst $38                                          ; $4b47: $ff
	rst SubAFromDE                                          ; $4b48: $df
	rst AddAOntoHL                                          ; $4b49: $ef
	rst SubAFromDE                                          ; $4b4a: $df
	rst FarCall                                          ; $4b4b: $f7
	db $dd                                           ; $4b4c: $dd
	rst $38                                          ; $4b4d: $ff
	db $dd                                           ; $4b4e: $dd
	ld a, a                                          ; $4b4f: $7f
	rst SubAFromDE                                          ; $4b50: $df
	inc bc                                           ; $4b51: $03
	rst SubAFromDE                                          ; $4b52: $df
	sbc a                                            ; $4b53: $9f
	rst SubAFromDE                                          ; $4b54: $df
	adc a                                            ; $4b55: $8f
	rst SubAFromDE                                          ; $4b56: $df
	sbc a                                            ; $4b57: $9f
	db $dd                                           ; $4b58: $dd
	rst $38                                          ; $4b59: $ff
	rst SubAFromDE                                          ; $4b5a: $df
	ldh a, [$df]                                     ; $4b5b: $f0 $df
	db $fc                                           ; $4b5d: $fc
	rst SubAFromDE                                          ; $4b5e: $df
	ld sp, hl                                        ; $4b5f: $f9
	rst SubAFromDE                                          ; $4b60: $df
	db $e3                                           ; $4b61: $e3
	rst SubAFromDE                                          ; $4b62: $df
	ld hl, sp-$21                                    ; $4b63: $f8 $df
	db $fc                                           ; $4b65: $fc
	rst SubAFromDE                                          ; $4b66: $df
	rst $38                                          ; $4b67: $ff
	rst SubAFromDE                                          ; $4b68: $df
	rrca                                             ; $4b69: $0f
	rst SubAFromDE                                          ; $4b6a: $df
	ld a, a                                          ; $4b6b: $7f
	rst SubAFromDE                                          ; $4b6c: $df
	rst GetHLinHL                                          ; $4b6d: $cf
	rst SubAFromDE                                          ; $4b6e: $df
	sbc a                                            ; $4b6f: $9f
	rst SubAFromDE                                          ; $4b70: $df
	ccf                                              ; $4b71: $3f
	rst SubAFromDE                                          ; $4b72: $df
	ld [hl], a                                       ; $4b73: $77
	rst SubAFromDE                                          ; $4b74: $df
	di                                               ; $4b75: $f3
	ld b, b                                          ; $4b76: $40
	nop                                              ; $4b77: $00
	rst SubAFromDE                                          ; $4b78: $df
	di                                               ; $4b79: $f3
	rst SubAFromDE                                          ; $4b7a: $df
	ld hl, sp-$21                                    ; $4b7b: $f8 $df
	db $fc                                           ; $4b7d: $fc
	rst SubAFromDE                                          ; $4b7e: $df
	ld hl, sp-$21                                    ; $4b7f: $f8 $df
	di                                               ; $4b81: $f3
	rst SubAFromDE                                          ; $4b82: $df
	rst SubAFromBC                                          ; $4b83: $e7
	rst SubAFromDE                                          ; $4b84: $df
	sbc a                                            ; $4b85: $9f
	rst SubAFromDE                                          ; $4b86: $df
	rst $38                                          ; $4b87: $ff
	rst SubAFromDE                                          ; $4b88: $df
	ccf                                              ; $4b89: $3f
	rst SubAFromDE                                          ; $4b8a: $df
	ld a, a                                          ; $4b8b: $7f
	rst SubAFromDE                                          ; $4b8c: $df
	rst $38                                          ; $4b8d: $ff
	rst SubAFromDE                                          ; $4b8e: $df
	ld a, a                                          ; $4b8f: $7f
	rst SubAFromDE                                          ; $4b90: $df
	rra                                              ; $4b91: $1f
	rst SubAFromDE                                          ; $4b92: $df
	add e                                            ; $4b93: $83
	rst SubAFromDE                                          ; $4b94: $df
	rst SubAFromBC                                          ; $4b95: $e7
	rst SubAFromDE                                          ; $4b96: $df
	rst $38                                          ; $4b97: $ff
	rst SubAFromDE                                          ; $4b98: $df
	ret nz                                           ; $4b99: $c0

	rst SubAFromDE                                          ; $4b9a: $df
	cp $df                                           ; $4b9b: $fe $df
	ld a, [$e6df]                                    ; $4b9d: $fa $df $e6
	rst SubAFromDE                                          ; $4ba0: $df
	add $df                                          ; $4ba1: $c6 $df
	adc $df                                          ; $4ba3: $ce $df
	cp $df                                           ; $4ba5: $fe $df
	rst $38                                          ; $4ba7: $ff
	rst SubAFromDE                                          ; $4ba8: $df
	ld bc, $79df                                     ; $4ba9: $01 $df $79
	rst SubAFromDE                                          ; $4bac: $df
	ld c, a                                          ; $4bad: $4f
	rst SubAFromDE                                          ; $4bae: $df
	ld h, a                                          ; $4baf: $67
	rst SubAFromDE                                          ; $4bb0: $df
	ld h, e                                          ; $4bb1: $63
	rst SubAFromDE                                          ; $4bb2: $df
	ld [hl], e                                       ; $4bb3: $73
	ld [hl], a                                       ; $4bb4: $77
	sub $32                                          ; $4bb5: $d6 $32
	nop                                              ; $4bb7: $00
	rst SubAFromDE                                          ; $4bb8: $df
	rst $38                                          ; $4bb9: $ff
	rst SubAFromDE                                          ; $4bba: $df
	db $fc                                           ; $4bbb: $fc
	rst SubAFromDE                                          ; $4bbc: $df
	add h                                            ; $4bbd: $84
	reti                                             ; $4bbe: $d9


	call z, $84df                                    ; $4bbf: $cc $df $84
	rst SubAFromDE                                          ; $4bc2: $df
	rst $38                                          ; $4bc3: $ff
	rst SubAFromDE                                          ; $4bc4: $df
	inc bc                                           ; $4bc5: $03
	db $dd                                           ; $4bc6: $dd
	sub e                                            ; $4bc7: $93
	ld h, a                                          ; $4bc8: $67
	ld a, [$ffdd]                                    ; $4bc9: $fa $dd $ff
	rst SubAFromDE                                          ; $4bcc: $df
	ldh a, [$df]                                     ; $4bcd: $f0 $df
	db $fc                                           ; $4bcf: $fc
	rst SubAFromDE                                          ; $4bd0: $df
	ld sp, hl                                        ; $4bd1: $f9
	rst SubAFromDE                                          ; $4bd2: $df
	db $e3                                           ; $4bd3: $e3
	rst SubAFromDE                                          ; $4bd4: $df
	ld hl, sp-$21                                    ; $4bd5: $f8 $df
	db $fc                                           ; $4bd7: $fc
	rst SubAFromDE                                          ; $4bd8: $df
	rst $38                                          ; $4bd9: $ff
	rst SubAFromDE                                          ; $4bda: $df
	rrca                                             ; $4bdb: $0f
	rst SubAFromDE                                          ; $4bdc: $df
	ld a, a                                          ; $4bdd: $7f
	rst SubAFromDE                                          ; $4bde: $df
	rst GetHLinHL                                          ; $4bdf: $cf
	rst SubAFromDE                                          ; $4be0: $df
	sbc a                                            ; $4be1: $9f
	rst SubAFromDE                                          ; $4be2: $df
	ccf                                              ; $4be3: $3f
	rst SubAFromDE                                          ; $4be4: $df
	ld [hl], a                                       ; $4be5: $77
	rst SubAFromDE                                          ; $4be6: $df
	di                                               ; $4be7: $f3
	ld a, $00                                        ; $4be8: $3e $00
	rst SubAFromDE                                          ; $4bea: $df
	call z, $cfdf                                    ; $4beb: $cc $df $cf
	rst SubAFromDE                                          ; $4bee: $df
	set 3, a                                         ; $4bef: $cb $df
	add $df                                          ; $4bf1: $c6 $df
	adc a                                            ; $4bf3: $8f
	rst SubAFromDE                                          ; $4bf4: $df
	sbc a                                            ; $4bf5: $9f
	rst SubAFromDE                                          ; $4bf6: $df
	db $fc                                           ; $4bf7: $fc
	rst SubAFromDE                                          ; $4bf8: $df
	rst $38                                          ; $4bf9: $ff
	rst SubAFromDE                                          ; $4bfa: $df
	sub e                                            ; $4bfb: $93
	db $dd                                           ; $4bfc: $dd
	sbc a                                            ; $4bfd: $9f
	rst SubAFromDE                                          ; $4bfe: $df
	rlca                                             ; $4bff: $07
	db $dd                                           ; $4c00: $dd
	sbc a                                            ; $4c01: $9f
	rst SubAFromDE                                          ; $4c02: $df
	inc bc                                           ; $4c03: $03
	rst SubAFromDE                                          ; $4c04: $df
	rst $38                                          ; $4c05: $ff
	rst SubAFromDE                                          ; $4c06: $df
	ret nz                                           ; $4c07: $c0

	rst SubAFromDE                                          ; $4c08: $df
	cp $df                                           ; $4c09: $fe $df
	ld a, [$e6df]                                    ; $4c0b: $fa $df $e6
	rst SubAFromDE                                          ; $4c0e: $df
	add $df                                          ; $4c0f: $c6 $df
	adc $df                                          ; $4c11: $ce $df
	cp $df                                           ; $4c13: $fe $df
	rst $38                                          ; $4c15: $ff
	rst SubAFromDE                                          ; $4c16: $df
	ld bc, $79df                                     ; $4c17: $01 $df $79
	rst SubAFromDE                                          ; $4c1a: $df
	ld c, a                                          ; $4c1b: $4f
	rst SubAFromDE                                          ; $4c1c: $df
	ld h, a                                          ; $4c1d: $67
	rst SubAFromDE                                          ; $4c1e: $df
	ld h, e                                          ; $4c1f: $63
	rst SubAFromDE                                          ; $4c20: $df
	ld [hl], e                                       ; $4c21: $73
	rst SubAFromDE                                          ; $4c22: $df
	ld a, a                                          ; $4c23: $7f
	rst SubAFromDE                                          ; $4c24: $df
	rst $38                                          ; $4c25: $ff
	inc a                                            ; $4c26: $3c
	nop                                              ; $4c27: $00
	rst SubAFromDE                                          ; $4c28: $df
	rst $38                                          ; $4c29: $ff
	rst SubAFromDE                                          ; $4c2a: $df
	rst AddAOntoHL                                          ; $4c2b: $ef
	rst SubAFromDE                                          ; $4c2c: $df
	rst SubAFromBC                                          ; $4c2d: $e7
	rst SubAFromDE                                          ; $4c2e: $df
	add b                                            ; $4c2f: $80
	rst SubAFromDE                                          ; $4c30: $df
	rst FarCall                                          ; $4c31: $f7
	rst SubAFromDE                                          ; $4c32: $df
	rst $38                                          ; $4c33: $ff
	rst SubAFromDE                                          ; $4c34: $df
	ldh [$dd], a                                     ; $4c35: $e0 $dd
	rst $38                                          ; $4c37: $ff
	rst SubAFromDE                                          ; $4c38: $df
	rst SubAFromDE                                          ; $4c39: $df
	rst SubAFromDE                                          ; $4c3a: $df
	rst GetHLinHL                                          ; $4c3b: $cf
	rst SubAFromDE                                          ; $4c3c: $df
	inc bc                                           ; $4c3d: $03
	rst SubAFromDE                                          ; $4c3e: $df
	rst SubAFromDE                                          ; $4c3f: $df
	rst SubAFromDE                                          ; $4c40: $df
	rst $38                                          ; $4c41: $ff
	rst SubAFromDE                                          ; $4c42: $df
	rrca                                             ; $4c43: $0f

Call_019_4c44:
	db $dd                                           ; $4c44: $dd
	rst $38                                          ; $4c45: $ff
	db $dd                                           ; $4c46: $dd
	and $df                                          ; $4c47: $e6 $df
	xor $df                                          ; $4c49: $ee $df
	ret z                                            ; $4c4b: $c8

	rst SubAFromDE                                          ; $4c4c: $df
	sub $df                                          ; $4c4d: $d6 $df
	and [hl]                                         ; $4c4f: $a6
	rst SubAFromDE                                          ; $4c50: $df
	and $df                                          ; $4c51: $e6 $df
	rst $38                                          ; $4c53: $ff
	rst SubAFromDE                                          ; $4c54: $df
	ld e, a                                          ; $4c55: $5f
	rst SubAFromDE                                          ; $4c56: $df
	ld b, c                                          ; $4c57: $41
	rst SubAFromDE                                          ; $4c58: $df
	ld l, a                                          ; $4c59: $6f
	rst SubAFromDE                                          ; $4c5a: $df
	rra                                              ; $4c5b: $1f
	rst SubAFromDE                                          ; $4c5c: $df
	ld a, a                                          ; $4c5d: $7f
	rst SubAFromDE                                          ; $4c5e: $df
	ld h, c                                          ; $4c5f: $61
	rst SubAFromDE                                          ; $4c60: $df
	ld [hl], e                                       ; $4c61: $73
	ld [hl], $00                                     ; $4c62: $36 $00
	rst SubAFromDE                                          ; $4c64: $df
	add b                                            ; $4c65: $80
	rst SubAFromDE                                          ; $4c66: $df
	ld sp, hl                                        ; $4c67: $f9
	db $dd                                           ; $4c68: $dd
	di                                               ; $4c69: $f3
	rst SubAFromDE                                          ; $4c6a: $df
	rst SubAFromBC                                          ; $4c6b: $e7
	rst SubAFromDE                                          ; $4c6c: $df
	ldh [$df], a                                     ; $4c6d: $e0 $df
	rst JumpTable                                          ; $4c6f: $c7
	rst SubAFromDE                                          ; $4c70: $df
	rst $38                                          ; $4c71: $ff
	rst SubAFromDE                                          ; $4c72: $df
	inc bc                                           ; $4c73: $03
	rst SubAFromDE                                          ; $4c74: $df
	rst $38                                          ; $4c75: $ff
	rst SubAFromDE                                          ; $4c76: $df
	rst SubAFromDE                                          ; $4c77: $df
	rst SubAFromDE                                          ; $4c78: $df
	rst GetHLinHL                                          ; $4c79: $cf
	rst SubAFromDE                                          ; $4c7a: $df
	rlca                                             ; $4c7b: $07
	db $dd                                           ; $4c7c: $dd
	rst SubAFromBC                                          ; $4c7d: $e7
	rst SubAFromDE                                          ; $4c7e: $df
	rst $38                                          ; $4c7f: $ff
	db $dd                                           ; $4c80: $dd
	call nz, $a4df                                   ; $4c81: $c4 $df $a4
	db $dd                                           ; $4c84: $dd
	ldh [c], a                                       ; $4c85: $e2
	db $dd                                           ; $4c86: $dd
	and $df                                          ; $4c87: $e6 $df
	rst $38                                          ; $4c89: $ff
	db $dd                                           ; $4c8a: $dd
	inc sp                                           ; $4c8b: $33
	rst SubAFromDE                                          ; $4c8c: $df
	inc de                                           ; $4c8d: $13
	rst SubAFromDE                                          ; $4c8e: $df
	ld d, e                                          ; $4c8f: $53
	rst SubAFromDE                                          ; $4c90: $df
	ld [hl], e                                       ; $4c91: $73
	rst SubAFromDE                                          ; $4c92: $df
	ld h, e                                          ; $4c93: $63
	rst SubAFromDE                                          ; $4c94: $df
	ld [hl], e                                       ; $4c95: $73
	rst SubAFromDE                                          ; $4c96: $df
	rst $38                                          ; $4c97: $ff
	jr c, jr_019_4c9a                                ; $4c98: $38 $00

jr_019_4c9a:
	rst SubAFromDE                                          ; $4c9a: $df
	rst $38                                          ; $4c9b: $ff
	rst SubAFromDE                                          ; $4c9c: $df
	db $fc                                           ; $4c9d: $fc
	rst SubAFromDE                                          ; $4c9e: $df
	sbc h                                            ; $4c9f: $9c
	rst SubAFromDE                                          ; $4ca0: $df
	call z, $e7df                                    ; $4ca1: $cc $df $e7
	db $dd                                           ; $4ca4: $dd
	db $fc                                           ; $4ca5: $fc
	rst SubAFromDE                                          ; $4ca6: $df
	add h                                            ; $4ca7: $84
	rst SubAFromDE                                          ; $4ca8: $df
	rst $38                                          ; $4ca9: $ff
	rst SubAFromDE                                          ; $4caa: $df
	inc bc                                           ; $4cab: $03
	rst SubAFromDE                                          ; $4cac: $df
	sub e                                            ; $4cad: $93
	rst SubAFromDE                                          ; $4cae: $df
	inc bc                                           ; $4caf: $03
	rst SubAFromDE                                          ; $4cb0: $df
	sbc a                                            ; $4cb1: $9f
	ld l, a                                          ; $4cb2: $6f
	ld hl, sp-$21                                    ; $4cb3: $f8 $df
	rst $38                                          ; $4cb5: $ff
	rst SubAFromDE                                          ; $4cb6: $df
	ld hl, sp-$21                                    ; $4cb7: $f8 $df
	pop hl                                           ; $4cb9: $e1
	rst SubAFromDE                                          ; $4cba: $df
	ret nz                                           ; $4cbb: $c0

	rst SubAFromDE                                          ; $4cbc: $df
	ld sp, hl                                        ; $4cbd: $f9
	rst SubAFromDE                                          ; $4cbe: $df
	ldh [$df], a                                     ; $4cbf: $e0 $df
	jp hl                                            ; $4cc1: $e9


	rst SubAFromDE                                          ; $4cc2: $df
	ldh [$df], a                                     ; $4cc3: $e0 $df
	rst $38                                          ; $4cc5: $ff
	rst SubAFromDE                                          ; $4cc6: $df
	ld c, a                                          ; $4cc7: $4f
	rst SubAFromDE                                          ; $4cc8: $df
	rst GetHLinHL                                          ; $4cc9: $cf
	rst SubAFromDE                                          ; $4cca: $df
	rrca                                             ; $4ccb: $0f
	rst SubAFromDE                                          ; $4ccc: $df
	add c                                            ; $4ccd: $81
	db $db                                           ; $4cce: $db
	ld c, c                                          ; $4ccf: $49
	jr c, jr_019_4cd2                                ; $4cd0: $38 $00

jr_019_4cd2:
	db $dd                                           ; $4cd2: $dd
	db $e4                                           ; $4cd3: $e4
	rst SubAFromDE                                          ; $4cd4: $df
	rst SubAFromBC                                          ; $4cd5: $e7
	rst SubAFromDE                                          ; $4cd6: $df
	db $e4                                           ; $4cd7: $e4
	rst SubAFromDE                                          ; $4cd8: $df
	rst GetHLinHL                                          ; $4cd9: $cf
	rst SubAFromDE                                          ; $4cda: $df
	jp $98df                                         ; $4cdb: $c3 $df $98


	rst SubAFromDE                                          ; $4cde: $df
	rst $38                                          ; $4cdf: $ff
	rst SubAFromDE                                          ; $4ce0: $df
	sub e                                            ; $4ce1: $93
	rst SubAFromDE                                          ; $4ce2: $df
	inc bc                                           ; $4ce3: $03
	rst SubAFromDE                                          ; $4ce4: $df
	sbc a                                            ; $4ce5: $9f
	ld [hl], a                                       ; $4ce6: $77
	db $fc                                           ; $4ce7: $fc
	rst SubAFromDE                                          ; $4ce8: $df
	sbc e                                            ; $4ce9: $9b
	rst SubAFromDE                                          ; $4cea: $df
	rlca                                             ; $4ceb: $07
	rst SubAFromDE                                          ; $4cec: $df
	rst $38                                          ; $4ced: $ff
	rst SubAFromDE                                          ; $4cee: $df
	jp hl                                            ; $4cef: $e9


	rst SubAFromDE                                          ; $4cf0: $df
	ldh [$df], a                                     ; $4cf1: $e0 $df
	ld sp, hl                                        ; $4cf3: $f9
	rst SubAFromDE                                          ; $4cf4: $df
	ldh a, [rPCM34]                                  ; $4cf5: $f0 $77
	db $fc                                           ; $4cf7: $fc
	rst SubAFromDE                                          ; $4cf8: $df
	jp $ffdf                                         ; $4cf9: $c3 $df $ff


	db $dd                                           ; $4cfc: $dd
	ld c, c                                          ; $4cfd: $49
	db $dd                                           ; $4cfe: $dd
	ret                                              ; $4cff: $c9


	rst SubAFromDE                                          ; $4d00: $df
	reti                                             ; $4d01: $d9


	rst SubAFromDE                                          ; $4d02: $df
	ld d, c                                          ; $4d03: $51
	rst SubAFromDE                                          ; $4d04: $df
	cp e                                             ; $4d05: $bb
	rst SubAFromDE                                          ; $4d06: $df
	rst $38                                          ; $4d07: $ff
	ld l, $00                                        ; $4d08: $2e $00
	db $dd                                           ; $4d0a: $dd
	rst $38                                          ; $4d0b: $ff
	db $dd                                           ; $4d0c: $dd
	rst AddAOntoHL                                          ; $4d0d: $ef
	rst SubAFromDE                                          ; $4d0e: $df
	ldh [$dd], a                                     ; $4d0f: $e0 $dd
	rst AddAOntoHL                                          ; $4d11: $ef
	rst SubAFromDE                                          ; $4d12: $df
	rst SubAFromDE                                          ; $4d13: $df
	db $dd                                           ; $4d14: $dd
	rst $38                                          ; $4d15: $ff
	rst SubAFromDE                                          ; $4d16: $df
	ld hl, sp-$21                                    ; $4d17: $f8 $df
	rst $38                                          ; $4d19: $ff
	rst SubAFromDE                                          ; $4d1a: $df
	ccf                                              ; $4d1b: $3f
	rst SubAFromDE                                          ; $4d1c: $df
	or b                                             ; $4d1d: $b0
	db $dd                                           ; $4d1e: $dd
	cp a                                             ; $4d1f: $bf
	db $dd                                           ; $4d20: $dd
	rst $38                                          ; $4d21: $ff
	rst SubAFromDE                                          ; $4d22: $df
	rra                                              ; $4d23: $1f
	rst SubAFromDE                                          ; $4d24: $df
	rst $38                                          ; $4d25: $ff
	rst SubAFromDE                                          ; $4d26: $df
	db $fc                                           ; $4d27: $fc
	rst SubAFromDE                                          ; $4d28: $df
	rrca                                             ; $4d29: $0f
	db $dd                                           ; $4d2a: $dd
	rst AddAOntoHL                                          ; $4d2b: $ef
	rst SubAFromDE                                          ; $4d2c: $df
	rst $38                                          ; $4d2d: $ff
	db $dd                                           ; $4d2e: $dd
	db $eb                                           ; $4d2f: $eb
	rst SubAFromDE                                          ; $4d30: $df
	rst $38                                          ; $4d31: $ff
	rst SubAFromDE                                          ; $4d32: $df
	inc bc                                           ; $4d33: $03
	db $db                                           ; $4d34: $db
	ei                                               ; $4d35: $fb
	jr z, jr_019_4d38                                ; $4d36: $28 $00

jr_019_4d38:
	reti                                             ; $4d38: $d9


	rst $38                                          ; $4d39: $ff
	rst SubAFromDE                                          ; $4d3a: $df
	cp $df                                           ; $4d3b: $fe $df
	pop af                                           ; $4d3d: $f1
	db $dd                                           ; $4d3e: $dd
	rst $38                                          ; $4d3f: $ff
	db $dd                                           ; $4d40: $dd
	cp a                                             ; $4d41: $bf
	db $dd                                           ; $4d42: $dd
	ld a, a                                          ; $4d43: $7f
	rst SubAFromDE                                          ; $4d44: $df
	rst $38                                          ; $4d45: $ff
	rst SubAFromDE                                          ; $4d46: $df
	ld hl, sp-$23                                    ; $4d47: $f8 $dd
	rst $38                                          ; $4d49: $ff
	db $dd                                           ; $4d4a: $dd
	rst AddAOntoHL                                          ; $4d4b: $ef
	db $dd                                           ; $4d4c: $dd
	rst SubAFromDE                                          ; $4d4d: $df
	rst SubAFromDE                                          ; $4d4e: $df
	cp a                                             ; $4d4f: $bf
	rst SubAFromDE                                          ; $4d50: $df
	ld a, [hl]                                       ; $4d51: $7e
	db $dd                                           ; $4d52: $dd
	rst $38                                          ; $4d53: $ff
	db $dd                                           ; $4d54: $dd
	ei                                               ; $4d55: $fb
	db $dd                                           ; $4d56: $dd
	rst FarCall                                          ; $4d57: $f7
	rst SubAFromDE                                          ; $4d58: $df
	rst AddAOntoHL                                          ; $4d59: $ef
	rst SubAFromDE                                          ; $4d5a: $df
	rra                                              ; $4d5b: $1f
	db $dd                                           ; $4d5c: $dd
	rst $38                                          ; $4d5d: $ff
	jr c, jr_019_4d60                                ; $4d5e: $38 $00

jr_019_4d60:
	rst SubAFromDE                                          ; $4d60: $df
	rst $38                                          ; $4d61: $ff
	db $dd                                           ; $4d62: $dd
	rst SubAFromBC                                          ; $4d63: $e7
	rst SubAFromDE                                          ; $4d64: $df
	add e                                            ; $4d65: $83
	rst SubAFromDE                                          ; $4d66: $df
	ld [$98df], a                                    ; $4d67: $ea $df $98
	rst SubAFromDE                                          ; $4d6a: $df
	db $e4                                           ; $4d6b: $e4
	rst SubAFromDE                                          ; $4d6c: $df
	add c                                            ; $4d6d: $81
	rst SubAFromDE                                          ; $4d6e: $df
	rst $38                                          ; $4d6f: $ff
	rst SubAFromDE                                          ; $4d70: $df
	ccf                                              ; $4d71: $3f
	db $dd                                           ; $4d72: $dd
	daa                                              ; $4d73: $27
	rst SubAFromDE                                          ; $4d74: $df
	inc bc                                           ; $4d75: $03
	ld l, a                                          ; $4d76: $6f
	ld a, [$ffdf]                                    ; $4d77: $fa $df $ff
	rst SubAFromDE                                          ; $4d7a: $df
	push af                                          ; $4d7b: $f5
	rst SubAFromDE                                          ; $4d7c: $df
	ld a, [$ffdf]                                    ; $4d7d: $fa $df $ff
	rst SubAFromDE                                          ; $4d80: $df
	ret nz                                           ; $4d81: $c0

	rst SubAFromDE                                          ; $4d82: $df
	rst GetHLinHL                                          ; $4d83: $cf
	rst SubAFromDE                                          ; $4d84: $df
	ret z                                            ; $4d85: $c8

	db $dd                                           ; $4d86: $dd
	rst $38                                          ; $4d87: $ff
	rst SubAFromDE                                          ; $4d88: $df
	rst AddAOntoHL                                          ; $4d89: $ef
	rst SubAFromDE                                          ; $4d8a: $df
	rst JumpTable                                          ; $4d8b: $c7
	rst SubAFromDE                                          ; $4d8c: $df
	sbc a                                            ; $4d8d: $9f
	rst SubAFromDE                                          ; $4d8e: $df
	ld bc, $f9df                                     ; $4d8f: $01 $df $f9
	rst SubAFromDE                                          ; $4d92: $df
	add hl, bc                                       ; $4d93: $09
	rst SubAFromDE                                          ; $4d94: $df
	sbc a                                            ; $4d95: $9f
	ld l, $00                                        ; $4d96: $2e $00
	rst SubAFromDE                                          ; $4d98: $df
	rst SubAFromBC                                          ; $4d99: $e7
	db $dd                                           ; $4d9a: $dd
	jp $a5dd                                         ; $4d9b: $c3 $dd $a5


	rst SubAFromDE                                          ; $4d9e: $df
	and a                                            ; $4d9f: $a7
	rst SubAFromDE                                          ; $4da0: $df
	rst SubAFromBC                                          ; $4da1: $e7
	rst SubAFromDE                                          ; $4da2: $df
	rst $38                                          ; $4da3: $ff
	db $dd                                           ; $4da4: $dd
	daa                                              ; $4da5: $27
	rst SubAFromDE                                          ; $4da6: $df
	inc bc                                           ; $4da7: $03
	db $db                                           ; $4da8: $db
	daa                                              ; $4da9: $27
	rst SubAFromDE                                          ; $4daa: $df
	inc bc                                           ; $4dab: $03
	db $dd                                           ; $4dac: $dd
	rst $38                                          ; $4dad: $ff
	rst SubAFromDE                                          ; $4dae: $df
	ldh [$db], a                                     ; $4daf: $e0 $db
	rst $38                                          ; $4db1: $ff
	rst SubAFromDE                                          ; $4db2: $df
	ld sp, hl                                        ; $4db3: $f9
	rst SubAFromDE                                          ; $4db4: $df
	cp $df                                           ; $4db5: $fe $df
	rst $38                                          ; $4db7: $ff
	rst SubAFromDE                                          ; $4db8: $df
	ccf                                              ; $4db9: $3f
	rst SubAFromDE                                          ; $4dba: $df
	inc bc                                           ; $4dbb: $03
	rst SubAFromDE                                          ; $4dbc: $df
	ccf                                              ; $4dbd: $3f
	db $db                                           ; $4dbe: $db
	sbc a                                            ; $4dbf: $9f
	rst SubAFromDE                                          ; $4dc0: $df
	ccf                                              ; $4dc1: $3f
	rst SubAFromDE                                          ; $4dc2: $df
	rst $38                                          ; $4dc3: $ff
	ld a, $00                                        ; $4dc4: $3e $00
	rst SubAFromDE                                          ; $4dc6: $df
	rst $38                                          ; $4dc7: $ff
	rst SubAFromDE                                          ; $4dc8: $df
	ld hl, sp-$21                                    ; $4dc9: $f8 $df
	rst $38                                          ; $4dcb: $ff
	rst SubAFromDE                                          ; $4dcc: $df
	add b                                            ; $4dcd: $80
	rst SubAFromDE                                          ; $4dce: $df
	sbc a                                            ; $4dcf: $9f
	rst SubAFromDE                                          ; $4dd0: $df
	sub d                                            ; $4dd1: $92
	rst SubAFromDE                                          ; $4dd2: $df
	db $e4                                           ; $4dd3: $e4
	rst SubAFromDE                                          ; $4dd4: $df
	ret                                              ; $4dd5: $c9


	rst SubAFromDE                                          ; $4dd6: $df
	rst $38                                          ; $4dd7: $ff
	rst SubAFromDE                                          ; $4dd8: $df
	ld a, a                                          ; $4dd9: $7f
	rst SubAFromDE                                          ; $4dda: $df
	rst $38                                          ; $4ddb: $ff
	rst SubAFromDE                                          ; $4ddc: $df
	inc bc                                           ; $4ddd: $03
	rst SubAFromDE                                          ; $4dde: $df
	di                                               ; $4ddf: $f3
	rst SubAFromDE                                          ; $4de0: $df
	sub e                                            ; $4de1: $93
	rst SubAFromDE                                          ; $4de2: $df
	ld c, a                                          ; $4de3: $4f
	rst SubAFromDE                                          ; $4de4: $df
	daa                                              ; $4de5: $27
	db $dd                                           ; $4de6: $dd
	rst $38                                          ; $4de7: $ff
	rst SubAFromDE                                          ; $4de8: $df
	rst GetHLinHL                                          ; $4de9: $cf
	rst SubAFromDE                                          ; $4dea: $df
	and $df                                          ; $4deb: $e6 $df
	db $fc                                           ; $4ded: $fc
	rst SubAFromDE                                          ; $4dee: $df
	ldh a, [$df]                                     ; $4def: $f0 $df
	jp $e6df                                         ; $4df1: $c3 $df $e6


	rst SubAFromDE                                          ; $4df4: $df
	rst $38                                          ; $4df5: $ff
	db $dd                                           ; $4df6: $dd
	ccf                                              ; $4df7: $3f
	rst SubAFromDE                                          ; $4df8: $df
	ld bc, $49df                                     ; $4df9: $01 $df $49
	rst SubAFromDE                                          ; $4dfc: $df
	adc e                                            ; $4dfd: $8b
	rst SubAFromDE                                          ; $4dfe: $df
	daa                                              ; $4dff: $27
	rst SubAFromDE                                          ; $4e00: $df
	ld [hl], e                                       ; $4e01: $73
	ld b, d                                          ; $4e02: $42
	nop                                              ; $4e03: $00
	rst SubAFromDE                                          ; $4e04: $df
	di                                               ; $4e05: $f3
	rst SubAFromDE                                          ; $4e06: $df
	rst SubAFromBC                                          ; $4e07: $e7
	rst SubAFromDE                                          ; $4e08: $df
	ret nz                                           ; $4e09: $c0

	rst SubAFromDE                                          ; $4e0a: $df
	add a                                            ; $4e0b: $87
	rst SubAFromDE                                          ; $4e0c: $df
	rst SubAFromBC                                          ; $4e0d: $e7
	rst SubAFromDE                                          ; $4e0e: $df
	ldh [$df], a                                     ; $4e0f: $e0 $df
	rst SubAFromBC                                          ; $4e11: $e7
	rst SubAFromDE                                          ; $4e12: $df
	rst $38                                          ; $4e13: $ff
	rst SubAFromDE                                          ; $4e14: $df
	sbc a                                            ; $4e15: $9f
	rst SubAFromDE                                          ; $4e16: $df
	rst GetHLinHL                                          ; $4e17: $cf
	rst SubAFromDE                                          ; $4e18: $df
	rlca                                             ; $4e19: $07
	rst SubAFromDE                                          ; $4e1a: $df
	jp $cfdf                                         ; $4e1b: $c3 $df $cf


	rst SubAFromDE                                          ; $4e1e: $df
	rrca                                             ; $4e1f: $0f
	rst SubAFromDE                                          ; $4e20: $df
	rst GetHLinHL                                          ; $4e21: $cf
	rst SubAFromDE                                          ; $4e22: $df
	rst $38                                          ; $4e23: $ff
	rst SubAFromDE                                          ; $4e24: $df
	cp $df                                           ; $4e25: $fe $df
	ret nz                                           ; $4e27: $c0

	rst SubAFromDE                                          ; $4e28: $df
	ld hl, sp-$21                                    ; $4e29: $f8 $df
	pop af                                           ; $4e2b: $f1
	rst SubAFromDE                                          ; $4e2c: $df
	db $fc                                           ; $4e2d: $fc
	rst SubAFromDE                                          ; $4e2e: $df
	ld hl, sp-$21                                    ; $4e2f: $f8 $df
	db $e3                                           ; $4e31: $e3
	rst SubAFromDE                                          ; $4e32: $df
	rst $38                                          ; $4e33: $ff
	rst SubAFromDE                                          ; $4e34: $df
	ld a, a                                          ; $4e35: $7f
	rst SubAFromDE                                          ; $4e36: $df
	ld bc, $8fdf                                     ; $4e37: $01 $df $8f
	rst SubAFromDE                                          ; $4e3a: $df
	rra                                              ; $4e3b: $1f
	rst SubAFromDE                                          ; $4e3c: $df
	ccf                                              ; $4e3d: $3f
	rst SubAFromDE                                          ; $4e3e: $df
	adc a                                            ; $4e3f: $8f
	rst SubAFromDE                                          ; $4e40: $df
	di                                               ; $4e41: $f3
	rst SubAFromDE                                          ; $4e42: $df
	rst $38                                          ; $4e43: $ff
	inc l                                            ; $4e44: $2c
	nop                                              ; $4e45: $00
	rst SubAFromDE                                          ; $4e46: $df
	rst $38                                          ; $4e47: $ff
	db $db                                           ; $4e48: $db
	di                                               ; $4e49: $f3
	rst SubAFromDE                                          ; $4e4a: $df
	rst SubAFromBC                                          ; $4e4b: $e7
	rst SubAFromDE                                          ; $4e4c: $df
	db $e4                                           ; $4e4d: $e4
	db $dd                                           ; $4e4e: $dd
	rst JumpTable                                          ; $4e4f: $c7
	rst SubAFromDE                                          ; $4e50: $df
	rst $38                                          ; $4e51: $ff
	reti                                             ; $4e52: $d9


	sbc a                                            ; $4e53: $9f
	rst SubAFromDE                                          ; $4e54: $df
	inc bc                                           ; $4e55: $03
	rst SubAFromDE                                          ; $4e56: $df
	sbc a                                            ; $4e57: $9f
	rst SubAFromDE                                          ; $4e58: $df
	rrca                                             ; $4e59: $0f
	rst SubAFromDE                                          ; $4e5a: $df
	rst $38                                          ; $4e5b: $ff
	rst SubAFromDE                                          ; $4e5c: $df
	ei                                               ; $4e5d: $fb
	rst SubAFromDE                                          ; $4e5e: $df
	db $fd                                           ; $4e5f: $fd
	rst SubAFromDE                                          ; $4e60: $df
	ldh [$df], a                                     ; $4e61: $e0 $df
	cp $6f                                           ; $4e63: $fe $6f
	db $fc                                           ; $4e65: $fc
	rst SubAFromDE                                          ; $4e66: $df
	rst $38                                          ; $4e67: $ff
	rst SubAFromDE                                          ; $4e68: $df
	rst GetHLinHL                                          ; $4e69: $cf
	ld [hl], a                                       ; $4e6a: $77
	db $e4                                           ; $4e6b: $e4
	rst SubAFromDE                                          ; $4e6c: $df
	ld a, a                                          ; $4e6d: $7f
	ld l, a                                          ; $4e6e: $6f
	db $fc                                           ; $4e6f: $fc
	ld a, [hl-]                                      ; $4e70: $3a
	nop                                              ; $4e71: $00
	rst SubAFromDE                                          ; $4e72: $df
	and a                                            ; $4e73: $a7
	rst SubAFromDE                                          ; $4e74: $df
	rst SubAFromBC                                          ; $4e75: $e7
	db $dd                                           ; $4e76: $dd
	and $df                                          ; $4e77: $e6 $df
	push hl                                          ; $4e79: $e5
	db $dd                                           ; $4e7a: $dd
	rst SubAFromBC                                          ; $4e7b: $e7
	rst SubAFromDE                                          ; $4e7c: $df
	rst $38                                          ; $4e7d: $ff
	rst SubAFromDE                                          ; $4e7e: $df
	rrca                                             ; $4e7f: $0f
	rst SubAFromDE                                          ; $4e80: $df
	rla                                              ; $4e81: $17
	rst SubAFromDE                                          ; $4e82: $df
	sub a                                            ; $4e83: $97
	db $dd                                           ; $4e84: $dd
	sbc e                                            ; $4e85: $9b
	db $dd                                           ; $4e86: $dd
	sbc a                                            ; $4e87: $9f
	rst SubAFromDE                                          ; $4e88: $df
	rst $38                                          ; $4e89: $ff
	rst SubAFromDE                                          ; $4e8a: $df
	ldh a, [$df]                                     ; $4e8b: $f0 $df
	db $e3                                           ; $4e8d: $e3
	rst SubAFromDE                                          ; $4e8e: $df
	ret nz                                           ; $4e8f: $c0

	rst SubAFromDE                                          ; $4e90: $df
	ldh a, [$df]                                     ; $4e91: $f0 $df
	ldh a, [c]                                       ; $4e93: $f2
	rst SubAFromDE                                          ; $4e94: $df
	ldh a, [$df]                                     ; $4e95: $f0 $df
	pop hl                                           ; $4e97: $e1
	rst SubAFromDE                                          ; $4e98: $df
	rst $38                                          ; $4e99: $ff
	rst SubAFromDE                                          ; $4e9a: $df
	rlca                                             ; $4e9b: $07
	rst SubAFromDE                                          ; $4e9c: $df
	jp $01df                                         ; $4e9d: $c3 $df $01


	rst SubAFromDE                                          ; $4ea0: $df
	rst JumpTable                                          ; $4ea1: $c7
	rst SubAFromDE                                          ; $4ea2: $df
	rra                                              ; $4ea3: $1f
	rst SubAFromDE                                          ; $4ea4: $df
	ld c, a                                          ; $4ea5: $4f
	rst SubAFromDE                                          ; $4ea6: $df
	db $e3                                           ; $4ea7: $e3
	rst SubAFromDE                                          ; $4ea8: $df
	rst $38                                          ; $4ea9: $ff
	jr c, jr_019_4eac                                ; $4eaa: $38 $00

jr_019_4eac:
	rst SubAFromDE                                          ; $4eac: $df
	rst $38                                          ; $4ead: $ff
	rst SubAFromDE                                          ; $4eae: $df
	ldh a, [$df]                                     ; $4eaf: $f0 $df
	db $fc                                           ; $4eb1: $fc
	rst SubAFromDE                                          ; $4eb2: $df
	add b                                            ; $4eb3: $80
	rst SubAFromDE                                          ; $4eb4: $df
	sbc h                                            ; $4eb5: $9c
	rst SubAFromDE                                          ; $4eb6: $df
	add h                                            ; $4eb7: $84
	rst SubAFromDE                                          ; $4eb8: $df
	sub b                                            ; $4eb9: $90
	rst SubAFromDE                                          ; $4eba: $df
	sbc h                                            ; $4ebb: $9c
	rst SubAFromDE                                          ; $4ebc: $df
	rst $38                                          ; $4ebd: $ff
	rst SubAFromDE                                          ; $4ebe: $df
	ccf                                              ; $4ebf: $3f
	rst SubAFromDE                                          ; $4ec0: $df
	rst $38                                          ; $4ec1: $ff
	rst SubAFromDE                                          ; $4ec2: $df
	rlca                                             ; $4ec3: $07
	rst SubAFromDE                                          ; $4ec4: $df
	rst SubAFromBC                                          ; $4ec5: $e7
	rst SubAFromDE                                          ; $4ec6: $df
	daa                                              ; $4ec7: $27
	rst SubAFromDE                                          ; $4ec8: $df
	add a                                            ; $4ec9: $87
	rst SubAFromDE                                          ; $4eca: $df
	rst SubAFromBC                                          ; $4ecb: $e7
	rst SubAFromDE                                          ; $4ecc: $df
	rst $38                                          ; $4ecd: $ff
	rst SubAFromDE                                          ; $4ece: $df
	pop hl                                           ; $4ecf: $e1
	rst SubAFromDE                                          ; $4ed0: $df
	rst $38                                          ; $4ed1: $ff
	rst SubAFromDE                                          ; $4ed2: $df
	ret nz                                           ; $4ed3: $c0

	ld l, a                                          ; $4ed4: $6f
	ld hl, sp+$77                                    ; $4ed5: $f8 $77
	db $fc                                           ; $4ed7: $fc
	rst SubAFromDE                                          ; $4ed8: $df
	pop af                                           ; $4ed9: $f1
	ld [hl], a                                       ; $4eda: $77
	add sp, -$21                                     ; $4edb: $e8 $df
	rst SubAFromBC                                          ; $4edd: $e7
	rst SubAFromDE                                          ; $4ede: $df
	add c                                            ; $4edf: $81
	db $dd                                           ; $4ee0: $dd
	rst SubAFromBC                                          ; $4ee1: $e7
	inc l                                            ; $4ee2: $2c
	nop                                              ; $4ee3: $00
	rst SubAFromDE                                          ; $4ee4: $df
	ret nz                                           ; $4ee5: $c0

	rst SubAFromDE                                          ; $4ee6: $df
	call z, $fc6f                                    ; $4ee7: $cc $6f $fc
	rst SubAFromDE                                          ; $4eea: $df
	db $fc                                           ; $4eeb: $fc
	rst SubAFromDE                                          ; $4eec: $df
	cp $df                                           ; $4eed: $fe $df
	rst $38                                          ; $4eef: $ff
	rst SubAFromDE                                          ; $4ef0: $df
	rrca                                             ; $4ef1: $0f
	rst SubAFromDE                                          ; $4ef2: $df
	rst GetHLinHL                                          ; $4ef3: $cf
	ld l, a                                          ; $4ef4: $6f
	db $fc                                           ; $4ef5: $fc
	rst SubAFromDE                                          ; $4ef6: $df
	di                                               ; $4ef7: $f3
	rst SubAFromDE                                          ; $4ef8: $df
	rlca                                             ; $4ef9: $07
	db $dd                                           ; $4efa: $dd
	rst $38                                          ; $4efb: $ff
	ld [hl], a                                       ; $4efc: $77
	ldh [c], a                                       ; $4efd: $e2
	db $dd                                           ; $4efe: $dd
	call z, $f877                                    ; $4eff: $cc $77 $f8
	rst SubAFromDE                                          ; $4f02: $df
	rst $38                                          ; $4f03: $ff
	rst SubAFromDE                                          ; $4f04: $df
	rst SubAFromBC                                          ; $4f05: $e7
	rst SubAFromDE                                          ; $4f06: $df
	add c                                            ; $4f07: $81
	db $db                                           ; $4f08: $db
	sbc c                                            ; $4f09: $99
	ld [hl], a                                       ; $4f0a: $77
	ld hl, sp-$21                                    ; $4f0b: $f8 $df
	rst $38                                          ; $4f0d: $ff
	inc h                                            ; $4f0e: $24
	nop                                              ; $4f0f: $00
	rst SubAFromDE                                          ; $4f10: $df
	rst $38                                          ; $4f11: $ff
	db $dd                                           ; $4f12: $dd
	cp $df                                           ; $4f13: $fe $df
	ldh [$dd], a                                     ; $4f15: $e0 $dd
	rst $38                                          ; $4f17: $ff
	rst SubAFromDE                                          ; $4f18: $df
	ret nz                                           ; $4f19: $c0

	rst SubAFromDE                                          ; $4f1a: $df
	db $fd                                           ; $4f1b: $fd
	rst SubAFromDE                                          ; $4f1c: $df
	rst $38                                          ; $4f1d: $ff
	db $dd                                           ; $4f1e: $dd
	cp a                                             ; $4f1f: $bf
	rst SubAFromDE                                          ; $4f20: $df
	ld a, a                                          ; $4f21: $7f
	db $dd                                           ; $4f22: $dd
	rst $38                                          ; $4f23: $ff
	rst SubAFromDE                                          ; $4f24: $df
	ccf                                              ; $4f25: $3f
	db $db                                           ; $4f26: $db
	rst $38                                          ; $4f27: $ff
	rst SubAFromHL                                          ; $4f28: $d7
	cp $df                                           ; $4f29: $fe $df
	add [hl]                                         ; $4f2b: $86
	push de                                          ; $4f2c: $d5
	rst $38                                          ; $4f2d: $ff
	rst SubAFromDE                                          ; $4f2e: $df
	ld a, a                                          ; $4f2f: $7f
	rst SubAFromDE                                          ; $4f30: $df
	sbc a                                            ; $4f31: $9f
	ld a, [de]                                       ; $4f32: $1a
	nop                                              ; $4f33: $00
	reti                                             ; $4f34: $d9


	db $fd                                           ; $4f35: $fd
	rst SubAFromDE                                          ; $4f36: $df
	ei                                               ; $4f37: $fb
	rst SubAFromDE                                          ; $4f38: $df
	rst SubAFromBC                                          ; $4f39: $e7
	db $dd                                           ; $4f3a: $dd
	rst $38                                          ; $4f3b: $ff
	rst SubAFromDE                                          ; $4f3c: $df
	ldh a, [$d3]                                     ; $4f3d: $f0 $d3
	rst $38                                          ; $4f3f: $ff
	rst SubAFromDE                                          ; $4f40: $df
	ld a, [hl]                                       ; $4f41: $7e
	rst SubAFromHL                                          ; $4f42: $d7
	cp $dd                                           ; $4f43: $fe $dd
	rst $38                                          ; $4f45: $ff
	rst SubAFromDE                                          ; $4f46: $df
	rst SubAFromBC                                          ; $4f47: $e7
	rst SubAFromDE                                          ; $4f48: $df
	ei                                               ; $4f49: $fb
	push de                                          ; $4f4a: $d5
	rst $38                                          ; $4f4b: $ff
	ld [hl], $00                                     ; $4f4c: $36 $00
	rst SubAFromDE                                          ; $4f4e: $df
	rst $38                                          ; $4f4f: $ff
	rst SubAFromDE                                          ; $4f50: $df
	rst SubAFromBC                                          ; $4f51: $e7
	rst SubAFromDE                                          ; $4f52: $df
	and $df                                          ; $4f53: $e6 $df
	rst SubAFromBC                                          ; $4f55: $e7
	rst SubAFromDE                                          ; $4f56: $df
	add $df                                          ; $4f57: $c6 $df
	jp $c0df                                         ; $4f59: $c3 $df $c0


	rst SubAFromDE                                          ; $4f5c: $df
	add b                                            ; $4f5d: $80
	rst SubAFromDE                                          ; $4f5e: $df
	rst $38                                          ; $4f5f: $ff
	rst SubAFromDE                                          ; $4f60: $df
	sbc a                                            ; $4f61: $9f
	rst SubAFromDE                                          ; $4f62: $df
	rlca                                             ; $4f63: $07
	ld l, a                                          ; $4f64: $6f
	db $fc                                           ; $4f65: $fc
	db $dd                                           ; $4f66: $dd
	inc bc                                           ; $4f67: $03
	rst SubAFromDE                                          ; $4f68: $df
	rst $38                                          ; $4f69: $ff
	rst SubAFromDE                                          ; $4f6a: $df
	di                                               ; $4f6b: $f3
	rst SubAFromDE                                          ; $4f6c: $df
	ret nz                                           ; $4f6d: $c0

	db $dd                                           ; $4f6e: $dd
	di                                               ; $4f6f: $f3
	rst SubAFromDE                                          ; $4f70: $df
	ret nz                                           ; $4f71: $c0

	db $dd                                           ; $4f72: $dd
	db $ed                                           ; $4f73: $ed
	rst SubAFromDE                                          ; $4f74: $df
	rst $38                                          ; $4f75: $ff
	rst SubAFromDE                                          ; $4f76: $df
	add c                                            ; $4f77: $81
	rst SubAFromDE                                          ; $4f78: $df
	sbc c                                            ; $4f79: $99
	rst SubAFromDE                                          ; $4f7a: $df
	sub a                                            ; $4f7b: $97
	rst SubAFromDE                                          ; $4f7c: $df
	sbc a                                            ; $4f7d: $9f
	ld [hl], a                                       ; $4f7e: $77
	ld hl, sp-$21                                    ; $4f7f: $f8 $df
	sbc c                                            ; $4f81: $99
	inc [hl]                                         ; $4f82: $34
	nop                                              ; $4f83: $00
	rst SubAFromDE                                          ; $4f84: $df
	and d                                            ; $4f85: $a2
	rst SubAFromDE                                          ; $4f86: $df
	and [hl]                                         ; $4f87: $a6
	reti                                             ; $4f88: $d9


	and $df                                          ; $4f89: $e6 $df
	db $e4                                           ; $4f8b: $e4
	rst SubAFromDE                                          ; $4f8c: $df
	rst $38                                          ; $4f8d: $ff
	rst SubAFromDE                                          ; $4f8e: $df
	rlca                                             ; $4f8f: $07
	rst SubAFromDE                                          ; $4f90: $df
	ld h, a                                          ; $4f91: $67
	db $dd                                           ; $4f92: $dd
	rlca                                             ; $4f93: $07
	rst SubAFromDE                                          ; $4f94: $df
	ld h, a                                          ; $4f95: $67
	rst SubAFromDE                                          ; $4f96: $df
	ld b, a                                          ; $4f97: $47
	rst SubAFromDE                                          ; $4f98: $df
	rst SubAFromBC                                          ; $4f99: $e7
	rst SubAFromDE                                          ; $4f9a: $df
	rst $38                                          ; $4f9b: $ff
	rst SubAFromDE                                          ; $4f9c: $df
	ret nz                                           ; $4f9d: $c0

	db $dd                                           ; $4f9e: $dd
	di                                               ; $4f9f: $f3
	ld l, a                                          ; $4fa0: $6f
	ld a, [$f3df]                                    ; $4fa1: $fa $df $f3
	rst SubAFromDE                                          ; $4fa4: $df
	rst $38                                          ; $4fa5: $ff
	rst SubAFromDE                                          ; $4fa6: $df
	adc c                                            ; $4fa7: $89
	rst SubAFromDE                                          ; $4fa8: $df
	add e                                            ; $4fa9: $83
	rst SubAFromDE                                          ; $4faa: $df
	and e                                            ; $4fab: $a3
	rst SubAFromDE                                          ; $4fac: $df
	and a                                            ; $4fad: $a7
	rst SubAFromDE                                          ; $4fae: $df
	and e                                            ; $4faf: $a3
	rst SubAFromDE                                          ; $4fb0: $df
	ld e, c                                          ; $4fb1: $59
	rst SubAFromDE                                          ; $4fb2: $df
	dec a                                            ; $4fb3: $3d
	rst SubAFromDE                                          ; $4fb4: $df
	rst $38                                          ; $4fb5: $ff
	ld h, $00                                        ; $4fb6: $26 $00
	db $dd                                           ; $4fb8: $dd
	rst $38                                          ; $4fb9: $ff
	rst SubAFromDE                                          ; $4fba: $df
	sbc a                                            ; $4fbb: $9f
	rst SubAFromDE                                          ; $4fbc: $df
	rst AddAOntoHL                                          ; $4fbd: $ef
	rst SubAFromDE                                          ; $4fbe: $df
	rst $38                                          ; $4fbf: $ff
	rst SubAFromDE                                          ; $4fc0: $df
	sbc l                                            ; $4fc1: $9d
	rst SubAFromDE                                          ; $4fc2: $df
	db $ed                                           ; $4fc3: $ed
	rst SubAFromDE                                          ; $4fc4: $df
	db $fd                                           ; $4fc5: $fd
	db $db                                           ; $4fc6: $db
	rst $38                                          ; $4fc7: $ff
	rst SubAFromDE                                          ; $4fc8: $df
	add e                                            ; $4fc9: $83
	db $db                                           ; $4fca: $db
	ei                                               ; $4fcb: $fb
	rst SubAFromDE                                          ; $4fcc: $df
	rst FarCall                                          ; $4fcd: $f7
	ld h, a                                          ; $4fce: $67
	ldh a, [$dd]                                     ; $4fcf: $f0 $dd
	rst $38                                          ; $4fd1: $ff
	rst SubAFromDE                                          ; $4fd2: $df
	ld bc, $f06f                                     ; $4fd3: $01 $6f $f0
	db $db                                           ; $4fd6: $db
	rst AddAOntoHL                                          ; $4fd7: $ef
	db $dd                                           ; $4fd8: $dd
	rst SubAFromDE                                          ; $4fd9: $df
	rst SubAFromDE                                          ; $4fda: $df
	cp a                                             ; $4fdb: $bf
	inc l                                            ; $4fdc: $2c
	nop                                              ; $4fdd: $00
	rst SubAFromDE                                          ; $4fde: $df
	db $fd                                           ; $4fdf: $fd
	db $dd                                           ; $4fe0: $dd
	ei                                               ; $4fe1: $fb
	db $dd                                           ; $4fe2: $dd
	rst FarCall                                          ; $4fe3: $f7
	rst SubAFromDE                                          ; $4fe4: $df
	adc a                                            ; $4fe5: $8f
	db $dd                                           ; $4fe6: $dd
	rst $38                                          ; $4fe7: $ff
	rst SubAFromDE                                          ; $4fe8: $df
	rst FarCall                                          ; $4fe9: $f7
	rst SubAFromDE                                          ; $4fea: $df
	rst SubAFromBC                                          ; $4feb: $e7
	rst SubAFromDE                                          ; $4fec: $df
	db $eb                                           ; $4fed: $eb
	rst SubAFromDE                                          ; $4fee: $df
	db $db                                           ; $4fef: $db
	rst SubAFromDE                                          ; $4ff0: $df
	cp l                                             ; $4ff1: $bd
	rst SubAFromDE                                          ; $4ff2: $df
	ld a, l                                          ; $4ff3: $7d
	ld l, a                                          ; $4ff4: $6f
	ldh a, [$db]                                     ; $4ff5: $f0 $db
	rst FarCall                                          ; $4ff7: $f7
	rst SubAFromDE                                          ; $4ff8: $df
	rst AddAOntoHL                                          ; $4ff9: $ef
	rst SubAFromDE                                          ; $4ffa: $df
	sbc a                                            ; $4ffb: $9f
	db $dd                                           ; $4ffc: $dd
	rst $38                                          ; $4ffd: $ff
	rst SubAFromDE                                          ; $4ffe: $df
	cp a                                             ; $4fff: $bf
	rst SubAFromDE                                          ; $5000: $df
	ld a, e                                          ; $5001: $7b
	db $dd                                           ; $5002: $dd
	ld a, l                                          ; $5003: $7d
	rst SubAFromDE                                          ; $5004: $df
	ld bc, $e06f                                     ; $5005: $01 $6f $e0
	jr nc, jr_019_500a                               ; $5008: $30 $00

jr_019_500a:
	db $dd                                           ; $500a: $dd
	rst $38                                          ; $500b: $ff
	db $db                                           ; $500c: $db
	sbc $df                                          ; $500d: $de $df
	ld [bc], a                                       ; $500f: $02
	db $dd                                           ; $5010: $dd
	jp c, $ffdd                                      ; $5011: $da $dd $ff

	rst SubAFromDE                                          ; $5014: $df
	ei                                               ; $5015: $fb
	rst SubAFromDE                                          ; $5016: $df
	db $fd                                           ; $5017: $fd
	rst SubAFromDE                                          ; $5018: $df
	cp $dd                                           ; $5019: $fe $dd
	rst $38                                          ; $501b: $ff
	rst SubAFromDE                                          ; $501c: $df
	rst AddAOntoHL                                          ; $501d: $ef
	rst SubAFromDE                                          ; $501e: $df
	rst $38                                          ; $501f: $ff
	rst SubAFromDE                                          ; $5020: $df
	cp $df                                           ; $5021: $fe $df
	ld a, [$fbdf]                                    ; $5023: $fa $df $fb
	rst SubAFromDE                                          ; $5026: $df
	ret c                                            ; $5027: $d8

	db $dd                                           ; $5028: $dd
	db $db                                           ; $5029: $db
	rst SubAFromDE                                          ; $502a: $df
	push de                                          ; $502b: $d5
	rst SubAFromDE                                          ; $502c: $df
	rst $38                                          ; $502d: $ff
	db $dd                                           ; $502e: $dd
	cp a                                             ; $502f: $bf
	rst SubAFromDE                                          ; $5030: $df
	rst $38                                          ; $5031: $ff
	rst SubAFromDE                                          ; $5032: $df

Call_019_5033:
	ccf                                              ; $5033: $3f
	db $dd                                           ; $5034: $dd
	cp a                                             ; $5035: $bf
	rst SubAFromDE                                          ; $5036: $df
	cp h                                             ; $5037: $bc
	jr z, jr_019_503a                                ; $5038: $28 $00

jr_019_503a:
	db $db                                           ; $503a: $db
	jp c, $badd                                      ; $503b: $da $dd $ba

	rst SubAFromDE                                          ; $503e: $df
	halt                                             ; $503f: $76
	db $dd                                           ; $5040: $dd
	rst $38                                          ; $5041: $ff
	db $db                                           ; $5042: $db
	rst AddAOntoHL                                          ; $5043: $ef
	rst SubAFromDE                                          ; $5044: $df
	rst SubAFromDE                                          ; $5045: $df
	rst SubAFromDE                                          ; $5046: $df
	sbc $df                                          ; $5047: $de $df
	add hl, sp                                       ; $5049: $39
	db $dd                                           ; $504a: $dd
	rst $38                                          ; $504b: $ff
	rst SubAFromDE                                          ; $504c: $df
	sub $df                                          ; $504d: $d6 $df
	rst SubAFromDE                                          ; $504f: $df
	db $dd                                           ; $5050: $dd
	cp a                                             ; $5051: $bf
	rst SubAFromDE                                          ; $5052: $df
	ld a, [hl]                                       ; $5053: $7e
	rst SubAFromDE                                          ; $5054: $df
	ld sp, hl                                        ; $5055: $f9
	db $dd                                           ; $5056: $dd
	rst $38                                          ; $5057: $ff
	rst SubAFromDE                                          ; $5058: $df
	and e                                            ; $5059: $a3
	rst SubAFromDE                                          ; $505a: $df
	ccf                                              ; $505b: $3f
	db $dd                                           ; $505c: $dd
	ld a, a                                          ; $505d: $7f
	reti                                             ; $505e: $d9


	rst $38                                          ; $505f: $ff
	ld h, $00                                        ; $5060: $26 $00
	db $dd                                           ; $5062: $dd
	rst $38                                          ; $5063: $ff
	db $db                                           ; $5064: $db
	rst FarCall                                          ; $5065: $f7
	rst SubAFromDE                                          ; $5066: $df
	ldh a, [$df]                                     ; $5067: $f0 $df
	rst JumpTable                                          ; $5069: $c7
	rst SubAFromDE                                          ; $506a: $df
	rst FarCall                                          ; $506b: $f7
	reti                                             ; $506c: $d9


	rst $38                                          ; $506d: $ff
	rst SubAFromDE                                          ; $506e: $df
	rra                                              ; $506f: $1f
	db $dd                                           ; $5070: $dd
	rst SubAFromDE                                          ; $5071: $df
	rst SubAFromDE                                          ; $5072: $df
	cp a                                             ; $5073: $bf
	reti                                             ; $5074: $d9


	rst $38                                          ; $5075: $ff
	rst SubAFromDE                                          ; $5076: $df
	db $fc                                           ; $5077: $fc
	db $dd                                           ; $5078: $dd
	rst $38                                          ; $5079: $ff
	rst SubAFromDE                                          ; $507a: $df
	adc a                                            ; $507b: $8f
	rst SubAFromDE                                          ; $507c: $df
	rst $38                                          ; $507d: $ff
	db $dd                                           ; $507e: $dd
	db $eb                                           ; $507f: $eb
	rst SubAFromDE                                          ; $5080: $df
	rst $38                                          ; $5081: $ff
	rst SubAFromDE                                          ; $5082: $df
	inc bc                                           ; $5083: $03
	db $db                                           ; $5084: $db
	ei                                               ; $5085: $fb
	ld [hl+], a                                      ; $5086: $22
	nop                                              ; $5087: $00
	reti                                             ; $5088: $d9


	rst FarCall                                          ; $5089: $f7
	rst SubAFromDE                                          ; $508a: $df
	ei                                               ; $508b: $fb
	rst SubAFromDE                                          ; $508c: $df
	db $fc                                           ; $508d: $fc
	db $dd                                           ; $508e: $dd
	rst $38                                          ; $508f: $ff
	rst SubAFromDE                                          ; $5090: $df
	ld a, b                                          ; $5091: $78
	reti                                             ; $5092: $d9


	rst $38                                          ; $5093: $ff
	rst SubAFromDE                                          ; $5094: $df
	rra                                              ; $5095: $1f
	db $dd                                           ; $5096: $dd
	rst $38                                          ; $5097: $ff
	rst SubAFromDE                                          ; $5098: $df
	ld a, a                                          ; $5099: $7f
	reti                                             ; $509a: $d9


	rst $38                                          ; $509b: $ff
	rst SubAFromDE                                          ; $509c: $df
	cp $dd                                           ; $509d: $fe $dd
	rst $38                                          ; $509f: $ff
	db $dd                                           ; $50a0: $dd
	ei                                               ; $50a1: $fb
	db $dd                                           ; $50a2: $dd
	rst FarCall                                          ; $50a3: $f7
	rst SubAFromDE                                          ; $50a4: $df
	rst AddAOntoHL                                          ; $50a5: $ef
	ld l, a                                          ; $50a6: $6f
	ldh [rAUDENA], a                                 ; $50a7: $e0 $26
	nop                                              ; $50a9: $00
	db $dd                                           ; $50aa: $dd
	rst $38                                          ; $50ab: $ff
	db $dd                                           ; $50ac: $dd
	cp $df                                           ; $50ad: $fe $df
	db $fd                                           ; $50af: $fd
	rst SubAFromDE                                          ; $50b0: $df
	ld sp, hl                                        ; $50b1: $f9
	rst SubAFromDE                                          ; $50b2: $df
	di                                               ; $50b3: $f3
	rst SubAFromDE                                          ; $50b4: $df
	db $eb                                           ; $50b5: $eb
	db $dd                                           ; $50b6: $dd
	rst $38                                          ; $50b7: $ff
	db $db                                           ; $50b8: $db
	ld a, [$ffdf]                                    ; $50b9: $fa $df $ff
	rst SubAFromDE                                          ; $50bc: $df
	rst AddAOntoHL                                          ; $50bd: $ef
	rst SubAFromDE                                          ; $50be: $df
	rst SubAFromHL                                          ; $50bf: $d7
	db $db                                           ; $50c0: $db
	rst $38                                          ; $50c1: $ff
	rst SubAFromDE                                          ; $50c2: $df
	cp $df                                           ; $50c3: $fe $df
	add $db                                          ; $50c5: $c6 $db
	cp $dd                                           ; $50c7: $fe $dd
	rst $38                                          ; $50c9: $ff
	rst SubAFromHL                                          ; $50ca: $d7
	cp a                                             ; $50cb: $bf
	rst SubAFromDE                                          ; $50cc: $df
	adc a                                            ; $50cd: $8f
	ld h, $00                                        ; $50ce: $26 $00
	rst SubAFromDE                                          ; $50d0: $df
	sbc e                                            ; $50d1: $9b
	rst SubAFromHL                                          ; $50d2: $d7
	ei                                               ; $50d3: $fb
	db $dd                                           ; $50d4: $dd
	rst $38                                          ; $50d5: $ff
	rst SubAFromDE                                          ; $50d6: $df
	cp e                                             ; $50d7: $bb
	rst SubAFromDE                                          ; $50d8: $df
	db $fd                                           ; $50d9: $fd
	rst SubAFromDE                                          ; $50da: $df
	cp $d7                                           ; $50db: $fe $d7
	rst $38                                          ; $50dd: $ff
	db $dd                                           ; $50de: $dd
	cp $df                                           ; $50df: $fe $df
	db $fd                                           ; $50e1: $fd
	rst SubAFromDE                                          ; $50e2: $df
	ld a, l                                          ; $50e3: $7d
	rst SubAFromDE                                          ; $50e4: $df
	di                                               ; $50e5: $f3
	rst SubAFromDE                                          ; $50e6: $df
	rst GetHLinHL                                          ; $50e7: $cf
	db $dd                                           ; $50e8: $dd
	rst $38                                          ; $50e9: $ff
	rst SubAFromDE                                          ; $50ea: $df
	or a                                             ; $50eb: $b7
	rst SubAFromDE                                          ; $50ec: $df
	cp e                                             ; $50ed: $bb
	rst SubAFromDE                                          ; $50ee: $df
	cp l                                             ; $50ef: $bd
	db $db                                           ; $50f0: $db
	cp a                                             ; $50f1: $bf
	db $dd                                           ; $50f2: $dd
	rst $38                                          ; $50f3: $ff
	ld b, e                                          ; $50f4: $43
	inc b                                            ; $50f5: $04
	db $dd                                           ; $50f6: $dd
	ld bc, $029b                                     ; $50f7: $01 $9b $02
	inc bc                                           ; $50fa: $03
	ld [bc], a                                       ; $50fb: $02
	inc bc                                           ; $50fc: $03

jr_019_50fd:
	db $dd                                           ; $50fd: $dd
	ld bc, $3295                                     ; $50fe: $01 $95 $32
	inc sp                                           ; $5101: $33
	ld c, l                                          ; $5102: $4d
	ld a, a                                          ; $5103: $7f
	adc a                                            ; $5104: $8f
	ei                                               ; $5105: $fb
	sbc a                                            ; $5106: $9f
	ld hl, sp+$67                                    ; $5107: $f8 $67
	ld h, a                                          ; $5109: $67
	ei                                               ; $510a: $fb
	rst SubAFromDE                                          ; $510b: $df
	ccf                                              ; $510c: $3f
	rst $38                                          ; $510d: $ff
	rst SubAFromDE                                          ; $510e: $df
	cp $83                                           ; $510f: $fe $83
	rst $38                                          ; $5111: $ff
	dec [hl]                                         ; $5112: $35
	rst $38                                          ; $5113: $ff
	ld de, $82ff                                     ; $5114: $11 $ff $82
	ld a, a                                          ; $5117: $7f
	call nz, $fbfb                                   ; $5118: $c4 $fb $fb
	jr nz, jr_019_50fd                               ; $511b: $20 $e0

	ld [hl], b                                       ; $511d: $70
	ldh a, [$f9]                                     ; $511e: $f0 $f9
	ret                                              ; $5120: $c9


	cp a                                             ; $5121: $bf
	xor a                                            ; $5122: $af
	ld [de], a                                       ; $5123: $12
	rra                                              ; $5124: $1f
	ld [$090f], sp                                   ; $5125: $08 $0f $09
	rrca                                             ; $5128: $0f
	ld b, $06                                        ; $5129: $06 $06
	rst $38                                          ; $512b: $ff
	rst $38                                          ; $512c: $ff
	ei                                               ; $512d: $fb
	rst SubAFromDE                                          ; $512e: $df
	add b                                            ; $512f: $80
	sbc e                                            ; $5130: $9b
	ret nz                                           ; $5131: $c0

	ld b, b                                          ; $5132: $40
	add b                                            ; $5133: $80
	add b                                            ; $5134: $80
	db $fd                                           ; $5135: $fd
	rst SubAFromDE                                          ; $5136: $df
	ldh [$9a], a                                     ; $5137: $e0 $9a
	db $10                                           ; $5139: $10
	ldh a, [$08]                                     ; $513a: $f0 $08
	ld hl, sp-$78                                    ; $513c: $f8 $88
	ld a, e                                          ; $513e: $7b
	cp $7f                                           ; $513f: $fe $7f
	ld hl, sp-$21                                    ; $5141: $f8 $df
	ldh [$df], a                                     ; $5143: $e0 $df
	ld hl, sp-$01                                    ; $5145: $f8 $ff
	rst SubAFromDE                                          ; $5147: $df
	inc bc                                           ; $5148: $03
	sbc l                                            ; $5149: $9d
	rlca                                             ; $514a: $07
	inc b                                            ; $514b: $04
	ld a, e                                          ; $514c: $7b
	db $d3                                           ; $514d: $d3
	sbc [hl]                                         ; $514e: $9e
	dec bc                                           ; $514f: $0b
	ld a, e                                          ; $5150: $7b
	db $fc                                           ; $5151: $fc
	sub d                                            ; $5152: $92
	add hl, bc                                       ; $5153: $09
	ld b, $06                                        ; $5154: $06 $06
	rrca                                             ; $5156: $0f
	rrca                                             ; $5157: $0f
	ld de, $111f                                     ; $5158: $11 $1f $11
	rra                                              ; $515b: $1f
	inc de                                           ; $515c: $13
	rra                                              ; $515d: $1f
	inc c                                            ; $515e: $0c
	inc c                                            ; $515f: $0c
	db $fd                                           ; $5160: $fd
	rst SubAFromDE                                          ; $5161: $df
	rrca                                             ; $5162: $0f
	rst $38                                          ; $5163: $ff
	adc c                                            ; $5164: $89
	db $fc                                           ; $5165: $fc
	inc l                                            ; $5166: $2c
	xor $3a                                          ; $5167: $ee $3a
	rst GetHLinHL                                          ; $5169: $cf
	ld sp, hl                                        ; $516a: $f9
	adc a                                            ; $516b: $8f
	db $fc                                           ; $516c: $fc
	ld c, e                                          ; $516d: $4b
	ld a, e                                          ; $516e: $7b
	ld a, b                                          ; $516f: $78
	ld a, b                                          ; $5170: $78
	add h                                            ; $5171: $84
	db $fc                                           ; $5172: $fc
	add $fe                                          ; $5173: $c6 $fe
	rst $38                                          ; $5175: $ff
	ld a, c                                          ; $5176: $79
	rst SubAFromBC                                          ; $5177: $e7
	inc h                                            ; $5178: $24
	jp $77c3                                         ; $5179: $c3 $c3 $77


	ld [hl], b                                       ; $517c: $70
	rst $38                                          ; $517d: $ff
	ld h, a                                          ; $517e: $67
	and b                                            ; $517f: $a0
	rst SubAFromDE                                          ; $5180: $df
	ldh a, [hDisp0_OBP1]                                     ; $5181: $f0 $87
	ld hl, sp+$08                                    ; $5183: $f8 $08
	ldh a, [$b0]                                     ; $5185: $f0 $b0
	ret nz                                           ; $5187: $c0

	ret nz                                           ; $5188: $c0

	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	ld [hl], b                                       ; $518b: $70
	ld [hl], b                                       ; $518c: $70
	adc b                                            ; $518d: $88
	ld hl, sp-$0c                                    ; $518e: $f8 $f4
	db $fc                                           ; $5190: $fc
	inc d                                            ; $5191: $14
	db $fc                                           ; $5192: $fc
	inc h                                            ; $5193: $24
	db $fc                                           ; $5194: $fc
	ld c, b                                          ; $5195: $48
	ld hl, sp-$10                                    ; $5196: $f8 $f0
	ldh a, [$fc]                                     ; $5198: $f0 $fc
	db $fc                                           ; $519a: $fc
	ld a, e                                          ; $519b: $7b
	cp h                                             ; $519c: $bc
	add a                                            ; $519d: $87
	ld [$101f], sp                                   ; $519e: $08 $1f $10
	ccf                                              ; $51a1: $3f
	inc hl                                           ; $51a2: $23
	ld a, $2f                                        ; $51a3: $3e $2f
	ccf                                              ; $51a5: $3f
	ld hl, $111f                                     ; $51a6: $21 $1f $11
	ld c, $0f                                        ; $51a9: $0e $0f
	inc b                                            ; $51ab: $04
	rlca                                             ; $51ac: $07
	rrca                                             ; $51ad: $0f
	rrca                                             ; $51ae: $0f
	rra                                              ; $51af: $1f
	ld e, $0f                                        ; $51b0: $1e $0f
	ld c, $05                                        ; $51b2: $0e $05
	rlca                                             ; $51b4: $07
	ld [$f47b], sp                                   ; $51b5: $08 $7b $f4

jr_019_51b8:
	rst SubAFromDE                                          ; $51b8: $df
	ld a, a                                          ; $51b9: $7f
	ld [hl], a                                       ; $51ba: $77
	call nz, $ff8b                                   ; $51bb: $c4 $8b $ff
	cp a                                             ; $51be: $bf
	rst $38                                          ; $51bf: $ff
	add b                                            ; $51c0: $80
	rst $38                                          ; $51c1: $ff
	ld sp, hl                                        ; $51c2: $f9

jr_019_51c3:
	add a                                            ; $51c3: $87
	add l                                            ; $51c4: $85
	ld c, d                                          ; $51c5: $4a
	rst GetHLinHL                                          ; $51c6: $cf
	jr z, jr_019_51b8                                ; $51c7: $28 $ef

	add sp, -$11                                     ; $51c9: $e8 $ef
	db $e4                                           ; $51cb: $e4

jr_019_51cc:
	daa                                              ; $51cc: $27
	jp $c043                                         ; $51cd: $c3 $43 $c0


	ret nz                                           ; $51d0: $c0

	ld a, e                                          ; $51d1: $7b
	ld c, [hl]                                       ; $51d2: $4e
	ld a, a                                          ; $51d3: $7f
	ld c, l                                          ; $51d4: $4d
	sbc h                                            ; $51d5: $9c
	ret nz                                           ; $51d6: $c0

	rst FarCall                                          ; $51d7: $f7
	rst FarCall                                          ; $51d8: $f7
	ei                                               ; $51d9: $fb
	rst SubAFromDE                                          ; $51da: $df
	ret nz                                           ; $51db: $c0

	sbc c                                            ; $51dc: $99
	ldh [rAUD4LEN], a                                ; $51dd: $e0 $20
	ret nz                                           ; $51df: $c0

	ret nz                                           ; $51e0: $c0

	jr nz, jr_019_51c3                               ; $51e1: $20 $e0

	ld [hl], a                                       ; $51e3: $77
	cp $7f                                           ; $51e4: $fe $7f
	ld [$366f], a                                    ; $51e6: $ea $6f $36
	ld l, a                                          ; $51e9: $6f
	ld [hl-], a                                      ; $51ea: $32
	db $fd                                           ; $51eb: $fd
	rst SubAFromDE                                          ; $51ec: $df
	dec b                                            ; $51ed: $05
	sbc d                                            ; $51ee: $9a
	ld a, [bc]                                       ; $51ef: $0a
	rrca                                             ; $51f0: $0f
	inc d                                            ; $51f1: $14
	rra                                              ; $51f2: $1f
	db $10                                           ; $51f3: $10
	sbc $1f                                          ; $51f4: $de $1f
	add b                                            ; $51f6: $80
	jr nc, jr_019_5238                               ; $51f7: $30 $3f

	ld b, b                                          ; $51f9: $40
	ld a, a                                          ; $51fa: $7f
	sub c                                            ; $51fb: $91
	rst $38                                          ; $51fc: $ff
	ld h, d                                          ; $51fd: $62
	ld a, a                                          ; $51fe: $7f
	inc h                                            ; $51ff: $24
	ccf                                              ; $5200: $3f
	ld h, $3f                                        ; $5201: $26 $3f
	daa                                              ; $5203: $27
	dec a                                            ; $5204: $3d
	rla                                              ; $5205: $17
	inc e                                            ; $5206: $1c
	dec bc                                           ; $5207: $0b
	ld c, $07                                        ; $5208: $0e $07
	rlca                                             ; $520a: $07
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	ret z                                            ; $520d: $c8

	ret z                                            ; $520e: $c8

	inc [hl]                                         ; $520f: $34
	db $fc                                           ; $5210: $fc
	ld b, h                                          ; $5211: $44
	db $fc                                           ; $5212: $fc
	adc d                                            ; $5213: $8a
	cp $95                                           ; $5214: $fe $95
	adc d                                            ; $5216: $8a
	rst $38                                          ; $5217: $ff
	db $eb                                           ; $5218: $eb
	rst $38                                          ; $5219: $ff
	ld c, c                                          ; $521a: $49
	rst $38                                          ; $521b: $ff
	adc l                                            ; $521c: $8d
	rst $38                                          ; $521d: $ff
	dec a                                            ; $521e: $3d
	rst FarCall                                          ; $521f: $f7
	ld a, [hl]                                       ; $5220: $7e
	sub $7c                                          ; $5221: $d6 $7c
	cp h                                             ; $5223: $bc
	xor $b2                                          ; $5224: $ee $b2
	cp $12                                           ; $5226: $fe $12
	db $fc                                           ; $5228: $fc
	inc b                                            ; $5229: $04
	ld hl, sp+$08                                    ; $522a: $f8 $08
	ld sp, hl                                        ; $522c: $f9
	ld l, [hl]                                       ; $522d: $6e
	sbc b                                            ; $522e: $98
	rst SubAFromDE                                          ; $522f: $df
	inc bc                                           ; $5230: $03
	ld a, a                                          ; $5231: $7f
	db $fc                                           ; $5232: $fc

Call_019_5233:
	ld a, a                                          ; $5233: $7f
	ld l, b                                          ; $5234: $68
	sub a                                            ; $5235: $97
	inc c                                            ; $5236: $0c
	rrca                                             ; $5237: $0f

jr_019_5238:
	inc de                                           ; $5238: $13
	rra                                              ; $5239: $1f
	ld h, $3e                                        ; $523a: $26 $3e
	ld [hl+], a                                      ; $523c: $22
	ld a, $77                                        ; $523d: $3e $77
	jr nz, jr_019_51cc                               ; $523f: $20 $8b

	rst $38                                          ; $5241: $ff
	push bc                                          ; $5242: $c5
	cp a                                             ; $5243: $bf
	pop hl                                           ; $5244: $e1
	sbc [hl]                                         ; $5245: $9e
	ldh a, [c]                                       ; $5246: $f2
	call z, $30fc                                    ; $5247: $cc $fc $30
	ldh a, [rAUD1SWEEP]                              ; $524a: $f0 $10
	ldh a, [$b8]                                     ; $524c: $f0 $b8
	add sp, -$04                                     ; $524e: $e8 $fc
	call nz, $e43c                                   ; $5250: $c4 $3c $e4
	ld a, b                                          ; $5253: $78
	ld hl, sp+$67                                    ; $5254: $f8 $67
	ld a, [hl]                                       ; $5256: $7e

Jump_019_5257:
	ld h, a                                          ; $5257: $67
	nop                                              ; $5258: $00
	rst SubAFromDE                                          ; $5259: $df
	inc b                                            ; $525a: $04
	ld a, [hl]                                       ; $525b: $7e
	pop bc                                           ; $525c: $c1
	ld a, a                                          ; $525d: $7f
	ld a, h                                          ; $525e: $7c
	sbc h                                            ; $525f: $9c
	dec de                                           ; $5260: $1b
	rra                                              ; $5261: $1f
	ld a, [hl+]                                      ; $5262: $2a
	ld a, e                                          ; $5263: $7b
	adc b                                            ; $5264: $88
	sub [hl]                                         ; $5265: $96
	dec h                                            ; $5266: $25
	ccf                                              ; $5267: $3f
	ld e, l                                          ; $5268: $5d
	ld e, a                                          ; $5269: $5f
	inc h                                            ; $526a: $24
	ccf                                              ; $526b: $3f
	ld d, h                                          ; $526c: $54
	ld e, a                                          ; $526d: $5f
	ld [de], a                                       ; $526e: $12
	ld a, d                                          ; $526f: $7a
	cp b                                             ; $5270: $b8
	ld a, a                                          ; $5271: $7f
	inc e                                            ; $5272: $1c
	ld [hl], a                                       ; $5273: $77
	add b                                            ; $5274: $80
	rst SubAFromDE                                          ; $5275: $df
	ld b, b                                          ; $5276: $40
	sbc [hl]                                         ; $5277: $9e
	and b                                            ; $5278: $a0
	ld a, e                                          ; $5279: $7b
	ld c, b                                          ; $527a: $48
	ld a, [hl]                                       ; $527b: $7e
	ld h, [hl]                                       ; $527c: $66
	ld a, [hl]                                       ; $527d: $7e
	and $8b                                          ; $527e: $e6 $8b
	inc b                                            ; $5280: $04
	db $fc                                           ; $5281: $fc
	ld [hl], h                                       ; $5282: $74
	db $fc                                           ; $5283: $fc
	inc a                                            ; $5284: $3c
	db $ec                                           ; $5285: $ec
	rra                                              ; $5286: $1f
	di                                               ; $5287: $f3
	sbc e                                            ; $5288: $9b
	db $fd                                           ; $5289: $fd
	cp a                                             ; $528a: $bf
	db $ec                                           ; $528b: $ec
	ld a, a                                          ; $528c: $7f
	jp $c47f                                         ; $528d: $c3 $7f $c4


	ccf                                              ; $5290: $3f
	ldh a, [c]                                       ; $5291: $f2
	rst $38                                          ; $5292: $ff
	adc $fb                                          ; $5293: $ce $fb
	rst SubAFromDE                                          ; $5295: $df
	inc c                                            ; $5296: $0c
	sbc e                                            ; $5297: $9b
	inc e                                            ; $5298: $1c
	inc d                                            ; $5299: $14
	inc a                                            ; $529a: $3c
	inc h                                            ; $529b: $24
	ld a, e                                          ; $529c: $7b
	adc l                                            ; $529d: $8d
	sbc d                                            ; $529e: $9a
	ld [hl+], a                                      ; $529f: $22
	inc a                                            ; $52a0: $3c
	inc h                                            ; $52a1: $24
	ld a, h                                          ; $52a2: $7c
	ld b, h                                          ; $52a3: $44
	ld a, d                                          ; $52a4: $7a
	ld h, c                                          ; $52a5: $61
	sbc h                                            ; $52a6: $9c
	ret z                                            ; $52a7: $c8

	ldh a, [$30]                                     ; $52a8: $f0 $30
	ld a, e                                          ; $52aa: $7b
	inc c                                            ; $52ab: $0c
	ld [hl], d                                       ; $52ac: $72
	ld c, d                                          ; $52ad: $4a
	add a                                            ; $52ae: $87
	ld c, d                                          ; $52af: $4a
	ld c, e                                          ; $52b0: $4b
	ld a, [$fcbf]                                    ; $52b1: $fa $bf $fc
	xor a                                            ; $52b4: $af
	ld hl, sp-$71                                    ; $52b5: $f8 $8f
	ldh a, [$9f]                                     ; $52b7: $f0 $9f
	ld [hl], l                                       ; $52b9: $75
	ld e, a                                          ; $52ba: $5f
	ld a, e                                          ; $52bb: $7b
	ld c, l                                          ; $52bc: $4d
	ccf                                              ; $52bd: $3f
	add hl, hl                                       ; $52be: $29
	rra                                              ; $52bf: $1f
	dec de                                           ; $52c0: $1b
	dec e                                            ; $52c1: $1d
	rla                                              ; $52c2: $17
	rra                                              ; $52c3: $1f
	ld [de], a                                       ; $52c4: $12
	rrca                                             ; $52c5: $0f
	inc c                                            ; $52c6: $0c
	ld [hl], a                                       ; $52c7: $77
	ld d, c                                          ; $52c8: $51
	halt                                             ; $52c9: $76
	ld a, d                                          ; $52ca: $7a
	add a                                            ; $52cb: $87
	or b                                             ; $52cc: $b0
	sub b                                            ; $52cd: $90
	ld [hl], b                                       ; $52ce: $70
	ret nc                                           ; $52cf: $d0

	ld a, b                                          ; $52d0: $78
	ret z                                            ; $52d1: $c8

	ld a, h                                          ; $52d2: $7c
	adc h                                            ; $52d3: $8c
	ld a, b                                          ; $52d4: $78
	call z, $e63a                                    ; $52d5: $cc $3a $e6
	ld a, [hl-]                                      ; $52d8: $3a
	and $be                                          ; $52d9: $e6 $be
	and $be                                          ; $52db: $e6 $be
	ld h, d                                          ; $52dd: $62
	cp [hl]                                          ; $52de: $be
	ld d, d                                          ; $52df: $52
	cp $12                                           ; $52e0: $fe $12
	cp $22                                           ; $52e2: $fe $22
	ld a, d                                          ; $52e4: $7a
	ld a, e                                          ; $52e5: $7b
	ld a, e                                          ; $52e6: $7b
	or [hl]                                          ; $52e7: $b6
	sub d                                            ; $52e8: $92
	rlca                                             ; $52e9: $07
	ld b, $ff                                        ; $52ea: $06 $ff
	ldh a, [c]                                       ; $52ec: $f2
	cp $03                                           ; $52ed: $fe $03
	db $fd                                           ; $52ef: $fd
	sbc l                                            ; $52f0: $9d
	ld h, c                                          ; $52f1: $61
	ld hl, $0000                                     ; $52f2: $21 $00 $00
	rlca                                             ; $52f5: $07
	ld a, d                                          ; $52f6: $7a
	adc d                                            ; $52f7: $8a
	sbc c                                            ; $52f8: $99
	dec e                                            ; $52f9: $1d
	rra                                              ; $52fa: $1f
	rra                                              ; $52fb: $1f
	inc de                                           ; $52fc: $13
	rrca                                             ; $52fd: $0f
	ld [$f677], sp                                   ; $52fe: $08 $77 $f6
	ld a, [hl]                                       ; $5301: $7e
	adc $76                                          ; $5302: $ce $76
	add b                                            ; $5304: $80
	add c                                            ; $5305: $81
	ld a, h                                          ; $5306: $7c
	call nz, $fa7e                                   ; $5307: $c4 $7e $fa
	ld a, a                                          ; $530a: $7f
	push bc                                          ; $530b: $c5
	ccf                                              ; $530c: $3f
	pop hl                                           ; $530d: $e1
	ld e, $f6                                        ; $530e: $1e $f6
	adc b                                            ; $5310: $88
	ld hl, sp-$1c                                    ; $5311: $f8 $e4
	db $fc                                           ; $5313: $fc
	cp h                                             ; $5314: $bc
	db $fc                                           ; $5315: $fc
	ld [$e8f8], sp                                   ; $5316: $08 $f8 $e8
	sbc b                                            ; $5319: $98
	db $fc                                           ; $531a: $fc
	call z, $a2be                                    ; $531b: $cc $be $a2
	sbc [hl]                                         ; $531e: $9e
	sbc [hl]                                         ; $531f: $9e
	sub c                                            ; $5320: $91
	sbc a                                            ; $5321: $9f
	pop hl                                           ; $5322: $e1
	rst $38                                          ; $5323: $ff
	ld [hl], a                                       ; $5324: $77
	sbc $ff                                          ; $5325: $de $ff
	sbc b                                            ; $5327: $98
	ld a, [hl+]                                      ; $5328: $2a
	ld l, $29                                        ; $5329: $2e $29
	ccf                                              ; $532b: $3f
	db $10                                           ; $532c: $10
	rra                                              ; $532d: $1f
	jr nz, jr_019_53aa                               ; $532e: $20 $7a

	and d                                            ; $5330: $a2
	adc [hl]                                         ; $5331: $8e
	ld d, h                                          ; $5332: $54

Call_019_5333:
	ld a, a                                          ; $5333: $7f
	inc l                                            ; $5334: $2c
	scf                                              ; $5335: $37
	ld a, $27                                        ; $5336: $3e $27
	ld a, $2d                                        ; $5338: $3e $2d
	halt                                             ; $533a: $76
	ld e, l                                          ; $533b: $5d
	ld a, a                                          ; $533c: $7f
	ld c, h                                          ; $533d: $4c
	ccf                                              ; $533e: $3f
	jr nz, jr_019_5360                               ; $533f: $20 $1f

	db $10                                           ; $5341: $10
	rrca                                             ; $5342: $0f
	ld [hl], c                                       ; $5343: $71

Call_019_5344:
	ret c                                            ; $5344: $d8

	halt                                             ; $5345: $76
	halt                                             ; $5346: $76
	ld a, [hl]                                       ; $5347: $7e
	ldh [hDisp1_LCDC], a                                     ; $5348: $e0 $8f
	ld a, [bc]                                       ; $534a: $0a
	ld a, [$fc0c]                                    ; $534b: $fa $0c $fc
	ld b, $fe                                        ; $534e: $06 $fe
	inc b                                            ; $5350: $04
	db $fc                                           ; $5351: $fc
	inc b                                            ; $5352: $04
	db $fc                                           ; $5353: $fc
	call nz, $c4fc                                   ; $5354: $c4 $fc $c4
	ld a, h                                          ; $5357: $7c
	ret z                                            ; $5358: $c8

	ld a, b                                          ; $5359: $78
	ld [hl], l                                       ; $535a: $75
	sbc h                                            ; $535b: $9c
	rst SubAFromDE                                          ; $535c: $df
	ld hl, sp+$7f                                    ; $535d: $f8 $7f
	ld e, e                                          ; $535f: $5b

jr_019_5360:
	sub h                                            ; $5360: $94
	cp $fd                                           ; $5361: $fe $fd
	cp $01                                           ; $5363: $fe $01
	rst $38                                          ; $5365: $ff
	sbc a                                            ; $5366: $9f
	ld h, b                                          ; $5367: $60
	jr nz, @+$03                                     ; $5368: $20 $01

	ld bc, $7a06                                     ; $536a: $01 $06 $7a
	and [hl]                                         ; $536d: $a6
	sbc [hl]                                         ; $536e: $9e
	ld c, $79                                        ; $536f: $0e $79
	sub [hl]                                         ; $5371: $96
	ld a, l                                          ; $5372: $7d
	adc [hl]                                         ; $5373: $8e
	ld e, a                                          ; $5374: $5f
	add b                                            ; $5375: $80
	adc e                                            ; $5376: $8b
	cp [hl]                                          ; $5377: $be
	ldh [c], a                                       ; $5378: $e2
	rra                                              ; $5379: $1f
	ld sp, hl                                        ; $537a: $f9
	ld a, a                                          ; $537b: $7f
	pop bc                                           ; $537c: $c1
	ld a, $e2                                        ; $537d: $3e $e2
	sbc [hl]                                         ; $537f: $9e
	or $8c                                           ; $5380: $f6 $8c
	db $fc                                           ; $5382: $fc
	db $f4                                           ; $5383: $f4
	db $fc                                           ; $5384: $fc
	ld c, h                                          ; $5385: $4c
	db $fc                                           ; $5386: $fc
	ld hl, sp-$08                                    ; $5387: $f8 $f8
	ld a, h                                          ; $5389: $7c
	ld c, h                                          ; $538a: $4c
	ld a, e                                          ; $538b: $7b
	add d                                            ; $538c: $82
	sbc [hl]                                         ; $538d: $9e
	sub d                                            ; $538e: $92
	ld e, a                                          ; $538f: $5f
	add b                                            ; $5390: $80
	sbc h                                            ; $5391: $9c
	dec d                                            ; $5392: $15
	rla                                              ; $5393: $17
	inc d                                            ; $5394: $14
	ld a, d                                          ; $5395: $7a
	or [hl]                                          ; $5396: $b6
	ld [hl], a                                       ; $5397: $77
	add b                                            ; $5398: $80
	ld a, [hl]                                       ; $5399: $7e
	and b                                            ; $539a: $a0
	sbc l                                            ; $539b: $9d
	ld d, $1b                                        ; $539c: $16 $1b
	ld a, c                                          ; $539e: $79
	ld h, e                                          ; $539f: $63
	sbc d                                            ; $53a0: $9a
	ld d, $3b                                        ; $53a1: $16 $3b
	ld l, $3f                                        ; $53a3: $2e $3f
	ld h, $7b                                        ; $53a5: $26 $7b
	add h                                            ; $53a7: $84
	ld a, a                                          ; $53a8: $7f
	ld a, [hl-]                                      ; $53a9: $3a

jr_019_53aa:
	sbc h                                            ; $53aa: $9c

jr_019_53ab:
	ld b, $03                                        ; $53ab: $06 $03
	inc bc                                           ; $53ad: $03
	ld l, l                                          ; $53ae: $6d
	add b                                            ; $53af: $80
	add l                                            ; $53b0: $85
	jr jr_019_53ab                                   ; $53b1: $18 $f8

	dec b                                            ; $53b3: $05
	db $fd                                           ; $53b4: $fd
	ld b, $fe                                        ; $53b5: $06 $fe
	inc bc                                           ; $53b7: $03
	rst $38                                          ; $53b8: $ff
	ld [bc], a                                       ; $53b9: $02
	cp $02                                           ; $53ba: $fe $02
	cp $62                                           ; $53bc: $fe $62
	cp $62                                           ; $53be: $fe $62
	cp [hl]                                          ; $53c0: $be
	db $e4                                           ; $53c1: $e4
	inc a                                            ; $53c2: $3c
	ret z                                            ; $53c3: $c8

	ld a, b                                          ; $53c4: $78
	sub b                                            ; $53c5: $90
	ld [hl], b                                       ; $53c6: $70
	ld hl, sp+$78                                    ; $53c7: $f8 $78
	db $fc                                           ; $53c9: $fc
	ld b, h                                          ; $53ca: $44
	dec b                                            ; $53cb: $05
	add b                                            ; $53cc: $80
	rst SubAFromDE                                          ; $53cd: $df
	ld hl, sp-$6a                                    ; $53ce: $f8 $96
	cp $b6                                           ; $53d0: $fe $b6
	rst $38                                          ; $53d2: $ff
	add c                                            ; $53d3: $81
	cp $e2                                           ; $53d4: $fe $e2
	sbc h                                            ; $53d6: $9c
	sbc h                                            ; $53d7: $9c
	ld b, b                                          ; $53d8: $40
	ld a, c                                          ; $53d9: $79
	sbc [hl]                                         ; $53da: $9e
	sbc $e0                                          ; $53db: $de $e0
	ld a, d                                          ; $53dd: $7a
	adc d                                            ; $53de: $8a
	ld d, l                                          ; $53df: $55
	add b                                            ; $53e0: $80
	add e                                            ; $53e1: $83
	ld a, a                                          ; $53e2: $7f
	ld d, c                                          ; $53e3: $51
	rst $38                                          ; $53e4: $ff
	sbc a                                            ; $53e5: $9f
	rst $38                                          ; $53e6: $ff
	cp c                                             ; $53e7: $b9
	rst $38                                          ; $53e8: $ff
	sub h                                            ; $53e9: $94
	ld a, a                                          ; $53ea: $7f
	ld b, d                                          ; $53eb: $42
	cp a                                             ; $53ec: $bf
	rst SubAFromBC                                          ; $53ed: $e7
	sbc h                                            ; $53ee: $9c
	db $fc                                           ; $53ef: $fc
	cp d                                             ; $53f0: $ba
	cp $7e                                           ; $53f1: $fe $7e
	ld l, [hl]                                       ; $53f3: $6e
	ld a, a                                          ; $53f4: $7f
	ld c, c                                          ; $53f5: $49
	ld [hl], a                                       ; $53f6: $77
	ld d, h                                          ; $53f7: $54
	or e                                             ; $53f8: $b3
	ldh a, [c]                                       ; $53f9: $f2
	sbc e                                            ; $53fa: $9b
	ei                                               ; $53fb: $fb
	ld c, c                                          ; $53fc: $49
	ld a, c                                          ; $53fd: $79
	halt                                             ; $53fe: $76
	nop                                              ; $53ff: $00
	halt                                             ; $5400: $76
	ld e, [hl]                                       ; $5401: $5e
	ld [hl], h                                       ; $5402: $74
	and b                                            ; $5403: $a0
	ld h, h                                          ; $5404: $64
	sbc [hl]                                         ; $5405: $9e
	db $fd                                           ; $5406: $fd
	rst SubAFromDE                                          ; $5407: $df
	or b                                             ; $5408: $b0
	sbc [hl]                                         ; $5409: $9e
	ret nc                                           ; $540a: $d0

	ld a, c                                          ; $540b: $79
	jp nc, $b27f                                     ; $540c: $d2 $7f $b2

	rst SubAFromDE                                          ; $540f: $df
	cp $fb                                           ; $5410: $fe $fb
	rst SubAFromDE                                          ; $5412: $df
	inc d                                            ; $5413: $14
	rst SubAFromDE                                          ; $5414: $df
	rrca                                             ; $5415: $0f
	sbc b                                            ; $5416: $98
	inc e                                            ; $5417: $1c
	rra                                              ; $5418: $1f
	ld hl, $473f                                     ; $5419: $21 $3f $47
	ld a, a                                          ; $541c: $7f
	ld c, b                                          ; $541d: $48
	ld a, c                                          ; $541e: $79
	ld h, b                                          ; $541f: $60
	sub c                                            ; $5420: $91
	and [hl]                                         ; $5421: $a6
	rst $38                                          ; $5422: $ff
	xor b                                            ; $5423: $a8
	rst $38                                          ; $5424: $ff
	db $fc                                           ; $5425: $fc
	rst SubAFromHL                                          ; $5426: $d7
	db $fd                                           ; $5427: $fd
	jp Jump_019_427f                                 ; $5428: $c3 $7f $42


	ld a, a                                          ; $542b: $7f
	ld b, [hl]                                       ; $542c: $46
	ld a, a                                          ; $542d: $7f
	ld h, b                                          ; $542e: $60
	ld h, h                                          ; $542f: $64
	ld e, [hl]                                       ; $5430: $5e
	adc l                                            ; $5431: $8d
	ld h, b                                          ; $5432: $60
	ldh [hDisp1_SCY], a                                     ; $5433: $e0 $90
	ldh a, [$6c]                                     ; $5435: $f0 $6c
	db $fc                                           ; $5437: $fc
	ld [hl-], a                                      ; $5438: $32
	cp $dc                                           ; $5439: $fe $dc
	db $fc                                           ; $543b: $fc
	ld [de], a                                       ; $543c: $12
	cp $0a                                           ; $543d: $fe $0a
	cp $49                                           ; $543f: $fe $49
	rst $38                                          ; $5441: $ff
	adc $fe                                          ; $5442: $ce $fe
	ld a, e                                          ; $5444: $7b
	ld a, $78                                        ; $5445: $3e $78
	ld e, h                                          ; $5447: $5c
	ld a, [hl]                                       ; $5448: $7e
	ret nz                                           ; $5449: $c0

	ld [hl], l                                       ; $544a: $75
	ld l, [hl]                                       ; $544b: $6e
	ld a, d                                          ; $544c: $7a
	rst GetHLinHL                                          ; $544d: $cf
	ld a, e                                          ; $544e: $7b

jr_019_544f:
	db $fc                                           ; $544f: $fc
	ld a, [hl]                                       ; $5450: $7e
	ret nz                                           ; $5451: $c0

	sbc e                                            ; $5452: $9b
	ld b, $05                                        ; $5453: $06 $05
	rlca                                             ; $5455: $07
	dec b                                            ; $5456: $05
	halt                                             ; $5457: $76
	ld a, [bc]                                       ; $5458: $0a
	halt                                             ; $5459: $76
	ld [$4c6d], sp                                   ; $545a: $08 $6d $4c
	sbc e                                            ; $545d: $9b
	ld [hl], b                                       ; $545e: $70
	sub b                                            ; $545f: $90
	ld d, b                                          ; $5460: $50
	or b                                             ; $5461: $b0
	ld [hl], a                                       ; $5462: $77
	sub h                                            ; $5463: $94
	ld [hl], a                                       ; $5464: $77
	ld b, h                                          ; $5465: $44
	ld [hl], e                                       ; $5466: $73
	ld a, [$407b]                                    ; $5467: $fa $7b $40
	rst SubAFromDE                                          ; $546a: $df
	ldh a, [$7e]                                     ; $546b: $f0 $7e
	ld [hl], d                                       ; $546d: $72
	ld a, a                                          ; $546e: $7f
	call nz, $fe7f                                   ; $546f: $c4 $7f $fe
	ld a, a                                          ; $5472: $7f
	ldh a, [c]                                       ; $5473: $f2
	rst SubAFromDE                                          ; $5474: $df
	ret nz                                           ; $5475: $c0

	rst SubAFromDE                                          ; $5476: $df

Call_019_5477:
	inc a                                            ; $5477: $3c
	sub c                                            ; $5478: $91
	ld d, d                                          ; $5479: $52
	ld a, [hl]                                       ; $547a: $7e
	adc l                                            ; $547b: $8d
	rst $38                                          ; $547c: $ff
	rst FarCall                                          ; $547d: $f7
	rst $38                                          ; $547e: $ff
	sbc c                                            ; $547f: $99
	rst $38                                          ; $5480: $ff
	and l                                            ; $5481: $a5
	rst $38                                          ; $5482: $ff
	ld b, [hl]                                       ; $5483: $46
	ld a, [hl]                                       ; $5484: $7e
	inc a                                            ; $5485: $3c
	inc a                                            ; $5486: $3c
	pop af                                           ; $5487: $f1
	rst SubAFromDE                                          ; $5488: $df
	inc a                                            ; $5489: $3c
	sbc h                                            ; $548a: $9c
	ld c, d                                          ; $548b: $4a
	ld a, [hl]                                       ; $548c: $7e
	ld sp, hl                                        ; $548d: $f9
	ld a, b                                          ; $548e: $78
	ld [$f39e], a                                    ; $548f: $ea $9e $f3
	ld a, e                                          ; $5492: $7b
	sbc $9e                                          ; $5493: $de $9e
	ld d, [hl]                                       ; $5495: $56
	dec sp                                           ; $5496: $3b
	ldh [$df], a                                     ; $5497: $e0 $df
	db $10                                           ; $5499: $10
	sbc c                                            ; $549a: $99
	jr c, @+$2a                                      ; $549b: $38 $28

	inc a                                            ; $549d: $3c
	inc h                                            ; $549e: $24
	inc e                                            ; $549f: $1c
	inc e                                            ; $54a0: $1c
	rst FarCall                                          ; $54a1: $f7
	rst SubAFromDE                                          ; $54a2: $df
	jr jr_019_5520                                   ; $54a3: $18 $7b

	ldh a, [$9d]                                     ; $54a5: $f0 $9d
	inc d                                            ; $54a7: $14
	inc c                                            ; $54a8: $0c
	ld l, d                                          ; $54a9: $6a
	ld b, $fb                                        ; $54aa: $06 $fb
	rst SubAFromDE                                          ; $54ac: $df
	ld [hl], b                                       ; $54ad: $70
	ld a, a                                          ; $54ae: $7f
	sub c                                            ; $54af: $91
	rst SubAFromDE                                          ; $54b0: $df
	ld h, b                                          ; $54b1: $60
	rst FarCall                                          ; $54b2: $f7
	rst SubAFromDE                                          ; $54b3: $df
	jr nc, jr_019_544f                               ; $54b4: $30 $99

	ld a, b                                          ; $54b6: $78
	ld c, b                                          ; $54b7: $48
	ld [hl], b                                       ; $54b8: $70
	ld d, b                                          ; $54b9: $50
	jr nz, @+$22                                     ; $54ba: $20 $20

	pop af                                           ; $54bc: $f1
	rst SubAFromDE                                          ; $54bd: $df
	rlca                                             ; $54be: $07
	sub a                                            ; $54bf: $97
	rra                                              ; $54c0: $1f
	inc e                                            ; $54c1: $1c
	ccf                                              ; $54c2: $3f
	ld hl, $2e3f                                     ; $54c3: $21 $3f $2e
	ccf                                              ; $54c6: $3f
	jr z, jr_019_5538                                ; $54c7: $28 $6f

	cp $6d                                           ; $54c9: $fe $6d
	and b                                            ; $54cb: $a0
	ld sp, hl                                        ; $54cc: $f9
	rst SubAFromDE                                          ; $54cd: $df
	ccf                                              ; $54ce: $3f
	sbc e                                            ; $54cf: $9b
	rst $38                                          ; $54d0: $ff
	jp $1bff                                         ; $54d1: $c3 $ff $1b


	ld a, b                                          ; $54d4: $78
	ld e, c                                          ; $54d5: $59
	sbc [hl]                                         ; $54d6: $9e
	dec bc                                           ; $54d7: $0b
	ld h, e                                          ; $54d8: $63
	cp $88                                           ; $54d9: $fe $88
	set 0, b                                         ; $54db: $cb $c0
	rst $38                                          ; $54dd: $ff
	add hl, de                                       ; $54de: $19

jr_019_54df:
	and [hl]                                         ; $54df: $a6
	ld h, $d9                                        ; $54e0: $26 $d9
	add hl, de                                       ; $54e2: $19
	ld h, [hl]                                       ; $54e3: $66
	ld h, $59                                        ; $54e4: $26 $59
	add hl, de                                       ; $54e6: $19
	ld h, $06                                        ; $54e7: $26 $06
	add hl, sp                                       ; $54e9: $39
	nop                                              ; $54ea: $00
	ld h, $00                                        ; $54eb: $26 $00
	ld a, c                                          ; $54ed: $79
	nop                                              ; $54ee: $00
	xor [hl]                                         ; $54ef: $ae
	nop                                              ; $54f0: $00
	dec hl                                           ; $54f1: $2b
	rst FarCall                                          ; $54f2: $f7
	sub a                                            ; $54f3: $97
	ld a, a                                          ; $54f4: $7f
	db $eb                                           ; $54f5: $eb
	sbc a                                            ; $54f6: $9f
	ld l, e                                          ; $54f7: $6b
	ld l, a                                          ; $54f8: $6f
	sbc e                                            ; $54f9: $9b
	adc a                                            ; $54fa: $8f
	ld a, e                                          ; $54fb: $7b
	ld a, e                                          ; $54fc: $7b
	db $fc                                           ; $54fd: $fc
	sub [hl]                                         ; $54fe: $96
	ld [hl], e                                       ; $54ff: $73
	ld l, a                                          ; $5500: $6f
	sbc a                                            ; $5501: $9f
	nop                                              ; $5502: $00
	ld h, b                                          ; $5503: $60
	nop                                              ; $5504: $00
	ret nz                                           ; $5505: $c0

	nop                                              ; $5506: $00
	ld b, b                                          ; $5507: $40
	ld a, e                                          ; $5508: $7b
	db $fc                                           ; $5509: $fc
	ld h, d                                          ; $550a: $62
	ld [hl], h                                       ; $550b: $74
	sbc d                                            ; $550c: $9a
	ld [$15d5], a                                    ; $550d: $ea $d5 $15
	xor d                                            ; $5510: $aa
	ld a, [hl+]                                      ; $5511: $2a
	ld [hl], a                                       ; $5512: $77
	db $fc                                           ; $5513: $fc
	sub h                                            ; $5514: $94
	ld d, l                                          ; $5515: $55
	dec d                                            ; $5516: $15
	ld l, d                                          ; $5517: $6a
	ld a, [bc]                                       ; $5518: $0a
	ld d, l                                          ; $5519: $55
	nop                                              ; $551a: $00
	ld l, d                                          ; $551b: $6a
	nop                                              ; $551c: $00
	ld d, l                                          ; $551d: $55
	nop                                              ; $551e: $00
	ld a, [hl+]                                      ; $551f: $2a

jr_019_5520:
	ld a, e                                          ; $5520: $7b
	cp $f8                                           ; $5521: $fe $f8
	sbc c                                            ; $5523: $99
	rst $38                                          ; $5524: $ff
	ld l, e                                          ; $5525: $6b
	ccf                                              ; $5526: $3f
	res 7, a                                         ; $5527: $cb $bf
	ld c, e                                          ; $5529: $4b
	ld a, e                                          ; $552a: $7b
	db $fc                                           ; $552b: $fc
	sbc d                                            ; $552c: $9a
	ld a, e                                          ; $552d: $7b
	ld a, a                                          ; $552e: $7f

jr_019_552f:
	add e                                            ; $552f: $83
	ld a, a                                          ; $5530: $7f
	rst $38                                          ; $5531: $ff
	ld a, e                                          ; $5532: $7b
	ret z                                            ; $5533: $c8

	ld [hl], a                                       ; $5534: $77
	cp $f6                                           ; $5535: $fe $f6
	ld b, [hl]                                       ; $5537: $46

jr_019_5538:
	inc bc                                           ; $5538: $03
	rst $38                                          ; $5539: $ff
	rst SubAFromDE                                          ; $553a: $df
	dec bc                                           ; $553b: $0b
	add b                                            ; $553c: $80
	inc d                                            ; $553d: $14
	rra                                              ; $553e: $1f
	add hl, hl                                       ; $553f: $29
	ccf                                              ; $5540: $3f
	ld [hl+], a                                      ; $5541: $22
	ccf                                              ; $5542: $3f
	ld a, $3f                                        ; $5543: $3e $3f
	ld h, e                                          ; $5545: $63
	ld a, a                                          ; $5546: $7f
	add c                                            ; $5547: $81
	rst $38                                          ; $5548: $ff
	ld [hl+], a                                      ; $5549: $22
	ld a, a                                          ; $554a: $7f
	ld b, h                                          ; $554b: $44
	ld a, a                                          ; $554c: $7f
	ld c, c                                          ; $554d: $49
	ld a, a                                          ; $554e: $7f
	ld c, l                                          ; $554f: $4d
	ld a, [hl]                                       ; $5550: $7e
	ld c, a                                          ; $5551: $4f
	ld a, d                                          ; $5552: $7a
	cpl                                              ; $5553: $2f
	jr c, jr_019_556d                                ; $5554: $38 $17

	inc e                                            ; $5556: $1c
	rrca                                             ; $5557: $0f
	ld c, $00                                        ; $5558: $0e $00
	nop                                              ; $555a: $00
	jr nz, jr_019_54df                               ; $555b: $20 $82

	jr nz, jr_019_552f                               ; $555d: $20 $d0

	ldh a, [rAUD1SWEEP]                              ; $555f: $f0 $10
	ldh a, [$2c]                                     ; $5561: $f0 $2c
	db $fc                                           ; $5563: $fc
	ld d, d                                          ; $5564: $52
	cp $ac                                           ; $5565: $fe $ac
	db $fc                                           ; $5567: $fc
	inc h                                            ; $5568: $24
	db $fc                                           ; $5569: $fc
	inc [hl]                                         ; $556a: $34
	db $fc                                           ; $556b: $fc
	db $f4                                           ; $556c: $f4

jr_019_556d:
	call c, Call_019_58f8                            ; $556d: $dc $f8 $58
	ldh a, [$f0]                                     ; $5570: $f0 $f0
	cp b                                             ; $5572: $b8
	ret z                                            ; $5573: $c8

	ld hl, sp+$48                                    ; $5574: $f8 $48
	ldh a, [rAUD1SWEEP]                              ; $5576: $f0 $10
	ldh [rAUD4LEN], a                                ; $5578: $e0 $20
	push af                                          ; $557a: $f5
	rst SubAFromDE                                          ; $557b: $df
	ld bc, $03dd                                     ; $557c: $01 $dd $03
	rst SubAFromDE                                          ; $557f: $df
	rlca                                             ; $5580: $07
	rst SubAFromDE                                          ; $5581: $df
	ld b, $fb                                        ; $5582: $06 $fb
	rst SubAFromDE                                          ; $5584: $df
	inc bc                                           ; $5585: $03
	rst $38                                          ; $5586: $ff
	rst SubAFromDE                                          ; $5587: $df
	ld a, $9a                                        ; $5588: $3e $9a
	ld c, d                                          ; $558a: $4a
	ld a, [hl]                                       ; $558b: $7e
	sub e                                            ; $558c: $93
	rst $38                                          ; $558d: $ff
	or d                                             ; $558e: $b2
	ld a, e                                          ; $558f: $7b
	cp $93                                           ; $5590: $fe $93
	ld a, a                                          ; $5592: $7f
	ld c, a                                          ; $5593: $4f
	rst $38                                          ; $5594: $ff
	rst GetHLinHL                                          ; $5595: $cf
	ld a, a                                          ; $5596: $7f
	cp $3f                                           ; $5597: $fe $3f
	and $b9                                          ; $5599: $e6 $b9
	jp hl                                            ; $559b: $e9


	ld [hl], c                                       ; $559c: $71
	ld [hl], c                                       ; $559d: $71
	ei                                               ; $559e: $fb
	rst SubAFromDE                                          ; $559f: $df
	rst $38                                          ; $55a0: $ff
	rst $38                                          ; $55a1: $ff
	rst SubAFromDE                                          ; $55a2: $df
	ld h, b                                          ; $55a3: $60
	sub a                                            ; $55a4: $97
	ldh a, [hDisp1_SCY]                                     ; $55a5: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $55a7: $f0 $90
	ld h, b                                          ; $55a9: $60
	ldh [$80], a                                     ; $55aa: $e0 $80
	add b                                            ; $55ac: $80
	db $fd                                           ; $55ad: $fd
	rst SubAFromDE                                          ; $55ae: $df
	add b                                            ; $55af: $80
	rst SubAFromDE                                          ; $55b0: $df
	ret nz                                           ; $55b1: $c0

	sub e                                            ; $55b2: $93
	ld l, h                                          ; $55b3: $6c
	db $ec                                           ; $55b4: $ec
	inc a                                            ; $55b5: $3c
	db $fc                                           ; $55b6: $fc
	cp b                                             ; $55b7: $b8
	ld hl, sp+$70                                    ; $55b8: $f8 $70
	ld [hl], b                                       ; $55ba: $70
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	db $fc                                           ; $55bd: $fc
	db $fc                                           ; $55be: $fc
	rst AddAOntoHL                                          ; $55bf: $ef
	rst SubAFromDE                                          ; $55c0: $df
	rlca                                             ; $55c1: $07
	sbc e                                            ; $55c2: $9b
	ld c, $0f                                        ; $55c3: $0e $0f
	ld c, $0f                                        ; $55c5: $0e $0f
	db $dd                                           ; $55c7: $dd
	rlca                                             ; $55c8: $07
	rst SubAFromDE                                          ; $55c9: $df
	inc bc                                           ; $55ca: $03
	rst SubAFromDE                                          ; $55cb: $df
	rrca                                             ; $55cc: $0f
	ld [hl], a                                       ; $55cd: $77
	and b                                            ; $55ce: $a0
	sub a                                            ; $55cf: $97
	ld h, l                                          ; $55d0: $65
	ld a, l                                          ; $55d1: $7d
	or e                                             ; $55d2: $b3
	rst $38                                          ; $55d3: $ff
	xor b                                            ; $55d4: $a8
	rst $38                                          ; $55d5: $ff
	ld [hl], h                                       ; $55d6: $74
	ld a, a                                          ; $55d7: $7f
	db $db                                           ; $55d8: $db
	ccf                                              ; $55d9: $3f
	sbc c                                            ; $55da: $99
	rst $38                                          ; $55db: $ff
	rst AddAOntoHL                                          ; $55dc: $ef
	ld a, c                                          ; $55dd: $79
	ret                                              ; $55de: $c9


	ldh a, [$f0]                                     ; $55df: $f0 $f0
	ld [hl], a                                       ; $55e1: $77
	or d                                             ; $55e2: $b2
	rst SubAFromDE                                          ; $55e3: $df
	add b                                            ; $55e4: $80
	ld [hl], a                                       ; $55e5: $77
	and b                                            ; $55e6: $a0
	rst SubAFromDE                                          ; $55e7: $df
	ldh [$9d], a                                     ; $55e8: $e0 $9d
	ldh a, [$50]                                     ; $55ea: $f0 $50
	ld a, e                                          ; $55ec: $7b
	ld b, c                                          ; $55ed: $41
	ld l, e                                          ; $55ee: $6b
	sbc [hl]                                         ; $55ef: $9e
	rst SubAFromDE                                          ; $55f0: $df
	add $97                                          ; $55f1: $c6 $97
	cp $3e                                           ; $55f3: $fe $3e
	adc $fe                                          ; $55f5: $ce $fe
	ld a, h                                          ; $55f7: $7c
	ld a, h                                          ; $55f8: $7c
	jr jr_019_5613                                   ; $55f9: $18 $18

	db $fd                                           ; $55fb: $fd
	ld [hl], a                                       ; $55fc: $77
	and b                                            ; $55fd: $a0
	rst SubAFromDE                                          ; $55fe: $df
	rlca                                             ; $55ff: $07
	sub e                                            ; $5600: $93
	add hl, bc                                       ; $5601: $09
	rrca                                             ; $5602: $0f
	ld [de], a                                       ; $5603: $12
	rra                                              ; $5604: $1f
	inc de                                           ; $5605: $13
	rra                                              ; $5606: $1f
	dec bc                                           ; $5607: $0b
	ld c, $07                                        ; $5608: $0e $07
	inc b                                            ; $560a: $04
	rlca                                             ; $560b: $07
	ld b, $77                                        ; $560c: $06 $77
	ld a, $9e                                        ; $560e: $3e $9e
	ld b, $dc                                        ; $5610: $06 $dc
	rlca                                             ; $5612: $07

jr_019_5613:
	rst SubAFromDE                                          ; $5613: $df
	inc bc                                           ; $5614: $03
	rst SubAFromDE                                          ; $5615: $df
	ld bc, $3fdf                                     ; $5616: $01 $df $3f
	rst $38                                          ; $5619: $ff
	rst SubAFromDE                                          ; $561a: $df
	ret nz                                           ; $561b: $c0

	sub l                                            ; $561c: $95
	ld b, b                                          ; $561d: $40
	ret nz                                           ; $561e: $c0

	ld [hl], b                                       ; $561f: $70
	ldh a, [$f8]                                     ; $5620: $f0 $f8
	ret z                                            ; $5622: $c8

	ld hl, sp-$38                                    ; $5623: $f8 $c8
	ldh a, [rSVBK]                                   ; $5625: $f0 $70
	sbc $e0                                          ; $5627: $de $e0
	sbc e                                            ; $5629: $9b
	and b                                            ; $562a: $a0
	ld h, b                                          ; $562b: $60
	ldh [rLCDC], a                                   ; $562c: $e0 $40
	sbc $c0                                          ; $562e: $de $c0
	ld [hl], a                                       ; $5630: $77
	db $fc                                           ; $5631: $fc
	rst SubAFromDE                                          ; $5632: $df
	ldh [$df], a                                     ; $5633: $e0 $df
	cp $f3                                           ; $5635: $fe $f3
	ld [hl], e                                       ; $5637: $73
	inc b                                            ; $5638: $04
	sbc d                                            ; $5639: $9a
	rlca                                             ; $563a: $07
	rrca                                             ; $563b: $0f
	rrca                                             ; $563c: $0f
	inc c                                            ; $563d: $0c
	inc c                                            ; $563e: $0c
	ld d, a                                          ; $563f: $57
	nop                                              ; $5640: $00
	ld d, a                                          ; $5641: $57
	ld h, b                                          ; $5642: $60
	rst SubAFromDE                                          ; $5643: $df
	rst $38                                          ; $5644: $ff
	sbc c                                            ; $5645: $99
	ld a, a                                          ; $5646: $7f
	call c, $ca7b                                    ; $5647: $dc $7b $ca
	pop af                                           ; $564a: $f1
	pop af                                           ; $564b: $f1
	ld e, a                                          ; $564c: $5f
	nop                                              ; $564d: $00
	ld c, a                                          ; $564e: $4f

jr_019_564f:
	ld h, b                                          ; $564f: $60
	ld [hl], a                                       ; $5650: $77
	ld c, d                                          ; $5651: $4a
	rst SubAFromDE                                          ; $5652: $df
	ret c                                            ; $5653: $d8

	sbc l                                            ; $5654: $9d
	jr c, jr_019_564f                                ; $5655: $38 $f8

	ld c, a                                          ; $5657: $4f
	nop                                              ; $5658: $00
	rst SubAFromDE                                          ; $5659: $df
	ld [bc], a                                       ; $565a: $02
	ld [hl], a                                       ; $565b: $77
	ld [hl], b                                       ; $565c: $70
	db $dd                                           ; $565d: $dd
	rlca                                             ; $565e: $07
	add b                                            ; $565f: $80
	ccf                                              ; $5660: $3f
	daa                                              ; $5661: $27
	ld a, a                                          ; $5662: $7f
	ld c, e                                          ; $5663: $4b
	ld a, a                                          ; $5664: $7f
	ld b, e                                          ; $5665: $43
	ccf                                              ; $5666: $3f
	daa                                              ; $5667: $27
	dec de                                           ; $5668: $1b
	ld e, $11                                        ; $5669: $1e $11
	rra                                              ; $566b: $1f
	ld [$080f], sp                                   ; $566c: $08 $0f $08
	rrca                                             ; $566f: $0f
	inc b                                            ; $5670: $04
	rlca                                             ; $5671: $07
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	dec sp                                           ; $5674: $3b
	dec sp                                           ; $5675: $3b
	call z, $19ff                                    ; $5676: $cc $ff $19
	rst $38                                          ; $5679: $ff
	cp $ff                                           ; $567a: $fe $ff
	sub h                                            ; $567c: $94
	rst $38                                          ; $567d: $ff
	ld c, d                                          ; $567e: $4a
	adc h                                            ; $567f: $8c
	rst $38                                          ; $5680: $ff
	sub d                                            ; $5681: $92
	rst $38                                          ; $5682: $ff
	or e                                             ; $5683: $b3
	rst $38                                          ; $5684: $ff
	di                                               ; $5685: $f3
	rst SubAFromDE                                          ; $5686: $df
	rst FarCall                                          ; $5687: $f7
	xor l                                            ; $5688: $ad
	db $dd                                           ; $5689: $dd
	halt                                             ; $568a: $76
	rst $38                                          ; $568b: $ff
	ld h, [hl]                                       ; $568c: $66
	rst $38                                          ; $568d: $ff
	and $ff                                          ; $568e: $e6 $ff
	sbc c                                            ; $5690: $99
	rst $38                                          ; $5691: $ff
	db $d3                                           ; $5692: $d3
	ld l, [hl]                                       ; $5693: $6e
	xor h                                            ; $5694: $ac
	rst SubAFromDE                                          ; $5695: $df
	db $10                                           ; $5696: $10
	rst SubAFromDE                                          ; $5697: $df
	ldh [$df], a                                     ; $5698: $e0 $df
	ret nz                                           ; $569a: $c0

	sub [hl]                                         ; $569b: $96
	db $fc                                           ; $569c: $fc
	db $e4                                           ; $569d: $e4
	cp $c2                                           ; $569e: $fe $c2

jr_019_56a0:
	cp $d2                                           ; $56a0: $fe $d2
	db $fc                                           ; $56a2: $fc
	db $e4                                           ; $56a3: $e4
	ret c                                            ; $56a4: $d8

	ld a, e                                          ; $56a5: $7b
	ld sp, $8b7a                                     ; $56a6: $31 $7a $8b
	sbc l                                            ; $56a9: $9d
	ldh a, [rAUD4LEN]                                ; $56aa: $f0 $20
	ld a, e                                          ; $56ac: $7b
	inc [hl]                                         ; $56ad: $34
	sbc [hl]                                         ; $56ae: $9e
	ld [bc], a                                       ; $56af: $02
	ld a, e                                          ; $56b0: $7b
	jr jr_019_56a0                                   ; $56b1: $18 $ed

	ld l, [hl]                                       ; $56b3: $6e
	inc [hl]                                         ; $56b4: $34
	rst SubAFromDE                                          ; $56b5: $df
	rrca                                             ; $56b6: $0f
	sbc b                                            ; $56b7: $98
	ld a, h                                          ; $56b8: $7c
	rst $38                                          ; $56b9: $ff
	jr @+$01                                         ; $56ba: $18 $ff

	add c                                            ; $56bc: $81
	rst $38                                          ; $56bd: $ff
	ld b, c                                          ; $56be: $41
	ld a, c                                          ; $56bf: $79
	and $df                                          ; $56c0: $e6 $df
	ld a, [hl]                                       ; $56c2: $7e
	db $dd                                           ; $56c3: $dd
	cp $98                                           ; $56c4: $fe $98
	ld a, [hl]                                       ; $56c6: $7e
	ld e, d                                          ; $56c7: $5a
	cp $9a                                           ; $56c8: $fe $9a
	cp $fe                                           ; $56ca: $fe $fe
	sub e                                            ; $56cc: $93
	ld a, e                                          ; $56cd: $7b
	sbc b                                            ; $56ce: $98
	db $dd                                           ; $56cf: $dd
	rst $38                                          ; $56d0: $ff
	rst SubAFromDE                                          ; $56d1: $df
	ldh [$7f], a                                     ; $56d2: $e0 $7f
	cp [hl]                                          ; $56d4: $be
	ld l, a                                          ; $56d5: $6f
	ld c, b                                          ; $56d6: $48
	pop af                                           ; $56d7: $f1
	ld [hl], a                                       ; $56d8: $77
	adc d                                            ; $56d9: $8a
	rst SubAFromDE                                          ; $56da: $df
	ldh [$67], a                                     ; $56db: $e0 $67
	or h                                             ; $56dd: $b4
	ld [hl], a                                       ; $56de: $77
	db $fc                                           ; $56df: $fc
	ld a, a                                          ; $56e0: $7f
	sub [hl]                                         ; $56e1: $96
	rst SubAFromDE                                          ; $56e2: $df
	inc bc                                           ; $56e3: $03
	sbc l                                            ; $56e4: $9d
	dec b                                            ; $56e5: $05
	rlca                                             ; $56e6: $07
	ld [hl], a                                       ; $56e7: $77
	cp $7b                                           ; $56e8: $fe $7b
	or $7f                                           ; $56ea: $f6 $7f
	db $fd                                           ; $56ec: $fd
	sbc [hl]                                         ; $56ed: $9e
	ld [bc], a                                       ; $56ee: $02
	ld h, a                                          ; $56ef: $67
	adc b                                            ; $56f0: $88
	rst SubAFromDE                                          ; $56f1: $df
	cp [hl]                                          ; $56f2: $be
	add e                                            ; $56f3: $83
	jp $8cff                                         ; $56f4: $c3 $ff $8c


	rst $38                                          ; $56f7: $ff
	ld [hl], e                                       ; $56f8: $73
	rst $38                                          ; $56f9: $ff
	jp z, $06ff                                      ; $56fa: $ca $ff $06

	rst $38                                          ; $56fd: $ff
	add hl, hl                                       ; $56fe: $29
	rst $38                                          ; $56ff: $ff
	ld c, c                                          ; $5700: $49
	rst $38                                          ; $5701: $ff
	ld e, c                                          ; $5702: $59
	rst $38                                          ; $5703: $ff
	ei                                               ; $5704: $fb
	cp a                                             ; $5705: $bf

jr_019_5706:
	rst $38                                          ; $5706: $ff
	add a                                            ; $5707: $87
	rst $38                                          ; $5708: $ff
	ld d, c                                          ; $5709: $51
	rst AddAOntoHL                                          ; $570a: $ef
	scf                                              ; $570b: $37
	rst $38                                          ; $570c: $ff
	adc b                                            ; $570d: $88
	rst $38                                          ; $570e: $ff
	jp z, $77fd                                      ; $570f: $ca $fd $77

	sbc d                                            ; $5712: $9a
	sbc d                                            ; $5713: $9a
	jr nc, jr_019_5706                               ; $5714: $30 $f0

	ret z                                            ; $5716: $c8

	ld hl, sp+$70                                    ; $5717: $f8 $70
	ld a, e                                          ; $5719: $7b
	ld c, [hl]                                       ; $571a: $4e
	ld a, [hl]                                       ; $571b: $7e
	push de                                          ; $571c: $d5
	ld a, d                                          ; $571d: $7a
	db $d3                                           ; $571e: $d3
	sbc h                                            ; $571f: $9c
	ldh a, [$e0]                                     ; $5720: $f0 $e0
	ld h, b                                          ; $5722: $60
	ld a, d                                          ; $5723: $7a
	ld [hl], a                                       ; $5724: $77
	call c, Call_019_77e0                            ; $5725: $dc $e0 $77
	xor b                                            ; $5728: $a8
	ld a, [hl]                                       ; $5729: $7e
	ld a, [$fe7f]                                    ; $572a: $fa $7f $fe
	sbc $03                                          ; $572d: $de $03
	ld a, a                                          ; $572f: $7f
	xor [hl]                                         ; $5730: $ae
	ld [hl], e                                       ; $5731: $73
	sub [hl]                                         ; $5732: $96
	ld c, a                                          ; $5733: $4f
	ld b, b                                          ; $5734: $40
	sub e                                            ; $5735: $93
	cp a                                             ; $5736: $bf
	ld sp, hl                                        ; $5737: $f9
	ld e, $ff                                        ; $5738: $1e $ff
	nop                                              ; $573a: $00
	rst $38                                          ; $573b: $ff
	pop bc                                           ; $573c: $c1
	rst $38                                          ; $573d: $ff
	pop bc                                           ; $573e: $c1
	ld a, a                                          ; $573f: $7f
	cp $7e                                           ; $5740: $fe $7e
	ld a, e                                          ; $5742: $7b
	cp $43                                           ; $5743: $fe $43
	ld b, b                                          ; $5745: $40
	halt                                             ; $5746: $76
	db $fc                                           ; $5747: $fc
	scf                                              ; $5748: $37
	ld a, $57                                        ; $5749: $3e $57
	ld b, b                                          ; $574b: $40
	ld a, e                                          ; $574c: $7b
	sbc [hl]                                         ; $574d: $9e
	add [hl]                                         ; $574e: $86
	rrca                                             ; $574f: $0f
	db $10                                           ; $5750: $10
	rra                                              ; $5751: $1f
	jr nz, @+$41                                     ; $5752: $20 $3f

	jr nc, jr_019_5795                               ; $5754: $30 $3f

	jr nz, @+$41                                     ; $5756: $20 $3f

	rrca                                             ; $5758: $0f
	rra                                              ; $5759: $1f
	rra                                              ; $575a: $1f
	jr jr_019_578c                                   ; $575b: $18 $2f

	ld a, [hl+]                                      ; $575d: $2a
	dec bc                                           ; $575e: $0b
	rrca                                             ; $575f: $0f
	dec e                                            ; $5760: $1d
	inc de                                           ; $5761: $13
	rra                                              ; $5762: $1f
	ld [de], a                                       ; $5763: $12
	rrca                                             ; $5764: $0f
	ld [$0407], sp                                   ; $5765: $08 $07 $04
	db $fd                                           ; $5768: $fd
	sbc h                                            ; $5769: $9c
	ld b, b                                          ; $576a: $40
	ldh a, [hDisp1_SCY]                                     ; $576b: $f0 $90
	ld a, b                                          ; $576d: $78
	add sp, -$64                                     ; $576e: $e8 $9c
	ld b, $fe                                        ; $5770: $06 $fe
	ld [bc], a                                       ; $5772: $02
	ld a, e                                          ; $5773: $7b
	cp $9e                                           ; $5774: $fe $9e
	ld bc, $d27a                                     ; $5776: $01 $7a $d2
	adc b                                            ; $5779: $88
	jp nz, $b27e                                     ; $577a: $c2 $7e $b2

	ld a, [hl]                                       ; $577d: $7e
	ldh a, [c]                                       ; $577e: $f2
	ld e, [hl]                                       ; $577f: $5e
	db $f4                                           ; $5780: $f4
	inc e                                            ; $5781: $1c
	add sp, $38                                      ; $5782: $e8 $38
	ldh a, [rSVBK]                                   ; $5784: $f0 $70
	inc bc                                           ; $5786: $03
	inc bc                                           ; $5787: $03
	ld [hl-], a                                      ; $5788: $32
	inc sp                                           ; $5789: $33
	ld a, a                                          ; $578a: $7f
	ld c, a                                          ; $578b: $4f

jr_019_578c:
	ld a, a                                          ; $578c: $7f
	ld h, [hl]                                       ; $578d: $66
	dec de                                           ; $578e: $1b
	ld e, $07                                        ; $578f: $1e $07
	ld a, c                                          ; $5791: $79
	and $98                                          ; $5792: $e6 $98
	rra                                              ; $5794: $1f

jr_019_5795:
	rla                                              ; $5795: $17
	ld e, $12                                        ; $5796: $1e $12
	ld c, $0e                                        ; $5798: $0e $0e
	add hl, bc                                       ; $579a: $09
	ld a, e                                          ; $579b: $7b
	cp e                                             ; $579c: $bb
	rst SubAFromDE                                          ; $579d: $df
	ccf                                              ; $579e: $3f
	rst SubAFromDE                                          ; $579f: $df
	ld a, a                                          ; $57a0: $7f
	ld l, a                                          ; $57a1: $6f
	inc h                                            ; $57a2: $24
	ld a, a                                          ; $57a3: $7f
	ld [hl-], a                                      ; $57a4: $32
	ld a, c                                          ; $57a5: $79
	and e                                            ; $57a6: $a3
	sbc h                                            ; $57a7: $9c
	ld a, b                                          ; $57a8: $78
	ret nc                                           ; $57a9: $d0

	ld [hl], b                                       ; $57aa: $70
	ld a, e                                          ; $57ab: $7b
	ld [hl], l                                       ; $57ac: $75
	sbc $e0                                          ; $57ad: $de $e0
	ld a, a                                          ; $57af: $7f
	or l                                             ; $57b0: $b5
	sub l                                            ; $57b1: $95
	ld l, b                                          ; $57b2: $68
	ld a, b                                          ; $57b3: $78
	ld c, b                                          ; $57b4: $48
	ld a, b                                          ; $57b5: $78
	inc a                                            ; $57b6: $3c
	inc a                                            ; $57b7: $3c
	ld a, $3e                                        ; $57b8: $3e $3e
	ld a, [hl]                                       ; $57ba: $7e
	ld a, [hl]                                       ; $57bb: $7e
	ld [hl], l                                       ; $57bc: $75
	ldh [rOCPD], a                                   ; $57bd: $e0 $6b
	ld [hl-], a                                      ; $57bf: $32
	ld a, e                                          ; $57c0: $7b
	inc e                                            ; $57c1: $1c
	ld a, [hl]                                       ; $57c2: $7e
	ld [de], a                                       ; $57c3: $12
	sbc [hl]                                         ; $57c4: $9e
	inc c                                            ; $57c5: $0c
	ld a, d                                          ; $57c6: $7a
	ld c, $75                                        ; $57c7: $0e $75
	sbc l                                            ; $57c9: $9d
	rst SubAFromDE                                          ; $57ca: $df
	dec bc                                           ; $57cb: $0b
	ld a, a                                          ; $57cc: $7f
	ld l, [hl]                                       ; $57cd: $6e
	sub a                                            ; $57ce: $97
	scf                                              ; $57cf: $37
	dec [hl]                                         ; $57d0: $35
	ld a, a                                          ; $57d1: $7f
	ld c, h                                          ; $57d2: $4c
	rst $38                                          ; $57d3: $ff
	sub [hl]                                         ; $57d4: $96
	rst $38                                          ; $57d5: $ff
	add a                                            ; $57d6: $87
	db $fd                                           ; $57d7: $fd
	ld a, a                                          ; $57d8: $7f
	add d                                            ; $57d9: $82
	sbc d                                            ; $57da: $9a
	inc h                                            ; $57db: $24
	rst $38                                          ; $57dc: $ff
	dec c                                            ; $57dd: $0d
	rst $38                                          ; $57de: $ff
	ld bc, $187b                                     ; $57df: $01 $7b $18
	ld a, a                                          ; $57e2: $7f
	cp $9e                                           ; $57e3: $fe $9e
	ret nz                                           ; $57e5: $c0

	ld [hl], a                                       ; $57e6: $77
	cp $94                                           ; $57e7: $fe $94
	ld a, a                                          ; $57e9: $7f
	or b                                             ; $57ea: $b0
	ld a, a                                          ; $57eb: $7f
	or c                                             ; $57ec: $b1
	ld e, a                                          ; $57ed: $5f
	pop af                                           ; $57ee: $f1
	rra                                              ; $57ef: $1f
	ldh [c], a                                       ; $57f0: $e2
	ld a, $fe                                        ; $57f1: $3e $fe
	ld e, $4f                                        ; $57f3: $1e $4f
	inc l                                            ; $57f5: $2c
	ld a, a                                          ; $57f6: $7f
	inc d                                            ; $57f7: $14
	ld [hl], a                                       ; $57f8: $77
	cp $dd                                           ; $57f9: $fe $dd
	add b                                            ; $57fb: $80
	ld sp, hl                                        ; $57fc: $f9
	sbc c                                            ; $57fd: $99
	ld a, b                                          ; $57fe: $78
	ld c, a                                          ; $57ff: $4f
	jr c, @+$41                                      ; $5800: $38 $3f

	ld b, $07                                        ; $5802: $06 $07
	dec l                                            ; $5804: $2d
	db $fc                                           ; $5805: $fc
	db $fd                                           ; $5806: $fd
	sub b                                            ; $5807: $90
	ld sp, hl                                        ; $5808: $f9
	rst SubAFromDE                                          ; $5809: $df
	ld a, d                                          ; $580a: $7a
	rst $38                                          ; $580b: $ff
	ld sp, $80ff                                     ; $580c: $31 $ff $80
	rst $38                                          ; $580f: $ff
	ld b, a                                          ; $5810: $47
	ld a, a                                          ; $5811: $7f
	cpl                                              ; $5812: $2f
	add hl, sp                                       ; $5813: $39
	ld e, $1b                                        ; $5814: $1e $1b
	inc b                                            ; $5816: $04
	ld a, d                                          ; $5817: $7a
	ld b, h                                          ; $5818: $44
	db $dd                                           ; $5819: $dd
	ld bc, $aa4f                                     ; $581a: $01 $4f $aa
	ld [hl], h                                       ; $581d: $74
	ldh [$7d], a                                     ; $581e: $e0 $7d
	xor d                                            ; $5820: $aa
	rst SubAFromDE                                          ; $5821: $df
	ld hl, sp+$7f                                    ; $5822: $f8 $7f
	ld b, h                                          ; $5824: $44
	sub c                                            ; $5825: $91
	ld a, b                                          ; $5826: $78
	ret z                                            ; $5827: $c8

	ld hl, sp-$08                                    ; $5828: $f8 $f8
	add sp, -$08                                     ; $582a: $e8 $f8
	ret nc                                           ; $582c: $d0

	ldh a, [rSVBK]                                   ; $582d: $f0 $70
	ld [hl], b                                       ; $582f: $70
	ld a, b                                          ; $5830: $78
	ld a, b                                          ; $5831: $78
	jr c, jr_019_586c                                ; $5832: $38 $38

	db $fd                                           ; $5834: $fd
	rst SubAFromDE                                          ; $5835: $df
	db $10                                           ; $5836: $10
	sbc c                                            ; $5837: $99
	jr c, jr_019_5862                                ; $5838: $38 $28

	inc a                                            ; $583a: $3c
	inc h                                            ; $583b: $24
	inc e                                            ; $583c: $1c
	inc e                                            ; $583d: $1c
	rst FarCall                                          ; $583e: $f7
	rst SubAFromDE                                          ; $583f: $df
	jr @+$7d                                         ; $5840: $18 $7b

	ldh a, [$9e]                                     ; $5842: $f0 $9e
	inc d                                            ; $5844: $14
	ld h, h                                          ; $5845: $64
	call c, $dffb                                    ; $5846: $dc $fb $df
	ld [hl], b                                       ; $5849: $70
	ld a, b                                          ; $584a: $78
	cp $9e                                           ; $584b: $fe $9e
	ld h, b                                          ; $584d: $60
	rst FarCall                                          ; $584e: $f7
	rst SubAFromDE                                          ; $584f: $df
	jr nc, jr_019_58d0                               ; $5850: $30 $7e

	ei                                               ; $5852: $fb
	sbc e                                            ; $5853: $9b
	ld [hl], b                                       ; $5854: $70
	ld d, b                                          ; $5855: $50
	jr nz, jr_019_5878                               ; $5856: $20 $20

	ldh [$9f], a                                     ; $5858: $e0 $9f
	rst SubAFromDE                                          ; $585a: $df
	inc a                                            ; $585b: $3c
	sub c                                            ; $585c: $91
	ld a, [hl]                                       ; $585d: $7e
	ld a, d                                          ; $585e: $7a
	rst $38                                          ; $585f: $ff
	sub e                                            ; $5860: $93
	rst $38                                          ; $5861: $ff

jr_019_5862:
	push de                                          ; $5862: $d5
	rst $38                                          ; $5863: $ff
	cp c                                             ; $5864: $b9
	rst $38                                          ; $5865: $ff
	cp c                                             ; $5866: $b9
	ld a, [hl]                                       ; $5867: $7e
	ld b, [hl]                                       ; $5868: $46
	inc a                                            ; $5869: $3c
	inc a                                            ; $586a: $3c
	dec sp                                           ; $586b: $3b

jr_019_586c:
	ldh [$9c], a                                     ; $586c: $e0 $9c
	ld h, d                                          ; $586e: $62
	rst $38                                          ; $586f: $ff
	sbc l                                            ; $5870: $9d
	ld a, e                                          ; $5871: $7b
	cp $9a                                           ; $5872: $fe $9a
	xor e                                            ; $5874: $ab
	rst $38                                          ; $5875: $ff
	ret                                              ; $5876: $c9


	ld a, [hl]                                       ; $5877: $7e

jr_019_5878:
	ld e, [hl]                                       ; $5878: $5e
	ccf                                              ; $5879: $3f
	ldh [$e0], a                                     ; $587a: $e0 $e0
	pop bc                                           ; $587c: $c1
	inc b                                            ; $587d: $04
	add d                                            ; $587e: $82
	rst $38                                          ; $587f: $ff
	sbc c                                            ; $5880: $99
	inc b                                            ; $5881: $04
	ld c, $07                                        ; $5882: $0e $07
	inc bc                                           ; $5884: $03
	ld bc, $6701                                     ; $5885: $01 $01 $67
	ld hl, sp-$21                                    ; $5888: $f8 $df
	jp $df99                                         ; $588a: $c3 $99 $df


	rst JumpTable                                          ; $588d: $c7
	adc $cf                                          ; $588e: $ce $cf
	rst SubAFromBC                                          ; $5890: $e7
	ldh a, [$67]                                     ; $5891: $f0 $67
	ld hl, sp-$78                                    ; $5893: $f8 $88
	adc [hl]                                         ; $5895: $8e
	ld e, $fd                                        ; $5896: $1e $fd
	dec l                                            ; $5898: $2d
	ld b, e                                          ; $5899: $43
	rst SubAFromBC                                          ; $589a: $e7
	adc $80                                          ; $589b: $ce $80
	add [hl]                                         ; $589d: $86
	ld b, $ed                                        ; $589e: $06 $ed
	dec c                                            ; $58a0: $0d
	inc bc                                           ; $58a1: $03
	rst SubAFromBC                                          ; $58a2: $e7
	adc $00                                          ; $58a3: $ce $00
	push bc                                          ; $58a5: $c5
	call $8ccf                                       ; $58a6: $cd $cf $8c
	sbc b                                            ; $58a9: $98
	jr jr_019_58dd                                   ; $58aa: $18 $31

	ld h, e                                          ; $58ac: $63
	ld hl, sp-$21                                    ; $58ad: $f8 $df
	or [hl]                                          ; $58af: $b6
	sbc d                                            ; $58b0: $9a
	ld [hl], $6c                                     ; $58b1: $36 $6c
	ld l, l                                          ; $58b3: $6d
	rst SubAFromDE                                          ; $58b4: $df
	sbc h                                            ; $58b5: $9c
	ld h, e                                          ; $58b6: $63
	ld hl, sp-$69                                    ; $58b7: $f8 $97
	rlca                                             ; $58b9: $07
	ld c, $0e                                        ; $58ba: $0e $0e
	call c, $389d                                    ; $58bc: $dc $9d $38
	ld a, h                                          ; $58bf: $7c
	rst $38                                          ; $58c0: $ff
	ld l, e                                          ; $58c1: $6b
	ld hl, sp-$72                                    ; $58c2: $f8 $8e
	cp $6e                                           ; $58c4: $fe $6e
	ld a, [hl]                                       ; $58c6: $7e
	ei                                               ; $58c7: $fb
	ei                                               ; $58c8: $fb
	di                                               ; $58c9: $f3
	ld [hl], b                                       ; $58ca: $70
	add b                                            ; $58cb: $80
	ld l, l                                          ; $58cc: $6d
	ld l, $5e                                        ; $58cd: $2e $5e
	db $db                                           ; $58cf: $db

jr_019_58d0:
	db $db                                           ; $58d0: $db
	or e                                             ; $58d1: $b3
	jr nc, jr_019_58d4                               ; $58d2: $30 $00

jr_019_58d4:
	ld l, l                                          ; $58d4: $6d

jr_019_58d5:
	sbc $ad                                          ; $58d5: $de $ad
	sbc d                                            ; $58d7: $9a
	rra                                              ; $58d8: $1f
	dec sp                                           ; $58d9: $3b
	ld [hl], e                                       ; $58da: $73
	nop                                              ; $58db: $00
	or b                                             ; $58dc: $b0

jr_019_58dd:
	ld h, a                                          ; $58dd: $67
	ld hl, sp-$65                                    ; $58de: $f8 $9b
	db $fc                                           ; $58e0: $fc
	ld hl, sp-$80                                    ; $58e1: $f8 $80
	add b                                            ; $58e3: $80
	db $fd                                           ; $58e4: $fd
	ld h, a                                          ; $58e5: $67
	ld hl, sp-$20                                    ; $58e6: $f8 $e0
	ld d, c                                          ; $58e8: $51
	rst SubAFromDE                                          ; $58e9: $df
	inc bc                                           ; $58ea: $03
	ld a, a                                          ; $58eb: $7f
	ld d, $9c                                        ; $58ec: $16 $9c
	inc e                                            ; $58ee: $1c
	jr c, jr_019_5921                                ; $58ef: $38 $30

	ld h, e                                          ; $58f1: $63
	ld hl, sp-$63                                    ; $58f2: $f8 $9d
	or [hl]                                          ; $58f4: $b6
	sub [hl]                                         ; $58f5: $96
	ei                                               ; $58f6: $fb
	ld h, a                                          ; $58f7: $67

Call_019_58f8:
	ld hl, sp-$21                                    ; $58f8: $f8 $df
	db $db                                           ; $58fa: $db
	sbc h                                            ; $58fb: $9c
	jr nz, jr_019_5916                               ; $58fc: $20 $18

	ld b, $7a                                        ; $58fe: $06 $7a
	and d                                            ; $5900: $a2
	rst SubAFromDE                                          ; $5901: $df
	db $db                                           ; $5902: $db
	ei                                               ; $5903: $fb
	rst SubAFromDE                                          ; $5904: $df
	ld l, e                                          ; $5905: $6b
	cp $9d                                           ; $5906: $fe $9d
	ret nz                                           ; $5908: $c0

	ccf                                              ; $5909: $3f
	ld l, a                                          ; $590a: $6f
	ld hl, sp-$02                                    ; $590b: $f8 $fe
	sbc b                                            ; $590d: $98
	ld h, c                                          ; $590e: $61
	ld h, a                                          ; $590f: $67
	rra                                              ; $5910: $1f
	ld a, $1f                                        ; $5911: $3e $1f
	jr c, jr_019_58d5                                ; $5913: $38 $c0

	ld [hl], e                                       ; $5915: $73

jr_019_5916:
	ld hl, sp-$62                                    ; $5916: $f8 $9e

jr_019_5918:
	jr jr_019_5918                                   ; $5918: $18 $fe

	sbc e                                            ; $591a: $9b
	rst AddAOntoHL                                          ; $591b: $ef
	rst GetHLinHL                                          ; $591c: $cf
	or e                                             ; $591d: $b3
	pop bc                                           ; $591e: $c1
	db $fd                                           ; $591f: $fd
	sbc h                                            ; $5920: $9c

jr_019_5921:
	db $ed                                           ; $5921: $ed
	jp Jump_019_7b83                                 ; $5922: $c3 $83 $7b


	jp z, $9bff                                      ; $5925: $ca $ff $9b

	ld l, l                                          ; $5928: $6d
	add b                                            ; $5929: $80
	ret nz                                           ; $592a: $c0

	ret nz                                           ; $592b: $c0

	halt                                             ; $592c: $76
	rst SubAFromBC                                          ; $592d: $e7
	ld h, a                                          ; $592e: $67
	ld hl, sp-$20                                    ; $592f: $f8 $e0
	cpl                                              ; $5931: $2f
	rst SubAFromDE                                          ; $5932: $df
	rrca                                             ; $5933: $0f
	sbc e                                            ; $5934: $9b
	inc c                                            ; $5935: $0c
	ld [$0909], sp                                   ; $5936: $08 $09 $09
	rst FarCall                                          ; $5939: $f7
	rst SubAFromDE                                          ; $593a: $df
	rst $38                                          ; $593b: $ff
	sbc e                                            ; $593c: $9b
	ld h, e                                          ; $593d: $63
	ld bc, $9999                                     ; $593e: $01 $99 $99
	ld e, e                                          ; $5941: $5b
	ldh a, [$9a]                                     ; $5942: $f0 $9a
	sbc d                                            ; $5944: $9a
	ld l, d                                          ; $5945: $6a

jr_019_5946:
	ld l, d                                          ; $5946: $6a
	sbc l                                            ; $5947: $9d
	rst $38                                          ; $5948: $ff
	ld e, e                                          ; $5949: $5b
	ldh a, [$9b]                                     ; $594a: $f0 $9b
	ret c                                            ; $594c: $d8

	reti                                             ; $594d: $d9


	db $db                                           ; $594e: $db
	ret c                                            ; $594f: $d8

	ld d, a                                          ; $5950: $57
	ldh a, [$dc]                                     ; $5951: $f0 $dc
	rst $38                                          ; $5953: $ff
	rst FarCall                                          ; $5954: $f7
	sbc c                                            ; $5955: $99
	ei                                               ; $5956: $fb
	or $ec                                           ; $5957: $f6 $ec
	ret c                                            ; $5959: $d8

	or b                                             ; $595a: $b0
	ld h, b                                          ; $595b: $60
	ldh [$b8], a                                     ; $595c: $e0 $b8
	sbc l                                            ; $595e: $9d
	ccf                                              ; $595f: $3f
	jr nz, @-$20                                     ; $5960: $20 $de

	daa                                              ; $5962: $27
	ld a, [hl]                                       ; $5963: $7e
	ld d, b                                          ; $5964: $50
	ld h, e                                          ; $5965: $63
	ld hl, sp-$66                                    ; $5966: $f8 $9a
	rst $38                                          ; $5968: $ff
	ld a, a                                          ; $5969: $7f
	ld sp, $3137                                     ; $596a: $31 $37 $31
	ld a, e                                          ; $596d: $7b
	sub c                                            ; $596e: $91
	ld h, e                                          ; $596f: $63
	ld hl, sp-$65                                    ; $5970: $f8 $9b
	rst $38                                          ; $5972: $ff
	xor a                                            ; $5973: $af
	adc a                                            ; $5974: $8f
	adc a                                            ; $5975: $8f
	ld d, e                                          ; $5976: $53
	ld hl, sp-$63                                    ; $5977: $f8 $9d
	sbc [hl]                                         ; $5979: $9e
	xor l                                            ; $597a: $ad
	ld [hl], a                                       ; $597b: $77
	ld d, c                                          ; $597c: $51
	ld e, a                                          ; $597d: $5f
	ld hl, sp-$64                                    ; $597e: $f8 $9c
	db $e3                                           ; $5980: $e3
	ld [hl], a                                       ; $5981: $77
	ld [hl], a                                       ; $5982: $77
	ld d, e                                          ; $5983: $53
	ld hl, sp-$64                                    ; $5984: $f8 $9c
	rra                                              ; $5986: $1f
	ld a, a                                          ; $5987: $7f
	rra                                              ; $5988: $1f
	ld d, e                                          ; $5989: $53
	ld hl, sp-$64                                    ; $598a: $f8 $9c
	jr jr_019_5946                                   ; $598c: $18 $b8

	dec de                                           ; $598e: $1b
	ld d, e                                          ; $598f: $53
	ld hl, sp-$64                                    ; $5990: $f8 $9c
	add $c7                                          ; $5992: $c6 $c7
	rst JumpTable                                          ; $5994: $c7
	ld d, e                                          ; $5995: $53
	ld hl, sp-$65                                    ; $5996: $f8 $9b
	ccf                                              ; $5998: $3f
	ld a, [hl]                                       ; $5999: $7e
	ld a, l                                          ; $599a: $7d
	ei                                               ; $599b: $fb
	ld e, a                                          ; $599c: $5f
	ld hl, sp+$7b                                    ; $599d: $f8 $7b
	inc h                                            ; $599f: $24
	ld [hl], c                                       ; $59a0: $71
	rst FarCall                                          ; $59a1: $f7
	ld l, e                                          ; $59a2: $6b
	ld hl, sp-$25                                    ; $59a3: $f8 $db
	add hl, bc                                       ; $59a5: $09
	rst SubAFromDE                                          ; $59a6: $df
	rrca                                             ; $59a7: $0f
	ld sp, hl                                        ; $59a8: $f9
	db $db                                           ; $59a9: $db
	sbc c                                            ; $59aa: $99
	ld e, [hl]                                       ; $59ab: $5e
	ldh a, [$c1]                                     ; $59ac: $f0 $c1
	rst $38                                          ; $59ae: $ff
	inc bc                                           ; $59af: $03
	rst $38                                          ; $59b0: $ff
	inc bc                                           ; $59b1: $03
	rst $38                                          ; $59b2: $ff
	jp $e0ff                                         ; $59b3: $c3 $ff $e0


	ld h, b                                          ; $59b6: $60
	ld a, c                                          ; $59b7: $79
	add c                                            ; $59b8: $81
	rst SubAFromDE                                          ; $59b9: $df
	inc c                                            ; $59ba: $0c
	ld e, [hl]                                       ; $59bb: $5e
	ret nz                                           ; $59bc: $c0

jr_019_59bd:
	sbc h                                            ; $59bd: $9c
	nop                                              ; $59be: $00
	cp $fe                                           ; $59bf: $fe $fe
	sbc $06                                          ; $59c1: $de $06
	rst SubAFromDE                                          ; $59c3: $df
	cp $02                                           ; $59c4: $fe $02
	ret nz                                           ; $59c6: $c0

	inc bc                                           ; $59c7: $03
	rst $38                                          ; $59c8: $ff
	inc bc                                           ; $59c9: $03
	rst $38                                          ; $59ca: $ff
	inc bc                                           ; $59cb: $03
	rst $38                                          ; $59cc: $ff
	ld [bc], a                                       ; $59cd: $02
	ret nz                                           ; $59ce: $c0

	ldh [$7c], a                                     ; $59cf: $e0 $7c
	inc a                                            ; $59d1: $3c
	ld b, b                                          ; $59d2: $40
	sbc e                                            ; $59d3: $9b
	inc bc                                           ; $59d4: $03
	ld bc, $f9f9                                     ; $59d5: $01 $f9 $f9
	ld e, e                                          ; $59d8: $5b
	ldh a, [$9b]                                     ; $59d9: $f0 $9b
	sbc e                                            ; $59db: $9b
	ld l, c                                          ; $59dc: $69
	ld l, d                                          ; $59dd: $6a
	sbc e                                            ; $59de: $9b
	ld d, h                                          ; $59df: $54
	ld d, b                                          ; $59e0: $50
	sbc e                                            ; $59e1: $9b
	ld h, h                                          ; $59e2: $64

jr_019_59e3:
	ld e, h                                          ; $59e3: $5c
	ld e, l                                          ; $59e4: $5d
	ld h, h                                          ; $59e5: $64
	ld d, a                                          ; $59e6: $57
	ldh a, [$9b]                                     ; $59e7: $f0 $9b
	ld b, h                                          ; $59e9: $44
	add $ce                                          ; $59ea: $c6 $ce
	ld d, [hl]                                       ; $59ec: $56
	ld d, h                                          ; $59ed: $54
	ld b, b                                          ; $59ee: $40
	sbc [hl]                                         ; $59ef: $9e
	halt                                             ; $59f0: $76
	nop                                              ; $59f1: $00
	ld b, b                                          ; $59f2: $40
	ldh [$36], a                                     ; $59f3: $e0 $36
	db $dd                                           ; $59f5: $dd
	add hl, bc                                       ; $59f6: $09
	sbc [hl]                                         ; $59f7: $9e
	ld [$8059], sp                                   ; $59f8: $08 $59 $80
	rst SubAFromDE                                          ; $59fb: $df
	rst $38                                          ; $59fc: $ff
	rst SubAFromDE                                          ; $59fd: $df
	ld sp, hl                                        ; $59fe: $f9
	sbc l                                            ; $59ff: $9d
	ld bc, $3e03                                     ; $5a00: $01 $03 $3e
	ld [$f045], sp                                   ; $5a03: $08 $45 $f0
	inc bc                                           ; $5a06: $03
	ldh a, [$03]                                     ; $5a07: $f0 $03
	ldh a, [$03]                                     ; $5a09: $f0 $03
	ldh a, [rSB]                                     ; $5a0b: $f0 $01
	add b                                            ; $5a0d: $80
	ldh [$7c], a                                     ; $5a0e: $e0 $7c
	ld [$0340], sp                                   ; $5a10: $08 $40 $03
	jr nz, @+$05                                     ; $5a13: $20 $03

	ldh a, [$03]                                     ; $5a15: $f0 $03
	ldh a, [$03]                                     ; $5a17: $f0 $03
	ldh a, [$e0]                                     ; $5a19: $f0 $e0

jr_019_5a1b:
	ld e, e                                          ; $5a1b: $5b
	ld [hl], b                                       ; $5a1c: $70
	jr c, jr_019_59bd                                ; $5a1d: $38 $9e

	ld [$3848], sp                                   ; $5a1f: $08 $48 $38
	sbc [hl]                                         ; $5a22: $9e
	ld a, c                                          ; $5a23: $79
	ld e, e                                          ; $5a24: $5b
	ldh a, [$9b]                                     ; $5a25: $f0 $9b
	dec de                                           ; $5a27: $1b
	or c                                             ; $5a28: $b1
	or c                                             ; $5a29: $b1
	or l                                             ; $5a2a: $b5
	ld d, h                                          ; $5a2b: $54
	ld c, b                                          ; $5a2c: $48
	sbc e                                            ; $5a2d: $9b
	dec sp                                           ; $5a2e: $3b
	dec de                                           ; $5a2f: $1b
	dec de                                           ; $5a30: $1b
	dec sp                                           ; $5a31: $3b
	ld d, a                                          ; $5a32: $57
	ldh a, [$9b]                                     ; $5a33: $f0 $9b
	ld d, [hl]                                       ; $5a35: $56
	ld d, b                                          ; $5a36: $50
	ld d, b                                          ; $5a37: $50
	ld d, $54                                        ; $5a38: $16 $54
	jr c, @-$60                                      ; $5a3a: $38 $9e

	or $00                                           ; $5a3c: $f6 $00
	jr c, @-$1e                                      ; $5a3e: $38 $e0

	ld [hl], $9d                                     ; $5a40: $36 $9d
	ld c, $0f                                        ; $5a42: $0e $0f
	ld c, h                                          ; $5a44: $4c
	jr c, jr_019_59e3                                ; $5a45: $38 $9c

	rra                                              ; $5a47: $1f
	add a                                            ; $5a48: $87
	pop hl                                           ; $5a49: $e1
	ld [hl], b                                       ; $5a4a: $70
	jr c, jr_019_5a1b                                ; $5a4b: $38 $ce

	rst $38                                          ; $5a4d: $ff
	sbc d                                            ; $5a4e: $9a
	pop bc                                           ; $5a4f: $c1
	db $dd                                           ; $5a50: $dd
	db $dd                                           ; $5a51: $dd
	pop bc                                           ; $5a52: $c1
	db $dd                                           ; $5a53: $dd
	ld e, e                                          ; $5a54: $5b
	ld hl, sp+$03                                    ; $5a55: $f8 $03
	rst $38                                          ; $5a57: $ff
	jp nz, $03ff                                     ; $5a58: $c2 $ff $03

	or b                                             ; $5a5b: $b0
	inc bc                                           ; $5a5c: $03
	rst $38                                          ; $5a5d: $ff
	inc bc                                           ; $5a5e: $03
	or b                                             ; $5a5f: $b0
	inc bc                                           ; $5a60: $03
	rst $38                                          ; $5a61: $ff
	ret c                                            ; $5a62: $d8

	rst $38                                          ; $5a63: $ff
	ldh [$d0], a                                     ; $5a64: $e0 $d0
	ld [$d140], sp                                   ; $5a66: $08 $40 $d1
	rst $38                                          ; $5a69: $ff
	ld a, e                                          ; $5a6a: $7b
	ld l, l                                          ; $5a6b: $6d
	rst SubAFromDE                                          ; $5a6c: $df
	db $dd                                           ; $5a6d: $dd
	sbc [hl]                                         ; $5a6e: $9e
	cp c                                             ; $5a6f: $b9
	ld e, a                                          ; $5a70: $5f
	ld hl, sp+$03                                    ; $5a71: $f8 $03
	rst $38                                          ; $5a73: $ff
	jp nz, $03ff                                     ; $5a74: $c2 $ff $03

	or b                                             ; $5a77: $b0
	inc bc                                           ; $5a78: $03
	rst $38                                          ; $5a79: $ff
	inc bc                                           ; $5a7a: $03
	or b                                             ; $5a7b: $b0
	inc bc                                           ; $5a7c: $03
	rst $38                                          ; $5a7d: $ff
	ld [bc], a                                       ; $5a7e: $02
	ret nz                                           ; $5a7f: $c0

	and $24                                          ; $5a80: $e6 $24
	nop                                              ; $5a82: $00
	call $de22                                       ; $5a83: $cd $22 $de
	ld d, l                                          ; $5a86: $55
	rst SubAFromDE                                          ; $5a87: $df
	ld b, h                                          ; $5a88: $44
	call c, $dc33                                    ; $5a89: $dc $33 $dc
	ld d, l                                          ; $5a8c: $55
	ld e, a                                          ; $5a8d: $5f
	or $dc                                           ; $5a8e: $f6 $dc
	ld [hl+], a                                      ; $5a90: $22
	sbc $66                                          ; $5a91: $de $66
	ld l, e                                          ; $5a93: $6b
	ldh [c], a                                       ; $5a94: $e2
	sbc [hl]                                         ; $5a95: $9e
	ld h, [hl]                                       ; $5a96: $66
	ld e, a                                          ; $5a97: $5f
	db $ec                                           ; $5a98: $ec
	ld h, e                                          ; $5a99: $63
	ret c                                            ; $5a9a: $d8

	call c, Call_019_6766                            ; $5a9b: $dc $66 $67
	ret c                                            ; $5a9e: $d8

	jp c, $9e66                                      ; $5a9f: $da $66 $9e

	ld b, h                                          ; $5aa2: $44
	ret c                                            ; $5aa3: $d8

	ld h, [hl]                                       ; $5aa4: $66
	ld b, d                                          ; $5aa5: $42
	nop                                              ; $5aa6: $00
	db $e3                                           ; $5aa7: $e3
	rst SubAFromDE                                          ; $5aa8: $df
	rst GetHLinHL                                          ; $5aa9: $cf
	push af                                          ; $5aaa: $f5
	sbc e                                            ; $5aab: $9b
	inc bc                                           ; $5aac: $03
	nop                                              ; $5aad: $00
	or $f6                                           ; $5aae: $f6 $f6
	ei                                               ; $5ab0: $fb
	sbc d                                            ; $5ab1: $9a
	rlca                                             ; $5ab2: $07
	nop                                              ; $5ab3: $00
	jr c, jr_019_5ab6                                ; $5ab4: $38 $00

jr_019_5ab6:
	ret nz                                           ; $5ab6: $c0

	cp $df                                           ; $5ab7: $fe $df
	rst SubAFromDE                                          ; $5ab9: $df
	db $fd                                           ; $5aba: $fd
	sbc h                                            ; $5abb: $9c
	ld a, [hl]                                       ; $5abc: $7e
	nop                                              ; $5abd: $00
	add c                                            ; $5abe: $81
	ld [hl], a                                       ; $5abf: $77
	db $ec                                           ; $5ac0: $ec
	ld a, a                                          ; $5ac1: $7f
	db $eb                                           ; $5ac2: $eb
	sbc h                                            ; $5ac3: $9c
	nop                                              ; $5ac4: $00
	or [hl]                                          ; $5ac5: $b6
	or [hl]                                          ; $5ac6: $b6
	ei                                               ; $5ac7: $fb
	sbc e                                            ; $5ac8: $9b
	ldh a, [rP1]                                     ; $5ac9: $f0 $00
	ld c, $00                                        ; $5acb: $0e $00
	db $dd                                           ; $5acd: $dd
	rst $38                                          ; $5ace: $ff
	ld [hl], a                                       ; $5acf: $77
	db $ec                                           ; $5ad0: $ec
	ei                                               ; $5ad1: $fb
	rst SubAFromDE                                          ; $5ad2: $df
	ld b, $99                                        ; $5ad3: $06 $99
	cp a                                             ; $5ad5: $bf
	ccf                                              ; $5ad6: $3f
	add [hl]                                         ; $5ad7: $86
	ld b, $4c                                        ; $5ad8: $06 $4c
	inc c                                            ; $5ada: $0c
	ei                                               ; $5adb: $fb
	rst SubAFromDE                                          ; $5adc: $df
	ld b, b                                          ; $5add: $40
	rst SubAFromDE                                          ; $5ade: $df
	and b                                            ; $5adf: $a0
	rst SubAFromDE                                          ; $5ae0: $df
	ret nz                                           ; $5ae1: $c0

	rst FarCall                                          ; $5ae2: $f7
	db $dd                                           ; $5ae3: $dd
	ld h, b                                          ; $5ae4: $60
	db $db                                           ; $5ae5: $db
	ret nz                                           ; $5ae6: $c0

	inc b                                            ; $5ae7: $04
	nop                                              ; $5ae8: $00
	db $dd                                           ; $5ae9: $dd
	ld [hl+], a                                      ; $5aea: $22
	ld c, d                                          ; $5aeb: $4a
	add b                                            ; $5aec: $80
	rst $38                                          ; $5aed: $ff
	sbc c                                            ; $5aee: $99
	rrca                                             ; $5aef: $0f
	ld [$0908], sp                                   ; $5af0: $08 $08 $09
	add hl, bc                                       ; $5af3: $09
	ld [$99f7], sp                                   ; $5af4: $08 $f7 $99
	rst $38                                          ; $5af7: $ff
	ld bc, $ff01                                     ; $5af8: $01 $01 $ff
	rst $38                                          ; $5afb: $ff
	rrca                                             ; $5afc: $0f
	ld e, e                                          ; $5afd: $5b
	ldh a, [$9a]                                     ; $5afe: $f0 $9a
	xor b                                            ; $5b00: $a8
	xor c                                            ; $5b01: $a9
	adc e                                            ; $5b02: $8b
	ret c                                            ; $5b03: $d8

	rst $38                                          ; $5b04: $ff
	ld d, a                                          ; $5b05: $57
	ldh a, [$9c]                                     ; $5b06: $f0 $9c
	adc l                                            ; $5b08: $8d
	xor l                                            ; $5b09: $ad
	xor l                                            ; $5b0a: $ad
	ld d, a                                          ; $5b0b: $57
	ldh a, [$dc]                                     ; $5b0c: $f0 $dc
	rst $38                                          ; $5b0e: $ff
	rst FarCall                                          ; $5b0f: $f7
	sbc c                                            ; $5b10: $99
	ei                                               ; $5b11: $fb
	or $ec                                           ; $5b12: $f6 $ec
	ret c                                            ; $5b14: $d8

	or b                                             ; $5b15: $b0
	ld h, b                                          ; $5b16: $60
	ld sp, hl                                        ; $5b17: $f9
	ld [hl], a                                       ; $5b18: $77
	and h                                            ; $5b19: $a4
	sbc [hl]                                         ; $5b1a: $9e
	ld [$0fde], sp                                   ; $5b1b: $08 $de $0f
	ld sp, hl                                        ; $5b1e: $f9
	sbc l                                            ; $5b1f: $9d
	rrca                                             ; $5b20: $0f
	rst $38                                          ; $5b21: $ff

Jump_019_5b22:
	ld [hl], e                                       ; $5b22: $73
	and b                                            ; $5b23: $a0
	ld e, a                                          ; $5b24: $5f
	ret nc                                           ; $5b25: $d0

	rst SubAFromDE                                          ; $5b26: $df
	rrca                                             ; $5b27: $0f
	sbc $0c                                          ; $5b28: $de $0c
	ld e, a                                          ; $5b2a: $5f
	ldh [$9c], a                                     ; $5b2b: $e0 $9c
	nop                                              ; $5b2d: $00
	cp $fe                                           ; $5b2e: $fe $fe
	sbc $06                                          ; $5b30: $de $06
	rst SubAFromDE                                          ; $5b32: $df
	cp $f9                                           ; $5b33: $fe $f9
	inc b                                            ; $5b35: $04
	nop                                              ; $5b36: $00
	call c, $2e77                                    ; $5b37: $dc $77 $2e
	add b                                            ; $5b3a: $80
	sub a                                            ; $5b3b: $97
	or [hl]                                          ; $5b3c: $b6
	dec b                                            ; $5b3d: $05
	rrca                                             ; $5b3e: $0f
	rrca                                             ; $5b3f: $0f
	rlca                                             ; $5b40: $07
	ld b, $0f                                        ; $5b41: $06 $0f
	rlca                                             ; $5b43: $07
	ld h, a                                          ; $5b44: $67
	ld hl, sp-$69                                    ; $5b45: $f8 $97
	ld d, a                                          ; $5b47: $57
	ld d, d                                          ; $5b48: $52
	jp nc, Jump_019_5257                             ; $5b49: $d2 $57 $52

Jump_019_5b4c:
	ld [de], a                                       ; $5b4c: $12
	ld [de], a                                       ; $5b4d: $12
	ld [hl-], a                                      ; $5b4e: $32
	ld h, a                                          ; $5b4f: $67
	ld hl, sp-$69                                    ; $5b50: $f8 $97
	ld d, e                                          ; $5b52: $53
	ld d, d                                          ; $5b53: $52
	ld d, e                                          ; $5b54: $53
	ld d, a                                          ; $5b55: $57
	ld d, c                                          ; $5b56: $51
	inc de                                           ; $5b57: $13
	db $10                                           ; $5b58: $10
	ld sp, $f867                                     ; $5b59: $31 $67 $f8
	sub a                                            ; $5b5c: $97
	ldh [rAUD4LEN], a                                ; $5b5d: $e0 $20
	ldh [$f0], a                                     ; $5b5f: $e0 $f0
	nop                                              ; $5b61: $00
	ldh [rAUD4LEN], a                                ; $5b62: $e0 $20
	ret nz                                           ; $5b64: $c0

	ld h, a                                          ; $5b65: $67
	ld hl, sp+$04                                    ; $5b66: $f8 $04
	nop                                              ; $5b68: $00
	rst SubAFromDE                                          ; $5b69: $df
	ld [hl+], a                                      ; $5b6a: $22
	ld h, $00                                        ; $5b6b: $26 $00
	sbc l                                            ; $5b6d: $9d
	or b                                             ; $5b6e: $b0
	or [hl]                                          ; $5b6f: $b6
	or c                                             ; $5b70: $b1
	add hl, bc                                       ; $5b71: $09
	add hl, bc                                       ; $5b72: $09
	inc bc                                           ; $5b73: $03
	ld bc, $0909                                     ; $5b74: $01 $09 $09
	ld b, $53                                        ; $5b77: $06 $53
	ld d, d                                          ; $5b79: $52
	ld d, d                                          ; $5b7a: $52
	ld d, e                                          ; $5b7b: $53
	ld a, b                                          ; $5b7c: $78
	ld [de], a                                       ; $5b7d: $12
	ld [de], a                                       ; $5b7e: $12
	sub l                                            ; $5b7f: $95
	ret nz                                           ; $5b80: $c0

	or d                                             ; $5b81: $b2
	ld e, $12                                        ; $5b82: $1e $12
	sbc a                                            ; $5b84: $9f
	ld d, d                                          ; $5b85: $52
	ld e, [hl]                                       ; $5b86: $5e
	ld d, d                                          ; $5b87: $52
	sub d                                            ; $5b88: $92
	nop                                              ; $5b89: $00
	ldh [$a0], a                                     ; $5b8a: $e0 $a0
	ldh a, [rLCDC]                                   ; $5b8c: $f0 $40
	ldh [rAUD4LEN], a                                ; $5b8e: $e0 $20
	ret nz                                           ; $5b90: $c0

	inc b                                            ; $5b91: $04
	nop                                              ; $5b92: $00
	rst SubAFromDE                                          ; $5b93: $df
	ld [hl+], a                                      ; $5b94: $22

jr_019_5b95:
	ld h, $00                                        ; $5b95: $26 $00
	sbc l                                            ; $5b97: $9d
	or b                                             ; $5b98: $b0
	or [hl]                                          ; $5b99: $b6
	or c                                             ; $5b9a: $b1
	add hl, bc                                       ; $5b9b: $09
	ld [$090e], sp                                   ; $5b9c: $08 $0e $09
	add hl, bc                                       ; $5b9f: $09
	add hl, bc                                       ; $5ba0: $09
	ld b, $79                                        ; $5ba1: $06 $79
	ld c, d                                          ; $5ba3: $4a
	ld c, d                                          ; $5ba4: $4a
	ld de, $1212                                     ; $5ba5: $11 $12 $12
	ld [de], a                                       ; $5ba8: $12
	sub l                                            ; $5ba9: $95
	add b                                            ; $5baa: $80
	or d                                             ; $5bab: $b2
	ld e, [hl]                                       ; $5bac: $5e
	ld d, d                                          ; $5bad: $52
	sbc a                                            ; $5bae: $9f
	ld d, d                                          ; $5baf: $52
	ld e, [hl]                                       ; $5bb0: $5e
	ld d, d                                          ; $5bb1: $52
	sub d                                            ; $5bb2: $92
	nop                                              ; $5bb3: $00
	ldh [$a0], a                                     ; $5bb4: $e0 $a0
	ldh a, [rLCDC]                                   ; $5bb6: $f0 $40
	ldh [rAUD4LEN], a                                ; $5bb8: $e0 $20
	ret nz                                           ; $5bba: $c0

	inc b                                            ; $5bbb: $04
	nop                                              ; $5bbc: $00
	rst SubAFromDE                                          ; $5bbd: $df
	ld [hl+], a                                      ; $5bbe: $22
	ld h, $00                                        ; $5bbf: $26 $00
	sbc l                                            ; $5bc1: $9d
	or b                                             ; $5bc2: $b0
	or [hl]                                          ; $5bc3: $b6
	or c                                             ; $5bc4: $b1
	add hl, bc                                       ; $5bc5: $09
	add hl, bc                                       ; $5bc6: $09
	rlca                                             ; $5bc7: $07
	ld bc, $0909                                     ; $5bc8: $01 $09 $09
	ld b, $49                                        ; $5bcb: $06 $49
	ld d, l                                          ; $5bcd: $55
	ld d, l                                          ; $5bce: $55
	ld d, l                                          ; $5bcf: $55
	ld d, l                                          ; $5bd0: $55
	ld d, l                                          ; $5bd1: $55
	ld d, l                                          ; $5bd2: $55
	bit 0, b                                         ; $5bd3: $cb $40
	or d                                             ; $5bd5: $b2
	ld e, [hl]                                       ; $5bd6: $5e
	ld d, d                                          ; $5bd7: $52
	ld e, a                                          ; $5bd8: $5f
	ld d, d                                          ; $5bd9: $52
	ld e, [hl]                                       ; $5bda: $5e
	ld d, d                                          ; $5bdb: $52
	ld d, d                                          ; $5bdc: $52

Call_019_5bdd:
	nop                                              ; $5bdd: $00
	ldh [$a0], a                                     ; $5bde: $e0 $a0
	ldh a, [rLCDC]                                   ; $5be0: $f0 $40
	ldh [rAUD4LEN], a                                ; $5be2: $e0 $20
	ret nz                                           ; $5be4: $c0

	inc b                                            ; $5be5: $04
	nop                                              ; $5be6: $00
	rst SubAFromDE                                          ; $5be7: $df
	ld [hl+], a                                      ; $5be8: $22

jr_019_5be9:
	ld h, $00                                        ; $5be9: $26 $00
	sbc l                                            ; $5beb: $9d
	or b                                             ; $5bec: $b0
	cp c                                             ; $5bed: $b9
	or c                                             ; $5bee: $b1
	ld a, [bc]                                       ; $5bef: $0a
	ld a, [bc]                                       ; $5bf0: $0a
	ld [$0909], sp                                   ; $5bf1: $08 $09 $09
	ld a, [bc]                                       ; $5bf4: $0a
	dec bc                                           ; $5bf5: $0b
	db $10                                           ; $5bf6: $10
	sub c                                            ; $5bf7: $91
	sub c                                            ; $5bf8: $91
	sub b                                            ; $5bf9: $90
	db $10                                           ; $5bfa: $10
	db $10                                           ; $5bfb: $10
	ld de, $80b5                                     ; $5bfc: $11 $b5 $80
	or d                                             ; $5bff: $b2
	ld e, [hl]                                       ; $5c00: $5e
	ld d, d                                          ; $5c01: $52
	ld e, a                                          ; $5c02: $5f
	sub d                                            ; $5c03: $92
	sbc [hl]                                         ; $5c04: $9e
	ld [de], a                                       ; $5c05: $12
	jp nc, $e000                                     ; $5c06: $d2 $00 $e0

	and b                                            ; $5c09: $a0
	ldh a, [rLCDC]                                   ; $5c0a: $f0 $40
	ldh [rAUD4LEN], a                                ; $5c0c: $e0 $20
	ret nz                                           ; $5c0e: $c0

	inc b                                            ; $5c0f: $04
	nop                                              ; $5c10: $00
	rst SubAFromDE                                          ; $5c11: $df
	ld [hl+], a                                      ; $5c12: $22
	jr z, jr_019_5b95                                ; $5c13: $28 $80

	rst $38                                          ; $5c15: $ff
	sbc d                                            ; $5c16: $9a
	ld a, l                                          ; $5c17: $7d
	dec d                                            ; $5c18: $15
	ld a, [de]                                       ; $5c19: $1a
	db $10                                           ; $5c1a: $10
	ld hl, $67fe                                     ; $5c1b: $21 $fe $67
	ld hl, sp-$66                                    ; $5c1e: $f8 $9a
	db $fd                                           ; $5c20: $fd
	ld hl, $423d                                     ; $5c21: $21 $3d $42
	sbc h                                            ; $5c24: $9c
	ld e, e                                          ; $5c25: $5b
	ld hl, sp-$66                                    ; $5c26: $f8 $9a
	rlca                                             ; $5c28: $07
	nop                                              ; $5c29: $00
	ld [hl], b                                       ; $5c2a: $70
	jr nc, @+$79                                     ; $5c2b: $30 $77

	ld l, a                                          ; $5c2d: $6f
	ld hl, sp-$62                                    ; $5c2e: $f8 $9e
	db $10                                           ; $5c30: $10
	ld [hl], a                                       ; $5c31: $77
	ld hl, sp-$65                                    ; $5c32: $f8 $9b
	nop                                              ; $5c34: $00
	ld b, b                                          ; $5c35: $40
	ld b, b                                          ; $5c36: $40
	add b                                            ; $5c37: $80
	db $fc                                           ; $5c38: $fc
	ld [hl], e                                       ; $5c39: $73
	ld hl, sp+$04                                    ; $5c3a: $f8 $04
	nop                                              ; $5c3c: $00
	rst SubAFromDE                                          ; $5c3d: $df
	ld b, h                                          ; $5c3e: $44
	inc h                                            ; $5c3f: $24
	nop                                              ; $5c40: $00
	db $fd                                           ; $5c41: $fd
	rst SubAFromDE                                          ; $5c42: $df
	ld a, b                                          ; $5c43: $78
	rst SubAFromDE                                          ; $5c44: $df
	add hl, bc                                       ; $5c45: $09
	db $dd                                           ; $5c46: $dd
	ld [$7bdf], sp                                   ; $5c47: $08 $df $7b
	ei                                               ; $5c4a: $fb
	sub l                                            ; $5c4b: $95
	ld e, a                                          ; $5c4c: $5f
	ld e, [hl]                                       ; $5c4d: $5e
	ld b, c                                          ; $5c4e: $41
	ld b, b                                          ; $5c4f: $40
	rst SubAFromDE                                          ; $5c50: $df
	rst SubAFromDE                                          ; $5c51: $df
	add h                                            ; $5c52: $84
	add h                                            ; $5c53: $84
	ld e, b                                          ; $5c54: $58
	ld e, b                                          ; $5c55: $58
	ei                                               ; $5c56: $fb

jr_019_5c57:
	db $dd                                           ; $5c57: $dd
	add b                                            ; $5c58: $80
	rst SubAFromDE                                          ; $5c59: $df
	rla                                              ; $5c5a: $17
	rst SubAFromDE                                          ; $5c5b: $df
	ld [hl], b                                       ; $5c5c: $70
	rst SubAFromDE                                          ; $5c5d: $df
	jr nz, jr_019_5c57                               ; $5c5e: $20 $f7

	rst SubAFromDE                                          ; $5c60: $df
	add b                                            ; $5c61: $80
	ei                                               ; $5c62: $fb
	inc b                                            ; $5c63: $04
	nop                                              ; $5c64: $00

jr_019_5c65:
	rst SubAFromDE                                          ; $5c65: $df
	ld b, h                                          ; $5c66: $44
	jr z, jr_019_5be9                                ; $5c67: $28 $80

	rst $38                                          ; $5c69: $ff
	sbc d                                            ; $5c6a: $9a
	ld a, b                                          ; $5c6b: $78
	rlca                                             ; $5c6c: $07
	ld a, b                                          ; $5c6d: $78
	ld [$fe73], sp                                   ; $5c6e: $08 $73 $fe
	ld h, a                                          ; $5c71: $67
	ld hl, sp-$66                                    ; $5c72: $f8 $9a
	ld l, a                                          ; $5c74: $6f
	jp hl                                            ; $5c75: $e9


	adc c                                            ; $5c76: $89
	adc c                                            ; $5c77: $89
	rrca                                             ; $5c78: $0f
	cp $9d                                           ; $5c79: $fe $9d
	cpl                                              ; $5c7b: $2f
	xor c                                            ; $5c7c: $a9
	ld l, a                                          ; $5c7d: $6f
	ld hl, sp-$66                                    ; $5c7e: $f8 $9a
	ld a, e                                          ; $5c80: $7b
	ld [$3058], sp                                   ; $5c81: $08 $58 $30
	inc de                                           ; $5c84: $13
	ld e, e                                          ; $5c85: $5b
	ld hl, sp-$66                                    ; $5c86: $f8 $9a
	sbc [hl]                                         ; $5c88: $9e
	ld [hl+], a                                      ; $5c89: $22
	inc h                                            ; $5c8a: $24
	ld c, h                                          ; $5c8b: $4c
	sub d                                            ; $5c8c: $92
	ld h, e                                          ; $5c8d: $63
	ld hl, sp+$04                                    ; $5c8e: $f8 $04
	nop                                              ; $5c90: $00
	rst SubAFromDE                                          ; $5c91: $df
	ld b, h                                          ; $5c92: $44
	inc d                                            ; $5c93: $14
	add b                                            ; $5c94: $80
	rst $38                                          ; $5c95: $ff
	sbc d                                            ; $5c96: $9a
	ld de, $117c                                     ; $5c97: $11 $7c $11
	ld d, h                                          ; $5c9a: $54
	ld d, l                                          ; $5c9b: $55
	cp $67                                           ; $5c9c: $fe $67
	ld hl, sp-$66                                    ; $5c9e: $f8 $9a
	ldh [rP1], a                                     ; $5ca0: $e0 $00
	rst AddAOntoHL                                          ; $5ca2: $ef
	jr nz, jr_019_5c65                               ; $5ca3: $20 $c0

	ld h, e                                          ; $5ca5: $63
	ld hl, sp+$04                                    ; $5ca6: $f8 $04
	nop                                              ; $5ca8: $00
	sbc [hl]                                         ; $5ca9: $9e
	ld b, h                                          ; $5caa: $44
	inc d                                            ; $5cab: $14
	add b                                            ; $5cac: $80
	rst $38                                          ; $5cad: $ff
	sbc d                                            ; $5cae: $9a
	ld a, l                                          ; $5caf: $7d
	inc d                                            ; $5cb0: $14
	jr jr_019_5cc3                                   ; $5cb1: $18 $10

	ld hl, $67fe                                     ; $5cb3: $21 $fe $67
	ld hl, sp-$66                                    ; $5cb6: $f8 $9a
	pop hl                                           ; $5cb8: $e1
	dec b                                            ; $5cb9: $05
	ld [bc], a                                       ; $5cba: $02
	ld [bc], a                                       ; $5cbb: $02
	db $ed                                           ; $5cbc: $ed
	ld h, e                                          ; $5cbd: $63
	ld hl, sp+$04                                    ; $5cbe: $f8 $04
	nop                                              ; $5cc0: $00
	sbc [hl]                                         ; $5cc1: $9e
	ld b, h                                          ; $5cc2: $44

jr_019_5cc3:
	inc de                                           ; $5cc3: $13
	nop                                              ; $5cc4: $00
	db $fd                                           ; $5cc5: $fd
	rst SubAFromDE                                          ; $5cc6: $df
	dec a                                            ; $5cc7: $3d
	rst SubAFromDE                                          ; $5cc8: $df
	ld b, c                                          ; $5cc9: $41
	rst SubAFromDE                                          ; $5cca: $df
	add hl, sp                                       ; $5ccb: $39
	rst SubAFromDE                                          ; $5ccc: $df
	dec b                                            ; $5ccd: $05
	rst SubAFromDE                                          ; $5cce: $df
	ld a, c                                          ; $5ccf: $79
	ei                                               ; $5cd0: $fb
	rst SubAFromDE                                          ; $5cd1: $df
	ldh [$6f], a                                     ; $5cd2: $e0 $6f
	db $fc                                           ; $5cd4: $fc
	db $fd                                           ; $5cd5: $fd
	inc b                                            ; $5cd6: $04
	nop                                              ; $5cd7: $00
	sbc [hl]                                         ; $5cd8: $9e
	ld b, h                                          ; $5cd9: $44
	inc l                                            ; $5cda: $2c
	nop                                              ; $5cdb: $00
	ret                                              ; $5cdc: $c9


	rst $38                                          ; $5cdd: $ff
	rst SubAFromDE                                          ; $5cde: $df
	db $fc                                           ; $5cdf: $fc
	rst SubAFromHL                                          ; $5ce0: $d7
	rst $38                                          ; $5ce1: $ff
	db $dd                                           ; $5ce2: $dd
	db $eb                                           ; $5ce3: $eb
	rst SubAFromDE                                          ; $5ce4: $df
	dec bc                                           ; $5ce5: $0b
	rst SubAFromDE                                          ; $5ce6: $df
	set 3, l                                         ; $5ce7: $cb $dd
	rst SubAFromDE                                          ; $5ce9: $df
	db $db                                           ; $5cea: $db
	rst $38                                          ; $5ceb: $ff
	rst SubAFromHL                                          ; $5cec: $d7
	ei                                               ; $5ced: $fb
	db $db                                           ; $5cee: $db
	rst $38                                          ; $5cef: $ff
	rst SubAFromHL                                          ; $5cf0: $d7
	rst SubAFromDE                                          ; $5cf1: $df
	db $dd                                           ; $5cf2: $dd
	rst $38                                          ; $5cf3: $ff
	rst SubAFromDE                                          ; $5cf4: $df
	ldh a, [$dd]                                     ; $5cf5: $f0 $dd
	rst $38                                          ; $5cf7: $ff
	rst SubAFromDE                                          ; $5cf8: $df
	ldh [$d9], a                                     ; $5cf9: $e0 $d9
	rst $38                                          ; $5cfb: $ff
	rst SubAFromDE                                          ; $5cfc: $df
	ld a, a                                          ; $5cfd: $7f
	db $dd                                           ; $5cfe: $dd
	rst $38                                          ; $5cff: $ff
	rst SubAFromDE                                          ; $5d00: $df
	ccf                                              ; $5d01: $3f
	db $dd                                           ; $5d02: $dd
	cp a                                             ; $5d03: $bf
	pop de                                           ; $5d04: $d1
	rst $38                                          ; $5d05: $ff
	inc b                                            ; $5d06: $04
	nop                                              ; $5d07: $00
	db $dd                                           ; $5d08: $dd
	ld d, l                                          ; $5d09: $55
	add hl, sp                                       ; $5d0a: $39
	add b                                            ; $5d0b: $80
	rst GetHLinHL                                          ; $5d0c: $cf
	rst $38                                          ; $5d0d: $ff
	sbc l                                            ; $5d0e: $9d
	cp $ff                                           ; $5d0f: $fe $ff
	sbc $fe                                          ; $5d11: $de $fe
	ld e, e                                          ; $5d13: $5b
	ld hl, sp-$67                                    ; $5d14: $f8 $99
	inc bc                                           ; $5d16: $03
	xor a                                            ; $5d17: $af
	inc bc                                           ; $5d18: $03
	xor e                                            ; $5d19: $ab
	inc bc                                           ; $5d1a: $03
	xor a                                            ; $5d1b: $af
	ld e, a                                          ; $5d1c: $5f
	ld hl, sp-$64                                    ; $5d1d: $f8 $9c
	cp $f0                                           ; $5d1f: $fe $f0
	push af                                          ; $5d21: $f5
	ld a, e                                          ; $5d22: $7b
	cp $5f                                           ; $5d23: $fe $5f
	ld hl, sp-$67                                    ; $5d25: $f8 $99
	ld a, a                                          ; $5d27: $7f
	rrca                                             ; $5d28: $0f
	rst SubAFromDE                                          ; $5d29: $df
	adc a                                            ; $5d2a: $8f
	ld e, a                                          ; $5d2b: $5f
	rrca                                             ; $5d2c: $0f
	ld e, a                                          ; $5d2d: $5f
	ld hl, sp-$21                                    ; $5d2e: $f8 $df
	ei                                               ; $5d30: $fb
	sbc e                                            ; $5d31: $9b
	and b                                            ; $5d32: $a0
	xor e                                            ; $5d33: $ab
	xor e                                            ; $5d34: $ab
	inc bc                                           ; $5d35: $03
	ld e, a                                          ; $5d36: $5f
	ld hl, sp+$7f                                    ; $5d37: $f8 $7f
	rst SubAFromBC                                          ; $5d39: $e7
	sbc e                                            ; $5d3a: $9b
	ccf                                              ; $5d3b: $3f
	rst $38                                          ; $5d3c: $ff
	ld a, a                                          ; $5d3d: $7f
	ld a, a                                          ; $5d3e: $7f
	ld e, e                                          ; $5d3f: $5b
	ld hl, sp-$2c                                    ; $5d40: $f8 $d4
	rst $38                                          ; $5d42: $ff
	inc b                                            ; $5d43: $04
	nop                                              ; $5d44: $00
	db $dd                                           ; $5d45: $dd
	ld d, l                                          ; $5d46: $55
	ld b, c                                          ; $5d47: $41
	add b                                            ; $5d48: $80
	sbc $ff                                          ; $5d49: $de $ff
	sbc [hl]                                         ; $5d4b: $9e
	ld hl, sp-$26                                    ; $5d4c: $f8 $da
	rst $38                                          ; $5d4e: $ff
	ld h, a                                          ; $5d4f: $67
	ld hl, sp-$62                                    ; $5d50: $f8 $9e
	rrca                                             ; $5d52: $0f
	sbc $7f                                          ; $5d53: $de $7f
	sbc [hl]                                         ; $5d55: $9e
	ld a, [hl]                                       ; $5d56: $7e
	ld e, e                                          ; $5d57: $5b
	ld hl, sp-$21                                    ; $5d58: $f8 $df
	db $db                                           ; $5d5a: $db
	sbc h                                            ; $5d5b: $9c
	cp e                                             ; $5d5c: $bb
	dec sp                                           ; $5d5d: $3b
	ld a, b                                          ; $5d5e: $78
	ld e, a                                          ; $5d5f: $5f
	ld hl, sp-$62                                    ; $5d60: $f8 $9e
	ld e, a                                          ; $5d62: $5f
	sbc $57                                          ; $5d63: $de $57
	rst SubAFromDE                                          ; $5d65: $df
	rst FarCall                                          ; $5d66: $f7
	ld e, a                                          ; $5d67: $5f
	ld hl, sp-$67                                    ; $5d68: $f8 $99
	ldh [$bf], a                                     ; $5d6a: $e0 $bf
	cp a                                             ; $5d6c: $bf
	cp l                                             ; $5d6d: $bd
	cp h                                             ; $5d6e: $bc
	cp l                                             ; $5d6f: $bd
	ld e, a                                          ; $5d70: $5f
	ld hl, sp-$65                                    ; $5d71: $f8 $9b
	ccf                                              ; $5d73: $3f
	and c                                            ; $5d74: $a1
	cp a                                             ; $5d75: $bf
	ld a, a                                          ; $5d76: $7f
	db $dd                                           ; $5d77: $dd
	rst $38                                          ; $5d78: $ff
	ld h, a                                          ; $5d79: $67
	ld hl, sp-$67                                    ; $5d7a: $f8 $99
	cp $bc                                           ; $5d7c: $fe $bc
	cp h                                             ; $5d7e: $bc
	cp d                                             ; $5d7f: $ba
	cp d                                             ; $5d80: $ba
	halt                                             ; $5d81: $76
	ld e, a                                          ; $5d82: $5f
	ld hl, sp-$25                                    ; $5d83: $f8 $db
	ld a, a                                          ; $5d85: $7f
	ld h, a                                          ; $5d86: $67
	ld hl, sp+$04                                    ; $5d87: $f8 $04
	nop                                              ; $5d89: $00
	db $dd                                           ; $5d8a: $dd
	ld d, l                                          ; $5d8b: $55
	dec sp                                           ; $5d8c: $3b
	add b                                            ; $5d8d: $80
	rst GetHLinHL                                          ; $5d8e: $cf
	rst $38                                          ; $5d8f: $ff
	rst SubAFromDE                                          ; $5d90: $df
	db $dd                                           ; $5d91: $dd
	sbc e                                            ; $5d92: $9b
	dec c                                            ; $5d93: $0d
	push de                                          ; $5d94: $d5
	sbc c                                            ; $5d95: $99
	adc l                                            ; $5d96: $8d
	ld e, a                                          ; $5d97: $5f
	ld hl, sp-$21                                    ; $5d98: $f8 $df
	ld a, a                                          ; $5d9a: $7f
	sbc e                                            ; $5d9b: $9b
	ld e, a                                          ; $5d9c: $5f
	ld a, $7d                                        ; $5d9d: $3e $7d
	ld a, l                                          ; $5d9f: $7d
	ld e, a                                          ; $5da0: $5f
	ld hl, sp-$21                                    ; $5da1: $f8 $df
	rst $38                                          ; $5da3: $ff
	sbc e                                            ; $5da4: $9b
	rrca                                             ; $5da5: $0f
	ld [hl], a                                       ; $5da6: $77
	cp e                                             ; $5da7: $bb
	cp e                                             ; $5da8: $bb
	ld e, a                                          ; $5da9: $5f
	ld hl, sp-$67                                    ; $5daa: $f8 $99
	ld sp, hl                                        ; $5dac: $f9
	jp $e8ef                                         ; $5dad: $c3 $ef $e8


	rlca                                             ; $5db0: $07
	rst AddAOntoHL                                          ; $5db1: $ef
	ld e, a                                          ; $5db2: $5f
	ld hl, sp-$67                                    ; $5db3: $f8 $99
	rst $38                                          ; $5db5: $ff
	ei                                               ; $5db6: $fb
	ei                                               ; $5db7: $fb
	ld hl, sp-$20                                    ; $5db8: $f8 $e0
	ld a, [$f85b]                                    ; $5dba: $fa $5b $f8
	sbc d                                            ; $5dbd: $9a
	add b                                            ; $5dbe: $80
	or a                                             ; $5dbf: $b7
	scf                                              ; $5dc0: $37
	add c                                            ; $5dc1: $81
	cp l                                             ; $5dc2: $bd
	ld e, e                                          ; $5dc3: $5b
	ld hl, sp-$2c                                    ; $5dc4: $f8 $d4
	rst $38                                          ; $5dc6: $ff
	inc b                                            ; $5dc7: $04
	nop                                              ; $5dc8: $00
	db $dd                                           ; $5dc9: $dd
	ld d, l                                          ; $5dca: $55
	ld b, l                                          ; $5dcb: $45
	add b                                            ; $5dcc: $80
	sbc $ff                                          ; $5dcd: $de $ff
	call c, Call_019_5bdd                            ; $5dcf: $dc $dd $5b
	ld hl, sp-$21                                    ; $5dd2: $f8 $df
	rst SubAFromDE                                          ; $5dd4: $df
	sbc h                                            ; $5dd5: $9c
	rst SubAFromHL                                          ; $5dd6: $d7
	or a                                             ; $5dd7: $b7
	cp e                                             ; $5dd8: $bb
	ld e, a                                          ; $5dd9: $5f
	ld hl, sp-$22                                    ; $5dda: $f8 $de
	or $9c                                           ; $5ddc: $f6 $9c
	ret nz                                           ; $5dde: $c0

	or $f6                                           ; $5ddf: $f6 $f6
	ld e, a                                          ; $5de1: $5f
	ld hl, sp-$67                                    ; $5de2: $f8 $99
	rst $38                                          ; $5de4: $ff
	rst AddAOntoHL                                          ; $5de5: $ef
	db $eb                                           ; $5de6: $eb
	dec hl                                           ; $5de7: $2b
	db $eb                                           ; $5de8: $eb
	db $eb                                           ; $5de9: $eb
	ld e, a                                          ; $5dea: $5f
	ld hl, sp-$21                                    ; $5deb: $f8 $df
	rst SubAFromDE                                          ; $5ded: $df
	sbc e                                            ; $5dee: $9b
	rlca                                             ; $5def: $07
	ld [hl], a                                       ; $5df0: $77
	ld [hl], a                                       ; $5df1: $77
	rst FarCall                                          ; $5df2: $f7
	ld e, a                                          ; $5df3: $5f
	ld hl, sp-$67                                    ; $5df4: $f8 $99
	ei                                               ; $5df6: $fb
	ld a, [$e0fb]                                    ; $5df7: $fa $fb $e0
	ei                                               ; $5dfa: $fb
	ei                                               ; $5dfb: $fb
	ld e, a                                          ; $5dfc: $5f
	ld hl, sp-$67                                    ; $5dfd: $f8 $99
	ld a, a                                          ; $5dff: $7f
	add [hl]                                         ; $5e00: $86
	ld a, [hl]                                       ; $5e01: $7e
	cp $fe                                           ; $5e02: $fe $fe
	db $fd                                           ; $5e04: $fd
	ld e, a                                          ; $5e05: $5f
	ld hl, sp-$67                                    ; $5e06: $f8 $99
	di                                               ; $5e08: $f3
	db $e3                                           ; $5e09: $e3
	db $e3                                           ; $5e0a: $e3
	db $d3                                           ; $5e0b: $d3
	db $d3                                           ; $5e0c: $d3
	or e                                             ; $5e0d: $b3
	ld h, a                                          ; $5e0e: $67
	ld hl, sp+$04                                    ; $5e0f: $f8 $04
	nop                                              ; $5e11: $00
	db $dd                                           ; $5e12: $dd
	ld d, l                                          ; $5e13: $55
	ld c, h                                          ; $5e14: $4c
	add b                                            ; $5e15: $80
	rst SubAFromDE                                          ; $5e16: $df
	rst $38                                          ; $5e17: $ff
	rst SubAFromDE                                          ; $5e18: $df
	db $fd                                           ; $5e19: $fd
	sbc e                                            ; $5e1a: $9b
	ei                                               ; $5e1b: $fb
	ldh a, [c]                                       ; $5e1c: $f2
	ld sp, hl                                        ; $5e1d: $f9
	ei                                               ; $5e1e: $fb
	ld e, a                                          ; $5e1f: $5f
	ld hl, sp-$67                                    ; $5e20: $f8 $99
	rst AddAOntoHL                                          ; $5e22: $ef
	db $e3                                           ; $5e23: $e3
	adc a                                            ; $5e24: $8f
	db $eb                                           ; $5e25: $eb
	xor e                                            ; $5e26: $ab
	xor e                                            ; $5e27: $ab
	ld e, a                                          ; $5e28: $5f
	ld hl, sp-$67                                    ; $5e29: $f8 $99
	ret nz                                           ; $5e2b: $c0

	sub $00                                          ; $5e2c: $d6 $00
	ld a, d                                          ; $5e2e: $7a
	dec l                                            ; $5e2f: $2d
	xor a                                            ; $5e30: $af
	ld e, a                                          ; $5e31: $5f
	ld hl, sp-$21                                    ; $5e32: $f8 $df
	ld a, a                                          ; $5e34: $7f
	sbc e                                            ; $5e35: $9b
	rra                                              ; $5e36: $1f
	rst SubAFromDE                                          ; $5e37: $df
	ld e, l                                          ; $5e38: $5d
	cp c                                             ; $5e39: $b9
	ld e, a                                          ; $5e3a: $5f
	ld hl, sp-$67                                    ; $5e3b: $f8 $99
	ld a, [hl]                                       ; $5e3d: $7e
	ld a, a                                          ; $5e3e: $7f
	ld a, h                                          ; $5e3f: $7c
	ld a, a                                          ; $5e40: $7f
	ld e, [hl]                                       ; $5e41: $5e
	ld l, a                                          ; $5e42: $6f
	ld e, a                                          ; $5e43: $5f
	ld hl, sp-$67                                    ; $5e44: $f8 $99
	ld l, [hl]                                       ; $5e46: $6e
	db $e4                                           ; $5e47: $e4
	dec [hl]                                         ; $5e48: $35
	ldh [$6e], a                                     ; $5e49: $e0 $6e
	xor $5f                                          ; $5e4b: $ee $5f
	ld hl, sp-$67                                    ; $5e4d: $f8 $99
	db $fc                                           ; $5e4f: $fc
	ret nz                                           ; $5e50: $c0

	rst SubAFromDE                                          ; $5e51: $df
	ret nc                                           ; $5e52: $d0

	ld sp, hl                                        ; $5e53: $f9
	and $5f                                          ; $5e54: $e6 $5f
	ld hl, sp-$67                                    ; $5e56: $f8 $99
	rst $38                                          ; $5e58: $ff
	rrca                                             ; $5e59: $0f
	rst AddAOntoHL                                          ; $5e5a: $ef
	cpl                                              ; $5e5b: $2f
	rst $38                                          ; $5e5c: $ff
	rst SubAFromDE                                          ; $5e5d: $df
	ld h, a                                          ; $5e5e: $67
	ld hl, sp+$04                                    ; $5e5f: $f8 $04
	nop                                              ; $5e61: $00
	db $dd                                           ; $5e62: $dd
	ld d, l                                          ; $5e63: $55
	ld a, [hl-]                                      ; $5e64: $3a
	nop                                              ; $5e65: $00
	db $db                                           ; $5e66: $db
	rst $38                                          ; $5e67: $ff
	rst SubAFromDE                                          ; $5e68: $df
	ret nz                                           ; $5e69: $c0

	ld [hl], a                                       ; $5e6a: $77
	db $fc                                           ; $5e6b: $fc
	db $dd                                           ; $5e6c: $dd
	db $fd                                           ; $5e6d: $fd
	db $dd                                           ; $5e6e: $dd
	rst $38                                          ; $5e6f: $ff
	db $db                                           ; $5e70: $db
	ld e, a                                          ; $5e71: $5f
	rst SubAFromDE                                          ; $5e72: $df
	ld a, a                                          ; $5e73: $7f
	push de                                          ; $5e74: $d5
	rst $38                                          ; $5e75: $ff
	rst SubAFromDE                                          ; $5e76: $df
	ldh [$d7], a                                     ; $5e77: $e0 $d7
	rst $38                                          ; $5e79: $ff
	rst SubAFromDE                                          ; $5e7a: $df
	cp a                                             ; $5e7b: $bf
	rst SubAFromDE                                          ; $5e7c: $df
	ld d, b                                          ; $5e7d: $50
	rst SubAFromDE                                          ; $5e7e: $df
	ccf                                              ; $5e7f: $3f
	db $db                                           ; $5e80: $db
	ld a, a                                          ; $5e81: $7f
	db $db                                           ; $5e82: $db
	rst $38                                          ; $5e83: $ff
	rst SubAFromDE                                          ; $5e84: $df
	inc hl                                           ; $5e85: $23
	reti                                             ; $5e86: $d9


	cp a                                             ; $5e87: $bf
	db $dd                                           ; $5e88: $dd
	rst $38                                          ; $5e89: $ff
	rst SubAFromDE                                          ; $5e8a: $df
	rst SubAFromDE                                          ; $5e8b: $df
	rst SubAFromDE                                          ; $5e8c: $df
	ld b, b                                          ; $5e8d: $40
	db $db                                           ; $5e8e: $db
	ld e, [hl]                                       ; $5e8f: $5e
	rst SubAFromDE                                          ; $5e90: $df
	ld [hl], d                                       ; $5e91: $72
	ld l, a                                          ; $5e92: $6f
	ret nc                                           ; $5e93: $d0

	rst SubAFromDE                                          ; $5e94: $df
	add c                                            ; $5e95: $81
	db $db                                           ; $5e96: $db
	cp l                                             ; $5e97: $bd
	ld l, a                                          ; $5e98: $6f
	and b                                            ; $5e99: $a0
	rst SubAFromHL                                          ; $5e9a: $d7
	ld a, a                                          ; $5e9b: $7f
	rst SubAFromDE                                          ; $5e9c: $df
	rra                                              ; $5e9d: $1f
	inc b                                            ; $5e9e: $04
	nop                                              ; $5e9f: $00
	db $dd                                           ; $5ea0: $dd
	ld d, l                                          ; $5ea1: $55
	ld e, $00                                        ; $5ea2: $1e $00
	set 7, a                                         ; $5ea4: $cb $ff
	rst SubAFromHL                                          ; $5ea6: $d7
	db $fd                                           ; $5ea7: $fd
	db $db                                           ; $5ea8: $db
	rst $38                                          ; $5ea9: $ff
	rst SubAFromHL                                          ; $5eaa: $d7
	rst AddAOntoHL                                          ; $5eab: $ef
	reti                                             ; $5eac: $d9


	rst $38                                          ; $5ead: $ff
	rst SubAFromDE                                          ; $5eae: $df
	pop hl                                           ; $5eaf: $e1
	db $d3                                           ; $5eb0: $d3
	rst $38                                          ; $5eb1: $ff
	reti                                             ; $5eb2: $d9


	rst SubAFromDE                                          ; $5eb3: $df
	reti                                             ; $5eb4: $d9


	rst $38                                          ; $5eb5: $ff
	rst SubAFromDE                                          ; $5eb6: $df
	ret nz                                           ; $5eb7: $c0

	db $db                                           ; $5eb8: $db
	cp $dd                                           ; $5eb9: $fe $dd
	rst $38                                          ; $5ebb: $ff
	reti                                             ; $5ebc: $d9


	ld e, a                                          ; $5ebd: $5f
	call $04ff                                       ; $5ebe: $cd $ff $04
	nop                                              ; $5ec1: $00
	db $dd                                           ; $5ec2: $dd
	ld d, l                                          ; $5ec3: $55
	dec de                                           ; $5ec4: $1b
	add b                                            ; $5ec5: $80
	adc $ff                                          ; $5ec6: $ce $ff
	call c, $5ffd                                    ; $5ec8: $dc $fd $5f
	ld hl, sp-$23                                    ; $5ecb: $f8 $dd
	push af                                          ; $5ecd: $f5
	sbc l                                            ; $5ece: $9d
	rst $38                                          ; $5ecf: $ff
	rst JumpTable                                          ; $5ed0: $c7
	ld e, a                                          ; $5ed1: $5f
	ld hl, sp+$03                                    ; $5ed2: $f8 $03
	rst $38                                          ; $5ed4: $ff
	rst SubAFromDE                                          ; $5ed5: $df
	rst FarCall                                          ; $5ed6: $f7
	sbc h                                            ; $5ed7: $9c
	rst SubAFromBC                                          ; $5ed8: $e7
	rst AddAOntoHL                                          ; $5ed9: $ef
	adc $5b                                          ; $5eda: $ce $5b
	ld hl, sp-$3c                                    ; $5edc: $f8 $c4
	rst $38                                          ; $5ede: $ff
	inc b                                            ; $5edf: $04
	nop                                              ; $5ee0: $00
	db $dd                                           ; $5ee1: $dd
	ld d, l                                          ; $5ee2: $55
	inc [hl]                                         ; $5ee3: $34
	add b                                            ; $5ee4: $80
	rst GetHLinHL                                          ; $5ee5: $cf
	rst $38                                          ; $5ee6: $ff
	sbc c                                            ; $5ee7: $99
	rst SubAFromDE                                          ; $5ee8: $df
	pop bc                                           ; $5ee9: $c1
	db $dd                                           ; $5eea: $dd
	cp l                                             ; $5eeb: $bd
	cp l                                             ; $5eec: $bd
	push hl                                          ; $5eed: $e5
	ld e, a                                          ; $5eee: $5f
	ld hl, sp-$21                                    ; $5eef: $f8 $df
	db $fd                                           ; $5ef1: $fd
	rst SubAFromDE                                          ; $5ef2: $df
	ei                                               ; $5ef3: $fb
	sbc l                                            ; $5ef4: $9d
	di                                               ; $5ef5: $f3
	rst SubAFromBC                                          ; $5ef6: $e7
	ld e, a                                          ; $5ef7: $5f
	ld hl, sp-$67                                    ; $5ef8: $f8 $99
	rst $38                                          ; $5efa: $ff
	cp $fd                                           ; $5efb: $fe $fd
	or $bb                                           ; $5efd: $f6 $bb
	cp c                                             ; $5eff: $b9
	ld e, e                                          ; $5f00: $5b
	ld hl, sp-$64                                    ; $5f01: $f8 $9c
	rst $38                                          ; $5f03: $ff
	ld a, a                                          ; $5f04: $7f
	ldh [$db], a                                     ; $5f05: $e0 $db
	rst $38                                          ; $5f07: $ff
	ld h, a                                          ; $5f08: $67
	ld hl, sp-$2d                                    ; $5f09: $f8 $d3
	rst $38                                          ; $5f0b: $ff
	sbc l                                            ; $5f0c: $9d
	cp a                                             ; $5f0d: $bf
	add c                                            ; $5f0e: $81
	sbc $bd                                          ; $5f0f: $de $bd
	sbc [hl]                                         ; $5f11: $9e
	db $fd                                           ; $5f12: $fd
	ld e, a                                          ; $5f13: $5f
	ld hl, sp-$2d                                    ; $5f14: $f8 $d3
	rst $38                                          ; $5f16: $ff
	inc b                                            ; $5f17: $04
	nop                                              ; $5f18: $00
	db $dd                                           ; $5f19: $dd
	ld d, l                                          ; $5f1a: $55
	ld b, b                                          ; $5f1b: $40
	add b                                            ; $5f1c: $80
	rst SubAFromDE                                          ; $5f1d: $df
	rst $38                                          ; $5f1e: $ff
	sbc $da                                          ; $5f1f: $de $da
	rst SubAFromDE                                          ; $5f21: $df
	res 3, [hl]                                      ; $5f22: $cb $9e
	jp $f85f                                         ; $5f24: $c3 $5f $f8


	sbc c                                            ; $5f27: $99
	db $ec                                           ; $5f28: $ec
	rst AddAOntoHL                                          ; $5f29: $ef
	rst AddAOntoHL                                          ; $5f2a: $ef
	ld e, a                                          ; $5f2b: $5f
	rra                                              ; $5f2c: $1f
	cp a                                             ; $5f2d: $bf
	ld e, a                                          ; $5f2e: $5f
	ld hl, sp-$64                                    ; $5f2f: $f8 $9c
	ccf                                              ; $5f31: $3f
	and a                                            ; $5f32: $a7
	cp a                                             ; $5f33: $bf
	sbc $bd                                          ; $5f34: $de $bd
	ld e, a                                          ; $5f36: $5f
	ld hl, sp-$62                                    ; $5f37: $f8 $9e
	rrca                                             ; $5f39: $0f
	call c, Call_019_5fef                            ; $5f3a: $dc $ef $5f
	ld hl, sp-$65                                    ; $5f3d: $f8 $9b
	push af                                          ; $5f3f: $f5
	dec b                                            ; $5f40: $05
	push af                                          ; $5f41: $f5
	inc bc                                           ; $5f42: $03
	ld d, a                                          ; $5f43: $57
	ld hl, sp-$64                                    ; $5f44: $f8 $9c
	ld sp, hl                                        ; $5f46: $f9
	ccf                                              ; $5f47: $3f
	ld sp, hl                                        ; $5f48: $f9
	ld [hl], e                                       ; $5f49: $73
	add sp, $67                                      ; $5f4a: $e8 $67
	ld hl, sp-$22                                    ; $5f4c: $f8 $de
	rst $38                                          ; $5f4e: $ff
	sbc $7f                                          ; $5f4f: $de $7f
	ld e, a                                          ; $5f51: $5f
	ld hl, sp-$62                                    ; $5f52: $f8 $9e
	ld a, a                                          ; $5f54: $7f
	db $dd                                           ; $5f55: $dd
	ld e, a                                          ; $5f56: $5f
	sbc [hl]                                         ; $5f57: $9e
	ld e, e                                          ; $5f58: $5b
	ld h, a                                          ; $5f59: $67
	ld hl, sp+$04                                    ; $5f5a: $f8 $04
	nop                                              ; $5f5c: $00
	db $dd                                           ; $5f5d: $dd
	ld d, l                                          ; $5f5e: $55
	dec hl                                           ; $5f5f: $2b
	add b                                            ; $5f60: $80
	pop bc                                           ; $5f61: $c1
	rst $38                                          ; $5f62: $ff
	rst SubAFromDE                                          ; $5f63: $df
	rst $38                                          ; $5f64: $ff
	rst SubAFromDE                                          ; $5f65: $df
	rst FarCall                                          ; $5f66: $f7
	sbc e                                            ; $5f67: $9b
	rst AddAOntoHL                                          ; $5f68: $ef
	add sp, -$31                                     ; $5f69: $e8 $cf
	adc $5f                                          ; $5f6b: $ce $5f
	ld hl, sp-$22                                    ; $5f6d: $f8 $de
	ld a, a                                          ; $5f6f: $7f
	sbc h                                            ; $5f70: $9c
	rrca                                             ; $5f71: $0f
	ld a, a                                          ; $5f72: $7f
	ccf                                              ; $5f73: $3f
	ld e, a                                          ; $5f74: $5f
	ld hl, sp-$67                                    ; $5f75: $f8 $99
	cp $fd                                           ; $5f77: $fe $fd
	db $fd                                           ; $5f79: $fd
	ld hl, sp-$07                                    ; $5f7a: $f8 $f9
	db $f4                                           ; $5f7c: $f4
	ld e, a                                          ; $5f7d: $5f
	ld hl, sp-$67                                    ; $5f7e: $f8 $99
	ld [hl], e                                       ; $5f80: $73
	or e                                             ; $5f81: $b3
	add b                                            ; $5f82: $80
	ld e, $80                                        ; $5f83: $1e $80
	inc c                                            ; $5f85: $0c
	ld e, a                                          ; $5f86: $5f
	ld hl, sp-$3d                                    ; $5f87: $f8 $c3
	rst $38                                          ; $5f89: $ff
	inc b                                            ; $5f8a: $04
	nop                                              ; $5f8b: $00
	db $dd                                           ; $5f8c: $dd
	ld d, l                                          ; $5f8d: $55
	ld h, $00                                        ; $5f8e: $26 $00
	rst JumpTable                                          ; $5f90: $c7
	rst $38                                          ; $5f91: $ff
	rst SubAFromDE                                          ; $5f92: $df
	db $fc                                           ; $5f93: $fc
	db $dd                                           ; $5f94: $dd
	rst $38                                          ; $5f95: $ff
	rst SubAFromHL                                          ; $5f96: $d7
	rst SubAFromDE                                          ; $5f97: $df
	rst SubAFromDE                                          ; $5f98: $df
	rra                                              ; $5f99: $1f
	db $dd                                           ; $5f9a: $dd
	rst $38                                          ; $5f9b: $ff
	rst SubAFromDE                                          ; $5f9c: $df
	ei                                               ; $5f9d: $fb
	ccf                                              ; $5f9e: $3f
	ldh [$dd], a                                     ; $5f9f: $e0 $dd
	cp a                                             ; $5fa1: $bf
	rst SubAFromDE                                          ; $5fa2: $df
	ld a, a                                          ; $5fa3: $7f
	push de                                          ; $5fa4: $d5
	rst $38                                          ; $5fa5: $ff
	db $dd                                           ; $5fa6: $dd
	cp $df                                           ; $5fa7: $fe $df
	pop af                                           ; $5fa9: $f1
	db $dd                                           ; $5faa: $dd
	rst $38                                          ; $5fab: $ff
	rst SubAFromDE                                          ; $5fac: $df
	cp a                                             ; $5fad: $bf
	rst SubAFromDE                                          ; $5fae: $df
	ccf                                              ; $5faf: $3f
	ld c, a                                          ; $5fb0: $4f
	db $e4                                           ; $5fb1: $e4
	db $d3                                           ; $5fb2: $d3
	rst $38                                          ; $5fb3: $ff
	inc b                                            ; $5fb4: $04
	nop                                              ; $5fb5: $00
	db $dd                                           ; $5fb6: $dd
	ld d, l                                          ; $5fb7: $55
	dec sp                                           ; $5fb8: $3b
	add b                                            ; $5fb9: $80
	pop de                                           ; $5fba: $d1
	rst $38                                          ; $5fbb: $ff
	sbc d                                            ; $5fbc: $9a
	cp $ff                                           ; $5fbd: $fe $ff
	rst $38                                          ; $5fbf: $ff
	db $fd                                           ; $5fc0: $fd
	db $fd                                           ; $5fc1: $fd
	ld e, e                                          ; $5fc2: $5b
	ld hl, sp-$67                                    ; $5fc3: $f8 $99
	inc bc                                           ; $5fc5: $03
	rst $38                                          ; $5fc6: $ff
	ld e, e                                          ; $5fc7: $5b
	ld l, l                                          ; $5fc8: $6d
	ld a, e                                          ; $5fc9: $7b
	add a                                            ; $5fca: $87
	ld e, a                                          ; $5fcb: $5f
	ld hl, sp-$67                                    ; $5fcc: $f8 $99
	push af                                          ; $5fce: $f5

Call_019_5fcf:
	db $f4                                           ; $5fcf: $f4
	push af                                          ; $5fd0: $f5
	db $f4                                           ; $5fd1: $f4
	xor $e9                                          ; $5fd2: $ee $e9
	ld e, a                                          ; $5fd4: $5f
	ld hl, sp-$67                                    ; $5fd5: $f8 $99
	ld e, a                                          ; $5fd7: $5f
	rra                                              ; $5fd8: $1f
	ld e, a                                          ; $5fd9: $5f
	rlca                                             ; $5fda: $07
	ld l, a                                          ; $5fdb: $6f
	rrca                                             ; $5fdc: $0f
	ld e, a                                          ; $5fdd: $5f
	ld hl, sp-$67                                    ; $5fde: $f8 $99
	xor c                                            ; $5fe0: $a9
	adc c                                            ; $5fe1: $89
	xor d                                            ; $5fe2: $aa
	ld d, [hl]                                       ; $5fe3: $56
	call c, $5ffb                                    ; $5fe4: $dc $fb $5f
	ld hl, sp-$21                                    ; $5fe7: $f8 $df
	ld a, a                                          ; $5fe9: $7f
	sbc e                                            ; $5fea: $9b
	rst $38                                          ; $5feb: $ff
	cp a                                             ; $5fec: $bf
	ccf                                              ; $5fed: $3f
	ld a, a                                          ; $5fee: $7f

Call_019_5fef:
	ld e, a                                          ; $5fef: $5f
	ld hl, sp-$2f                                    ; $5ff0: $f8 $d1
	rst $38                                          ; $5ff2: $ff

Call_019_5ff3:
	inc b                                            ; $5ff3: $04
	nop                                              ; $5ff4: $00
	db $dd                                           ; $5ff5: $dd
	ld d, l                                          ; $5ff6: $55
	ld b, d                                          ; $5ff7: $42
	add b                                            ; $5ff8: $80
	call c, $9eff                                    ; $5ff9: $dc $ff $9e
	ld hl, sp-$26                                    ; $5ffc: $f8 $da
	rst $38                                          ; $5ffe: $ff
	ld a, e                                          ; $5fff: $7b
	ld hl, sp-$63                                    ; $6000: $f8 $9d
	ld a, h                                          ; $6002: $7c
	ld a, c                                          ; $6003: $79
	sbc $7f                                          ; $6004: $de $7f
	sbc [hl]                                         ; $6006: $9e
	rrca                                             ; $6007: $0f
	ld e, a                                          ; $6008: $5f
	ld hl, sp-$25                                    ; $6009: $f8 $db
	ld a, e                                          ; $600b: $7b
	ld e, a                                          ; $600c: $5f
	ld hl, sp-$67                                    ; $600d: $f8 $99
	scf                                              ; $600f: $37
	rst SubAFromDE                                          ; $6010: $df
	rst $38                                          ; $6011: $ff
	rst $38                                          ; $6012: $ff
	cp $f9                                           ; $6013: $fe $f9
	ld e, a                                          ; $6015: $5f
	ld hl, sp-$21                                    ; $6016: $f8 $df
	cp l                                             ; $6018: $bd
	sbc e                                            ; $6019: $9b
	ld a, l                                          ; $601a: $7d
	ld a, e                                          ; $601b: $7b
	ei                                               ; $601c: $fb
	rst SubAFromBC                                          ; $601d: $e7
	ld e, a                                          ; $601e: $5f
	ld hl, sp+$7f                                    ; $601f: $f8 $7f
	db $eb                                           ; $6021: $eb
	sbc e                                            ; $6022: $9b
	cp $fc                                           ; $6023: $fe $fc
	ld sp, hl                                        ; $6025: $f9
	db $e3                                           ; $6026: $e3
	ld e, a                                          ; $6027: $5f
	ld hl, sp-$64                                    ; $6028: $f8 $9c
	halt                                             ; $602a: $76
	ld l, [hl]                                       ; $602b: $6e
	ldh [$de], a                                     ; $602c: $e0 $de
	cp $5f                                           ; $602e: $fe $5f
	ld hl, sp-$21                                    ; $6030: $f8 $df
	ld a, a                                          ; $6032: $7f

Call_019_6033:
	sbc [hl]                                         ; $6033: $9e
	rra                                              ; $6034: $1f
	sbc $7f                                          ; $6035: $de $7f
	ld e, a                                          ; $6037: $5f
	ld hl, sp+$04                                    ; $6038: $f8 $04
	nop                                              ; $603a: $00
	db $dd                                           ; $603b: $dd
	ld d, l                                          ; $603c: $55
	ld b, e                                          ; $603d: $43
	add b                                            ; $603e: $80
	sbc $ff                                          ; $603f: $de $ff
	sbc [hl]                                         ; $6041: $9e
	cp $da                                           ; $6042: $fe $da
	rst $38                                          ; $6044: $ff
	ld [hl], e                                       ; $6045: $73
	ld hl, sp-$67                                    ; $6046: $f8 $99
	sbc c                                            ; $6048: $99
	ld e, c                                          ; $6049: $59
	ld d, l                                          ; $604a: $55
	db $db                                           ; $604b: $db
	db $db                                           ; $604c: $db
	rst SubAFromHL                                          ; $604d: $d7
	ld e, a                                          ; $604e: $5f
	ld hl, sp-$67                                    ; $604f: $f8 $99
	dec sp                                           ; $6051: $3b
	ld e, e                                          ; $6052: $5b
	ld a, e                                          ; $6053: $7b
	ld a, l                                          ; $6054: $7d
	ld l, [hl]                                       ; $6055: $6e
	adc a                                            ; $6056: $8f
	ld e, a                                          ; $6057: $5f
	ld hl, sp-$21                                    ; $6058: $f8 $df
	cp e                                             ; $605a: $bb
	rst SubAFromDE                                          ; $605b: $df
	ld a, e                                          ; $605c: $7b
	sbc [hl]                                         ; $605d: $9e
	rst FarCall                                          ; $605e: $f7
	sbc $ff                                          ; $605f: $de $ff
	ld h, a                                          ; $6061: $67
	ld hl, sp-$63                                    ; $6062: $f8 $9d
	db $ec                                           ; $6064: $ec
	inc bc                                           ; $6065: $03
	sbc $ef                                          ; $6066: $de $ef
	sbc [hl]                                         ; $6068: $9e
	ldh a, [$5f]                                     ; $6069: $f0 $5f
	ld hl, sp-$67                                    ; $606b: $f8 $99
	ld [hl], d                                       ; $606d: $72
	pop af                                           ; $606e: $f1
	ld sp, hl                                        ; $606f: $f9
	cp d                                             ; $6070: $ba
	or [hl]                                          ; $6071: $b6
	ld a, a                                          ; $6072: $7f
	ld e, a                                          ; $6073: $5f
	ld hl, sp-$63                                    ; $6074: $f8 $9d
	cp l                                             ; $6076: $bd

Call_019_6077:
	add c                                            ; $6077: $81
	sbc $b7                                          ; $6078: $de $b7
	sbc [hl]                                         ; $607a: $9e
	add b                                            ; $607b: $80
	ld e, a                                          ; $607c: $5f
	ld hl, sp-$2f                                    ; $607d: $f8 $d1
	rst $38                                          ; $607f: $ff
	inc b                                            ; $6080: $04
	nop                                              ; $6081: $00
	db $dd                                           ; $6082: $dd
	ld d, l                                          ; $6083: $55
	ld c, h                                          ; $6084: $4c
	add b                                            ; $6085: $80
	rst SubAFromDE                                          ; $6086: $df
	db $fd                                           ; $6087: $fd
	rst SubAFromDE                                          ; $6088: $df
	ei                                               ; $6089: $fb
	sbc e                                            ; $608a: $9b
	rst FarCall                                          ; $608b: $f7
	rst GetHLinHL                                          ; $608c: $cf
	rst $38                                          ; $608d: $ff
	rst $38                                          ; $608e: $ff
	ld h, a                                          ; $608f: $67
	ld hl, sp-$65                                    ; $6090: $f8 $9b
	cp d                                             ; $6092: $ba
	ld a, e                                          ; $6093: $7b
	ld a, l                                          ; $6094: $7d
	ld a, l                                          ; $6095: $7d
	db $dd                                           ; $6096: $dd
	rst $38                                          ; $6097: $ff
	ld h, a                                          ; $6098: $67
	ld hl, sp-$67                                    ; $6099: $f8 $99
	ld d, $f6                                        ; $609b: $16 $f6
	cp $fd                                           ; $609d: $fe $fd
	db $fd                                           ; $609f: $fd
	di                                               ; $60a0: $f3
	ld e, a                                          ; $60a1: $5f
	ld hl, sp-$67                                    ; $60a2: $f8 $99
	db $eb                                           ; $60a4: $eb
	ld [$daea], a                                    ; $60a5: $ea $ea $da
	db $dd                                           ; $60a8: $dd
	cp l                                             ; $60a9: $bd
	ld e, a                                          ; $60aa: $5f
	ld hl, sp-$67                                    ; $60ab: $f8 $99
	rst FarCall                                          ; $60ad: $f7
	db $f4                                           ; $60ae: $f4
	xor $ee                                          ; $60af: $ee $ee
	sbc $bc                                          ; $60b1: $de $bc
	ld e, a                                          ; $60b3: $5f
	ld hl, sp-$67                                    ; $60b4: $f8 $99
	ld [$ca6a], a                                    ; $60b6: $ea $6a $ca
	db $db                                           ; $60b9: $db
	db $db                                           ; $60ba: $db
	ld a, e                                          ; $60bb: $7b
	ld e, a                                          ; $60bc: $5f
	ld hl, sp-$66                                    ; $60bd: $f8 $9a
	db $fd                                           ; $60bf: $fd
	ld sp, hl                                        ; $60c0: $f9
	ld a, e                                          ; $60c1: $7b
	ld [hl], e                                       ; $60c2: $73
	ld b, a                                          ; $60c3: $47
	ld [hl], a                                       ; $60c4: $77
	and b                                            ; $60c5: $a0
	ld l, e                                          ; $60c6: $6b
	ld hl, sp-$64                                    ; $60c7: $f8 $9c
	or e                                             ; $60c9: $b3
	ld [hl], e                                       ; $60ca: $73
	ld bc, $f3de                                     ; $60cb: $01 $de $f3
	ld e, a                                          ; $60ce: $5f
	ld hl, sp+$04                                    ; $60cf: $f8 $04
	nop                                              ; $60d1: $00
	db $dd                                           ; $60d2: $dd
	ld d, l                                          ; $60d3: $55
	ld c, l                                          ; $60d4: $4d
	add b                                            ; $60d5: $80
	sub a                                            ; $60d6: $97
	ldh a, [$fd]                                     ; $60d7: $f0 $fd
	db $f4                                           ; $60d9: $f4
	push af                                          ; $60da: $f5
	push af                                          ; $60db: $f5
	db $fd                                           ; $60dc: $fd
	rst $38                                          ; $60dd: $ff
	rst $38                                          ; $60de: $ff
	ld h, a                                          ; $60df: $67
	ld hl, sp-$67                                    ; $60e0: $f8 $99
	dec hl                                           ; $60e2: $2b
	inc bc                                           ; $60e3: $03
	xor e                                            ; $60e4: $ab
	ld l, l                                          ; $60e5: $6d
	ld l, l                                          ; $60e6: $6d
	db $e3                                           ; $60e7: $e3
	ld e, a                                          ; $60e8: $5f
	ld hl, sp-$67                                    ; $60e9: $f8 $99
	or b                                             ; $60eb: $b0
	rst $38                                          ; $60ec: $ff
	ret nz                                           ; $60ed: $c0

	adc [hl]                                         ; $60ee: $8e
	pop af                                           ; $60ef: $f1
	adc [hl]                                         ; $60f0: $8e
	ld e, a                                          ; $60f1: $5f
	ld hl, sp-$67                                    ; $60f2: $f8 $99
	dec sp                                           ; $60f4: $3b
	rst FarCall                                          ; $60f5: $f7
	ld a, a                                          ; $60f6: $7f
	rst $38                                          ; $60f7: $ff
	cp $3f                                           ; $60f8: $fe $3f
	ld e, a                                          ; $60fa: $5f
	ld hl, sp-$67                                    ; $60fb: $f8 $99
	ld h, [hl]                                       ; $60fd: $66
	ld [hl], a                                       ; $60fe: $77
	ld a, h                                          ; $60ff: $7c
	ld a, l                                          ; $6100: $7d
	ld a, l                                          ; $6101: $7d
	ld a, h                                          ; $6102: $7c
	ld e, a                                          ; $6103: $5f
	ld hl, sp-$67                                    ; $6104: $f8 $99
	ld h, b                                          ; $6106: $60
	push af                                          ; $6107: $f5
	dec [hl]                                         ; $6108: $35
	or l                                             ; $6109: $b5
	xor l                                            ; $610a: $ad
	inc l                                            ; $610b: $2c
	ld e, a                                          ; $610c: $5f
	ld hl, sp-$67                                    ; $610d: $f8 $99
	ld hl, sp-$19                                    ; $610f: $f8 $e7
	ld hl, sp+$66                                    ; $6111: $f8 $66
	ld a, [hl]                                       ; $6113: $7e
	ld sp, hl                                        ; $6114: $f9
	ld e, a                                          ; $6115: $5f
	ld hl, sp-$66                                    ; $6116: $f8 $9a
	cp a                                             ; $6118: $bf
	ld a, a                                          ; $6119: $7f
	ld a, a                                          ; $611a: $7f
	cp a                                             ; $611b: $bf
	rst GetHLinHL                                          ; $611c: $cf
	sbc $ff                                          ; $611d: $de $ff
	ld h, a                                          ; $611f: $67
	ld hl, sp+$04                                    ; $6120: $f8 $04
	nop                                              ; $6122: $00
	db $dd                                           ; $6123: $dd
	ld d, l                                          ; $6124: $55
	ld c, b                                          ; $6125: $48
	add b                                            ; $6126: $80
	rst SubAFromDE                                          ; $6127: $df
	db $fd                                           ; $6128: $fd
	rst SubAFromDE                                          ; $6129: $df
	ei                                               ; $612a: $fb
	sbc e                                            ; $612b: $9b
	rst FarCall                                          ; $612c: $f7
	rst AddAOntoHL                                          ; $612d: $ef
	rst $38                                          ; $612e: $ff
	rst $38                                          ; $612f: $ff
	ld h, a                                          ; $6130: $67
	ld hl, sp-$66                                    ; $6131: $f8 $9a

Call_019_6133:
	db $fc                                           ; $6133: $fc
	rst FarCall                                          ; $6134: $f7
	rst SubAFromBC                                          ; $6135: $e7
	rst GetHLinHL                                          ; $6136: $cf
	xor a                                            ; $6137: $af
	ld e, e                                          ; $6138: $5b
	ld hl, sp-$67                                    ; $6139: $f8 $99
	rra                                              ; $613b: $1f
	cp $fe                                           ; $613c: $fe $fe
	db $fd                                           ; $613e: $fd
	db $fd                                           ; $613f: $fd
	di                                               ; $6140: $f3
	ld e, a                                          ; $6141: $5f
	ld hl, sp-$62                                    ; $6142: $f8 $9e
	ld a, a                                          ; $6144: $7f
	db $dd                                           ; $6145: $dd
	rst $38                                          ; $6146: $ff
	sbc [hl]                                         ; $6147: $9e
	ldh a, [$5f]                                     ; $6148: $f0 $5f
	ld hl, sp-$21                                    ; $614a: $f8 $df
	cp a                                             ; $614c: $bf
	rst SubAFromDE                                          ; $614d: $df
	cp [hl]                                          ; $614e: $be
	sbc l                                            ; $614f: $9d
	cp h                                             ; $6150: $bc
	ld hl, $f85f                                     ; $6151: $21 $5f $f8
	sbc l                                            ; $6154: $9d
	ld a, h                                          ; $6155: $7c
	ld a, [hl]                                       ; $6156: $7e
	ld a, e                                          ; $6157: $7b
	or [hl]                                          ; $6158: $b6
	sbc [hl]                                         ; $6159: $9e
	rst SubAFromBC                                          ; $615a: $e7
	ld e, a                                          ; $615b: $5f
	ld hl, sp-$67                                    ; $615c: $f8 $99
	db $fd                                           ; $615e: $fd
	ld a, l                                          ; $615f: $7d
	ld a, e                                          ; $6160: $7b
	ei                                               ; $6161: $fb
	rst FarCall                                          ; $6162: $f7
	rst GetHLinHL                                          ; $6163: $cf
	ld e, a                                          ; $6164: $5f
	ld hl, sp-$63                                    ; $6165: $f8 $9d
	ld h, a                                          ; $6167: $67
	ld a, e                                          ; $6168: $7b
	db $dd                                           ; $6169: $dd
	ld a, a                                          ; $616a: $7f
	ld e, a                                          ; $616b: $5f
	ld hl, sp+$04                                    ; $616c: $f8 $04
	nop                                              ; $616e: $00
	db $dd                                           ; $616f: $dd
	ld d, l                                          ; $6170: $55
	ld h, $00                                        ; $6171: $26 $00
	pop de                                           ; $6173: $d1
	rst $38                                          ; $6174: $ff
	rst SubAFromDE                                          ; $6175: $df
	db $fd                                           ; $6176: $fd
	reti                                             ; $6177: $d9


	rst $38                                          ; $6178: $ff
	rst SubAFromDE                                          ; $6179: $df
	cp $dd                                           ; $617a: $fe $dd
	rst $38                                          ; $617c: $ff
	db $dd                                           ; $617d: $dd
	rst AddAOntoHL                                          ; $617e: $ef
	db $dd                                           ; $617f: $dd
	rst SubAFromDE                                          ; $6180: $df
	rst SubAFromDE                                          ; $6181: $df
	cp a                                             ; $6182: $bf
	rst SubAFromDE                                          ; $6183: $df
	ld a, a                                          ; $6184: $7f
	db $d3                                           ; $6185: $d3
	rst $38                                          ; $6186: $ff
	rst SubAFromDE                                          ; $6187: $df
	ldh a, [$dd]                                     ; $6188: $f0 $dd
	rst $38                                          ; $618a: $ff
	ld l, a                                          ; $618b: $6f
	db $e4                                           ; $618c: $e4
	ld e, a                                          ; $618d: $5f
	ldh [c], a                                       ; $618e: $e2
	rst SubAFromHL                                          ; $618f: $d7
	cp $df                                           ; $6190: $fe $df
	ret nz                                           ; $6192: $c0

	pop bc                                           ; $6193: $c1
	rst $38                                          ; $6194: $ff
	db $dd                                           ; $6195: $dd
	rst $38                                          ; $6196: $ff
	inc b                                            ; $6197: $04
	nop                                              ; $6198: $00
	db $dd                                           ; $6199: $dd
	ld d, l                                          ; $619a: $55
	ld [hl-], a                                      ; $619b: $32
	nop                                              ; $619c: $00
	pop de                                           ; $619d: $d1
	rst $38                                          ; $619e: $ff
	rst SubAFromDE                                          ; $619f: $df
	db $fc                                           ; $61a0: $fc
	reti                                             ; $61a1: $d9


	db $fd                                           ; $61a2: $fd
	rst SubAFromDE                                          ; $61a3: $df
	cp $dd                                           ; $61a4: $fe $dd
	rst $38                                          ; $61a6: $ff
	rst SubAFromDE                                          ; $61a7: $df
	ccf                                              ; $61a8: $3f
	db $db                                           ; $61a9: $db
	rst $38                                          ; $61aa: $ff
	rst SubAFromDE                                          ; $61ab: $df
	db $e3                                           ; $61ac: $e3
	rst SubAFromDE                                          ; $61ad: $df
	rra                                              ; $61ae: $1f
	db $dd                                           ; $61af: $dd
	rst $38                                          ; $61b0: $ff
	rst SubAFromDE                                          ; $61b1: $df
	ldh a, [$d3]                                     ; $61b2: $f0 $d3
	rst $38                                          ; $61b4: $ff
	ld l, a                                          ; $61b5: $6f
	ld [$ffd7], a                                    ; $61b6: $ea $d7 $ff
	rst SubAFromDE                                          ; $61b9: $df
	sbc $df                                          ; $61ba: $de $df
	rst SubAFromDE                                          ; $61bc: $df
	rst SubAFromDE                                          ; $61bd: $df
	sbc a                                            ; $61be: $9f
	rst SubAFromDE                                          ; $61bf: $df
	cp b                                             ; $61c0: $b8
	rst SubAFromDE                                          ; $61c1: $df
	inc bc                                           ; $61c2: $03
	ld h, a                                          ; $61c3: $67
	add $dd                                          ; $61c4: $c6 $dd
	ld a, a                                          ; $61c6: $7f
	rst SubAFromDE                                          ; $61c7: $df
	ccf                                              ; $61c8: $3f
	db $dd                                           ; $61c9: $dd
	cp a                                             ; $61ca: $bf
	call $04ff                                       ; $61cb: $cd $ff $04
	nop                                              ; $61ce: $00
	db $dd                                           ; $61cf: $dd
	ld d, l                                          ; $61d0: $55
	ld [hl], $80                                     ; $61d1: $36 $80
	pop de                                           ; $61d3: $d1
	rst $38                                          ; $61d4: $ff
	sbc c                                            ; $61d5: $99
	ld sp, hl                                        ; $61d6: $f9
	db $fc                                           ; $61d7: $fc
	ld a, [$f7fb]                                    ; $61d8: $fa $fb $f7
	rst GetHLinHL                                          ; $61db: $cf
	ld e, a                                          ; $61dc: $5f
	ld hl, sp-$64                                    ; $61dd: $f8 $9c
	rst JumpTable                                          ; $61df: $c7
	sub a                                            ; $61e0: $97
	or $de                                           ; $61e1: $f6 $de
	rst FarCall                                          ; $61e3: $f7
	ld e, a                                          ; $61e4: $5f
	ld hl, sp-$65                                    ; $61e5: $f8 $9b
	dec a                                            ; $61e7: $3d
	ld a, h                                          ; $61e8: $7c
	cp $fe                                           ; $61e9: $fe $fe
	db $dd                                           ; $61eb: $dd
	rst $38                                          ; $61ec: $ff
	ld h, a                                          ; $61ed: $67
	ld hl, sp-$23                                    ; $61ee: $f8 $dd
	rst $38                                          ; $61f0: $ff
	sbc [hl]                                         ; $61f1: $9e
	ret nz                                           ; $61f2: $c0

	ld e, e                                          ; $61f3: $5b
	ld hl, sp-$22                                    ; $61f4: $f8 $de
	ld [$fe9c], a                                    ; $61f6: $ea $9c $fe
	ld a, l                                          ; $61f9: $7d
	db $e3                                           ; $61fa: $e3
	ld e, a                                          ; $61fb: $5f
	ld hl, sp-$21                                    ; $61fc: $f8 $df
	db $fd                                           ; $61fe: $fd
	sbc $fb                                          ; $61ff: $de $fb
	sbc [hl]                                         ; $6201: $9e
	rst SubAFromBC                                          ; $6202: $e7
	ld e, a                                          ; $6203: $5f
	ld hl, sp-$2f                                    ; $6204: $f8 $d1
	rst $38                                          ; $6206: $ff
	inc b                                            ; $6207: $04
	nop                                              ; $6208: $00
	db $dd                                           ; $6209: $dd
	ld d, l                                          ; $620a: $55
	ld b, [hl]                                       ; $620b: $46
	add b                                            ; $620c: $80
	sub a                                            ; $620d: $97
	jp $d3d3                                         ; $620e: $c3 $d3 $d3


	db $db                                           ; $6211: $db
	db $db                                           ; $6212: $db
	jp c, rIE                                      ; $6213: $da $ff $ff

	ld h, a                                          ; $6216: $67
	ld hl, sp-$24                                    ; $6217: $f8 $dc
	cp a                                             ; $6219: $bf
	sbc [hl]                                         ; $621a: $9e
	or h                                             ; $621b: $b4
	ld e, a                                          ; $621c: $5f
	ld hl, sp-$21                                    ; $621d: $f8 $df
	cp l                                             ; $621f: $bd
	sbc e                                            ; $6220: $9b
	cp c                                             ; $6221: $b9
	cp e                                             ; $6222: $bb
	or e                                             ; $6223: $b3
	daa                                              ; $6224: $27
	ld e, a                                          ; $6225: $5f
	ld hl, sp-$67                                    ; $6226: $f8 $99
	xor $ec                                          ; $6228: $ee $ec
	reti                                             ; $622a: $d9


	push de                                          ; $622b: $d5
	cp l                                             ; $622c: $bd
	ld a, l                                          ; $622d: $7d
	ld e, a                                          ; $622e: $5f
	ld hl, sp-$22                                    ; $622f: $f8 $de
	rst AddAOntoHL                                          ; $6231: $ef
	sbc h                                            ; $6232: $9c
	rst GetHLinHL                                          ; $6233: $cf
	rst SubAFromDE                                          ; $6234: $df
	cp a                                             ; $6235: $bf
	ld d, a                                          ; $6236: $57
	ld hl, sp-$65                                    ; $6237: $f8 $9b
	adc $de                                          ; $6239: $ce $de
	sbc h                                            ; $623b: $9c
	add hl, sp                                       ; $623c: $39
	ld e, a                                          ; $623d: $5f
	ld hl, sp-$67                                    ; $623e: $f8 $99
	ld a, a                                          ; $6240: $7f
	ld l, a                                          ; $6241: $6f
	ld h, e                                          ; $6242: $63
	jp z, $edee                                      ; $6243: $ca $ee $ed

	ld e, a                                          ; $6246: $5f
	ld hl, sp-$67                                    ; $6247: $f8 $99
	ld e, e                                          ; $6249: $5b
	ld d, e                                          ; $624a: $53
	ld b, a                                          ; $624b: $47
	ld b, a                                          ; $624c: $47
	rst AddAOntoHL                                          ; $624d: $ef
	rst AddAOntoHL                                          ; $624e: $ef
	ld e, a                                          ; $624f: $5f
	ld hl, sp+$04                                    ; $6250: $f8 $04

jr_019_6252:
	nop                                              ; $6252: $00
	db $dd                                           ; $6253: $dd
	ld d, l                                          ; $6254: $55
	ld a, [hl+]                                      ; $6255: $2a
	add b                                            ; $6256: $80
	pop bc                                           ; $6257: $c1
	rst $38                                          ; $6258: $ff
	sbc c                                            ; $6259: $99
	xor [hl]                                         ; $625a: $ae
	ld l, l                                          ; $625b: $6d
	db $ed                                           ; $625c: $ed
	db $eb                                           ; $625d: $eb
	rst AddAOntoHL                                          ; $625e: $ef
	rst AddAOntoHL                                          ; $625f: $ef
	ld e, a                                          ; $6260: $5f
	ld hl, sp-$67                                    ; $6261: $f8 $99
	ccf                                              ; $6263: $3f
	ld e, a                                          ; $6264: $5f
	ld e, a                                          ; $6265: $5f
	ld l, a                                          ; $6266: $6f
	ld a, a                                          ; $6267: $7f
	ld a, a                                          ; $6268: $7f
	ld e, a                                          ; $6269: $5f
	ld hl, sp-$67                                    ; $626a: $f8 $99
	push af                                          ; $626c: $f5
	db $fc                                           ; $626d: $fc
	db $fd                                           ; $626e: $fd
	db $fd                                           ; $626f: $fd
	db $fc                                           ; $6270: $fc
	db $fd                                           ; $6271: $fd
	ld e, a                                          ; $6272: $5f
	ld hl, sp-$67                                    ; $6273: $f8 $99
	and c                                            ; $6275: $a1
	cpl                                              ; $6276: $2f
	ld h, c                                          ; $6277: $61
	dec l                                            ; $6278: $2d
	xor l                                            ; $6279: $ad
	pop hl                                           ; $627a: $e1
	ld e, a                                          ; $627b: $5f
	ld hl, sp-$3f                                    ; $627c: $f8 $c1
	rst $38                                          ; $627e: $ff
	inc b                                            ; $627f: $04
	nop                                              ; $6280: $00
	db $dd                                           ; $6281: $dd
	ld d, l                                          ; $6282: $55
	ld h, $80                                        ; $6283: $26 $80
	rst $38                                          ; $6285: $ff
	sbc d                                            ; $6286: $9a
	ccf                                              ; $6287: $3f
	inc h                                            ; $6288: $24
	ld b, a                                          ; $6289: $47
	ld [$fe33], sp                                   ; $628a: $08 $33 $fe
	ld h, a                                          ; $628d: $67
	ld hl, sp-$66                                    ; $628e: $f8 $9a
	call c, $dd01                                    ; $6290: $dc $01 $dd
	ld b, d                                          ; $6293: $42
	sbc h                                            ; $6294: $9c
	ld e, e                                          ; $6295: $5b
	ld hl, sp-$66                                    ; $6296: $f8 $9a
	rlca                                             ; $6298: $07
	inc b                                            ; $6299: $04
	ret c                                            ; $629a: $d8

	pop de                                           ; $629b: $d1
	ld h, [hl]                                       ; $629c: $66
	ld [hl], e                                       ; $629d: $73
	ld hl, sp-$63                                    ; $629e: $f8 $9d
	sbc b                                            ; $62a0: $98
	sub c                                            ; $62a1: $91
	ld [hl], a                                       ; $62a2: $77
	ld hl, sp-$22                                    ; $62a3: $f8 $de
	add b                                            ; $62a5: $80
	db $fc                                           ; $62a6: $fc
	ld l, a                                          ; $62a7: $6f
	ld hl, sp+$04                                    ; $62a8: $f8 $04
	nop                                              ; $62aa: $00
	rst SubAFromDE                                          ; $62ab: $df
	ld b, h                                          ; $62ac: $44
	rra                                              ; $62ad: $1f
	add b                                            ; $62ae: $80
	rst $38                                          ; $62af: $ff
	sbc d                                            ; $62b0: $9a
	ld a, h                                          ; $62b1: $7c
	inc d                                            ; $62b2: $14
	add hl, de                                       ; $62b3: $19
	ld [de], a                                       ; $62b4: $12

jr_019_62b5:
	jr nz, jr_019_62b5                               ; $62b5: $20 $fe

	ld h, a                                          ; $62b7: $67
	ld hl, sp-$66                                    ; $62b8: $f8 $9a
	ld d, [hl]                                       ; $62ba: $56
	sub [hl]                                         ; $62bb: $96
	sbc b                                            ; $62bc: $98
	sub h                                            ; $62bd: $94
	sub c                                            ; $62be: $91
	cp $9d                                           ; $62bf: $fe $9d
	ld d, d                                          ; $62c1: $52
	sub d                                            ; $62c2: $92
	ld l, a                                          ; $62c3: $6f
	ld hl, sp-$22                                    ; $62c4: $f8 $de
	and b                                            ; $62c6: $a0
	sbc l                                            ; $62c7: $9d
	xor b                                            ; $62c8: $a8
	db $10                                           ; $62c9: $10
	ld h, e                                          ; $62ca: $63
	ld hl, sp+$04                                    ; $62cb: $f8 $04
	nop                                              ; $62cd: $00
	sbc [hl]                                         ; $62ce: $9e
	ld b, h                                          ; $62cf: $44
	jr jr_019_6252                                   ; $62d0: $18 $80

	rst $38                                          ; $62d2: $ff
	sbc d                                            ; $62d3: $9a
	ld a, h                                          ; $62d4: $7c
	ld b, h                                          ; $62d5: $44
	ld b, a                                          ; $62d6: $47
	ld b, a                                          ; $62d7: $47
	ld a, l                                          ; $62d8: $7d
	cp $7f                                           ; $62d9: $fe $7f
	ld hl, sp-$21                                    ; $62db: $f8 $df
	ld b, [hl]                                       ; $62dd: $46
	ld [hl], a                                       ; $62de: $77
	ld hl, sp-$66                                    ; $62df: $f8 $9a
	ld e, $12                                        ; $62e1: $1e $12
	ld h, d                                          ; $62e3: $62
	ld b, h                                          ; $62e4: $44
	sbc b                                            ; $62e5: $98
	ld h, e                                          ; $62e6: $63
	ld hl, sp+$04                                    ; $62e7: $f8 $04
	nop                                              ; $62e9: $00
	sbc [hl]                                         ; $62ea: $9e
	ld b, h                                          ; $62eb: $44
	dec h                                            ; $62ec: $25
	add b                                            ; $62ed: $80
	rst $38                                          ; $62ee: $ff
	sbc d                                            ; $62ef: $9a
	ld [hl], b                                       ; $62f0: $70
	nop                                              ; $62f1: $00
	dec c                                            ; $62f2: $0d
	inc b                                            ; $62f3: $04
	ld a, [hl]                                       ; $62f4: $7e
	cp $5f                                           ; $62f5: $fe $5f
	ld hl, sp-$62                                    ; $62f7: $f8 $9e
	db $fd                                           ; $62f9: $fd
	ld d, e                                          ; $62fa: $53
	ld hl, sp-$66                                    ; $62fb: $f8 $9a
	ld [hl], $06                                     ; $62fd: $36 $06
	or l                                             ; $62ff: $b5
	dec b                                            ; $6300: $05
	add hl, sp                                       ; $6301: $39
	ld e, e                                          ; $6302: $5b
	ld hl, sp-$66                                    ; $6303: $f8 $9a
	ld e, $12                                        ; $6305: $1e $12
	and d                                            ; $6307: $a2
	and h                                            ; $6308: $a4
	ret c                                            ; $6309: $d8

	ld [hl], e                                       ; $630a: $73
	ld hl, sp-$65                                    ; $630b: $f8 $9b
	ld [hl+], a                                      ; $630d: $22
	inc h                                            ; $630e: $24
	ret c                                            ; $630f: $d8

	nop                                              ; $6310: $00
	inc b                                            ; $6311: $04
	nop                                              ; $6312: $00
	rst SubAFromDE                                          ; $6313: $df
	ld b, h                                          ; $6314: $44
	ld b, [hl]                                       ; $6315: $46
	nop                                              ; $6316: $00
	or c                                             ; $6317: $b1
	rst $38                                          ; $6318: $ff
	rst $38                                          ; $6319: $ff
	call z, $c9cc                                    ; $631a: $cc $cc $c9
	ret                                              ; $631d: $c9


	jp $ffc7                                         ; $631e: $c3 $c7 $ff


	rst $38                                          ; $6321: $ff
	call z, $cccc                                    ; $6322: $cc $cc $cc
	call nz, $c0c0                                   ; $6325: $c4 $c0 $c0
	or c                                             ; $6328: $b1
	rst $38                                          ; $6329: $ff
	rst $38                                          ; $632a: $ff
	adc $ce                                          ; $632b: $ce $ce
	adc $c4                                          ; $632d: $ce $c4
	call nz, $ffc0                                   ; $632f: $c4 $c0 $ff
	rst $38                                          ; $6332: $ff
	ld a, c                                          ; $6333: $79
	ld a, c                                          ; $6334: $79
	ld b, b                                          ; $6335: $40
	ld h, [hl]                                       ; $6336: $66
	ld l, a                                          ; $6337: $6f
	ld c, [hl]                                       ; $6338: $4e
	or c                                             ; $6339: $b1
	rst $38                                          ; $633a: $ff
	rst $38                                          ; $633b: $ff
	add sp, -$18                                     ; $633c: $e8 $e8
	ld a, [hl+]                                      ; $633e: $2a
	ldh [$75], a                                     ; $633f: $e0 $75
	and b                                            ; $6341: $a0
	rst $38                                          ; $6342: $ff
	rst $38                                          ; $6343: $ff
	ld a, h                                          ; $6344: $7c
	xor b                                            ; $6345: $a8
	or e                                             ; $6346: $b3
	jr c, @+$75                                      ; $6347: $38 $73

	ld l, b                                          ; $6349: $68
	or c                                             ; $634a: $b1
	rst $38                                          ; $634b: $ff
	rst $38                                          ; $634c: $ff
	ld l, h                                          ; $634d: $6c
	dec l                                            ; $634e: $2d
	sbc l                                            ; $634f: $9d
	inc a                                            ; $6350: $3c
	sbc l                                            ; $6351: $9d
	dec l                                            ; $6352: $2d
	rst $38                                          ; $6353: $ff
	rst $38                                          ; $6354: $ff
	inc bc                                           ; $6355: $03
	db $eb                                           ; $6356: $eb
	db $eb                                           ; $6357: $eb
	inc bc                                           ; $6358: $03
	db $eb                                           ; $6359: $eb
	ld l, e                                          ; $635a: $6b
	inc b                                            ; $635b: $04
	nop                                              ; $635c: $00
	db $dd                                           ; $635d: $dd
	ld d, l                                          ; $635e: $55
	inc h                                            ; $635f: $24
	add b                                            ; $6360: $80
	ld sp, hl                                        ; $6361: $f9
	reti                                             ; $6362: $d9


	rst $38                                          ; $6363: $ff
	ld e, a                                          ; $6364: $5f
	ldh a, [$db]                                     ; $6365: $f0 $db
	cp $5f                                           ; $6367: $fe $5f
	ldh a, [$9e]                                     ; $6369: $f0 $9e
	ld bc, $7fdd                                     ; $636b: $01 $dd $7f
	sbc [hl]                                         ; $636e: $9e
	rlca                                             ; $636f: $07
	ld e, a                                          ; $6370: $5f
	ldh a, [$db]                                     ; $6371: $f0 $db
	di                                               ; $6373: $f3
	rra                                              ; $6374: $1f
	ret nz                                           ; $6375: $c0

	sbc [hl]                                         ; $6376: $9e
	nop                                              ; $6377: $00
	db $dd                                           ; $6378: $dd
	ld a, $f8                                        ; $6379: $3e $f8
	sbc $ff                                          ; $637b: $de $ff
	db $dd                                           ; $637d: $dd
	ld a, a                                          ; $637e: $7f
	ld e, e                                          ; $637f: $5b
	ldh [$db], a                                     ; $6380: $e0 $db
	rst $38                                          ; $6382: $ff
	inc b                                            ; $6383: $04
	nop                                              ; $6384: $00
	db $dd                                           ; $6385: $dd
	ld d, l                                          ; $6386: $55
	ld a, [hl-]                                      ; $6387: $3a
	add b                                            ; $6388: $80
	ld sp, hl                                        ; $6389: $f9
	reti                                             ; $638a: $d9


	rst $38                                          ; $638b: $ff
	ld e, a                                          ; $638c: $5f
	ldh a, [$9d]                                     ; $638d: $f0 $9d
	pop af                                           ; $638f: $f1
	adc $dd                                          ; $6390: $ce $dd
	sbc a                                            ; $6392: $9f
	ld e, a                                          ; $6393: $5f
	ldh a, [$9d]                                     ; $6394: $f0 $9d
	db $fc                                           ; $6396: $fc
	ld a, h                                          ; $6397: $7c
	sbc $3c                                          ; $6398: $de $3c
	sbc [hl]                                         ; $639a: $9e
	db $fc                                           ; $639b: $fc
	ld e, a                                          ; $639c: $5f
	ldh a, [$9e]                                     ; $639d: $f0 $9e
	rlca                                             ; $639f: $07
	db $dd                                           ; $63a0: $dd
	di                                               ; $63a1: $f3
	sbc [hl]                                         ; $63a2: $9e
	rlca                                             ; $63a3: $07
	ld e, a                                          ; $63a4: $5f
	ldh a, [$9d]                                     ; $63a5: $f0 $9d
	ldh a, [$e3]                                     ; $63a7: $f0 $e3
	sbc $e7                                          ; $63a9: $de $e7
	sbc [hl]                                         ; $63ab: $9e
	ldh [$5f], a                                     ; $63ac: $e0 $5f
	ldh a, [$99]                                     ; $63ae: $f0 $99
	ld a, $1e                                        ; $63b0: $3e $1e
	sbc [hl]                                         ; $63b2: $9e
	sbc a                                            ; $63b3: $9f
	sbc a                                            ; $63b4: $9f
	rra                                              ; $63b5: $1f
	ld e, a                                          ; $63b6: $5f
	ldh a, [$df]                                     ; $63b7: $f0 $df
	ld a, c                                          ; $63b9: $79
	sbc e                                            ; $63ba: $9b
	ld sp, $3333                                     ; $63bb: $31 $33 $33
	add a                                            ; $63be: $87
	ld b, a                                          ; $63bf: $47
	sub b                                            ; $63c0: $90
	inc b                                            ; $63c1: $04
	nop                                              ; $63c2: $00
	db $dd                                           ; $63c3: $dd
	ld d, l                                          ; $63c4: $55
	ld a, $80                                        ; $63c5: $3e $80
	ld sp, hl                                        ; $63c7: $f9
	rst SubAFromDE                                          ; $63c8: $df
	rst $38                                          ; $63c9: $ff
	sbc [hl]                                         ; $63ca: $9e
	db $fc                                           ; $63cb: $fc
	db $dd                                           ; $63cc: $dd
	ld sp, hl                                        ; $63cd: $f9
	sbc [hl]                                         ; $63ce: $9e
	db $fc                                           ; $63cf: $fc
	ld e, a                                          ; $63d0: $5f
	ldh a, [$99]                                     ; $63d1: $f0 $99
	rlca                                             ; $63d3: $07
	di                                               ; $63d4: $f3
	di                                               ; $63d5: $f3
	rst $38                                          ; $63d6: $ff
	rst $38                                          ; $63d7: $ff
	ccf                                              ; $63d8: $3f
	ld e, a                                          ; $63d9: $5f
	ldh a, [$9e]                                     ; $63da: $f0 $9e
	add b                                            ; $63dc: $80
	call c, Call_019_5ff3                            ; $63dd: $dc $f3 $5f
	ldh a, [$9e]                                     ; $63e0: $f0 $9e
	ld [hl], b                                       ; $63e2: $70
	db $dd                                           ; $63e3: $dd
	di                                               ; $63e4: $f3
	sbc [hl]                                         ; $63e5: $9e
	ldh a, [$5f]                                     ; $63e6: $f0 $5f
	ldh a, [$9e]                                     ; $63e8: $f0 $9e
	ld c, $dd                                        ; $63ea: $0e $dd
	cp $9e                                           ; $63ec: $fe $9e
	ld a, $5f                                        ; $63ee: $3e $5f
	ldh a, [$9e]                                     ; $63f0: $f0 $9e
	ld bc, $7fdd                                     ; $63f2: $01 $dd $7f
	sbc [hl]                                         ; $63f5: $9e
	rlca                                             ; $63f6: $07
	ld e, a                                          ; $63f7: $5f
	ldh a, [$9e]                                     ; $63f8: $f0 $9e
	ret nz                                           ; $63fa: $c0

	call c, Call_019_5fcf                            ; $63fb: $dc $cf $5f
	ldh a, [$7f]                                     ; $63fe: $f0 $7f
	and h                                            ; $6400: $a4
	db $dd                                           ; $6401: $dd
	sbc a                                            ; $6402: $9f
	inc b                                            ; $6403: $04
	nop                                              ; $6404: $00
	db $dd                                           ; $6405: $dd
	ld d, l                                          ; $6406: $55
	ld b, [hl]                                       ; $6407: $46
	nop                                              ; $6408: $00
	or c                                             ; $6409: $b1
	rst $38                                          ; $640a: $ff
	rst $38                                          ; $640b: $ff
	ldh [$cf], a                                     ; $640c: $e0 $cf
	rst GetHLinHL                                          ; $640e: $cf
	rst GetHLinHL                                          ; $640f: $cf
	rst GetHLinHL                                          ; $6410: $cf
	pop hl                                           ; $6411: $e1
	rst $38                                          ; $6412: $ff
	rst $38                                          ; $6413: $ff
	ld [hl], e                                       ; $6414: $73
	inc sp                                           ; $6415: $33
	inc sp                                           ; $6416: $33
	di                                               ; $6417: $f3
	di                                               ; $6418: $f3
	ldh a, [$b1]                                     ; $6419: $f0 $b1
	rst $38                                          ; $641b: $ff
	rst $38                                          ; $641c: $ff
	call z, $cccc                                    ; $641d: $cc $cc $cc
	call z, $0ccc                                    ; $6420: $cc $cc $0c
	rst $38                                          ; $6423: $ff
	rst $38                                          ; $6424: $ff
	ld b, $ff                                        ; $6425: $06 $ff
	rst $38                                          ; $6427: $ff
	rst $38                                          ; $6428: $ff
	rst $38                                          ; $6429: $ff
	rrca                                             ; $642a: $0f
	or c                                             ; $642b: $b1
	rst $38                                          ; $642c: $ff
	rst $38                                          ; $642d: $ff
	nop                                              ; $642e: $00
	ld sp, hl                                        ; $642f: $f9
	di                                               ; $6430: $f3
	di                                               ; $6431: $f3
	rst SubAFromBC                                          ; $6432: $e7
	rst SubAFromBC                                          ; $6433: $e7
	rst $38                                          ; $6434: $ff
	rst $38                                          ; $6435: $ff
	rst GetHLinHL                                          ; $6436: $cf
	rst GetHLinHL                                          ; $6437: $cf
	rst JumpTable                                          ; $6438: $c7
	rst JumpTable                                          ; $6439: $c7
	jp $b1c9                                         ; $643a: $c3 $c9 $b1


	rst $38                                          ; $643d: $ff
	rst $38                                          ; $643e: $ff
	sbc h                                            ; $643f: $9c

jr_019_6440:
	sbc b                                            ; $6440: $98
	sbc c                                            ; $6441: $99
	sbc c                                            ; $6442: $99
	sbc c                                            ; $6443: $99
	sbc b                                            ; $6444: $98
	rst $38                                          ; $6445: $ff
	rst $38                                          ; $6446: $ff
	rlca                                             ; $6447: $07
	db $e3                                           ; $6448: $e3
	di                                               ; $6449: $f3
	di                                               ; $644a: $f3
	di                                               ; $644b: $f3
	inc bc                                           ; $644c: $03
	inc b                                            ; $644d: $04
	nop                                              ; $644e: $00
	db $dd                                           ; $644f: $dd
	ld d, l                                          ; $6450: $55
	ld a, [hl-]                                      ; $6451: $3a
	add b                                            ; $6452: $80
	ld sp, hl                                        ; $6453: $f9
	rst SubAFromDE                                          ; $6454: $df

Call_019_6455:
	rst $38                                          ; $6455: $ff
	sbc c                                            ; $6456: $99
	cp $8e                                           ; $6457: $fe $8e
	cp $ff                                           ; $6459: $fe $ff
	adc [hl]                                         ; $645b: $8e
	cp $5f                                           ; $645c: $fe $5f
	ldh a, [$de]                                     ; $645e: $f0 $de
	cp a                                             ; $6460: $bf
	ld a, e                                          ; $6461: $7b
	db $eb                                           ; $6462: $eb
	ld e, a                                          ; $6463: $5f
	ldh a, [$99]                                     ; $6464: $f0 $99
	db $fd                                           ; $6466: $fd
	ld a, [$6fdd]                                    ; $6467: $fa $dd $6f
	ld l, a                                          ; $646a: $6f
	ld [hl], a                                       ; $646b: $77
	ld e, a                                          ; $646c: $5f
	ldh a, [$df]                                     ; $646d: $f0 $df
	rst $38                                          ; $646f: $ff
	sbc [hl]                                         ; $6470: $9e
	add e                                            ; $6471: $83
	sbc $ff                                          ; $6472: $de $ff
	ld d, a                                          ; $6474: $57
	ldh a, [$9e]                                     ; $6475: $f0 $9e
	db $fc                                           ; $6477: $fc
	ld d, e                                          ; $6478: $53
	ldh a, [$df]                                     ; $6479: $f0 $df
	push af                                          ; $647b: $f5
	sbc e                                            ; $647c: $9b
	dec b                                            ; $647d: $05
	rst SubAFromBC                                          ; $647e: $e7
	rst AddAOntoHL                                          ; $647f: $ef
	rst GetHLinHL                                          ; $6480: $cf
	ld e, a                                          ; $6481: $5f
	ldh a, [$9e]                                     ; $6482: $f0 $9e
	ldh [$dc], a                                     ; $6484: $e0 $dc
	ld sp, hl                                        ; $6486: $f9
	ld d, a                                          ; $6487: $57
	ret nc                                           ; $6488: $d0

	db $dd                                           ; $6489: $dd
	rst $38                                          ; $648a: $ff
	inc b                                            ; $648b: $04
	nop                                              ; $648c: $00
	db $dd                                           ; $648d: $dd
	ld d, l                                          ; $648e: $55
	dec hl                                           ; $648f: $2b
	add b                                            ; $6490: $80
	ld sp, hl                                        ; $6491: $f9
	reti                                             ; $6492: $d9


	rst $38                                          ; $6493: $ff
	ld d, a                                          ; $6494: $57
	ldh a, [$9b]                                     ; $6495: $f0 $9b
	rst SubAFromDE                                          ; $6497: $df
	adc a                                            ; $6498: $8f
	daa                                              ; $6499: $27
	ld [hl], e                                       ; $649a: $73
	ld e, e                                          ; $649b: $5b
	ldh a, [$9e]                                     ; $649c: $f0 $9e
	ldh a, [rVBK]                                    ; $649e: $f0 $4f
	ldh [$9c], a                                     ; $64a0: $e0 $9c
	ld hl, sp+$3f                                    ; $64a2: $f8 $3f
	ld hl, sp+$53                                    ; $64a4: $f8 $53
	ldh a, [$99]                                     ; $64a6: $f0 $99
	ld a, [hl]                                       ; $64a8: $7e
	cp $76                                           ; $64a9: $fe $76
	or $f6                                           ; $64ab: $f6 $f6
	rst FarCall                                          ; $64ad: $f7
	ld e, a                                          ; $64ae: $5f
	ldh a, [$db]                                     ; $64af: $f0 $db
	ei                                               ; $64b1: $fb
	ld e, e                                          ; $64b2: $5b
	ret nz                                           ; $64b3: $c0

	sbc [hl]                                         ; $64b4: $9e
	rrca                                             ; $64b5: $0f
	db $dd                                           ; $64b6: $dd
	cp $47                                           ; $64b7: $fe $47
	sub b                                            ; $64b9: $90
	inc b                                            ; $64ba: $04
	nop                                              ; $64bb: $00
	db $dd                                           ; $64bc: $dd
	ld d, l                                          ; $64bd: $55
	jr c, jr_019_6440                                ; $64be: $38 $80

	ld sp, hl                                        ; $64c0: $f9
	sbc $ff                                          ; $64c1: $de $ff
	sbc [hl]                                         ; $64c3: $9e
	add c                                            ; $64c4: $81
	db $dd                                           ; $64c5: $dd
	cp l                                             ; $64c6: $bd
	ld e, e                                          ; $64c7: $5b
	ldh a, [$df]                                     ; $64c8: $f0 $df
	cp a                                             ; $64ca: $bf
	sbc h                                            ; $64cb: $9c
	add c                                            ; $64cc: $81
	cp e                                             ; $64cd: $bb
	ld a, e                                          ; $64ce: $7b
	ld e, e                                          ; $64cf: $5b
	ldh a, [$dc]                                     ; $64d0: $f0 $dc
	ei                                               ; $64d2: $fb
	ld e, e                                          ; $64d3: $5b
	ldh a, [$dd]                                     ; $64d4: $f0 $dd
	rst AddAOntoHL                                          ; $64d6: $ef
	sbc [hl]                                         ; $64d7: $9e
	db $ec                                           ; $64d8: $ec
	ld e, e                                          ; $64d9: $5b
	ldh a, [$9a]                                     ; $64da: $f0 $9a
	ld e, a                                          ; $64dc: $5f
	ld b, b                                          ; $64dd: $40
	ld e, a                                          ; $64de: $5f
	cp $7e                                           ; $64df: $fe $7e
	ld e, a                                          ; $64e1: $5f
	ldh a, [$df]                                     ; $64e2: $f0 $df
	rst FarCall                                          ; $64e4: $f7
	sbc e                                            ; $64e5: $9b
	scf                                              ; $64e6: $37
	jr nc, jr_019_6560                               ; $64e7: $30 $77

	ld l, a                                          ; $64e9: $6f
	ld e, e                                          ; $64ea: $5b
	ldh [$df], a                                     ; $64eb: $e0 $df
	rst $38                                          ; $64ed: $ff
	sbc h                                            ; $64ee: $9c
	ccf                                              ; $64ef: $3f
	ld a, a                                          ; $64f0: $7f
	ld a, a                                          ; $64f1: $7f
	ld e, a                                          ; $64f2: $5f
	ldh a, [$db]                                     ; $64f3: $f0 $db
	xor l                                            ; $64f5: $ad
	inc b                                            ; $64f6: $04
	nop                                              ; $64f7: $00
	db $dd                                           ; $64f8: $dd
	ld d, l                                          ; $64f9: $55
	ld h, $80                                        ; $64fa: $26 $80
	ld sp, hl                                        ; $64fc: $f9
	reti                                             ; $64fd: $d9


	rst $38                                          ; $64fe: $ff
	ld e, e                                          ; $64ff: $5b
	ldh a, [$9a]                                     ; $6500: $f0 $9a
	nop                                              ; $6502: $00
	cp $fc                                           ; $6503: $fe $fc
	ld sp, hl                                        ; $6505: $f9
	ei                                               ; $6506: $fb
	ld e, e                                          ; $6507: $5b
	ldh a, [$dd]                                     ; $6508: $f0 $dd
	rst AddAOntoHL                                          ; $650a: $ef
	sbc [hl]                                         ; $650b: $9e
	xor $5f                                          ; $650c: $ee $5f
	ldh a, [$99]                                     ; $650e: $f0 $99
	cp $de                                           ; $6510: $fe $de
	xor [hl]                                         ; $6512: $ae
	sbc $fe                                          ; $6513: $de $fe
	ld a, $5f                                        ; $6515: $3e $5f
	ldh a, [$db]                                     ; $6517: $f0 $db
	rst FarCall                                          ; $6519: $f7
	rra                                              ; $651a: $1f
	or b                                             ; $651b: $b0
	db $db                                           ; $651c: $db
	ld e, e                                          ; $651d: $5b
	ld b, a                                          ; $651e: $47
	ldh [rDIV], a                                    ; $651f: $e0 $04
	nop                                              ; $6521: $00
	db $dd                                           ; $6522: $dd
	ld d, l                                          ; $6523: $55
	inc a                                            ; $6524: $3c
	add b                                            ; $6525: $80
	ld sp, hl                                        ; $6526: $f9
	db $dd                                           ; $6527: $dd
	rst $38                                          ; $6528: $ff
	sbc [hl]                                         ; $6529: $9e
	cp $de                                           ; $652a: $fe $de
	rst $38                                          ; $652c: $ff
	ld e, a                                          ; $652d: $5f
	ldh a, [$df]                                     ; $652e: $f0 $df
	cp $9b                                           ; $6530: $fe $9b
	nop                                              ; $6532: $00
	db $fc                                           ; $6533: $fc
	db $fd                                           ; $6534: $fd
	db $fd                                           ; $6535: $fd
	ld e, a                                          ; $6536: $5f
	ldh a, [$df]                                     ; $6537: $f0 $df
	cp a                                             ; $6539: $bf
	rst SubAFromDE                                          ; $653a: $df
	xor l                                            ; $653b: $ad
	rst SubAFromDE                                          ; $653c: $df
	db $ed                                           ; $653d: $ed
	ld d, a                                          ; $653e: $57
	ret nc                                           ; $653f: $d0

	sbc [hl]                                         ; $6540: $9e
	ldh [rHDMA3], a                                  ; $6541: $e0 $53
	ret nc                                           ; $6543: $d0

	rst SubAFromDE                                          ; $6544: $df
	db $eb                                           ; $6545: $eb
	sbc e                                            ; $6546: $9b
	ld a, [bc]                                       ; $6547: $0a
	jp z, $dede                                      ; $6548: $ca $de $de

	ld d, a                                          ; $654b: $57
	ldh [$9e], a                                     ; $654c: $e0 $9e
	sbc $de                                          ; $654e: $de $de
	rst SubAFromDE                                          ; $6550: $df
	ld e, a                                          ; $6551: $5f
	ldh a, [$df]                                     ; $6552: $f0 $df
	db $fd                                           ; $6554: $fd
	sbc e                                            ; $6555: $9b
	ld bc, $fbf9                                     ; $6556: $01 $f9 $fb
	di                                               ; $6559: $f3
	ld e, a                                          ; $655a: $5f
	ldh a, [$dd]                                     ; $655b: $f0 $dd
	ld a, a                                          ; $655d: $7f
	rst SubAFromDE                                          ; $655e: $df
	rst $38                                          ; $655f: $ff

jr_019_6560:
	inc b                                            ; $6560: $04
	nop                                              ; $6561: $00
	db $dd                                           ; $6562: $dd
	ld d, l                                          ; $6563: $55
	ld a, [hl+]                                      ; $6564: $2a
	add b                                            ; $6565: $80
	ld sp, hl                                        ; $6566: $f9
	reti                                             ; $6567: $d9


	rst $38                                          ; $6568: $ff
	rra                                              ; $6569: $1f
	ldh a, [$df]                                     ; $656a: $f0 $df
	rst FarCall                                          ; $656c: $f7
	sbc e                                            ; $656d: $9b
	rst AddAOntoHL                                          ; $656e: $ef
	add sp, -$31                                     ; $656f: $e8 $cf
	adc $5f                                          ; $6571: $ce $5f
	ldh a, [$de]                                     ; $6573: $f0 $de
	ld a, a                                          ; $6575: $7f
	sbc h                                            ; $6576: $9c
	rrca                                             ; $6577: $0f
	ld a, a                                          ; $6578: $7f
	ccf                                              ; $6579: $3f
	ld e, a                                          ; $657a: $5f
	ldh a, [$99]                                     ; $657b: $f0 $99
	cp $fd                                           ; $657d: $fe $fd
	db $fd                                           ; $657f: $fd
	ld hl, sp-$07                                    ; $6580: $f8 $f9
	db $f4                                           ; $6582: $f4
	ld e, a                                          ; $6583: $5f
	ldh a, [$99]                                     ; $6584: $f0 $99
	ld [hl], e                                       ; $6586: $73
	or e                                             ; $6587: $b3
	add b                                            ; $6588: $80
	ld e, $80                                        ; $6589: $1e $80
	inc c                                            ; $658b: $0c
	rlca                                             ; $658c: $07
	and b                                            ; $658d: $a0
	inc b                                            ; $658e: $04
	nop                                              ; $658f: $00
	db $dd                                           ; $6590: $dd
	ld d, l                                          ; $6591: $55
	ld b, [hl]                                       ; $6592: $46
	nop                                              ; $6593: $00
	or c                                             ; $6594: $b1
	rst JumpTable                                          ; $6595: $c7
	jp $c9c9                                         ; $6596: $c3 $c9 $c9


	call z, $ffcc                                    ; $6599: $cc $cc $ff
	rst $38                                          ; $659c: $ff
	ret nz                                           ; $659d: $c0

	ret z                                            ; $659e: $c8

	call z, $cccc                                    ; $659f: $cc $cc $cc
	call z, rIE                                    ; $65a2: $cc $ff $ff
	or c                                             ; $65a5: $b1
	ret nz                                           ; $65a6: $c0

	jp z, $ceca                                      ; $65a7: $ca $ca $ce

	adc $ce                                          ; $65aa: $ce $ce
	rst $38                                          ; $65ac: $ff
	rst $38                                          ; $65ad: $ff
	ld h, h                                          ; $65ae: $64
	ld [hl], b                                       ; $65af: $70
	ld a, c                                          ; $65b0: $79
	ld [hl], h                                       ; $65b1: $74
	ld l, [hl]                                       ; $65b2: $6e
	ld e, a                                          ; $65b3: $5f
	rst $38                                          ; $65b4: $ff
	rst $38                                          ; $65b5: $ff
	or c                                             ; $65b6: $b1
	ld a, d                                          ; $65b7: $7a
	ldh [rIE], a                                     ; $65b8: $e0 $ff
	ldh a, [rPCM34]                                  ; $65ba: $f0 $77
	jr nc, @+$01                                     ; $65bc: $30 $ff

	rst $38                                          ; $65be: $ff
	cp $30                                           ; $65bf: $fe $30
	ld hl, sp+$7a                                    ; $65c1: $f8 $7a
	halt                                             ; $65c3: $76
	ld l, [hl]                                       ; $65c4: $6e
	rst $38                                          ; $65c5: $ff
	rst $38                                          ; $65c6: $ff
	or c                                             ; $65c7: $b1
	db $fd                                           ; $65c8: $fd
	dec e                                            ; $65c9: $1d
	cp l                                             ; $65ca: $bd
	sbc l                                            ; $65cb: $9d
	call nz, $ffed                                   ; $65cc: $c4 $ed $ff
	rst $38                                          ; $65cf: $ff
	xor e                                            ; $65d0: $ab
	db $eb                                           ; $65d1: $eb
	adc e                                            ; $65d2: $8b
	db $eb                                           ; $65d3: $eb
	inc bc                                           ; $65d4: $03
	ei                                               ; $65d5: $fb
	rst $38                                          ; $65d6: $ff
	rst $38                                          ; $65d7: $ff
	inc b                                            ; $65d8: $04
	nop                                              ; $65d9: $00
	db $dd                                           ; $65da: $dd
	ld d, l                                          ; $65db: $55
	inc h                                            ; $65dc: $24
	add b                                            ; $65dd: $80
	ld sp, hl                                        ; $65de: $f9
	reti                                             ; $65df: $d9


	rst $38                                          ; $65e0: $ff
	ld sp, hl                                        ; $65e1: $f9
	db $db                                           ; $65e2: $db
	cp $5f                                           ; $65e3: $fe $5f
	ldh a, [$dc]                                     ; $65e5: $f0 $dc
	ld a, a                                          ; $65e7: $7f
	sbc [hl]                                         ; $65e8: $9e
	ld bc, $f05f                                     ; $65e9: $01 $5f $f0
	call c, $9ef3                                    ; $65ec: $dc $f3 $9e
	ldh a, [$5f]                                     ; $65ef: $f0 $5f
	ldh a, [$dc]                                     ; $65f1: $f0 $dc
	rst $38                                          ; $65f3: $ff
	sbc [hl]                                         ; $65f4: $9e
	rrca                                             ; $65f5: $0f
	ld e, a                                          ; $65f6: $5f
	ldh a, [$db]                                     ; $65f7: $f0 $db
	ccf                                              ; $65f9: $3f
	ld c, e                                          ; $65fa: $4b
	ldh [$5b], a                                     ; $65fb: $e0 $5b
	and b                                            ; $65fd: $a0
	reti                                             ; $65fe: $d9


	rst $38                                          ; $65ff: $ff
	inc b                                            ; $6600: $04
	nop                                              ; $6601: $00
	db $dd                                           ; $6602: $dd
	ld d, l                                          ; $6603: $55
	inc l                                            ; $6604: $2c
	add b                                            ; $6605: $80
	ld sp, hl                                        ; $6606: $f9
	reti                                             ; $6607: $d9


	rst $38                                          ; $6608: $ff
	ld sp, hl                                        ; $6609: $f9
	sbc [hl]                                         ; $660a: $9e
	sbc h                                            ; $660b: $9c
	sbc $9f                                          ; $660c: $de $9f
	sbc l                                            ; $660e: $9d
	adc $f1                                          ; $660f: $ce $f1
	ld e, a                                          ; $6611: $5f
	ldh a, [$dd]                                     ; $6612: $f0 $dd
	inc a                                            ; $6614: $3c
	sbc l                                            ; $6615: $9d
	ld a, h                                          ; $6616: $7c
	db $fc                                           ; $6617: $fc
	ld e, a                                          ; $6618: $5f
	ldh a, [$9e]                                     ; $6619: $f0 $9e
	rst SubAFromBC                                          ; $661b: $e7
	call c, $5bf3                                    ; $661c: $dc $f3 $5b
	ldh a, [$dc]                                     ; $661f: $f0 $dc
	rst SubAFromBC                                          ; $6621: $e7
	ld e, a                                          ; $6622: $5f
	ldh a, [$db]                                     ; $6623: $f0 $db
	sbc a                                            ; $6625: $9f
	ld e, a                                          ; $6626: $5f
	ldh a, [$9e]                                     ; $6627: $f0 $9e
	add a                                            ; $6629: $87
	call c, Call_019_5fcf                            ; $662a: $dc $cf $5f
	ldh a, [$d9]                                     ; $662d: $f0 $d9
	rst $38                                          ; $662f: $ff
	inc b                                            ; $6630: $04
	nop                                              ; $6631: $00
	db $dd                                           ; $6632: $dd
	ld d, l                                          ; $6633: $55
	inc [hl]                                         ; $6634: $34
	add b                                            ; $6635: $80
	ld sp, hl                                        ; $6636: $f9
	sbc $ff                                          ; $6637: $de $ff
	rst SubAFromDE                                          ; $6639: $df
	ld sp, hl                                        ; $663a: $f9
	sbc h                                            ; $663b: $9c
	db $fc                                           ; $663c: $fc
	rst $38                                          ; $663d: $ff
	rst $38                                          ; $663e: $ff
	ld sp, hl                                        ; $663f: $f9
	sbc [hl]                                         ; $6640: $9e
	add a                                            ; $6641: $87
	db $dd                                           ; $6642: $dd
	di                                               ; $6643: $f3
	sbc [hl]                                         ; $6644: $9e
	rlca                                             ; $6645: $07
	ld e, a                                          ; $6646: $5f
	ldh a, [$db]                                     ; $6647: $f0 $db
	di                                               ; $6649: $f3
	ld c, e                                          ; $664a: $4b
	ldh a, [$9e]                                     ; $664b: $f0 $9e
	ldh a, [$5f]                                     ; $664d: $f0 $5f
	ldh a, [$dc]                                     ; $664f: $f0 $dc
	cp $9e                                           ; $6651: $fe $9e
	ld c, $5f                                        ; $6653: $0e $5f
	ldh a, [$dc]                                     ; $6655: $f0 $dc
	ld a, a                                          ; $6657: $7f
	sbc [hl]                                         ; $6658: $9e
	ld bc, $f05f                                     ; $6659: $01 $5f $f0
	call c, $9ecf                                    ; $665c: $dc $cf $9e
	ret nz                                           ; $665f: $c0

	ld e, a                                          ; $6660: $5f
	ldh a, [$dd]                                     ; $6661: $f0 $dd
	sbc a                                            ; $6663: $9f
	sbc [hl]                                         ; $6664: $9e
	ccf                                              ; $6665: $3f
	sbc $ff                                          ; $6666: $de $ff
	inc b                                            ; $6668: $04
	nop                                              ; $6669: $00
	db $dd                                           ; $666a: $dd
	ld d, l                                          ; $666b: $55
	dec sp                                           ; $666c: $3b
	add b                                            ; $666d: $80
	ld sp, hl                                        ; $666e: $f9
	sub a                                            ; $666f: $97
	db $fc                                           ; $6670: $fc
	rst $38                                          ; $6671: $ff
	rst $38                                          ; $6672: $ff
	rst GetHLinHL                                          ; $6673: $cf
	rst GetHLinHL                                          ; $6674: $cf
	ldh [rIE], a                                     ; $6675: $e0 $ff
	rst $38                                          ; $6677: $ff
	ld sp, hl                                        ; $6678: $f9
	sbc [hl]                                         ; $6679: $9e
	ld [hl], e                                       ; $667a: $73
	db $dd                                           ; $667b: $dd
	inc sp                                           ; $667c: $33
	sbc [hl]                                         ; $667d: $9e
	ld [hl], e                                       ; $667e: $73
	ld e, a                                          ; $667f: $5f
	ldh a, [$db]                                     ; $6680: $f0 $db
	call z, $f05f                                    ; $6682: $cc $5f $f0
	call c, $9eff                                    ; $6685: $dc $ff $9e
	ld b, $5f                                        ; $6688: $06 $5f
	ldh a, [$df]                                     ; $668a: $f0 $df
	rst GetHLinHL                                          ; $668c: $cf
	rst SubAFromDE                                          ; $668d: $df
	sbc a                                            ; $668e: $9f
	sbc [hl]                                         ; $668f: $9e
	ccf                                              ; $6690: $3f
	ld a, e                                          ; $6691: $7b
	ld [$d063], a                                    ; $6692: $ea $63 $d0
	sbc [hl]                                         ; $6695: $9e
	adc $dd                                          ; $6696: $ce $dd
	rst GetHLinHL                                          ; $6698: $cf
	ld e, a                                          ; $6699: $5f
	ldh a, [$9e]                                     ; $669a: $f0 $9e
	sbc c                                            ; $669c: $99
	sbc $19                                          ; $669d: $de $19
	rst SubAFromDE                                          ; $669f: $df
	sbc c                                            ; $66a0: $99
	ld e, a                                          ; $66a1: $5f
	ldh a, [$db]                                     ; $66a2: $f0 $db
	di                                               ; $66a4: $f3
	rst SubAFromDE                                          ; $66a5: $df
	rst $38                                          ; $66a6: $ff
	inc b                                            ; $66a7: $04
	nop                                              ; $66a8: $00
	db $dd                                           ; $66a9: $dd
	ld d, l                                          ; $66aa: $55
	ld b, [hl]                                       ; $66ab: $46
	nop                                              ; $66ac: $00
	or c                                             ; $66ad: $b1
	cp $fe                                           ; $66ae: $fe $fe
	db $fd                                           ; $66b0: $fd
	ld sp, hl                                        ; $66b1: $f9
	rst SubAFromBC                                          ; $66b2: $e7
	adc a                                            ; $66b3: $8f
	rst $38                                          ; $66b4: $ff
	rst $38                                          ; $66b5: $ff
	cp $de                                           ; $66b6: $fe $de
	push bc                                          ; $66b8: $c5
	sub a                                            ; $66b9: $97
	rst SubAFromDE                                          ; $66ba: $df
	rst SubAFromDE                                          ; $66bb: $df
	rst $38                                          ; $66bc: $ff
	rst $38                                          ; $66bd: $ff
	or c                                             ; $66be: $b1
	rst FarCall                                          ; $66bf: $f7
	di                                               ; $66c0: $f3
	ei                                               ; $66c1: $fb
	ei                                               ; $66c2: $fb
	rst $38                                          ; $66c3: $ff
	rst $38                                          ; $66c4: $ff
	rst $38                                          ; $66c5: $ff
	rst $38                                          ; $66c6: $ff
	rst $38                                          ; $66c7: $ff
	rst $38                                          ; $66c8: $ff
	rst $38                                          ; $66c9: $ff
	rst $38                                          ; $66ca: $ff
	ld bc, rIE                                     ; $66cb: $01 $ff $ff
	rst $38                                          ; $66ce: $ff
	or c                                             ; $66cf: $b1
	rlca                                             ; $66d0: $07
	rst $38                                          ; $66d1: $ff
	rst $38                                          ; $66d2: $ff
	rst $38                                          ; $66d3: $ff
	cp $fd                                           ; $66d4: $fe $fd
	rst $38                                          ; $66d6: $ff
	rst $38                                          ; $66d7: $ff
	rst SubAFromDE                                          ; $66d8: $df
	sbc a                                            ; $66d9: $9f
	xor a                                            ; $66da: $af
	ld l, a                                          ; $66db: $6f
	rst FarCall                                          ; $66dc: $f7
	rst FarCall                                          ; $66dd: $f7
	rst $38                                          ; $66de: $ff
	rst $38                                          ; $66df: $ff
	or c                                             ; $66e0: $b1
	ld sp, hl                                        ; $66e1: $f9
	add hl, sp                                       ; $66e2: $39
	add hl, sp                                       ; $66e3: $39
	add hl, sp                                       ; $66e4: $39
	add hl, sp                                       ; $66e5: $39
	add e                                            ; $66e6: $83
	rst $38                                          ; $66e7: $ff
	rst $38                                          ; $66e8: $ff
	ccf                                              ; $66e9: $3f
	rlca                                             ; $66ea: $07
	daa                                              ; $66eb: $27
	ccf                                              ; $66ec: $3f
	add hl, sp                                       ; $66ed: $39
	add hl, sp                                       ; $66ee: $39
	rst $38                                          ; $66ef: $ff
	rst $38                                          ; $66f0: $ff
	inc b                                            ; $66f1: $04
	nop                                              ; $66f2: $00
	db $dd                                           ; $66f3: $dd
	ld d, l                                          ; $66f4: $55
	add hl, sp                                       ; $66f5: $39
	add b                                            ; $66f6: $80
	ld sp, hl                                        ; $66f7: $f9
	rst SubAFromDE                                          ; $66f8: $df
	cp $db                                           ; $66f9: $fe $db
	rst $38                                          ; $66fb: $ff
	ld sp, hl                                        ; $66fc: $f9
	sbc l                                            ; $66fd: $9d
	ld a, c                                          ; $66fe: $79
	db $fc                                           ; $66ff: $fc
	ld l, a                                          ; $6700: $6f
	rst AddAOntoHL                                          ; $6701: $ef
	ld sp, hl                                        ; $6702: $f9
	rst SubAFromDE                                          ; $6703: $df
	rst $38                                          ; $6704: $ff
	rst SubAFromDE                                          ; $6705: $df
	ld a, a                                          ; $6706: $7f
	sbc [hl]                                         ; $6707: $9e
	ldh [rHDMA3], a                                  ; $6708: $e0 $53
	ldh a, [$df]                                     ; $670a: $f0 $df
	rst $38                                          ; $670c: $ff
	sbc l                                            ; $670d: $9d
	ld e, $f8                                        ; $670e: $1e $f8
	ld e, a                                          ; $6710: $5f
	ldh a, [$df]                                     ; $6711: $f0 $df
	rst AddAOntoHL                                          ; $6713: $ef
	sbc h                                            ; $6714: $9c
	rst SubAFromDE                                          ; $6715: $df
	sbc a                                            ; $6716: $9f
	ccf                                              ; $6717: $3f
	ld e, e                                          ; $6718: $5b
	ldh [$9e], a                                     ; $6719: $e0 $9e
	ei                                               ; $671b: $fb
	sbc $f7                                          ; $671c: $de $f7
	sbc l                                            ; $671e: $9d
	rst AddAOntoHL                                          ; $671f: $ef
	sbc a                                            ; $6720: $9f
	ld e, a                                          ; $6721: $5f
	ldh a, [$df]                                     ; $6722: $f0 $df
	db $fd                                           ; $6724: $fd
	sbc e                                            ; $6725: $9b
	ei                                               ; $6726: $fb
	di                                               ; $6727: $f3
	rst JumpTable                                          ; $6728: $c7
	rra                                              ; $6729: $1f
	ld c, a                                          ; $672a: $4f
	ret nz                                           ; $672b: $c0

	db $dd                                           ; $672c: $dd
	rst $38                                          ; $672d: $ff
	inc b                                            ; $672e: $04
	nop                                              ; $672f: $00
	db $dd                                           ; $6730: $dd
	ld d, l                                          ; $6731: $55
	ld b, [hl]                                       ; $6732: $46
	nop                                              ; $6733: $00
	or c                                             ; $6734: $b1
	cp l                                             ; $6735: $bd
	cp l                                             ; $6736: $bd
	cp l                                             ; $6737: $bd
	cp l                                             ; $6738: $bd
	cp l                                             ; $6739: $bd
	add c                                            ; $673a: $81
	rst $38                                          ; $673b: $ff
	rst $38                                          ; $673c: $ff
	ld a, d                                          ; $673d: $7a
	ld a, [$f7f6]                                    ; $673e: $fa $f6 $f7
	rst AddAOntoHL                                          ; $6741: $ef
	sbc [hl]                                         ; $6742: $9e
	rst $38                                          ; $6743: $ff
	rst $38                                          ; $6744: $ff
	or c                                             ; $6745: $b1
	xor c                                            ; $6746: $a9
	xor d                                            ; $6747: $aa
	xor e                                            ; $6748: $ab
	db $eb                                           ; $6749: $eb
	db $db                                           ; $674a: $db
	dec sp                                           ; $674b: $3b
	rst $38                                          ; $674c: $ff
	rst $38                                          ; $674d: $ff
	db $e3                                           ; $674e: $e3
	ld l, a                                          ; $674f: $6f
	xor a                                            ; $6750: $af
	rst AddAOntoHL                                          ; $6751: $ef
	rst AddAOntoHL                                          ; $6752: $ef
	ldh a, [rIE]                                     ; $6753: $f0 $ff
	rst $38                                          ; $6755: $ff
	or c                                             ; $6756: $b1
	db $fc                                           ; $6757: $fc
	db $fc                                           ; $6758: $fc
	ld sp, hl                                        ; $6759: $f9
	ei                                               ; $675a: $fb
	scf                                              ; $675b: $37
	rst AddAOntoHL                                          ; $675c: $ef
	rst $38                                          ; $675d: $ff
	rst $38                                          ; $675e: $ff
	rst AddAOntoHL                                          ; $675f: $ef
	rst $38                                          ; $6760: $ff
	ld a, [hl]                                       ; $6761: $7e
	ld a, [hl]                                       ; $6762: $7e
	cp l                                             ; $6763: $bd
	or e                                             ; $6764: $b3
	rst $38                                          ; $6765: $ff

Call_019_6766:
	rst $38                                          ; $6766: $ff
	or c                                             ; $6767: $b1
	ld l, d                                          ; $6768: $6a
	ld l, d                                          ; $6769: $6a
	ld [$fdfe], a                                    ; $676a: $ea $fe $fd
	di                                               ; $676d: $f3
	rst $38                                          ; $676e: $ff
	rst $38                                          ; $676f: $ff
	db $fd                                           ; $6770: $fd
	db $fd                                           ; $6771: $fd
	ei                                               ; $6772: $fb
	ei                                               ; $6773: $fb
	rst FarCall                                          ; $6774: $f7
	rst GetHLinHL                                          ; $6775: $cf
	rst $38                                          ; $6776: $ff
	rst $38                                          ; $6777: $ff
	inc b                                            ; $6778: $04
	nop                                              ; $6779: $00
	db $dd                                           ; $677a: $dd
	ld d, l                                          ; $677b: $55
	add hl, sp                                       ; $677c: $39
	add b                                            ; $677d: $80
	ld sp, hl                                        ; $677e: $f9
	reti                                             ; $677f: $d9


	rst $38                                          ; $6780: $ff
	ld sp, hl                                        ; $6781: $f9
	sbc c                                            ; $6782: $99
	di                                               ; $6783: $f3
	db $e3                                           ; $6784: $e3
	db $ed                                           ; $6785: $ed
	db $dd                                           ; $6786: $dd
	cp [hl]                                          ; $6787: $be
	ld a, [hl]                                       ; $6788: $7e
	ld e, a                                          ; $6789: $5f
	ldh a, [$9e]                                     ; $678a: $f0 $9e
	pop hl                                           ; $678c: $e1
	db $dd                                           ; $678d: $dd
	rst AddAOntoHL                                          ; $678e: $ef
	sbc [hl]                                         ; $678f: $9e
	ldh a, [$5f]                                     ; $6790: $f0 $5f
	ldh a, [$9e]                                     ; $6792: $f0 $9e
	cp $de                                           ; $6794: $fe $de
	rst $38                                          ; $6796: $ff
	sbc l                                            ; $6797: $9d
	sbc a                                            ; $6798: $9f
	ld a, a                                          ; $6799: $7f
	ld e, a                                          ; $679a: $5f
	ldh a, [$df]                                     ; $679b: $f0 $df
	rst FarCall                                          ; $679d: $f7
	rst SubAFromDE                                          ; $679e: $df
	rst AddAOntoHL                                          ; $679f: $ef
	sbc l                                            ; $67a0: $9d
	rst SubAFromDE                                          ; $67a1: $df
	ccf                                              ; $67a2: $3f
	ld e, a                                          ; $67a3: $5f
	ldh a, [$de]                                     ; $67a4: $f0 $de
	ld d, a                                          ; $67a6: $57
	ld a, a                                          ; $67a7: $7f
	xor $9e                                          ; $67a8: $ee $9e
	sbc a                                            ; $67aa: $9f
	ld e, a                                          ; $67ab: $5f
	ldh a, [$df]                                     ; $67ac: $f0 $df
	ei                                               ; $67ae: $fb
	ld a, e                                          ; $67af: $7b
	sbc $5b                                          ; $67b0: $de $5b
	ldh a, [$d9]                                     ; $67b2: $f0 $d9
	rst $38                                          ; $67b4: $ff
	inc b                                            ; $67b5: $04
	nop                                              ; $67b6: $00
	db $dd                                           ; $67b7: $dd
	ld d, l                                          ; $67b8: $55
	dec a                                            ; $67b9: $3d
	add b                                            ; $67ba: $80
	ld sp, hl                                        ; $67bb: $f9
	reti                                             ; $67bc: $d9


	rst $38                                          ; $67bd: $ff
	ld sp, hl                                        ; $67be: $f9
	rst SubAFromDE                                          ; $67bf: $df
	ei                                               ; $67c0: $fb
	sbc e                                            ; $67c1: $9b
	rst FarCall                                          ; $67c2: $f7
	rst SubAFromBC                                          ; $67c3: $e7
	rst GetHLinHL                                          ; $67c4: $cf
	ccf                                              ; $67c5: $3f
	ld e, a                                          ; $67c6: $5f
	ldh a, [$df]                                     ; $67c7: $f0 $df
	db $ed                                           ; $67c9: $ed
	sbc e                                            ; $67ca: $9b
	db $dd                                           ; $67cb: $dd
	sbc $be                                          ; $67cc: $de $be
	cp $5f                                           ; $67ce: $fe $5f
	ldh a, [$df]                                     ; $67d0: $f0 $df
	cp a                                             ; $67d2: $bf
	sbc e                                            ; $67d3: $9b
	ld a, a                                          ; $67d4: $7f
	ld a, [hl]                                       ; $67d5: $7e
	db $fc                                           ; $67d6: $fc
	di                                               ; $67d7: $f3
	ld e, a                                          ; $67d8: $5f
	ldh a, [$df]                                     ; $67d9: $f0 $df
	cp [hl]                                          ; $67db: $be
	rst SubAFromDE                                          ; $67dc: $df
	ld a, l                                          ; $67dd: $7d
	sbc [hl]                                         ; $67de: $9e
	ei                                               ; $67df: $fb
	ld e, e                                          ; $67e0: $5b
	ret nz                                           ; $67e1: $c0

	rst SubAFromDE                                          ; $67e2: $df
	db $db                                           ; $67e3: $db
	sbc e                                            ; $67e4: $9b
	rst SubAFromHL                                          ; $67e5: $d7
	rst SubAFromBC                                          ; $67e6: $e7
	rst AddAOntoHL                                          ; $67e7: $ef
	xor $5f                                          ; $67e8: $ee $5f
	ldh a, [$7f]                                     ; $67ea: $f0 $7f
	or d                                             ; $67ec: $b2
	sbc e                                            ; $67ed: $9b
	db $eb                                           ; $67ee: $eb
	db $db                                           ; $67ef: $db
	cp l                                             ; $67f0: $bd
	ld a, l                                          ; $67f1: $7d
	ld e, a                                          ; $67f2: $5f
	ldh a, [$d9]                                     ; $67f3: $f0 $d9
	rst $38                                          ; $67f5: $ff
	inc b                                            ; $67f6: $04
	nop                                              ; $67f7: $00
	db $dd                                           ; $67f8: $dd
	ld d, l                                          ; $67f9: $55
	dec l                                            ; $67fa: $2d
	add b                                            ; $67fb: $80
	ld sp, hl                                        ; $67fc: $f9
	reti                                             ; $67fd: $d9


	rst $38                                          ; $67fe: $ff
	daa                                              ; $67ff: $27
	ldh a, [$99]                                     ; $6800: $f0 $99
	xor [hl]                                         ; $6802: $ae

jr_019_6803:
	ld l, l                                          ; $6803: $6d
	db $ed                                           ; $6804: $ed
	db $eb                                           ; $6805: $eb
	rst AddAOntoHL                                          ; $6806: $ef
	rst AddAOntoHL                                          ; $6807: $ef
	ld e, a                                          ; $6808: $5f
	ldh a, [$99]                                     ; $6809: $f0 $99
	ccf                                              ; $680b: $3f
	ld e, a                                          ; $680c: $5f
	ld e, a                                          ; $680d: $5f
	ld l, a                                          ; $680e: $6f
	ld a, a                                          ; $680f: $7f
	ld a, a                                          ; $6810: $7f
	ld e, a                                          ; $6811: $5f
	ldh a, [$99]                                     ; $6812: $f0 $99
	push af                                          ; $6814: $f5
	db $fc                                           ; $6815: $fc
	db $fd                                           ; $6816: $fd
	db $fd                                           ; $6817: $fd
	db $fc                                           ; $6818: $fc
	db $fd                                           ; $6819: $fd
	ld e, a                                          ; $681a: $5f
	ldh a, [$99]                                     ; $681b: $f0 $99
	and c                                            ; $681d: $a1
	cpl                                              ; $681e: $2f
	ld h, c                                          ; $681f: $61
	dec l                                            ; $6820: $2d
	xor l                                            ; $6821: $ad
	pop hl                                           ; $6822: $e1
	rra                                              ; $6823: $1f
	or b                                             ; $6824: $b0
	reti                                             ; $6825: $d9


	rst $38                                          ; $6826: $ff

jr_019_6827:
	inc b                                            ; $6827: $04
	nop                                              ; $6828: $00
	db $dd                                           ; $6829: $dd
	ld d, l                                          ; $682a: $55
	ld [hl], d                                       ; $682b: $72
	nop                                              ; $682c: $00
	ei                                               ; $682d: $fb
	sbc l                                            ; $682e: $9d
	inc c                                            ; $682f: $0c
	ld [bc], a                                       ; $6830: $02
	ld l, a                                          ; $6831: $6f
	cp $9e                                           ; $6832: $fe $9e
	ccf                                              ; $6834: $3f
	ld e, e                                          ; $6835: $5b
	ldh a, [c]                                       ; $6836: $f2
	ld a, a                                          ; $6837: $7f
	db $f4                                           ; $6838: $f4
	sbc e                                            ; $6839: $9b
	inc c                                            ; $683a: $0c
	inc sp                                           ; $683b: $33
	inc c                                            ; $683c: $0c
	add d                                            ; $683d: $82
	ld l, a                                          ; $683e: $6f
	ldh a, [$9d]                                     ; $683f: $f0 $9d
	ld l, h                                          ; $6841: $6c
	ld [de], a                                       ; $6842: $12
	ld a, e                                          ; $6843: $7b
	cp $9a                                           ; $6844: $fe $9a
	sub d                                            ; $6846: $92
	ld l, h                                          ; $6847: $6c
	sub d                                            ; $6848: $92
	ld l, l                                          ; $6849: $6d
	ld [de], a                                       ; $684a: $12
	ei                                               ; $684b: $fb
	sbc l                                            ; $684c: $9d
	ret nz                                           ; $684d: $c0

	jr nz, jr_019_68c7                               ; $684e: $20 $77

	cp $9b                                           ; $6850: $fe $9b
	cp $01                                           ; $6852: $fe $01
	ld [$fb15], a                                    ; $6854: $ea $15 $fb
	sub l                                            ; $6857: $95
	rst $38                                          ; $6858: $ff
	nop                                              ; $6859: $00
	ret nz                                           ; $685a: $c0

	ccf                                              ; $685b: $3f
	add $21                                          ; $685c: $c6 $21
	rst SubAFromDE                                          ; $685e: $df
	jr nz, jr_019_6827                               ; $685f: $20 $c6

	add hl, sp                                       ; $6861: $39
	ei                                               ; $6862: $fb

jr_019_6863:
	sub l                                            ; $6863: $95
	or $09                                           ; $6864: $f6 $09
	ld [hl], $c9                                     ; $6866: $36 $c9
	ld [hl], $09                                     ; $6868: $36 $09
	or [hl]                                          ; $686a: $b6
	ld c, c                                          ; $686b: $49
	ld [hl], $c9                                     ; $686c: $36 $c9
	db $fd                                           ; $686e: $fd
	sbc l                                            ; $686f: $9d
	jp Jump_019_7720                                 ; $6870: $c3 $20 $77


	cp $7f                                           ; $6873: $fe $7f
	ldh [c], a                                       ; $6875: $e2
	sbc e                                            ; $6876: $9b
	jp $c33c                                         ; $6877: $c3 $3c $c3


	jr nz, @-$01                                     ; $687a: $20 $fd

	sub e                                            ; $687c: $93
	jr jr_019_6803                                   ; $687d: $18 $84

	inc e                                            ; $687f: $1c
	add d                                            ; $6880: $82
	inc e                                            ; $6881: $1c
	add d                                            ; $6882: $82
	rst SubAFromDE                                          ; $6883: $df
	jr nz, jr_019_68a4                               ; $6884: $20 $1e

	pop hl                                           ; $6886: $e1
	ld e, $81                                        ; $6887: $1e $81
	db $fd                                           ; $6889: $fd
	sbc l                                            ; $688a: $9d
	jr nc, @+$0a                                     ; $688b: $30 $08

	ld [hl], a                                       ; $688d: $77
	cp $7f                                           ; $688e: $fe $7f
	cp h                                             ; $6890: $bc
	sbc e                                            ; $6891: $9b
	jr nc, jr_019_6863                               ; $6892: $30 $cf

	jr nc, jr_019_689e                               ; $6894: $30 $08

	or $9e                                           ; $6896: $f6 $9e
	add b                                            ; $6898: $80
	ld a, e                                          ; $6899: $7b
	cp $9e                                           ; $689a: $fe $9e
	nop                                              ; $689c: $00
	inc b                                            ; $689d: $04

jr_019_689e:
	nop                                              ; $689e: $00
	call c, $7433                                    ; $689f: $dc $33 $74
	nop                                              ; $68a2: $00
	db $fd                                           ; $68a3: $fd

jr_019_68a4:
	sbc [hl]                                         ; $68a4: $9e
	inc bc                                           ; $68a5: $03
	ld l, e                                          ; $68a6: $6b
	cp $9b                                           ; $68a7: $fe $9b
	ld a, a                                          ; $68a9: $7f
	nop                                              ; $68aa: $00
	inc bc                                           ; $68ab: $03
	ld a, h                                          ; $68ac: $7c
	db $fd                                           ; $68ad: $fd
	sub e                                            ; $68ae: $93
	inc b                                            ; $68af: $04
	add d                                            ; $68b0: $82
	ld [de], a                                       ; $68b1: $12
	adc l                                            ; $68b2: $8d
	ld a, [bc]                                       ; $68b3: $0a
	sub l                                            ; $68b4: $95
	ld [$f887], sp                                   ; $68b5: $08 $87 $f8
	inc b                                            ; $68b8: $04
	nop                                              ; $68b9: $00
	db $fc                                           ; $68ba: $fc
	ei                                               ; $68bb: $fb
	sbc l                                            ; $68bc: $9d
	inc c                                            ; $68bd: $0c
	ld [bc], a                                       ; $68be: $02
	ld h, a                                          ; $68bf: $67
	cp $fb                                           ; $68c0: $fe $fb
	sub l                                            ; $68c2: $95
	jr nc, jr_019_68cd                               ; $68c3: $30 $08

	ld [hl-], a                                      ; $68c5: $32
	add hl, bc                                       ; $68c6: $09

jr_019_68c7:
	ld sp, $300a                                     ; $68c7: $31 $0a $30
	add hl, bc                                       ; $68ca: $09
	jr nc, jr_019_68d5                               ; $68cb: $30 $08

jr_019_68cd:
	ei                                               ; $68cd: $fb
	sub l                                            ; $68ce: $95
	add hl, de                                       ; $68cf: $19
	inc b                                            ; $68d0: $04
	add hl, de                                       ; $68d1: $19
	inc b                                            ; $68d2: $04
	sbc c                                            ; $68d3: $99
	ld b, h                                          ; $68d4: $44

jr_019_68d5:
	reti                                             ; $68d5: $d9


	inc h                                            ; $68d6: $24
	add hl, de                                       ; $68d7: $19
	db $e4                                           ; $68d8: $e4
	ei                                               ; $68d9: $fb
	sub l                                            ; $68da: $95
	add d                                            ; $68db: $82
	ld b, c                                          ; $68dc: $41
	adc c                                            ; $68dd: $89
	ld b, [hl]                                       ; $68de: $46
	add l                                            ; $68df: $85
	ld c, d                                          ; $68e0: $4a
	add h                                            ; $68e1: $84
	ld b, e                                          ; $68e2: $43
	cp $01                                           ; $68e3: $fe $01
	ld l, a                                          ; $68e5: $6f
	jp nz, $6c95                                     ; $68e6: $c2 $95 $6c

	ld [de], a                                       ; $68e9: $12
	ld l, h                                          ; $68ea: $6c
	sub d                                            ; $68eb: $92
	ld l, a                                          ; $68ec: $6f
	sub b                                            ; $68ed: $90
	ld l, h                                          ; $68ee: $6c
	sub e                                            ; $68ef: $93
	ld l, h                                          ; $68f0: $6c
	ld [de], a                                       ; $68f1: $12
	db $fd                                           ; $68f2: $fd
	sbc l                                            ; $68f3: $9d
	ld h, e                                          ; $68f4: $63
	db $10                                           ; $68f5: $10
	ld [hl], a                                       ; $68f6: $77
	cp $99                                           ; $68f7: $fe $99
	ei                                               ; $68f9: $fb
	inc b                                            ; $68fa: $04
	ld h, e                                          ; $68fb: $63
	sbc h                                            ; $68fc: $9c
	ld h, e                                          ; $68fd: $63
	db $10                                           ; $68fe: $10
	ld [hl], e                                       ; $68ff: $73
	ldh [hDisp1_OBP1], a                                     ; $6900: $e0 $94
	add d                                            ; $6902: $82
	adc h                                            ; $6903: $8c
	ld b, d                                          ; $6904: $42
	adc h                                            ; $6905: $8c
	ld b, d                                          ; $6906: $42
	rst $38                                          ; $6907: $ff
	nop                                              ; $6908: $00
	call z, $cc33                                    ; $6909: $cc $33 $cc
	ld [hl+], a                                      ; $690c: $22
	rst FarCall                                          ; $690d: $f7
	sbc c                                            ; $690e: $99
	ret nz                                           ; $690f: $c0

	jr nz, jr_019_6912                               ; $6910: $20 $00

jr_019_6912:
	ldh [rP1], a                                     ; $6912: $e0 $00
	nop                                              ; $6914: $00
	inc b                                            ; $6915: $04
	nop                                              ; $6916: $00
	call c, Call_019_6033                            ; $6917: $dc $33 $60
	nop                                              ; $691a: $00
	push af                                          ; $691b: $f5
	sbc e                                            ; $691c: $9b
	ld a, a                                          ; $691d: $7f
	nop                                              ; $691e: $00
	ld a, a                                          ; $691f: $7f
	ld a, [hl]                                       ; $6920: $7e
	db $fd                                           ; $6921: $fd
	sbc l                                            ; $6922: $9d
	inc e                                            ; $6923: $1c
	inc b                                            ; $6924: $04
	ld l, a                                          ; $6925: $6f
	cp $9b                                           ; $6926: $fe $9b
	call c, $df44                                    ; $6928: $dc $44 $df
	ld b, b                                          ; $692b: $40
	push af                                          ; $692c: $f5
	sbc e                                            ; $692d: $9b
	rrca                                             ; $692e: $0f
	nop                                              ; $692f: $00
	rst $38                                          ; $6930: $ff
	rra                                              ; $6931: $1f
	ld sp, hl                                        ; $6932: $f9

Call_019_6933:
	sub a                                            ; $6933: $97
	inc c                                            ; $6934: $0c
	inc b                                            ; $6935: $04
	ccf                                              ; $6936: $3f
	ld a, [de]                                       ; $6937: $1a
	cp a                                             ; $6938: $bf
	xor e                                            ; $6939: $ab
	sbc [hl]                                         ; $693a: $9e
	adc [hl]                                         ; $693b: $8e
	rst FarCall                                          ; $693c: $f7
	sbc c                                            ; $693d: $99
	rst $38                                          ; $693e: $ff
	nop                                              ; $693f: $00
	rst $38                                          ; $6940: $ff
	db $fc                                           ; $6941: $fc
	dec sp                                           ; $6942: $3b
	ld [$77fb], sp                                   ; $6943: $08 $fb $77
	jp nz, $9c99                                     ; $6946: $c2 $99 $9c

	add h                                            ; $6949: $84
	sbc h                                            ; $694a: $9c
	add h                                            ; $694b: $84
	cp h                                             ; $694c: $bc
	add h                                            ; $694d: $84
	db $fd                                           ; $694e: $fd
	sbc [hl]                                         ; $694f: $9e
	inc bc                                           ; $6950: $03
	ld [hl], e                                       ; $6951: $73
	cp $7b                                           ; $6952: $fe $7b
	and d                                            ; $6954: $a2
	sbc h                                            ; $6955: $9c
	rra                                              ; $6956: $1f
	ld [hl], b                                       ; $6957: $70
	db $10                                           ; $6958: $10
	db $fd                                           ; $6959: $fd
	db $db                                           ; $695a: $db
	add b                                            ; $695b: $80
	sbc c                                            ; $695c: $99
	db $fc                                           ; $695d: $fc
	inc b                                            ; $695e: $04
	db $fc                                           ; $695f: $fc
	db $e4                                           ; $6960: $e4
	dec e                                            ; $6961: $1d
	inc b                                            ; $6962: $04
	db $fd                                           ; $6963: $fd
	sbc e                                            ; $6964: $9b
	jr c, jr_019_696f                                ; $6965: $38 $08

	jr c, jr_019_6971                                ; $6967: $38 $08

	ld l, a                                          ; $6969: $6f
	adc [hl]                                         ; $696a: $8e
	ld a, a                                          ; $696b: $7f
	cp h                                             ; $696c: $bc
	ei                                               ; $696d: $fb
	sub l                                            ; $696e: $95

jr_019_696f:
	ldh [rAUD4LEN], a                                ; $696f: $e0 $20

jr_019_6971:
	ldh a, [hDisp1_SCY]                                     ; $6971: $f0 $90
	ld a, b                                          ; $6973: $78
	ld c, b                                          ; $6974: $48
	jr c, jr_019_69af                                ; $6975: $38 $38

Call_019_6977:
	ld hl, sp+$08                                    ; $6977: $f8 $08
	inc b                                            ; $6979: $04
	nop                                              ; $697a: $00
	call c, Call_019_7c22                            ; $697b: $dc $22 $7c
	nop                                              ; $697e: $00
	db $fd                                           ; $697f: $fd
	sub h                                            ; $6980: $94
	inc b                                            ; $6981: $04
	ld [bc], a                                       ; $6982: $02
	inc bc                                           ; $6983: $03
	inc b                                            ; $6984: $04
	inc bc                                           ; $6985: $03
	nop                                              ; $6986: $00
	ld bc, $0f02                                     ; $6987: $01 $02 $0f
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	ld a, e                                          ; $698c: $7b
	db $fd                                           ; $698d: $fd
	rst $38                                          ; $698e: $ff
	sub e                                            ; $698f: $93
	jr nc, jr_019_699a                               ; $6990: $30 $08

	jr @-$7a                                         ; $6992: $18 $84

	sbc h                                            ; $6994: $9c
	ld b, d                                          ; $6995: $42
	or b                                             ; $6996: $b0
	ld c, [hl]                                       ; $6997: $4e
	rst $38                                          ; $6998: $ff
	nop                                              ; $6999: $00

jr_019_699a:
	ld h, b                                          ; $699a: $60
	sbc a                                            ; $699b: $9f

jr_019_699c:
	db $fd                                           ; $699c: $fd
	sbc d                                            ; $699d: $9a
	db $10                                           ; $699e: $10
	ld [$0813], sp                                   ; $699f: $08 $13 $08
	inc sp                                           ; $69a2: $33
	ld [hl], a                                       ; $69a3: $77
	cp $9c                                           ; $69a4: $fe $9c
	adc b                                            ; $69a6: $88
	inc sp                                           ; $69a7: $33
	adc b                                            ; $69a8: $88
	ei                                               ; $69a9: $fb
	sub l                                            ; $69aa: $95
	ld a, $81                                        ; $69ab: $3e $81
	add b                                            ; $69ad: $80
	ld a, a                                          ; $69ae: $7f

jr_019_69af:
	ret nz                                           ; $69af: $c0

	jr nz, @+$80                                     ; $69b0: $20 $7e

	add c                                            ; $69b2: $81
	jr jr_019_699c                                   ; $69b3: $18 $e7

	db $fd                                           ; $69b5: $fd
	sub e                                            ; $69b6: $93
	ld [hl], b                                       ; $69b7: $70
	ld [$0478], sp                                   ; $69b8: $08 $78 $04
	ld a, h                                          ; $69bb: $7c
	ld [bc], a                                       ; $69bc: $02
	rst AddAOntoHL                                          ; $69bd: $ef
	db $10                                           ; $69be: $10
	rst FarCall                                          ; $69bf: $f7
	ld [$04fb], sp                                   ; $69c0: $08 $fb $04
	ld l, a                                          ; $69c3: $6f
	ret nz                                           ; $69c4: $c0

	ld [hl], a                                       ; $69c5: $77
	cp $7f                                           ; $69c6: $fe $7f
	jp nz, $039c                                     ; $69c8: $c2 $9c $03

	db $fc                                           ; $69cb: $fc
	rst $38                                          ; $69cc: $ff
	db $fc                                           ; $69cd: $fc
	ld a, a                                          ; $69ce: $7f
	and h                                            ; $69cf: $a4
	ld [hl], a                                       ; $69d0: $77
	cp $99                                           ; $69d1: $fe $99
	ld a, a                                          ; $69d3: $7f
	add b                                            ; $69d4: $80
	ld h, b                                          ; $69d5: $60
	sbc a                                            ; $69d6: $9f
	ld h, b                                          ; $69d7: $60
	sub b                                            ; $69d8: $90
	db $fc                                           ; $69d9: $fc
	sbc [hl]                                         ; $69da: $9e
	add b                                            ; $69db: $80
	ld [hl], a                                       ; $69dc: $77
	cp $9a                                           ; $69dd: $fe $9a
	ld hl, sp+$04                                    ; $69df: $f8 $04
	jr @-$1a                                         ; $69e1: $18 $e4

	add hl, de                                       ; $69e3: $19
	ld h, e                                          ; $69e4: $63
	ret nc                                           ; $69e5: $d0

	sbc l                                            ; $69e6: $9d
	jr jr_019_69ed                                   ; $69e7: $18 $04

	ld [hl], a                                       ; $69e9: $77
	cp $6f                                           ; $69ea: $fe $6f
	ret nc                                           ; $69ec: $d0

jr_019_69ed:
	rst $38                                          ; $69ed: $ff
	ld a, a                                          ; $69ee: $7f
	and h                                            ; $69ef: $a4
	ld a, a                                          ; $69f0: $7f
	sub $99                                          ; $69f1: $d6 $99
	jr nc, jr_019_6a3d                               ; $69f3: $30 $48

	nop                                              ; $69f5: $00
	jr c, @-$0e                                      ; $69f6: $38 $f0

	ld [$0004], sp                                   ; $69f8: $08 $04 $00
	call c, Call_019_6933                            ; $69fb: $dc $33 $69
	nop                                              ; $69fe: $00
	db $fd                                           ; $69ff: $fd
	sbc [hl]                                         ; $6a00: $9e
	inc bc                                           ; $6a01: $03
	ld e, e                                          ; $6a02: $5b
	cp $fd                                           ; $6a03: $fe $fd
	reti                                             ; $6a05: $d9


	add b                                            ; $6a06: $80
	sbc e                                            ; $6a07: $9b
	adc h                                            ; $6a08: $8c
	add h                                            ; $6a09: $84
	sbc h                                            ; $6a0a: $9c
	add h                                            ; $6a0b: $84
	ld h, a                                          ; $6a0c: $67
	ldh [$9d], a                                     ; $6a0d: $e0 $9d
	db $e3                                           ; $6a0f: $e3
	jr nz, jr_019_6a81                               ; $6a10: $20 $6f

	cp $5f                                           ; $6a12: $fe $5f
	ldh [$99], a                                     ; $6a14: $e0 $99
	add c                                            ; $6a16: $81
	add b                                            ; $6a17: $80
	rst $38                                          ; $6a18: $ff
	ld [bc], a                                       ; $6a19: $02
	rst $38                                          ; $6a1a: $ff
	cp $fd                                           ; $6a1b: $fe $fd
	sub e                                            ; $6a1d: $93
	ldh a, [rAUD1SWEEP]                              ; $6a1e: $f0 $10
	ld hl, sp+$08                                    ; $6a20: $f8 $08
	db $fc                                           ; $6a22: $fc
	inc b                                            ; $6a23: $04
	rst $38                                          ; $6a24: $ff
	jr nz, @+$01                                     ; $6a25: $20 $ff

	ld de, $08ff                                     ; $6a27: $11 $ff $08
	db $fd                                           ; $6a2a: $fd
	sbc l                                            ; $6a2b: $9d
	ld [hl], b                                       ; $6a2c: $70
	db $10                                           ; $6a2d: $10
	ld [hl], a                                       ; $6a2e: $77
	cp $99                                           ; $6a2f: $fe $99
	rst $38                                          ; $6a31: $ff

jr_019_6a32:
	ld bc, $f9ff                                     ; $6a32: $01 $ff $f9
	rst $38                                          ; $6a35: $ff
	ld bc, $93fd                                     ; $6a36: $01 $fd $93
	inc e                                            ; $6a39: $1c
	inc b                                            ; $6a3a: $04
	db $fc                                           ; $6a3b: $fc
	inc h                                            ; $6a3c: $24

jr_019_6a3d:
	db $fc                                           ; $6a3d: $fc
	inc h                                            ; $6a3e: $24
	rst $38                                          ; $6a3f: $ff
	inc h                                            ; $6a40: $24
	rst $38                                          ; $6a41: $ff
	daa                                              ; $6a42: $27
	db $fc                                           ; $6a43: $fc
	inc h                                            ; $6a44: $24
	db $fd                                           ; $6a45: $fd
	sbc l                                            ; $6a46: $9d
	ld [hl], e                                       ; $6a47: $73
	db $10                                           ; $6a48: $10
	ld [hl], a                                       ; $6a49: $77
	cp $99                                           ; $6a4a: $fe $99
	rst $38                                          ; $6a4c: $ff
	inc b                                            ; $6a4d: $04
	rst $38                                          ; $6a4e: $ff
	sbc h                                            ; $6a4f: $9c
	ld [hl], e                                       ; $6a50: $73
	db $10                                           ; $6a51: $10
	db $fd                                           ; $6a52: $fd
	sub e                                            ; $6a53: $93
	add a                                            ; $6a54: $87
	add c                                            ; $6a55: $81
	rst JumpTable                                          ; $6a56: $c7
	ld b, c                                          ; $6a57: $41
	rst JumpTable                                          ; $6a58: $c7
	ld b, c                                          ; $6a59: $41
	rst $38                                          ; $6a5a: $ff
	nop                                              ; $6a5b: $00
	rst $38                                          ; $6a5c: $ff
	add hl, sp                                       ; $6a5d: $39
	rst SubAFromBC                                          ; $6a5e: $e7
	ld hl, $7ff7                                     ; $6a5f: $21 $f7 $7f
	xor d                                            ; $6a62: $aa
	rst SubAFromDE                                          ; $6a63: $df
	ldh a, [rIE]                                     ; $6a64: $f0 $ff
	inc b                                            ; $6a66: $04
	nop                                              ; $6a67: $00
	call c, Call_019_6455                            ; $6a68: $dc $55 $64
	nop                                              ; $6a6b: $00
	db $fd                                           ; $6a6c: $fd
	sbc l                                            ; $6a6d: $9d
	ld b, $01                                        ; $6a6e: $06 $01
	ld h, a                                          ; $6a70: $67
	cp $9e                                           ; $6a71: $fe $9e
	ld a, a                                          ; $6a73: $7f
	ldh a, [c]                                       ; $6a74: $f2
	sbc l                                            ; $6a75: $9d
	rst SubAFromBC                                          ; $6a76: $e7
	db $10                                           ; $6a77: $10
	db $fd                                           ; $6a78: $fd
	sbc l                                            ; $6a79: $9d
	ld h, b                                          ; $6a7a: $60
	db $10                                           ; $6a7b: $10
	ld h, a                                          ; $6a7c: $67
	cp $9d                                           ; $6a7d: $fe $9d
	cp $01                                           ; $6a7f: $fe $01

jr_019_6a81:
	ei                                               ; $6a81: $fb
	sbc l                                            ; $6a82: $9d
	add hl, de                                       ; $6a83: $19
	inc b                                            ; $6a84: $04
	ld [hl], a                                       ; $6a85: $77
	cp $9b                                           ; $6a86: $fe $9b
	add hl, sp                                       ; $6a88: $39
	inc b                                            ; $6a89: $04
	jr nc, jr_019_6a99                               ; $6a8a: $30 $0d

	ei                                               ; $6a8c: $fb
	sub l                                            ; $6a8d: $95
	adc a                                            ; $6a8e: $8f
	ld b, b                                          ; $6a8f: $40
	adc h                                            ; $6a90: $8c
	ld b, e                                          ; $6a91: $43
	adc h                                            ; $6a92: $8c
	ld b, d                                          ; $6a93: $42
	call $cc22                                       ; $6a94: $cd $22 $cc
	inc hl                                           ; $6a97: $23
	ei                                               ; $6a98: $fb

jr_019_6a99:
	sub l                                            ; $6a99: $95
	rst $38                                          ; $6a9a: $ff
	nop                                              ; $6a9b: $00
	inc bc                                           ; $6a9c: $03
	db $fc                                           ; $6a9d: $fc
	ld h, e                                          ; $6a9e: $63
	db $10                                           ; $6a9f: $10
	ei                                               ; $6aa0: $fb
	inc b                                            ; $6aa1: $04
	ld h, e                                          ; $6aa2: $63
	sbc h                                            ; $6aa3: $9c
	ei                                               ; $6aa4: $fb
	sub l                                            ; $6aa5: $95
	inc c                                            ; $6aa6: $0c
	add d                                            ; $6aa7: $82
	inc c                                            ; $6aa8: $0c
	add d                                            ; $6aa9: $82
	jr jr_019_6a32                                   ; $6aaa: $18 $86

	dec de                                           ; $6aac: $1b
	add h                                            ; $6aad: $84
	inc sp                                           ; $6aae: $33
	adc h                                            ; $6aaf: $8c
	ld sp, hl                                        ; $6ab0: $f9
	ld a, a                                          ; $6ab1: $7f
	sub [hl]                                         ; $6ab2: $96
	sbc c                                            ; $6ab3: $99
	dec de                                           ; $6ab4: $1b
	ld h, h                                          ; $6ab5: $64
	dec de                                           ; $6ab6: $1b
	add h                                            ; $6ab7: $84
	dec de                                           ; $6ab8: $1b
	add h                                            ; $6ab9: $84
	db $fd                                           ; $6aba: $fd
	sbc [hl]                                         ; $6abb: $9e
	inc bc                                           ; $6abc: $03
	ld [hl], a                                       ; $6abd: $77
	cp $9e                                           ; $6abe: $fe $9e
	add b                                            ; $6ac0: $80
	ld [hl], a                                       ; $6ac1: $77
	cp $9d                                           ; $6ac2: $fe $9d
	rlca                                             ; $6ac4: $07
	add b                                            ; $6ac5: $80
	db $fc                                           ; $6ac6: $fc
	ld a, a                                          ; $6ac7: $7f
	ld a, [$fe6b]                                    ; $6ac8: $fa $6b $fe
	sbc l                                            ; $6acb: $9d
	add b                                            ; $6acc: $80
	ld b, b                                          ; $6acd: $40
	inc b                                            ; $6ace: $04
	nop                                              ; $6acf: $00
	call c, Call_019_5233                            ; $6ad0: $dc $33 $52
	nop                                              ; $6ad3: $00
	push af                                          ; $6ad4: $f5
	sbc [hl]                                         ; $6ad5: $9e
	ld a, a                                          ; $6ad6: $7f
	ld [hl], e                                       ; $6ad7: $73
	db $fd                                           ; $6ad8: $fd
	db $fd                                           ; $6ad9: $fd
	sub l                                            ; $6ada: $95
	jr nc, @+$0a                                     ; $6adb: $30 $08

	ld c, e                                          ; $6add: $4b
	inc [hl]                                         ; $6ade: $34

jr_019_6adf:
	ld c, b                                          ; $6adf: $48
	daa                                              ; $6ae0: $27
	ldh a, [$0c]                                     ; $6ae1: $f0 $0c
	rst JumpTable                                          ; $6ae3: $c7
	jr c, jr_019_6adf                                ; $6ae4: $38 $f9

	sub a                                            ; $6ae6: $97
	ld hl, sp+$04                                    ; $6ae7: $f8 $04
	nop                                              ; $6ae9: $00
	db $fc                                           ; $6aea: $fc
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	db $fc                                           ; $6aed: $fc
	ld [bc], a                                       ; $6aee: $02
	ld l, a                                          ; $6aef: $6f
	ldh [c], a                                       ; $6af0: $e2
	sub l                                            ; $6af1: $95
	jr c, jr_019_6af8                                ; $6af2: $38 $04

	jr @+$26                                         ; $6af4: $18 $24

	inc c                                            ; $6af6: $0c
	ld [de], a                                       ; $6af7: $12

jr_019_6af8:
	inc c                                            ; $6af8: $0c
	ld [bc], a                                       ; $6af9: $02
	nop                                              ; $6afa: $00
	ld c, $fd                                        ; $6afb: $0e $fd
	sbc l                                            ; $6afd: $9d
	ld b, $01                                        ; $6afe: $06 $01
	ld h, a                                          ; $6b00: $67
	cp $9e                                           ; $6b01: $fe $9e
	rlca                                             ; $6b03: $07
	ld a, [$019e]                                    ; $6b04: $fa $9e $01
	ld l, e                                          ; $6b07: $6b
	cp $9d                                           ; $6b08: $fe $9d
	ld sp, hl                                        ; $6b0a: $f9
	inc b                                            ; $6b0b: $04
	ei                                               ; $6b0c: $fb
	sbc l                                            ; $6b0d: $9d
	add [hl]                                         ; $6b0e: $86
	ld b, c                                          ; $6b0f: $41
	ld h, a                                          ; $6b10: $67
	cp $fb                                           ; $6b11: $fe $fb
	ld h, a                                          ; $6b13: $67
	ret nc                                           ; $6b14: $d0

	ld l, a                                          ; $6b15: $6f
	sub c                                            ; $6b16: $91
	ld h, a                                          ; $6b17: $67
	jp nc, $fe7f                                     ; $6b18: $d2 $7f $fe

	sbc l                                            ; $6b1b: $9d
	pop hl                                           ; $6b1c: $e1
	db $10                                           ; $6b1d: $10
	db $fd                                           ; $6b1e: $fd
	sbc l                                            ; $6b1f: $9d
	add b                                            ; $6b20: $80
	ld b, b                                          ; $6b21: $40
	ld e, a                                          ; $6b22: $5f
	cp $04                                           ; $6b23: $fe $04
	nop                                              ; $6b25: $00
	call c, Call_019_6077                            ; $6b26: $dc $77 $60
	nop                                              ; $6b29: $00
	ei                                               ; $6b2a: $fb
	sbc l                                            ; $6b2b: $9d
	ld b, $01                                        ; $6b2c: $06 $01
	ld l, a                                          ; $6b2e: $6f
	cp $9e                                           ; $6b2f: $fe $9e
	ld a, a                                          ; $6b31: $7f
	ld hl, sp-$62                                    ; $6b32: $f8 $9e
	inc bc                                           ; $6b34: $03
	ld [hl], e                                       ; $6b35: $73
	db $fd                                           ; $6b36: $fd
	sbc l                                            ; $6b37: $9d
	rst FarCall                                          ; $6b38: $f7
	ld [$97f9], sp                                   ; $6b39: $08 $f9 $97
	ld hl, sp+$04                                    ; $6b3c: $f8 $04
	nop                                              ; $6b3e: $00
	db $fc                                           ; $6b3f: $fc
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	db $fc                                           ; $6b42: $fc
	ld [bc], a                                       ; $6b43: $02
	ld l, a                                          ; $6b44: $6f
	db $e4                                           ; $6b45: $e4
	ld e, a                                          ; $6b46: $5f
	cp $fd                                           ; $6b47: $fe $fd
	sbc l                                            ; $6b49: $9d
	inc c                                            ; $6b4a: $0c
	add d                                            ; $6b4b: $82
	ld h, a                                          ; $6b4c: $67
	cp $9d                                           ; $6b4d: $fe $9d
	rrca                                             ; $6b4f: $0f
	add b                                            ; $6b50: $80
	ei                                               ; $6b51: $fb
	sbc [hl]                                         ; $6b52: $9e
	ld bc, $fe6b                                     ; $6b53: $01 $6b $fe
	sbc l                                            ; $6b56: $9d
	ld sp, hl                                        ; $6b57: $f9
	inc b                                            ; $6b58: $04
	ld h, a                                          ; $6b59: $67
	jp nz, $8c97                                     ; $6b5a: $c2 $97 $8c

	ld [hl], d                                       ; $6b5d: $72
	add [hl]                                         ; $6b5e: $86
	ld c, c                                          ; $6b5f: $49
	add [hl]                                         ; $6b60: $86
	ld b, c                                          ; $6b61: $41
	add [hl]                                         ; $6b62: $86
	ld b, c                                          ; $6b63: $41
	ei                                               ; $6b64: $fb
	sbc c                                            ; $6b65: $99
	rra                                              ; $6b66: $1f
	nop                                              ; $6b67: $00
	ld sp, $600e                                     ; $6b68: $31 $0e $60
	db $10                                           ; $6b6b: $10
	ld [hl], a                                       ; $6b6c: $77
	cp $fd                                           ; $6b6d: $fe $fd
	sub e                                            ; $6b6f: $93
	inc e                                            ; $6b70: $1c
	ld [bc], a                                       ; $6b71: $02
	inc e                                            ; $6b72: $1c
	add d                                            ; $6b73: $82
	adc h                                            ; $6b74: $8c
	ld d, d                                          ; $6b75: $52
	adc $21                                          ; $6b76: $ce $21
	add $29                                          ; $6b78: $c6 $29
	add $21                                          ; $6b7a: $c6 $21
	ld l, e                                          ; $6b7c: $6b
	ldh a, [hDisp1_WX]                                     ; $6b7d: $f0 $96
	ld [bc], a                                       ; $6b7f: $02
	jr jr_019_6b88                                   ; $6b80: $18 $06

	jr c, jr_019_6b88                                ; $6b82: $38 $04

	jr nc, jr_019_6b92                               ; $6b84: $30 $0c

	jr nc, jr_019_6b90                               ; $6b86: $30 $08

jr_019_6b88:
	inc b                                            ; $6b88: $04
	nop                                              ; $6b89: $00
	call c, $8d33                                    ; $6b8a: $dc $33 $8d
	nop                                              ; $6b8d: $00
	add e                                            ; $6b8e: $83
	inc c                                            ; $6b8f: $0c

jr_019_6b90:
	inc sp                                           ; $6b90: $33
	inc c                                            ; $6b91: $0c

jr_019_6b92:
	ld [bc], a                                       ; $6b92: $02
	ld c, $01                                        ; $6b93: $0e $01
	rra                                              ; $6b95: $1f
	nop                                              ; $6b96: $00
	rra                                              ; $6b97: $1f
	nop                                              ; $6b98: $00
	dec e                                            ; $6b99: $1d
	ld [bc], a                                       ; $6b9a: $02
	dec e                                            ; $6b9b: $1d
	ld [bc], a                                       ; $6b9c: $02
	inc a                                            ; $6b9d: $3c
	inc bc                                           ; $6b9e: $03
	ccf                                              ; $6b9f: $3f
	add b                                            ; $6ba0: $80
	inc sp                                           ; $6ba1: $33
	inc c                                            ; $6ba2: $0c
	or e                                             ; $6ba3: $b3
	ld c, b                                          ; $6ba4: $48
	or e                                             ; $6ba5: $b3
	ld c, b                                          ; $6ba6: $48
	cp a                                             ; $6ba7: $bf
	ld b, b                                          ; $6ba8: $40
	or e                                             ; $6ba9: $b3
	ld c, h                                          ; $6baa: $4c
	ld [hl], a                                       ; $6bab: $77
	ld hl, sp-$73                                    ; $6bac: $f8 $8d
	ld a, a                                          ; $6bae: $7f
	add b                                            ; $6baf: $80
	ld c, l                                          ; $6bb0: $4d
	or d                                             ; $6bb1: $b2
	ld c, h                                          ; $6bb2: $4c
	and e                                            ; $6bb3: $a3
	ld c, h                                          ; $6bb4: $4c
	and d                                            ; $6bb5: $a2
	dec c                                            ; $6bb6: $0d
	ldh [c], a                                       ; $6bb7: $e2
	ld c, $81                                        ; $6bb8: $0e $81
	ld e, $81                                        ; $6bba: $1e $81
	inc a                                            ; $6bbc: $3c
	add e                                            ; $6bbd: $83
	xor d                                            ; $6bbe: $aa
	ld d, l                                          ; $6bbf: $55
	ld [hl], a                                       ; $6bc0: $77
	cp $8d                                           ; $6bc1: $fe $8d
	ld a, [hl+]                                      ; $6bc3: $2a
	push de                                          ; $6bc4: $d5
	ld l, d                                          ; $6bc5: $6a
	sub l                                            ; $6bc6: $95
	ld l, d                                          ; $6bc7: $6a
	sub l                                            ; $6bc8: $95
	ld c, d                                          ; $6bc9: $4a
	dec [hl]                                         ; $6bca: $35
	ld e, d                                          ; $6bcb: $5a
	dec h                                            ; $6bcc: $25
	rst $38                                          ; $6bcd: $ff
	nop                                              ; $6bce: $00
	ret nz                                           ; $6bcf: $c0

	ccf                                              ; $6bd0: $3f
	rst SubAFromDE                                          ; $6bd1: $df
	jr nz, @-$25                                     ; $6bd2: $20 $d9

jr_019_6bd4:
	ld h, $77                                        ; $6bd4: $26 $77
	db $fc                                           ; $6bd6: $fc
	add h                                            ; $6bd7: $84
	add $39                                          ; $6bd8: $c6 $39
	rst GetHLinHL                                          ; $6bda: $cf

jr_019_6bdb:
	jr nz, jr_019_6bd4                               ; $6bdb: $20 $f7

	ld [$cb34], sp                                   ; $6bdd: $08 $34 $cb
	or h                                             ; $6be0: $b4
	ld c, d                                          ; $6be1: $4a
	or h                                             ; $6be2: $b4
	ld c, d                                          ; $6be3: $4a
	or b                                             ; $6be4: $b0
	ld c, [hl]                                       ; $6be5: $4e
	or b                                             ; $6be6: $b0
	ld c, b                                          ; $6be7: $48
	pop af                                           ; $6be8: $f1
	ld [$08f3], sp                                   ; $6be9: $08 $f3 $08
	jp $ff20                                         ; $6bec: $c3 $20 $ff


	nop                                              ; $6bef: $00
	pop bc                                           ; $6bf0: $c1
	ld a, $c1                                        ; $6bf1: $3e $c1
	ld l, e                                          ; $6bf3: $6b
	ld a, [$fe7f]                                    ; $6bf4: $fa $7f $fe
	adc c                                            ; $6bf7: $89
	rla                                              ; $6bf8: $17
	adc b                                            ; $6bf9: $88
	or $09                                           ; $6bfa: $f6 $09
	sub [hl]                                         ; $6bfc: $96
	ld l, c                                          ; $6bfd: $69
	add a                                            ; $6bfe: $87
	ld e, b                                          ; $6bff: $58
	and $11                                          ; $6c00: $e6 $11
	add [hl]                                         ; $6c02: $86
	ld [hl], c                                       ; $6c03: $71
	add a                                            ; $6c04: $87
	ld b, b                                          ; $6c05: $40
	add b                                            ; $6c06: $80
	ld b, a                                          ; $6c07: $47
	cp $01                                           ; $6c08: $fe $01
	jr nc, jr_019_6bdb                               ; $6c0a: $30 $cf

	jr nc, jr_019_6c16                               ; $6c0c: $30 $08

	ld l, a                                          ; $6c0e: $6f
	ld a, [$dc7f]                                    ; $6c0f: $fa $7f $dc
	ld a, a                                          ; $6c12: $7f
	ld a, [$9cf4]                                    ; $6c13: $fa $f4 $9c

jr_019_6c16:
	add b                                            ; $6c16: $80
	nop                                              ; $6c17: $00
	add b                                            ; $6c18: $80
	inc b                                            ; $6c19: $04
	nop                                              ; $6c1a: $00
	call c, Call_019_7533                            ; $6c1b: $dc $33 $75
	nop                                              ; $6c1e: $00
	sbc c                                            ; $6c1f: $99
	inc bc                                           ; $6c20: $03
	nop                                              ; $6c21: $00
	inc de                                           ; $6c22: $13
	ld [$041b], sp                                   ; $6c23: $08 $1b $04
	ld e, a                                          ; $6c26: $5f
	cp $8d                                           ; $6c27: $fe $8d
	nop                                              ; $6c29: $00
	add b                                            ; $6c2a: $80
	add b                                            ; $6c2b: $80
	ld b, b                                          ; $6c2c: $40
	ret nz                                           ; $6c2d: $c0

	jr nz, jr_019_6c70                               ; $6c2e: $20 $40

	and b                                            ; $6c30: $a0
	ld h, b                                          ; $6c31: $60
	sub b                                            ; $6c32: $90
	ld h, a                                          ; $6c33: $67
	sub b                                            ; $6c34: $90
	ld h, b                                          ; $6c35: $60
	sub a                                            ; $6c36: $97
	ld [hl], b                                       ; $6c37: $70
	adc b                                            ; $6c38: $88
	inc c                                            ; $6c39: $0c
	ld [bc], a                                       ; $6c3a: $02
	ld h, a                                          ; $6c3b: $67
	cp $9d                                           ; $6c3c: $fe $9d
	db $ec                                           ; $6c3e: $ec
	ld [de], a                                       ; $6c3f: $12
	cp a                                             ; $6c40: $bf
	cp $00                                           ; $6c41: $fe $00
	sbc l                                            ; $6c43: $9d
	jr nc, @+$0a                                     ; $6c44: $30 $08

jr_019_6c46:
	ld c, a                                          ; $6c46: $4f
	cp $9c                                           ; $6c47: $fe $9c
	add hl, de                                       ; $6c49: $19
	inc b                                            ; $6c4a: $04
	add hl, de                                       ; $6c4b: $19
	ld e, e                                          ; $6c4c: $5b
	jp nz, $1895                                     ; $6c4d: $c2 $95 $18

	rlca                                             ; $6c50: $07
	add [hl]                                         ; $6c51: $86
	ld a, c                                          ; $6c52: $79
	add [hl]                                         ; $6c53: $86
	ld b, c                                          ; $6c54: $41
	ld b, $c1                                        ; $6c55: $06 $c1
	ld b, $81                                        ; $6c57: $06 $81

jr_019_6c59:
	ld h, a                                          ; $6c59: $67
	cp $83                                           ; $6c5a: $fe $83
	ld a, h                                          ; $6c5c: $7c
	ld [bc], a                                       ; $6c5d: $02
	ld c, a                                          ; $6c5e: $4f
	jr nc, @+$4e                                     ; $6c5f: $30 $4c

	inc hl                                           ; $6c61: $23
	ld c, h                                          ; $6c62: $4c
	ld [hl+], a                                      ; $6c63: $22
	rrca                                             ; $6c64: $0f
	ld h, b                                          ; $6c65: $60
	inc c                                            ; $6c66: $0c
	inc bc                                           ; $6c67: $03
	inc e                                            ; $6c68: $1c
	ld [bc], a                                       ; $6c69: $02
	inc a                                            ; $6c6a: $3c
	ld [bc], a                                       ; $6c6b: $02
	ld h, d                                          ; $6c6c: $62
	ld de, $01fe                                     ; $6c6d: $11 $fe $01

jr_019_6c70:
	ld [hl-], a                                      ; $6c70: $32
	call $0b30                                       ; $6c71: $cd $30 $0b
	db $fc                                           ; $6c74: $fc
	ld [bc], a                                       ; $6c75: $02
	jr nc, jr_019_6c46                               ; $6c76: $30 $ce

	ld [hl], a                                       ; $6c78: $77
	ret nz                                           ; $6c79: $c0

	sbc c                                            ; $6c7a: $99
	rst $38                                          ; $6c7b: $ff
	nop                                              ; $6c7c: $00
	call z, $cc33                                    ; $6c7d: $cc $33 $cc
	ld [hl+], a                                      ; $6c80: $22
	ld h, a                                          ; $6c81: $67
	ld a, [$0c9b]                                    ; $6c82: $fa $9b $0c
	di                                               ; $6c85: $f3
	add b                                            ; $6c86: $80
	ld b, b                                          ; $6c87: $40
	cp a                                             ; $6c88: $bf
	ret nz                                           ; $6c89: $c0

	nop                                              ; $6c8a: $00
	ld l, a                                          ; $6c8b: $6f
	ld a, [$787f]                                    ; $6c8c: $fa $7f $78
	sbc l                                            ; $6c8f: $9d
	nop                                              ; $6c90: $00
	ldh [rDIV], a                                    ; $6c91: $e0 $04
	nop                                              ; $6c93: $00
	call c, $8b33                                    ; $6c94: $dc $33 $8b
	nop                                              ; $6c97: $00
	sbc [hl]                                         ; $6c98: $9e
	ld bc, $01b9                                     ; $6c99: $01 $b9 $01
	ld bc, $0301                                     ; $6c9c: $01 $01 $03
	inc bc                                           ; $6c9f: $03
	inc bc                                           ; $6ca0: $03
	rlca                                             ; $6ca1: $07
	rst SubAFromDE                                          ; $6ca2: $df
	sbc b                                            ; $6ca3: $98
	ld b, a                                          ; $6ca4: $47
	db $fc                                           ; $6ca5: $fc
	ld b, h                                          ; $6ca6: $44
	db $fc                                           ; $6ca7: $fc
	ld c, h                                          ; $6ca8: $4c
	ld hl, sp+$48                                    ; $6ca9: $f8 $48
	ld a, e                                          ; $6cab: $7b
	cp $90                                           ; $6cac: $fe $90
	ret z                                            ; $6cae: $c8

	cp b                                             ; $6caf: $b8
	cp b                                             ; $6cb0: $b8
	adc a                                            ; $6cb1: $8f
	add c                                            ; $6cb2: $81
	ldh a, [hDisp1_SCY]                                     ; $6cb3: $f0 $90
	ld [hl], b                                       ; $6cb5: $70
	db $10                                           ; $6cb6: $10
	ld a, a                                          ; $6cb7: $7f
	db $10                                           ; $6cb8: $10
	ld a, a                                          ; $6cb9: $7f
	rra                                              ; $6cba: $1f
	ld [hl], b                                       ; $6cbb: $70
	db $10                                           ; $6cbc: $10
	ld l, a                                          ; $6cbd: $6f
	cp $df                                           ; $6cbe: $fe $df
	jr jr_019_6c59                                   ; $6cc0: $18 $97

	jr c, @+$0a                                      ; $6cc2: $38 $08

	cp b                                             ; $6cc4: $b8
	adc b                                            ; $6cc5: $88
	cp b                                             ; $6cc6: $b8
	adc b                                            ; $6cc7: $88
	jr c, jr_019_6cd2                                ; $6cc8: $38 $08

	ld l, a                                          ; $6cca: $6f
	cp $97                                           ; $6ccb: $fe $97
	ccf                                              ; $6ccd: $3f
	ld [$013f], sp                  ; $6cce: $08 $3f $01
	ccf                                              ; $6cd1: $3f

jr_019_6cd2:
	dec bc                                           ; $6cd2: $0b
	ld a, $0e                                        ; $6cd3: $3e $0e
	ld h, a                                          ; $6cd5: $67
	ldh a, [$9d]                                     ; $6cd6: $f0 $9d
	cp h                                             ; $6cd8: $bc
	adc h                                            ; $6cd9: $8c
	ld [hl], a                                       ; $6cda: $77
	db $e4                                           ; $6cdb: $e4
	sbc e                                            ; $6cdc: $9b
	ld a, b                                          ; $6cdd: $78
	ld [$1878], sp                                   ; $6cde: $08 $78 $18
	ld [hl], a                                       ; $6ce1: $77
	jp nc, $f09e                                     ; $6ce2: $d2 $9e $f0

	ld h, e                                          ; $6ce5: $63
	call nz, Call_019_7f80                           ; $6ce6: $c4 $80 $7f
	ld h, b                                          ; $6ce9: $60
	rra                                              ; $6cea: $1f
	ld [de], a                                       ; $6ceb: $12
	rrca                                             ; $6cec: $0f
	ld [bc], a                                       ; $6ced: $02
	rrca                                             ; $6cee: $0f
	ld [bc], a                                       ; $6cef: $02
	db $fd                                           ; $6cf0: $fd
	inc h                                            ; $6cf1: $24
	db $fd                                           ; $6cf2: $fd
	db $e4                                           ; $6cf3: $e4
	dec e                                            ; $6cf4: $1d
	inc b                                            ; $6cf5: $04
	dec e                                            ; $6cf6: $1d
	inc b                                            ; $6cf7: $04
	db $fd                                           ; $6cf8: $fd
	inc e                                            ; $6cf9: $1c
	pop af                                           ; $6cfa: $f1
	ld [hl], b                                       ; $6cfb: $70
	pop bc                                           ; $6cfc: $c1
	ld b, b                                          ; $6cfd: $40
	pop bc                                           ; $6cfe: $c1
	ld b, b                                          ; $6cff: $40
	rst $38                                          ; $6d00: $ff
	ld [hl], e                                       ; $6d01: $73
	adc $42                                          ; $6d02: $ce $42
	adc $42                                          ; $6d04: $ce $42
	rst GetHLinHL                                          ; $6d06: $cf
	adc [hl]                                         ; $6d07: $8e
	ld c, c                                          ; $6d08: $49
	rst $38                                          ; $6d09: $ff
	ld bc, $61ff                                     ; $6d0a: $01 $ff $61
	rst SubAFromDE                                          ; $6d0d: $df
	ld b, b                                          ; $6d0e: $40
	rst SubAFromDE                                          ; $6d0f: $df
	ld b, b                                          ; $6d10: $40
	ld hl, sp-$08                                    ; $6d11: $f8 $f8
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	ld h, b                                          ; $6d15: $60
	jr nz, jr_019_6d88                               ; $6d16: $20 $70

	db $10                                           ; $6d18: $10
	ld a, e                                          ; $6d19: $7b
	cp [hl]                                          ; $6d1a: $be
	sbc d                                            ; $6d1b: $9a
	ld [$98f8], sp                                   ; $6d1c: $08 $f8 $98
	ldh a, [rAUD1SWEEP]                              ; $6d1f: $f0 $10
	inc b                                            ; $6d21: $04
	nop                                              ; $6d22: $00
	call c, $9022                                    ; $6d23: $dc $22 $90
	nop                                              ; $6d26: $00
	rst $38                                          ; $6d27: $ff
	sbc [hl]                                         ; $6d28: $9e
	rrca                                             ; $6d29: $0f
	ld e, e                                          ; $6d2a: $5b
	db $fd                                           ; $6d2b: $fd
	sub a                                            ; $6d2c: $97
	rra                                              ; $6d2d: $1f
	nop                                              ; $6d2e: $00
	ld h, b                                          ; $6d2f: $60
	db $10                                           ; $6d30: $10
	rst $38                                          ; $6d31: $ff
	nop                                              ; $6d32: $00
	ld h, b                                          ; $6d33: $60
	sbc a                                            ; $6d34: $9f
	ld e, a                                          ; $6d35: $5f
	ld a, [$6f80]                                    ; $6d36: $fa $80 $6f

jr_019_6d39:
	db $10                                           ; $6d39: $10

jr_019_6d3a:
	ld h, e                                          ; $6d3a: $63
	sbc h                                            ; $6d3b: $9c
	ld c, a                                          ; $6d3c: $4f
	or b                                             ; $6d3d: $b0
	adc a                                            ; $6d3e: $8f
	ld h, b                                          ; $6d3f: $60
	rra                                              ; $6d40: $1f
	ret nz                                           ; $6d41: $c0

	rra                                              ; $6d42: $1f
	add b                                            ; $6d43: $80
	scf                                              ; $6d44: $37
	ld [$08f7], sp                                   ; $6d45: $08 $f7 $08
	ld hl, sp+$04                                    ; $6d48: $f8 $04
	add hl, de                                       ; $6d4a: $19
	db $e4                                           ; $6d4b: $e4
	add hl, de                                       ; $6d4c: $19
	add h                                            ; $6d4d: $84
	add hl, de                                       ; $6d4e: $19
	add h                                            ; $6d4f: $84
	sbc c                                            ; $6d50: $99
	ld b, h                                          ; $6d51: $44
	sbc e                                            ; $6d52: $9b
	ld b, h                                          ; $6d53: $44
	sbc d                                            ; $6d54: $9a
	ld b, l                                          ; $6d55: $45
	sbc d                                            ; $6d56: $9a
	sub d                                            ; $6d57: $92
	ld b, l                                          ; $6d58: $45
	db $db                                           ; $6d59: $db
	inc h                                            ; $6d5a: $24
	rst $38                                          ; $6d5b: $ff
	nop                                              ; $6d5c: $00
	call z, $cc33                                    ; $6d5d: $cc $33 $cc
	ld [hl+], a                                      ; $6d60: $22
	db $fc                                           ; $6d61: $fc
	ld [bc], a                                       ; $6d62: $02
	call z, Call_019_7732                            ; $6d63: $cc $32 $77
	ld a, [$cf99]                                    ; $6d66: $fa $99 $cf
	jr nc, jr_019_6d3a                               ; $6d69: $30 $cf

	jr nz, jr_019_6d39                               ; $6d6b: $20 $cc

jr_019_6d6d:
	inc hl                                           ; $6d6d: $23
	ld l, a                                          ; $6d6e: $6f
	ldh a, [$99]                                     ; $6d6f: $f0 $99
	ret nz                                           ; $6d71: $c0

	ld l, $c0                                        ; $6d72: $2e $c0
	jr nz, @+$71                                     ; $6d74: $20 $6f

	sub b                                            ; $6d76: $90
	ld a, e                                          ; $6d77: $7b
	cp b                                             ; $6d78: $b8
	ld a, a                                          ; $6d79: $7f
	db $fc                                           ; $6d7a: $fc
	sub h                                            ; $6d7b: $94
	db $10                                           ; $6d7c: $10
	rra                                              ; $6d7d: $1f
	ld h, b                                          ; $6d7e: $60
	dec c                                            ; $6d7f: $0d
	ld [de], a                                       ; $6d80: $12
	dec c                                            ; $6d81: $0d
	ld [bc], a                                       ; $6d82: $02
	dec c                                            ; $6d83: $0d
	ld [bc], a                                       ; $6d84: $02
	reti                                             ; $6d85: $d9


	inc h                                            ; $6d86: $24
	ld a, e                                          ; $6d87: $7b

jr_019_6d88:
	ret nz                                           ; $6d88: $c0

	ld a, a                                          ; $6d89: $7f
	cp h                                             ; $6d8a: $bc
	add [hl]                                         ; $6d8b: $86
	inc b                                            ; $6d8c: $04
	pop hl                                           ; $6d8d: $e1
	inc e                                            ; $6d8e: $1c
	add c                                            ; $6d8f: $81
	ld [hl], b                                       ; $6d90: $70
	add c                                            ; $6d91: $81
	ld b, b                                          ; $6d92: $40
	add c                                            ; $6d93: $81
	ld b, b                                          ; $6d94: $40
	adc h                                            ; $6d95: $8c
	ld [hl], e                                       ; $6d96: $73
	adc h                                            ; $6d97: $8c
	ld b, d                                          ; $6d98: $42
	adc h                                            ; $6d99: $8c
	ld b, d                                          ; $6d9a: $42
	add [hl]                                         ; $6d9b: $86
	ld c, c                                          ; $6d9c: $49
	cp $01                                           ; $6d9d: $fe $01
	sbc [hl]                                         ; $6d9f: $9e
	ld h, c                                          ; $6da0: $61
	sbc a                                            ; $6da1: $9f
	ld b, b                                          ; $6da2: $40
	sbc a                                            ; $6da3: $9f
	ld b, b                                          ; $6da4: $40
	cp a                                             ; $6da5: $bf
	ld hl, sp+$00                                    ; $6da6: $f8 $00
	sub e                                            ; $6da8: $93
	ld b, b                                          ; $6da9: $40
	jr nz, jr_019_6e0c                               ; $6daa: $20 $60

	db $10                                           ; $6dac: $10
	ld [hl], b                                       ; $6dad: $70
	ld [$0870], sp                                   ; $6dae: $08 $70 $08
	ld h, b                                          ; $6db1: $60
	sbc b                                            ; $6db2: $98
	ldh [rAUD1SWEEP], a                              ; $6db3: $e0 $10
	inc b                                            ; $6db5: $04
	nop                                              ; $6db6: $00
	call c, $9733                                    ; $6db7: $dc $33 $97
	nop                                              ; $6dba: $00
	sub a                                            ; $6dbb: $97
	inc bc                                           ; $6dbc: $03
	nop                                              ; $6dbd: $00
	rst $38                                          ; $6dbe: $ff
	nop                                              ; $6dbf: $00
	rst $38                                          ; $6dc0: $ff
	ld hl, sp+$0f                                    ; $6dc1: $f8 $0f
	nop                                              ; $6dc3: $00
	ld [hl], a                                       ; $6dc4: $77
	cp $8b                                           ; $6dc5: $fe $8b

jr_019_6dc7:
	rra                                              ; $6dc7: $1f
	inc b                                            ; $6dc8: $04
	rra                                              ; $6dc9: $1f
	inc b                                            ; $6dca: $04
	cp a                                             ; $6dcb: $bf
	add h                                            ; $6dcc: $84
	rst $38                                          ; $6dcd: $ff
	rra                                              ; $6dce: $1f
	ldh a, [rSVBK]                                   ; $6dcf: $f0 $70

jr_019_6dd1:
	ret nz                                           ; $6dd1: $c0

	ld b, b                                          ; $6dd2: $40
	ret nz                                           ; $6dd3: $c0

	ld b, b                                          ; $6dd4: $40
	ldh [rAUD4LEN], a                                ; $6dd5: $e0 $20
	ldh [$a0], a                                     ; $6dd7: $e0 $a0
	ldh a, [hDisp1_SCY]                                     ; $6dd9: $f0 $90
	ld a, e                                          ; $6ddb: $7b
	ldh [c], a                                       ; $6ddc: $e2
	adc [hl]                                         ; $6ddd: $8e
	jr c, jr_019_6dc7                                ; $6dde: $38 $e7

	jr nz, jr_019_6dd1                               ; $6de0: $20 $ef

	ld [hl+], a                                      ; $6de2: $22
	rst SubAFromBC                                          ; $6de3: $e7
	ld h, $ff                                        ; $6de4: $26 $ff
	ld [bc], a                                       ; $6de6: $02
	rst $38                                          ; $6de7: $ff
	ld [hl-], a                                      ; $6de8: $32
	rst AddAOntoHL                                          ; $6de9: $ef
	jr nz, jr_019_6d6d                               ; $6dea: $20 $81

	add b                                            ; $6dec: $80

jr_019_6ded:
	jp Jump_019_7b40                                 ; $6ded: $c3 $40 $7b


	db $ec                                           ; $6df0: $ec
	sbc b                                            ; $6df1: $98
	ld a, h                                          ; $6df2: $7c
	db $e3                                           ; $6df3: $e3
	jr nz, jr_019_6ded                               ; $6df4: $20 $f7

	sub b                                            ; $6df6: $90
	rst FarCall                                          ; $6df7: $f7
	sub d                                            ; $6df8: $92
	ld a, e                                          ; $6df9: $7b
	db $ec                                           ; $6dfa: $ec
	sbc [hl]                                         ; $6dfb: $9e
	ld c, b                                          ; $6dfc: $48
	ld a, e                                          ; $6dfd: $7b
	ldh a, [c]                                       ; $6dfe: $f2
	sbc b                                            ; $6dff: $98
	ld h, [hl]                                       ; $6e00: $66
	db $dd                                           ; $6e01: $dd
	ld b, h                                          ; $6e02: $44
	db $fd                                           ; $6e03: $fd
	inc b                                            ; $6e04: $04
	db $fd                                           ; $6e05: $fd
	ld h, h                                          ; $6e06: $64
	ld [hl], a                                       ; $6e07: $77
	ld a, [$ff8b]                                    ; $6e08: $fa $8b $ff
	ld h, c                                          ; $6e0b: $61

jr_019_6e0c:
	rst SubAFromDE                                          ; $6e0c: $df
	ld b, c                                          ; $6e0d: $41
	rst SubAFromDE                                          ; $6e0e: $df
	ld b, a                                          ; $6e0f: $47
	call c, $fc44                                    ; $6e10: $dc $44 $fc
	inc b                                            ; $6e13: $04
	db $fc                                           ; $6e14: $fc
	ld h, h                                          ; $6e15: $64
	call c, $c05c                                    ; $6e16: $dc $5c $c0
	ld b, b                                          ; $6e19: $40
	db $fc                                           ; $6e1a: $fc
	inc b                                            ; $6e1b: $04
	rst $38                                          ; $6e1c: $ff
	ld h, b                                          ; $6e1d: $60
	ld [hl], a                                       ; $6e1e: $77
	ldh a, [hDisp0_OBP1]                                     ; $6e1f: $f0 $87
	rst SubAFromDE                                          ; $6e21: $df
	ret nz                                           ; $6e22: $c0

	rra                                              ; $6e23: $1f
	rlca                                             ; $6e24: $07
	inc a                                            ; $6e25: $3c
	inc b                                            ; $6e26: $04
	ld a, h                                          ; $6e27: $7c
	inc b                                            ; $6e28: $04
	ld [hl], e                                       ; $6e29: $73
	ld de, $01ff                                     ; $6e2a: $11 $ff $01
	rst $38                                          ; $6e2d: $ff
	call $0b3b                                       ; $6e2e: $cd $3b $0b
	cp $02                                           ; $6e31: $fe $02
	cp $ce                                           ; $6e33: $fe $ce
	jr c, @+$0a                                      ; $6e35: $38 $08

	jr c, jr_019_6e41                                ; $6e37: $38 $08

	ld a, e                                          ; $6e39: $7b
	jp nz, $399c                                     ; $6e3a: $c2 $9c $39

	rst SubAFromBC                                          ; $6e3d: $e7
	ld hl, $fa63                                     ; $6e3e: $21 $63 $fa

jr_019_6e41:
	sbc [hl]                                         ; $6e41: $9e
	ld sp, hl                                        ; $6e42: $f9
	ld a, e                                          ; $6e43: $7b
	adc d                                            ; $6e44: $8a
	sbc h                                            ; $6e45: $9c
	ldh [rP1], a                                     ; $6e46: $e0 $00
	nop                                              ; $6e48: $00
	ld l, a                                          ; $6e49: $6f
	ld a, [$f09b]                                    ; $6e4a: $fa $9b $f0
	db $10                                           ; $6e4d: $10
	ldh a, [$f0]                                     ; $6e4e: $f0 $f0
	inc b                                            ; $6e50: $04
	nop                                              ; $6e51: $00
	call c, $8955                                    ; $6e52: $dc $55 $89
	nop                                              ; $6e55: $00
	sbc e                                            ; $6e56: $9b
	ld h, [hl]                                       ; $6e57: $66
	add hl, de                                       ; $6e58: $19
	ld h, [hl]                                       ; $6e59: $66
	ld de, $fe5f                                     ; $6e5a: $11 $5f $fe
	sbc e                                            ; $6e5d: $9b
	ld a, a                                          ; $6e5e: $7f
	nop                                              ; $6e5f: $00
	ld h, [hl]                                       ; $6e60: $66
	sub c                                            ; $6e61: $91
	ld d, a                                          ; $6e62: $57
	ldh a, [$9b]                                     ; $6e63: $f0 $9b
	rst AddAOntoHL                                          ; $6e65: $ef
	db $10                                           ; $6e66: $10
	ld h, [hl]                                       ; $6e67: $66
	sbc c                                            ; $6e68: $99
	ld d, a                                          ; $6e69: $57
	ldh a, [$97]                                     ; $6e6a: $f0 $97

jr_019_6e6c:
	rst $38                                          ; $6e6c: $ff
	nop                                              ; $6e6d: $00
	jr nc, jr_019_6e78                               ; $6e6e: $30 $08

	jr nc, @+$0a                                     ; $6e70: $30 $08

	ld [hl], $09                                     ; $6e72: $36 $09
	ld [hl], a                                       ; $6e74: $77
	jp z, Jump_019_4691                              ; $6e75: $ca $91 $46

jr_019_6e78:
	ld sp, $610e                                     ; $6e78: $31 $0e $61
	inc c                                            ; $6e7b: $0c
	add e                                            ; $6e7c: $83
	rst GetHLinHL                                          ; $6e7d: $cf
	jr nz, jr_019_6e6c                               ; $6e7e: $20 $ec

	inc de                                           ; $6e80: $13
	ld l, l                                          ; $6e81: $6d
	sub d                                            ; $6e82: $92
	ld l, l                                          ; $6e83: $6d
	ld [de], a                                       ; $6e84: $12
	ld [hl], a                                       ; $6e85: $77
	cp $93                                           ; $6e86: $fe $93
	inc c                                            ; $6e88: $0c
	ld [hl], e                                       ; $6e89: $73
	inc c                                            ; $6e8a: $0c
	ld [bc], a                                       ; $6e8b: $02
	rst $38                                          ; $6e8c: $ff
	nop                                              ; $6e8d: $00
	inc bc                                           ; $6e8e: $03
	db $fc                                           ; $6e8f: $fc
	ei                                               ; $6e90: $fb
	inc b                                            ; $6e91: $04
	sbc e                                            ; $6e92: $9b
	ld h, h                                          ; $6e93: $64
	ld [hl], a                                       ; $6e94: $77
	db $fc                                           ; $6e95: $fc
	add b                                            ; $6e96: $80
	ld l, a                                          ; $6e97: $6f
	sub b                                            ; $6e98: $90
	ld a, a                                          ; $6e99: $7f
	nop                                              ; $6e9a: $00
	ld [hl], a                                       ; $6e9b: $77

jr_019_6e9c:
	adc b                                            ; $6e9c: $88
	halt                                             ; $6e9d: $76
	adc c                                            ; $6e9e: $89
	inc a                                            ; $6e9f: $3c
	jp $a21c                                         ; $6ea0: $c3 $1c $a2


	dec sp                                           ; $6ea3: $3b
	add h                                            ; $6ea4: $84
	ld [hl], e                                       ; $6ea5: $73
	adc h                                            ; $6ea6: $8c
	ld a, a                                          ; $6ea7: $7f
	add b                                            ; $6ea8: $80
	dec c                                            ; $6ea9: $0d
	ldh a, [c]                                       ; $6eaa: $f2
	dec de                                           ; $6eab: $1b
	add h                                            ; $6eac: $84
	dec de                                           ; $6ead: $1b
	add h                                            ; $6eae: $84
	inc sp                                           ; $6eaf: $33

jr_019_6eb0:
	inc c                                            ; $6eb0: $0c

jr_019_6eb1:
	scf                                              ; $6eb1: $37
	ld [$9966], sp                                   ; $6eb2: $08 $66 $99
	nop                                              ; $6eb5: $00
	add b                                            ; $6eb6: $80
	rst FarCall                                          ; $6eb7: $f7
	cp a                                             ; $6eb8: $bf
	ld b, b                                          ; $6eb9: $40
	or e                                             ; $6eba: $b3
	ld c, h                                          ; $6ebb: $4c
	rlca                                             ; $6ebc: $07
	add b                                            ; $6ebd: $80
	inc c                                            ; $6ebe: $0c
	add e                                            ; $6ebf: $83
	inc e                                            ; $6ec0: $1c
	add d                                            ; $6ec1: $82
	ld a, b                                          ; $6ec2: $78
	add [hl]                                         ; $6ec3: $86
	ld [hl], b                                       ; $6ec4: $70
	adc h                                            ; $6ec5: $8c
	inc c                                            ; $6ec6: $0c
	ldh a, [c]                                       ; $6ec7: $f2
	inc c                                            ; $6ec8: $0c
	add d                                            ; $6ec9: $82
	inc c                                            ; $6eca: $0c
	add d                                            ; $6ecb: $82
	add b                                            ; $6ecc: $80
	ld b, b                                          ; $6ecd: $40
	ret nz                                           ; $6ece: $c0

	jr nz, jr_019_6eb1                               ; $6ecf: $20 $e0

	db $10                                           ; $6ed1: $10
	ld a, b                                          ; $6ed2: $78
	add h                                            ; $6ed3: $84
	jr c, @+$46                                      ; $6ed4: $38 $44

	sbc c                                            ; $6ed6: $99
	ret nz                                           ; $6ed7: $c0

	inc a                                            ; $6ed8: $3c
	ret nz                                           ; $6ed9: $c0

	jr nz, jr_019_6e9c                               ; $6eda: $20 $c0

	jr nz, jr_019_6ee2                               ; $6edc: $20 $04

	nop                                              ; $6ede: $00
	call c, Call_019_6133                            ; $6edf: $dc $33 $61

jr_019_6ee2:
	add b                                            ; $6ee2: $80
	ld a, [$019e]                                    ; $6ee3: $fa $9e $01
	ld sp, hl                                        ; $6ee6: $f9
	reti                                             ; $6ee7: $d9


	ret nz                                           ; $6ee8: $c0

	sbc [hl]                                         ; $6ee9: $9e
	daa                                              ; $6eea: $27
	jp c, $da20                                      ; $6eeb: $da $20 $da

	inc c                                            ; $6eee: $0c

jr_019_6eef:
	sbc l                                            ; $6eef: $9d
	inc e                                            ; $6ef0: $1c
	ldh a, [c]                                       ; $6ef1: $f2
	jp c, $9502                                      ; $6ef2: $da $02 $95

	rst $38                                          ; $6ef5: $ff
	ld bc, $0301                                     ; $6ef6: $01 $01 $03
	rlca                                             ; $6ef9: $07
	rrca                                             ; $6efa: $0f
	dec e                                            ; $6efb: $1d
	ld a, h                                          ; $6efc: $7c
	nop                                              ; $6efd: $00
	cp $fd                                           ; $6efe: $fe $fd
	adc l                                            ; $6f00: $8d
	ld [bc], a                                       ; $6f01: $02
	inc bc                                           ; $6f02: $03
	add $ce                                          ; $6f03: $c6 $ce
	adc h                                            ; $6f05: $8c
	adc h                                            ; $6f06: $8c
	inc c                                            ; $6f07: $0c
	adc h                                            ; $6f08: $8c
	add b                                            ; $6f09: $80
	jp $2121                                         ; $6f0a: $c3 $21 $21


	ld h, e                                          ; $6f0d: $63
	ld b, d                                          ; $6f0e: $42
	add d                                            ; $6f0f: $82
	ld b, d                                          ; $6f10: $42
	ld c, [hl]                                       ; $6f11: $4e
	jr nz, jr_019_6eef                               ; $6f12: $20 $db

	add hl, de                                       ; $6f14: $19
	sbc h                                            ; $6f15: $9c
	jr jr_019_6eb0                                   ; $6f16: $18 $98

	db $e4                                           ; $6f18: $e4
	call c, $9d04                                    ; $6f19: $dc $04 $9d
	dec b                                            ; $6f1c: $05
	ld b, h                                          ; $6f1d: $44
	db $db                                           ; $6f1e: $db
	add [hl]                                         ; $6f1f: $86
	rst SubAFromDE                                          ; $6f20: $df
	ld b, $db                                        ; $6f21: $06 $db
	ld b, c                                          ; $6f23: $41
	sbc l                                            ; $6f24: $9d
	pop bc                                           ; $6f25: $c1
	ld bc, $60db                                     ; $6f26: $01 $db $60
	rst $38                                          ; $6f29: $ff
	sbc [hl]                                         ; $6f2a: $9e
	rra                                              ; $6f2b: $1f
	call c, $9d10                                    ; $6f2c: $dc $10 $9d
	ld [hl], b                                       ; $6f2f: $70
	nop                                              ; $6f30: $00
	db $db                                           ; $6f31: $db
	ld h, e                                          ; $6f32: $63
	sbc h                                            ; $6f33: $9c
	ld h, a                                          ; $6f34: $67
	ld h, [hl]                                       ; $6f35: $66
	sub b                                            ; $6f36: $90
	db $db                                           ; $6f37: $db
	db $10                                           ; $6f38: $10
	sbc l                                            ; $6f39: $9d
	ld de, $fa80                                     ; $6f3a: $11 $80 $fa
	sbc l                                            ; $6f3d: $9d
	ld b, b                                          ; $6f3e: $40
	ret nz                                           ; $6f3f: $c0

	db $db                                           ; $6f40: $db
	add b                                            ; $6f41: $80
	inc b                                            ; $6f42: $04
	nop                                              ; $6f43: $00

Call_019_6f44:
	call c, Call_019_6977                            ; $6f44: $dc $77 $69
	add b                                            ; $6f47: $80
	reti                                             ; $6f48: $d9


	ld b, $9e                                        ; $6f49: $06 $9e
	ld a, c                                          ; $6f4b: $79
	jp c, $d901                                      ; $6f4c: $da $01 $d9

	jr nc, jr_019_6eef                               ; $6f4f: $30 $9e

	rst GetHLinHL                                          ; $6f51: $cf
	jp c, $da08                                      ; $6f52: $da $08 $da

	inc c                                            ; $6f55: $0c
	sbc l                                            ; $6f56: $9d
	inc e                                            ; $6f57: $1c
	ldh a, [c]                                       ; $6f58: $f2
	jp c, $9e02                                      ; $6f59: $da $02 $9e

	rst $38                                          ; $6f5c: $ff
	sbc $03                                          ; $6f5d: $de $03
	rst SubAFromDE                                          ; $6f5f: $df
	rlca                                             ; $6f60: $07
	rst SubAFromDE                                          ; $6f61: $df
	rrca                                             ; $6f62: $0f
	sbc l                                            ; $6f63: $9d
	nop                                              ; $6f64: $00
	db $fc                                           ; $6f65: $fc
	ei                                               ; $6f66: $fb
	sbc h                                            ; $6f67: $9c
	call z, $1c0c                                    ; $6f68: $cc $0c $1c
	sbc $18                                          ; $6f6b: $de $18
	rst $38                                          ; $6f6d: $ff
	sbc h                                            ; $6f6e: $9c
	inc hl                                           ; $6f6f: $23
	ldh [c], a                                       ; $6f70: $e2
	add d                                            ; $6f71: $82
	sbc $84                                          ; $6f72: $de $84
	sbc l                                            ; $6f74: $9d
	sbc h                                            ; $6f75: $9c
	add b                                            ; $6f76: $80
	reti                                             ; $6f77: $d9


	ld sp, $cc9e                                     ; $6f78: $31 $9e $cc
	jp c, $dd08                                      ; $6f7b: $da $08 $dd

	add [hl]                                         ; $6f7e: $86
	sbc e                                            ; $6f7f: $9b
	adc [hl]                                         ; $6f80: $8e
	db $fc                                           ; $6f81: $fc
	adc [hl]                                         ; $6f82: $8e
	add [hl]                                         ; $6f83: $86
	call c, $9c41                                    ; $6f84: $dc $41 $9c
	inc bc                                           ; $6f87: $03
	ld [hl], c                                       ; $6f88: $71
	ld c, c                                          ; $6f89: $49
	reti                                             ; $6f8a: $d9


	ld h, b                                          ; $6f8b: $60
	reti                                             ; $6f8c: $d9


	db $10                                           ; $6f8d: $10
	sbc [hl]                                         ; $6f8e: $9e
	rst JumpTable                                          ; $6f8f: $c7
	sbc $c3                                          ; $6f90: $de $c3
	rst SubAFromDE                                          ; $6f92: $df
	pop bc                                           ; $6f93: $c1
	rst SubAFromDE                                          ; $6f94: $df
	jp $209a                                         ; $6f95: $c3 $9a $20


	inc h                                            ; $6f98: $24
	jr nz, jr_019_6fbb                               ; $6f99: $20 $20

	ld [hl+], a                                      ; $6f9b: $22
	sbc $20                                          ; $6f9c: $de $20
	adc a                                            ; $6f9e: $8f
	ld [hl], b                                       ; $6f9f: $70
	ld h, b                                          ; $6fa0: $60
	ldh [$e0], a                                     ; $6fa1: $e0 $e0
	ret nz                                           ; $6fa3: $c0

	ret nz                                           ; $6fa4: $c0

	ldh [$e0], a                                     ; $6fa5: $e0 $e0
	adc b                                            ; $6fa7: $88
	sbc b                                            ; $6fa8: $98
	db $10                                           ; $6fa9: $10
	db $10                                           ; $6faa: $10
	jr nc, jr_019_6fcd                               ; $6fab: $30 $20

	db $10                                           ; $6fad: $10
	db $10                                           ; $6fae: $10
	inc b                                            ; $6faf: $04
	nop                                              ; $6fb0: $00
	call c, $9633                                    ; $6fb1: $dc $33 $96
	nop                                              ; $6fb4: $00
	sbc l                                            ; $6fb5: $9d
	inc l                                            ; $6fb6: $2c
	ld [de], a                                       ; $6fb7: $12
	ld h, a                                          ; $6fb8: $67
	cp $91                                           ; $6fb9: $fe $91

jr_019_6fbb:
	inc c                                            ; $6fbb: $0c
	ld [hl-], a                                      ; $6fbc: $32
	inc c                                            ; $6fbd: $0c
	ld [bc], a                                       ; $6fbe: $02
	inc c                                            ; $6fbf: $0c
	ld [bc], a                                       ; $6fc0: $02
	cp a                                             ; $6fc1: $bf
	ld b, b                                          ; $6fc2: $40
	or e                                             ; $6fc3: $b3
	ld c, h                                          ; $6fc4: $4c
	or e                                             ; $6fc5: $b3
	ld c, b                                          ; $6fc6: $48
	or e                                             ; $6fc7: $b3
	ld c, b                                          ; $6fc8: $48
	ld [hl], a                                       ; $6fc9: $77
	ld hl, sp-$6d                                    ; $6fca: $f8 $93
	add b                                            ; $6fcc: $80

jr_019_6fcd:
	ld a, e                                          ; $6fcd: $7b
	rst $38                                          ; $6fce: $ff
	nop                                              ; $6fcf: $00
	ld a, h                                          ; $6fd0: $7c
	add d                                            ; $6fd1: $82
	inc l                                            ; $6fd2: $2c
	jp nc, $b20c                                     ; $6fd3: $d2 $0c $b2

	inc c                                            ; $6fd6: $0c
	add d                                            ; $6fd7: $82
	ld h, a                                          ; $6fd8: $67
	cp $80                                           ; $6fd9: $fe $80
	ld e, d                                          ; $6fdb: $5a
	dec h                                            ; $6fdc: $25
	sub d                                            ; $6fdd: $92

jr_019_6fde:
	ld l, l                                          ; $6fde: $6d
	ld [de], a                                       ; $6fdf: $12
	call $0916                                       ; $6fe0: $cd $16 $09
	ld [hl], $09                                     ; $6fe3: $36 $09
	ld h, $19                                        ; $6fe5: $26 $19
	ld c, [hl]                                       ; $6fe7: $4e
	ld sp, $6b04                                     ; $6fe8: $31 $04 $6b
	rst SubAFromDE                                          ; $6feb: $df
	jr nz, jr_019_6fcd                               ; $6fec: $20 $df

	jr nz, @-$08                                     ; $6fee: $20 $f6

	add hl, bc                                       ; $6ff0: $09
	and $19                                          ; $6ff1: $e6 $19
	add $31                                          ; $6ff3: $c6 $31
	ret nz                                           ; $6ff5: $c0

	daa                                              ; $6ff6: $27
	rst $38                                          ; $6ff7: $ff
	nop                                              ; $6ff8: $00
	ret nz                                           ; $6ff9: $c0

	add d                                            ; $6ffa: $82
	ccf                                              ; $6ffb: $3f
	or a                                             ; $6ffc: $b7

jr_019_6ffd:
	ld c, b                                          ; $6ffd: $48

jr_019_6ffe:
	ldh a, [c]                                       ; $6ffe: $f2
	dec c                                            ; $6fff: $0d
	ldh a, [$0b]                                     ; $7000: $f0 $0b
	ld [hl], b                                       ; $7002: $70
	adc b                                            ; $7003: $88
	jr nc, jr_019_704e                               ; $7004: $30 $48

jr_019_7006:
	jr nc, @+$0a                                     ; $7006: $30 $08

	ldh a, [$08]                                     ; $7008: $f0 $08
	jr nc, @-$36                                     ; $700a: $30 $c8

	reti                                             ; $700c: $d9


	inc h                                            ; $700d: $24
	call $c732                                       ; $700e: $cd $32 $c7
	jr z, @-$3d                                      ; $7011: $28 $c1

	ld h, $c1                                        ; $7013: $26 $c1
	jr nz, jr_019_6fde                               ; $7015: $20 $c7

	jr nz, @+$79                                     ; $7017: $20 $77

	ld a, [$9f80]                                    ; $7019: $fa $80 $9f
	ld b, b                                          ; $701c: $40
	add b                                            ; $701d: $80
	ld e, a                                          ; $701e: $5f
	add b                                            ; $701f: $80

jr_019_7020:
	ld b, b                                          ; $7020: $40
	add e                                            ; $7021: $83
	ld b, b                                          ; $7022: $40
	adc a                                            ; $7023: $8f
	ld b, b                                          ; $7024: $40
	cp h                                             ; $7025: $bc
	ld b, e                                          ; $7026: $43
	add b                                            ; $7027: $80
	ld a, [hl]                                       ; $7028: $7e
	add b                                            ; $7029: $80
	ld b, b                                          ; $702a: $40
	rst $38                                          ; $702b: $ff
	nop                                              ; $702c: $00
	jr nc, jr_019_6ffe                               ; $702d: $30 $cf

	db $fc                                           ; $702f: $fc
	ld [bc], a                                       ; $7030: $02
	rst $38                                          ; $7031: $ff
	nop                                              ; $7032: $00
	or a                                             ; $7033: $b7
	ld c, b                                          ; $7034: $48
	jr nc, jr_019_7006                               ; $7035: $30 $cf

	ld [hl], b                                       ; $7037: $70
	ld [$9c30], sp                                   ; $7038: $08 $30 $9c
	ld c, b                                          ; $703b: $48
	ret nz                                           ; $703c: $c0

	jr nz, jr_019_6ffd                               ; $703d: $20 $be

	ldh [rP1], a                                     ; $703f: $e0 $00
	add b                                            ; $7041: $80
	ld a, a                                          ; $7042: $7f
	ld hl, sp+$7f                                    ; $7043: $f8 $7f
	jp nz, $f8bf                                     ; $7045: $c2 $bf $f8

	nop                                              ; $7048: $00
	inc b                                            ; $7049: $04
	nop                                              ; $704a: $00
	call c, $8d33                                    ; $704b: $dc $33 $8d

jr_019_704e:
	add b                                            ; $704e: $80
	sbc d                                            ; $704f: $9a
	inc de                                           ; $7050: $13
	inc sp                                           ; $7051: $33

jr_019_7052:
	inc sp                                           ; $7052: $33
	inc hl                                           ; $7053: $23
	ld h, e                                          ; $7054: $63
	sbc $03                                          ; $7055: $de $03
	sub [hl]                                         ; $7057: $96
	inc c                                            ; $7058: $0c
	ld [$1808], sp                                   ; $7059: $08 $08 $18
	db $10                                           ; $705c: $10
	ld [hl], b                                       ; $705d: $70
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	ld [hl], b                                       ; $7060: $70
	db $dd                                           ; $7061: $dd

jr_019_7062:
	jr nc, jr_019_7062                               ; $7062: $30 $fe

	sbc l                                            ; $7064: $9d
	adc b                                            ; $7065: $88
	ret z                                            ; $7066: $c8

	sbc $88                                          ; $7067: $de $88
	sbc h                                            ; $7069: $9c
	cp b                                             ; $706a: $b8
	add b                                            ; $706b: $80
	add b                                            ; $706c: $80
	ei                                               ; $706d: $fb
	rst SubAFromDE                                          ; $706e: $df
	rlca                                             ; $706f: $07
	ld sp, hl                                        ; $7070: $f9
	sbc [hl]                                         ; $7071: $9e
	jr nc, jr_019_7052                               ; $7072: $30 $de

	ld h, b                                          ; $7074: $60
	rst SubAFromDE                                          ; $7075: $df
	ret nz                                           ; $7076: $c0

	sbc l                                            ; $7077: $9d
	add e                                            ; $7078: $83
	inc bc                                           ; $7079: $03
	ld a, e                                          ; $707a: $7b
	jp nc, $1099                                     ; $707b: $d2 $99 $10

	jr nc, jr_019_70a0                               ; $707e: $30 $20

	ld h, b                                          ; $7080: $60
	ret nz                                           ; $7081: $c0

	jr jr_019_7062                                   ; $7082: $18 $de

	jr nc, jr_019_7020                               ; $7084: $30 $9a

	ld h, b                                          ; $7086: $60
	ldh [$c0], a                                     ; $7087: $e0 $c0
	add b                                            ; $7089: $80
	inc b                                            ; $708a: $04
	ld [hl], e                                       ; $708b: $73
	cp a                                             ; $708c: $bf
	ld a, a                                          ; $708d: $7f
	push af                                          ; $708e: $f5
	sbc $06                                          ; $708f: $de $06
	sbc d                                            ; $7091: $9a
	ld c, $0c                                        ; $7092: $0e $0c
	inc e                                            ; $7094: $1c
	ld hl, sp-$10                                    ; $7095: $f8 $f0
	db $dd                                           ; $7097: $dd
	ld bc, $0399                                     ; $7098: $01 $99 $03
	ld [bc], a                                       ; $709b: $02
	ld b, $0c                                        ; $709c: $06 $0c
	ld a, a                                          ; $709e: $7f
	dec l                                            ; $709f: $2d

jr_019_70a0:
	db $db                                           ; $70a0: $db
	inc c                                            ; $70a1: $0c
	sbc h                                            ; $70a2: $9c
	nop                                              ; $70a3: $00
	ld d, d                                          ; $70a4: $52
	inc sp                                           ; $70a5: $33
	call c, $8002                                    ; $70a6: $dc $02 $80
	inc sp                                           ; $70a9: $33
	or b                                             ; $70aa: $b0
	ldh a, [$30]                                     ; $70ab: $f0 $30
	ld sp, $30f7                                     ; $70ad: $31 $f7 $30
	jr nc, @-$76                                     ; $70b0: $30 $88

	ld c, e                                          ; $70b2: $4b
	ld [$08c8], sp                                   ; $70b3: $08 $c8 $08
	ld [$08cf], sp                                   ; $70b6: $08 $cf $08
	rst $38                                          ; $70b9: $ff
	inc c                                            ; $70ba: $0c
	rra                                              ; $70bb: $1f
	ld a, a                                          ; $70bc: $7f
	db $fd                                           ; $70bd: $fd
	adc h                                            ; $70be: $8c
	inc e                                            ; $70bf: $1c
	inc c                                            ; $70c0: $0c
	nop                                              ; $70c1: $00
	di                                               ; $70c2: $f3
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	ld [bc], a                                       ; $70c5: $02
	ld [hl], d                                       ; $70c6: $72
	jp nz, $128e                                     ; $70c7: $c2 $8e $12

	ld hl, sp+$00                                    ; $70ca: $f8 $00
	nop                                              ; $70cc: $00
	ret nz                                           ; $70cd: $c0

	ldh a, [$3c]                                     ; $70ce: $f0 $3c
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	inc b                                            ; $70d2: $04
	db $fc                                           ; $70d3: $fc
	add b                                            ; $70d4: $80
	jr nz, jr_019_70df                               ; $70d5: $20 $08

	jp nz, $003e                                     ; $70d7: $c2 $3e $00

	inc b                                            ; $70da: $04
	nop                                              ; $70db: $00
	call c, $9c33                                    ; $70dc: $dc $33 $9c

jr_019_70df:
	add b                                            ; $70df: $80

Jump_019_70e0:
	add b                                            ; $70e0: $80
	rlca                                             ; $70e1: $07
	rrca                                             ; $70e2: $0f
	rrca                                             ; $70e3: $0f
	rra                                              ; $70e4: $1f
	dec e                                            ; $70e5: $1d
	dec a                                            ; $70e6: $3d
	ld a, b                                          ; $70e7: $78
	ld [hl], b                                       ; $70e8: $70
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	ld [bc], a                                       ; $70eb: $02
	ld b, $04                                        ; $70ec: $06 $04
	dec c                                            ; $70ee: $0d
	ld [$8f10], sp                                   ; $70ef: $08 $10 $8f
	adc a                                            ; $70f2: $8f
	jp $c1c1                                         ; $70f3: $c3 $c1 $c1


	db $e3                                           ; $70f6: $e3
	rst $38                                          ; $70f7: $ff
	rst $38                                          ; $70f8: $ff
	add b                                            ; $70f9: $80
	adc h                                            ; $70fa: $8c
	ld b, e                                          ; $70fb: $43
	ld b, c                                          ; $70fc: $41
	ld b, b                                          ; $70fd: $40
	jr nz, @+$22                                     ; $70fe: $20 $20

	sbc h                                            ; $7100: $9c
	ld hl, $f0f0                                     ; $7101: $21 $f0 $f0
	sbc $f8                                          ; $7104: $de $f8
	sub h                                            ; $7106: $94
	ldh [$cf], a                                     ; $7107: $e0 $cf

jr_019_7109:
	adc a                                            ; $7109: $8f
	sub b                                            ; $710a: $90
	db $10                                           ; $710b: $10
	ld [$3808], sp                                   ; $710c: $08 $08 $38
	ld h, b                                          ; $710f: $60
	ret nz                                           ; $7110: $c0

	add b                                            ; $7111: $80
	sbc $38                                          ; $7112: $de $38
	rst SubAFromDE                                          ; $7114: $df
	ld a, b                                          ; $7115: $78
	sbc h                                            ; $7116: $9c
	ldh a, [$f1]                                     ; $7117: $f0 $f1
	pop hl                                           ; $7119: $e1
	db $dd                                           ; $711a: $dd
	ld [$1893], sp                                   ; $711b: $08 $93 $18
	db $10                                           ; $711e: $10
	jr nc, jr_019_7181                               ; $711f: $30 $60

	jr c, jr_019_715b                                ; $7121: $38 $38

	add hl, sp                                       ; $7123: $39
	ld a, c                                          ; $7124: $79
	ld a, c                                          ; $7125: $79
	di                                               ; $7126: $f3
	rst FarCall                                          ; $7127: $f7
	rst SubAFromBC                                          ; $7128: $e7
	ld h, a                                          ; $7129: $67
	ldh a, [$9e]                                     ; $712a: $f0 $9e
	di                                               ; $712c: $f3
	sbc $e3                                          ; $712d: $de $e3
	sub e                                            ; $712f: $93
	rst SubAFromDE                                          ; $7130: $df
	rst $38                                          ; $7131: $ff
	rst $38                                          ; $7132: $ff
	ld sp, hl                                        ; $7133: $f9
	jr nc, jr_019_7156                               ; $7134: $30 $20

	jr nz, jr_019_7198                               ; $7136: $20 $60

	ld b, b                                          ; $7138: $40
	nop                                              ; $7139: $00
	ld c, $f8                                        ; $713a: $0e $f8
	db $dd                                           ; $713c: $dd
	adc a                                            ; $713d: $8f
	sbc e                                            ; $713e: $9b

jr_019_713f:
	rst SubAFromDE                                          ; $713f: $df
	db $dd                                           ; $7140: $dd
	db $fd                                           ; $7141: $fd
	ld sp, hl                                        ; $7142: $f9
	db $dd                                           ; $7143: $dd
	add d                                            ; $7144: $82
	sub a                                            ; $7145: $97
	ld b, [hl]                                       ; $7146: $46
	ld b, h                                          ; $7147: $44
	ld c, h                                          ; $7148: $4c
	add hl, de                                       ; $7149: $19
	pop bc                                           ; $714a: $c1
	pop bc                                           ; $714b: $c1
	reti                                             ; $714c: $d9


	reti                                             ; $714d: $d9


	sbc $df                                          ; $714e: $de $df
	sub [hl]                                         ; $7150: $96
	rst $38                                          ; $7151: $ff
	ld b, b                                          ; $7152: $40
	ld b, b                                          ; $7153: $40
	ld c, b                                          ; $7154: $48
	ld c, b                                          ; $7155: $48

jr_019_7156:
	ld b, h                                          ; $7156: $44
	ld b, h                                          ; $7157: $44
	ld b, l                                          ; $7158: $45
	dec bc                                           ; $7159: $0b
	ld a, e                                          ; $715a: $7b

jr_019_715b:
	push af                                          ; $715b: $f5
	adc a                                            ; $715c: $8f
	rst $38                                          ; $715d: $ff
	di                                               ; $715e: $f3
	add a                                            ; $715f: $87
	sbc a                                            ; $7160: $9f

jr_019_7161:
	inc e                                            ; $7161: $1c
	ld b, h                                          ; $7162: $44
	ld b, h                                          ; $7163: $44
	ld b, $4c                                        ; $7164: $06 $4c
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7166: $f0 $81
	add a                                            ; $7168: $87
	inc e                                            ; $7169: $1c
	ldh a, [$e0]                                     ; $716a: $f0 $e0
	ldh [$de], a                                     ; $716c: $e0 $de
	ld hl, sp-$6b                                    ; $716e: $f8 $95
	ldh a, [rSVBK]                                   ; $7170: $f0 $70
	jr nc, @+$22                                     ; $7172: $30 $20

	ld h, b                                          ; $7174: $60
	jr z, jr_019_717f                                ; $7175: $28 $08

	jr jr_019_7109                                   ; $7177: $18 $90

	jr nc, jr_019_717f                               ; $7179: $30 $04

	nop                                              ; $717b: $00
	call c, $9622                                    ; $717c: $dc $22 $96

jr_019_717f:
	nop                                              ; $717f: $00
	cp [hl]                                          ; $7180: $be

jr_019_7181:
	rra                                              ; $7181: $1f
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	sbc [hl]                                         ; $7184: $9e
	ld bc, $03bf                                     ; $7185: $01 $bf $03
	ld b, $84                                        ; $7188: $06 $84
	ld bc, $030c                                     ; $718a: $01 $0c $03
	jr nc, @+$10                                     ; $718d: $30 $0e

	ld h, b                                          ; $718f: $60
	sbc a                                            ; $7190: $9f
	ld h, b                                          ; $7191: $60
	db $10                                           ; $7192: $10
	ldh a, [$08]                                     ; $7193: $f0 $08
	ld hl, sp+$04                                    ; $7195: $f8 $04
	sbc h                                            ; $7197: $9c

jr_019_7198:
	ld h, d                                          ; $7198: $62
	ld c, $91                                        ; $7199: $0e $91
	rlca                                             ; $719b: $07
	ld [$0403], sp                                   ; $719c: $08 $03 $04
	rst $38                                          ; $719f: $ff
	nop                                              ; $71a0: $00
	ccf                                              ; $71a1: $3f
	ret nz                                           ; $71a2: $c0

	dec sp                                           ; $71a3: $3b
	inc b                                            ; $71a4: $04
	ld [hl], a                                       ; $71a5: $77
	cp $93                                           ; $71a6: $fe $93
	inc sp                                           ; $71a8: $33
	inc c                                            ; $71a9: $0c
	or e                                             ; $71aa: $b3
	ld c, b                                          ; $71ab: $48
	inc sp                                           ; $71ac: $33
	ret z                                            ; $71ad: $c8

	ret c                                            ; $71ae: $d8

	daa                                              ; $71af: $27
	ret c                                            ; $71b0: $d8

	inc h                                            ; $71b1: $24
	ld e, b                                          ; $71b2: $58
	and h                                            ; $71b3: $a4
	ld [hl], a                                       ; $71b4: $77
	cp $83                                           ; $71b5: $fe $83
	jr @-$1a                                         ; $71b7: $18 $e4

	jr c, jr_019_713f                                ; $71b9: $38 $84

	jr jr_019_7161                                   ; $71bb: $18 $a4

	call z, $c032                                    ; $71bd: $cc $32 $c0
	ld l, $c8                                        ; $71c0: $2e $c8
	inc h                                            ; $71c2: $24
	call z, $ce22                                    ; $71c3: $cc $22 $ce
	ld hl, $25da                                     ; $71c6: $21 $da $25
	ldh a, [rIF]                                     ; $71c9: $f0 $0f
	ldh [rAUD2LOW], a                                ; $71cb: $e0 $18
	db $fc                                           ; $71cd: $fc
	ld [bc], a                                       ; $71ce: $02
	call z, $cc32                                    ; $71cf: $cc $32 $cc
	ld [hl+], a                                      ; $71d2: $22
	ld l, a                                          ; $71d3: $6f
	cp $77                                           ; $71d4: $fe $77
	db $f4                                           ; $71d6: $f4
	sbc l                                            ; $71d7: $9d
	dec c                                            ; $71d8: $0d
	ld [bc], a                                       ; $71d9: $02
	ld l, a                                          ; $71da: $6f
	cp $87                                           ; $71db: $fe $87
	add hl, de                                       ; $71dd: $19
	ld b, $19                                        ; $71de: $06 $19
	inc b                                            ; $71e0: $04
	ld sp, $600c                                     ; $71e1: $31 $0c $60
	add hl, de                                       ; $71e4: $19
	add c                                            ; $71e5: $81
	ld b, b                                          ; $71e6: $40
	add c                                            ; $71e7: $81
	ld b, b                                          ; $71e8: $40
	sub c                                            ; $71e9: $91
	ld c, b                                          ; $71ea: $48
	sub c                                            ; $71eb: $91
	ld c, b                                          ; $71ec: $48
	sbc e                                            ; $71ed: $9b
	ld b, h                                          ; $71ee: $44
	sbc e                                            ; $71ef: $9b
	ld b, h                                          ; $71f0: $44
	sbc d                                            ; $71f1: $9a
	ld b, l                                          ; $71f2: $45
	db $f4                                           ; $71f3: $f4
	dec bc                                           ; $71f4: $0b
	ld [hl], a                                       ; $71f5: $77
	ld hl, sp-$7d                                    ; $71f6: $f8 $83
	ld sp, hl                                        ; $71f8: $f9
	ld b, $b3                                        ; $71f9: $06 $b3
	ld c, h                                          ; $71fb: $4c
	inc bc                                           ; $71fc: $03

jr_019_71fd:
	ldh a, [rTMA]                                    ; $71fd: $f0 $06
	add c                                            ; $71ff: $81
	jr @-$77                                         ; $7200: $18 $87

	nop                                              ; $7202: $00
	inc e                                            ; $7203: $1c
	ret nz                                           ; $7204: $c0

	jr nc, @-$3e                                     ; $7205: $30 $c0

	jr nz, @-$7e                                     ; $7207: $20 $80

	ld h, b                                          ; $7209: $60
	ret nc                                           ; $720a: $d0

	jr z, jr_019_71fd                                ; $720b: $28 $f0

	ld [$18e0], sp                                   ; $720d: $08 $e0 $18
	ld h, b                                          ; $7210: $60
	sub b                                            ; $7211: $90
	ld b, b                                          ; $7212: $40
	jr nc, jr_019_7219                               ; $7213: $30 $04

jr_019_7215:
	nop                                              ; $7215: $00
	call c, $9b33                                    ; $7216: $dc $33 $9b

jr_019_7219:
	nop                                              ; $7219: $00
	add b                                            ; $721a: $80
	rra                                              ; $721b: $1f
	inc b                                            ; $721c: $04
	ccf                                              ; $721d: $3f
	inc c                                            ; $721e: $0c
	dec sp                                           ; $721f: $3b
	jr jr_019_7295                                   ; $7220: $18 $73

	db $10                                           ; $7222: $10
	di                                               ; $7223: $f3
	jr nc, jr_019_7215                               ; $7224: $30 $ef

	ld h, b                                          ; $7226: $60
	rst GetHLinHL                                          ; $7227: $cf
	call z, $0003                                    ; $7228: $cc $03 $00
	ldh a, [$d0]                                     ; $722b: $f0 $d0
	cp b                                             ; $722d: $b8
	adc b                                            ; $722e: $88
	cp h                                             ; $722f: $bc
	and h                                            ; $7230: $a4
	sbc [hl]                                         ; $7231: $9e
	add d                                            ; $7232: $82
	sbc a                                            ; $7233: $9f
	sub c                                            ; $7234: $91
	adc a                                            ; $7235: $8f
	adc [hl]                                         ; $7236: $8e
	add c                                            ; $7237: $81
	add b                                            ; $7238: $80
	add e                                            ; $7239: $83
	add b                                            ; $723a: $80
	add b                                            ; $723b: $80
	rst AddAOntoHL                                          ; $723c: $ef
	ld hl, $23ef                                     ; $723d: $21 $ef $23
	xor $22                                          ; $7240: $ee $22
	xor $22                                          ; $7242: $ee $22
	rst AddAOntoHL                                          ; $7244: $ef
	ld [hl+], a                                      ; $7245: $22
	rst $38                                          ; $7246: $ff
	ld [bc], a                                       ; $7247: $02
	rst $38                                          ; $7248: $ff
	ld b, h                                          ; $7249: $44
	rst $38                                          ; $724a: $ff
	pop bc                                           ; $724b: $c1
	rst $38                                          ; $724c: $ff
	sbc [hl]                                         ; $724d: $9e
	ld [hl], c                                       ; $724e: $71
	db $10                                           ; $724f: $10
	pop af                                           ; $7250: $f1
	db $10                                           ; $7251: $10
	ld sp, hl                                        ; $7252: $f9
	ld [$08f9], sp                                   ; $7253: $08 $f9 $08
	db $fd                                           ; $7256: $fd
	ld h, h                                          ; $7257: $64
	rst $38                                          ; $7258: $ff
	ldh [c], a                                       ; $7259: $e2
	add a                                            ; $725a: $87
	rra                                              ; $725b: $1f
	ld [de], a                                       ; $725c: $12
	db $fd                                           ; $725d: $fd
	ld h, h                                          ; $725e: $64
	db $dd                                           ; $725f: $dd
	ld e, h                                          ; $7260: $5c
	reti                                             ; $7261: $d9


	ld c, b                                          ; $7262: $48
	db $dd                                           ; $7263: $dd
	ld b, h                                          ; $7264: $44
	rst SubAFromDE                                          ; $7265: $df
	ld b, d                                          ; $7266: $42
	rst $38                                          ; $7267: $ff
	ld c, d                                          ; $7268: $4a
	rst $38                                          ; $7269: $ff

jr_019_726a:
	ld e, $f1                                        ; $726a: $1e $f1
	jr nc, jr_019_726a                               ; $726c: $30 $fc

	inc b                                            ; $726e: $04
	db $fc                                           ; $726f: $fc
	ld h, h                                          ; $7270: $64
	call c, Call_019_6f44                            ; $7271: $dc $44 $6f
	cp $77                                           ; $7274: $fe $77
	db $f4                                           ; $7276: $f4
	sub a                                            ; $7277: $97
	rst $38                                          ; $7278: $ff
	inc b                                            ; $7279: $04
	rst $38                                          ; $727a: $ff
	and [hl]                                         ; $727b: $a6
	ld a, l                                          ; $727c: $7d
	ld h, l                                          ; $727d: $65
	inc e                                            ; $727e: $1c
	inc b                                            ; $727f: $04
	ld h, a                                          ; $7280: $67
	cp $8a                                           ; $7281: $fe $8a
	cp e                                             ; $7283: $bb
	adc b                                            ; $7284: $88
	ei                                               ; $7285: $fb
	ld c, e                                          ; $7286: $4b
	ld hl, sp+$08                                    ; $7287: $f8 $08
	ld hl, sp-$38                                    ; $7289: $f8 $c8
	add hl, sp                                       ; $728b: $39
	ld [$08ff], sp                                   ; $728c: $08 $ff $08
	rst $38                                          ; $728f: $ff
	rst GetHLinHL                                          ; $7290: $cf
	jr c, jr_019_729b                                ; $7291: $38 $08

	rst $38                                          ; $7293: $ff
	nop                                              ; $7294: $00

jr_019_7295:
	rst $38                                          ; $7295: $ff
	ld sp, hl                                        ; $7296: $f9
	rra                                              ; $7297: $1f
	cp a                                             ; $7298: $bf
	ld a, a                                          ; $7299: $7f
	rst $38                                          ; $729a: $ff

jr_019_729b:
	sbc b                                            ; $729b: $98
	add hl, bc                                       ; $729c: $09
	rst $38                                          ; $729d: $ff
	ld a, c                                          ; $729e: $79
	rst GetHLinHL                                          ; $729f: $cf
	pop bc                                           ; $72a0: $c1
	rrca                                             ; $72a1: $0f
	add hl, bc                                       ; $72a2: $09
	ld a, e                                          ; $72a3: $7b
	call z, $fc92                                    ; $72a4: $cc $92 $fc
	ret nz                                           ; $72a7: $c0

	ld b, b                                          ; $72a8: $40
	ldh a, [rAUD1SWEEP]                              ; $72a9: $f0 $10
	db $fc                                           ; $72ab: $fc
	inc b                                            ; $72ac: $04
	rst $38                                          ; $72ad: $ff
	pop hl                                           ; $72ae: $e1
	rra                                              ; $72af: $1f
	rra                                              ; $72b0: $1f
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	inc b                                            ; $72b3: $04
	nop                                              ; $72b4: $00
	call c, $8c55                                    ; $72b5: $dc $55 $8c
	add b                                            ; $72b8: $80
	sbc [hl]                                         ; $72b9: $9e
	ld h, [hl]                                       ; $72ba: $66
	jp c, $9d06                                      ; $72bb: $da $06 $9d

	add hl, de                                       ; $72be: $19
	ld [hl], c                                       ; $72bf: $71
	db $db                                           ; $72c0: $db
	ld bc, $6095                                     ; $72c1: $01 $95 $60
	nop                                              ; $72c4: $00
	ld bc, $0301                                     ; $72c5: $01 $01 $03
	inc bc                                           ; $72c8: $03
	rrca                                             ; $72c9: $0f
	ld c, $9f                                        ; $72ca: $0e $9f
	ld [hl], b                                       ; $72cc: $70
	db $fc                                           ; $72cd: $fc
	add b                                            ; $72ce: $80
	ld bc, $f070                                     ; $72cf: $01 $70 $f0
	ld hl, sp-$68                                    ; $72d2: $f8 $98
	sbc h                                            ; $72d4: $9c
	inc c                                            ; $72d5: $0c
	rrca                                             ; $72d6: $0f
	rlca                                             ; $72d7: $07
	adc a                                            ; $72d8: $8f
	ld [$6404], sp                                   ; $72d9: $08 $04 $64
	ld b, d                                          ; $72dc: $42
	jp nc, $8880                                     ; $72dd: $d2 $80 $88

	dec c                                            ; $72e0: $0d
	dec c                                            ; $72e1: $0d
	jr @+$1a                                         ; $72e2: $18 $18

	dec de                                           ; $72e4: $1b
	ccf                                              ; $72e5: $3f
	ld a, h                                          ; $72e6: $7c
	ld h, b                                          ; $72e7: $60
	add d                                            ; $72e8: $82
	ld [bc], a                                       ; $72e9: $02
	ld b, $04                                        ; $72ea: $06 $04
	inc b                                            ; $72ec: $04
	nop                                              ; $72ed: $00
	add b                                            ; $72ee: $80
	add e                                            ; $72ef: $83
	sbc [hl]                                         ; $72f0: $9e
	adc h                                            ; $72f1: $8c
	adc l                                            ; $72f2: $8d
	rst GetHLinHL                                          ; $72f3: $cf
	adc $ec                                          ; $72f4: $ce $ec
	db $ec                                           ; $72f6: $ec
	ld l, a                                          ; $72f7: $6f
	ld l, h                                          ; $72f8: $6c
	ld b, d                                          ; $72f9: $42
	ld b, d                                          ; $72fa: $42
	jr nz, jr_019_731e                               ; $72fb: $20 $21

	inc de                                           ; $72fd: $13
	ld [de], a                                       ; $72fe: $12
	sub b                                            ; $72ff: $90
	inc de                                           ; $7300: $13
	ei                                               ; $7301: $fb
	rst $38                                          ; $7302: $ff
	ld l, a                                          ; $7303: $6f
	ld h, a                                          ; $7304: $67
	ld h, e                                          ; $7305: $63
	inc bc                                           ; $7306: $03
	rst $38                                          ; $7307: $ff
	inc bc                                           ; $7308: $03
	inc b                                            ; $7309: $04
	nop                                              ; $730a: $00
	sub b                                            ; $730b: $90
	sbc b                                            ; $730c: $98
	inc d                                            ; $730d: $14
	ld a, a                                          ; $730e: $7f
	cp h                                             ; $730f: $bc
	adc [hl]                                         ; $7310: $8e
	db $fc                                           ; $7311: $fc
	inc c                                            ; $7312: $0c
	ccf                                              ; $7313: $3f
	ccf                                              ; $7314: $3f
	dec a                                            ; $7315: $3d
	ld l, l                                          ; $7316: $6d
	ld l, l                                          ; $7317: $6d
	ld c, h                                          ; $7318: $4c
	ld c, h                                          ; $7319: $4c
	add e                                            ; $731a: $83
	add b                                            ; $731b: $80
	add b                                            ; $731c: $80
	add d                                            ; $731d: $82

jr_019_731e:
	sub d                                            ; $731e: $92
	sub d                                            ; $731f: $92
	and e                                            ; $7320: $a3
	and d                                            ; $7321: $a2
	sbc $33                                          ; $7322: $de $33
	sbc $b3                                          ; $7324: $de $b3
	sbc d                                            ; $7326: $9a
	ccf                                              ; $7327: $3f
	inc sp                                           ; $7328: $33
	ret z                                            ; $7329: $c8

	adc b                                            ; $732a: $88
	adc b                                            ; $732b: $88
	sbc $48                                          ; $732c: $de $48
	sbc [hl]                                         ; $732e: $9e
	ret nz                                           ; $732f: $c0

	db $dd                                           ; $7330: $dd
	inc c                                            ; $7331: $0c
	sbc d                                            ; $7332: $9a
	inc e                                            ; $7333: $1c
	jr jr_019_736e                                   ; $7334: $18 $38

	ld [hl], b                                       ; $7336: $70
	ld h, b                                          ; $7337: $60
	db $dd                                           ; $7338: $dd
	add d                                            ; $7339: $82
	sbc e                                            ; $733a: $9b
	add [hl]                                         ; $733b: $86
	add h                                            ; $733c: $84
	adc h                                            ; $733d: $8c
	sbc b                                            ; $733e: $98
	reti                                             ; $733f: $d9


	ret nz                                           ; $7340: $c0

	reti                                             ; $7341: $d9


	jr nz, jr_019_7348                               ; $7342: $20 $04

	nop                                              ; $7344: $00
	call c, $8b33                                    ; $7345: $dc $33 $8b

jr_019_7348:
	add b                                            ; $7348: $80
	rst SubAFromDE                                          ; $7349: $df
	ld bc, $03df                                     ; $734a: $01 $df $03
	sbc e                                            ; $734d: $9b
	rlca                                             ; $734e: $07
	ld c, $7c                                        ; $734f: $0e $7c
	ld a, b                                          ; $7351: $78
	db $fc                                           ; $7352: $fc
	ld a, a                                          ; $7353: $7f
	db $f4                                           ; $7354: $f4
	sbc [hl]                                         ; $7355: $9e
	ld b, $de                                        ; $7356: $06 $de
	add b                                            ; $7358: $80
	cp $df                                           ; $7359: $fe $df
	rlca                                             ; $735b: $07
	sbc e                                            ; $735c: $9b
	ld h, b                                          ; $735d: $60
	ld b, b                                          ; $735e: $40
	ld b, b                                          ; $735f: $40
	ret nz                                           ; $7360: $c0

	ld [hl], a                                       ; $7361: $77
	push af                                          ; $7362: $f5
	rst SubAFromDE                                          ; $7363: $df
	add hl, de                                       ; $7364: $19
	adc a                                            ; $7365: $8f
	jr c, jr_019_7398                                ; $7366: $38 $30

	ld [hl], b                                       ; $7368: $70
	ldh [$c0], a                                     ; $7369: $e0 $c0
	add b                                            ; $736b: $80
	ld b, $04                                        ; $736c: $06 $04

jr_019_736e:
	dec b                                            ; $736e: $05
	inc c                                            ; $736f: $0c
	ld [$3018], sp                                   ; $7370: $08 $18 $30
	ld h, b                                          ; $7373: $60
	db $ec                                           ; $7374: $ec
	adc h                                            ; $7375: $8c
	db $db                                           ; $7376: $db
	inc c                                            ; $7377: $0c
	sbc h                                            ; $7378: $9c
	ld [de], a                                       ; $7379: $12
	ld [hl], d                                       ; $737a: $72
	jp nz, $02dc                                     ; $737b: $c2 $dc $02

	sbc l                                            ; $737e: $9d
	ld h, e                                          ; $737f: $63
	ld h, b                                          ; $7380: $60
	ld [hl], a                                       ; $7381: $77
	ret z                                            ; $7382: $c8

	rst SubAFromDE                                          ; $7383: $df
	rrca                                             ; $7384: $0f
	sbc h                                            ; $7385: $9c
	sub b                                            ; $7386: $90

jr_019_7387:
	inc de                                           ; $7387: $13
	ld [hl], b                                       ; $7388: $70
	db $fc                                           ; $7389: $fc
	rst SubAFromDE                                          ; $738a: $df
	ld hl, sp-$63                                    ; $738b: $f8 $9d
	inc a                                            ; $738d: $3c
	ld a, h                                          ; $738e: $7c
	ld a, e                                          ; $738f: $7b
	pop de                                           ; $7390: $d1
	adc [hl]                                         ; $7391: $8e

jr_019_7392:
	nop                                              ; $7392: $00
	inc b                                            ; $7393: $04
	inc b                                            ; $7394: $04
	jp nz, $1e02                                     ; $7395: $c2 $02 $1e

jr_019_7398:
	jr nc, @+$62                                     ; $7398: $30 $60

	ret nz                                           ; $739a: $c0

	ld c, $0e                                        ; $739b: $0e $0e
	inc c                                            ; $739d: $0c
	inc e                                            ; $739e: $1c
	inc e                                            ; $739f: $1c
	jr c, jr_019_7392                                ; $73a0: $38 $f0

	ldh [$7b], a                                     ; $73a2: $e0 $7b
	sbc b                                            ; $73a4: $98
	rst SubAFromDE                                          ; $73a5: $df
	ld [bc], a                                       ; $73a6: $02
	sbc h                                            ; $73a7: $9c
	ld b, $0c                                        ; $73a8: $06 $0c
	jr jr_019_741f                                   ; $73aa: $18 $73

	sbc d                                            ; $73ac: $9a
	sbc h                                            ; $73ad: $9c
	rlca                                             ; $73ae: $07
	ld a, [hl]                                       ; $73af: $7e
	ld a, h                                          ; $73b0: $7c
	ei                                               ; $73b1: $fb
	ld a, a                                          ; $73b2: $7f
	push af                                          ; $73b3: $f5
	rst SubAFromDE                                          ; $73b4: $df
	add $94                                          ; $73b5: $c6 $94
	adc $8e                                          ; $73b7: $ce $8e
	adc h                                            ; $73b9: $8c
	rrca                                             ; $73ba: $0f
	rra                                              ; $73bb: $1f
	rra                                              ; $73bc: $1f
	ld sp, $2121                                     ; $73bd: $31 $21 $21
	ld h, c                                          ; $73c0: $61
	ld b, e                                          ; $73c1: $43
	ld a, e                                          ; $73c2: $7b
	ret z                                            ; $73c3: $c8

	db $dd                                           ; $73c4: $dd
	inc c                                            ; $73c5: $0c
	sbc e                                            ; $73c6: $9b
	ld e, $fe                                        ; $73c7: $1e $fe
	and $06                                          ; $73c9: $e6 $06
	db $dd                                           ; $73cb: $dd
	ld [bc], a                                       ; $73cc: $02
	rst SubAFromDE                                          ; $73cd: $df
	ld bc, $199d                                     ; $73ce: $01 $9d $19
	pop af                                           ; $73d1: $f1
	inc b                                            ; $73d2: $04
	nop                                              ; $73d3: $00
	call c, $8777                                    ; $73d4: $dc $77 $87
	add b                                            ; $73d7: $80
	rst SubAFromDE                                          ; $73d8: $df
	ld b, $99                                        ; $73d9: $06 $99
	ld c, $0c                                        ; $73db: $0e $0c
	inc e                                            ; $73dd: $1c
	jr jr_019_7459                                   ; $73de: $18 $79

	ld [hl], c                                       ; $73e0: $71
	sbc $01                                          ; $73e1: $de $01
	sbc d                                            ; $73e3: $9a
	inc bc                                           ; $73e4: $03
	ld [bc], a                                       ; $73e5: $02
	ld b, $04                                        ; $73e6: $06 $04
	inc c                                            ; $73e8: $0c
	db $dd                                           ; $73e9: $dd
	jr nc, jr_019_7387                               ; $73ea: $30 $9b

	ld [hl], b                                       ; $73ec: $70
	ld h, b                                          ; $73ed: $60
	rst SubAFromBC                                          ; $73ee: $e7
	rst JumpTable                                          ; $73ef: $c7
	call c, $8708                                    ; $73f0: $dc $08 $87
	jr jr_019_7405                                   ; $73f3: $18 $10

	jr nc, jr_019_740f                               ; $73f5: $30 $18

	jr jr_019_7431                                   ; $73f7: $18 $38

	ld sp, $e071                                     ; $73f9: $31 $71 $e0
	ret nz                                           ; $73fc: $c0

	add b                                            ; $73fd: $80
	ld b, $04                                        ; $73fe: $06 $04
	inc b                                            ; $7400: $04

jr_019_7401:
	inc c                                            ; $7401: $0c
	ld [$3019], sp                                   ; $7402: $08 $19 $30

jr_019_7405:
	ld h, b                                          ; $7405: $60
	dec de                                           ; $7406: $1b
	dec sp                                           ; $7407: $3b
	ld [hl], e                                       ; $7408: $73
	db $e3                                           ; $7409: $e3
	add e                                            ; $740a: $83
	sbc $03                                          ; $740b: $de $03
	ld a, e                                          ; $740d: $7b
	pop af                                           ; $740e: $f1

jr_019_740f:
	sbc h                                            ; $740f: $9c
	jr @+$72                                         ; $7410: $18 $70

	ret nz                                           ; $7412: $c0

	ld a, [$019c]                                    ; $7413: $fa $9c $01
	rrca                                             ; $7416: $0f
	rrca                                             ; $7417: $0f
	reti                                             ; $7418: $d9


	add b                                            ; $7419: $80
	rst SubAFromDE                                          ; $741a: $df
	ld sp, $7199                                     ; $741b: $31 $99 $71
	ld h, c                                          ; $741e: $61

jr_019_741f:
	pop hl                                           ; $741f: $e1
	pop bc                                           ; $7420: $c1
	add c                                            ; $7421: $81
	ld bc, $c26f                                     ; $7422: $01 $6f $c2
	sbc l                                            ; $7425: $9d
	ld h, b                                          ; $7426: $60
	ret nz                                           ; $7427: $c0

	call c, $9c86                                    ; $7428: $dc $86 $9c
	adc [hl]                                         ; $742b: $8e
	db $fc                                           ; $742c: $fc
	ld hl, sp-$25                                    ; $742d: $f8 $db
	ld b, c                                          ; $742f: $41
	sbc l                                            ; $7430: $9d

jr_019_7431:
	inc bc                                           ; $7431: $03
	ld b, $db                                        ; $7432: $06 $db
	ld h, b                                          ; $7434: $60
	sbc l                                            ; $7435: $9d
	ld sp, $db1f                                     ; $7436: $31 $1f $db
	db $10                                           ; $7439: $10
	sub l                                            ; $743a: $95
	ld b, b                                          ; $743b: $40
	jr nz, jr_019_7401                               ; $743c: $20 $c3

	rst JumpTable                                          ; $743e: $c7
	rst JumpTable                                          ; $743f: $c7
	add $ce                                          ; $7440: $c6 $ce
	call z, $1c9c                                    ; $7442: $cc $9c $1c
	sbc $20                                          ; $7445: $de $20
	rst SubAFromDE                                          ; $7447: $df
	ld hl, $238c                                     ; $7448: $21 $8c $23
	ld h, d                                          ; $744b: $62
	jp nz, Jump_019_70e0                             ; $744c: $c2 $e0 $70

	ld [hl], b                                       ; $744f: $70
	jr nc, jr_019_748a                               ; $7450: $30 $38

	jr jr_019_7470                                   ; $7452: $18 $1c

	inc e                                            ; $7454: $1c
	db $10                                           ; $7455: $10
	adc b                                            ; $7456: $88
	adc b                                            ; $7457: $88
	ret z                                            ; $7458: $c8

jr_019_7459:
	inc b                                            ; $7459: $04
	inc h                                            ; $745a: $24
	ld [bc], a                                       ; $745b: $02
	ld [bc], a                                       ; $745c: $02
	inc b                                            ; $745d: $04
	nop                                              ; $745e: $00
	call c, $1d33                                    ; $745f: $dc $33 $1d
	nop                                              ; $7462: $00
	sbc l                                            ; $7463: $9d
	nop                                              ; $7464: $00
	ld c, $f2                                        ; $7465: $0e $f2
	sbc [hl]                                         ; $7467: $9e

jr_019_7468:
	rst $38                                          ; $7468: $ff
	ldh a, [c]                                       ; $7469: $f2
	sbc [hl]                                         ; $746a: $9e
	adc [hl]                                         ; $746b: $8e
	ldh a, [c]                                       ; $746c: $f2
	sbc [hl]                                         ; $746d: $9e
	ld b, $f2                                        ; $746e: $06 $f2

jr_019_7470:
	sbc [hl]                                         ; $7470: $9e
	ldh [$f2], a                                     ; $7471: $e0 $f2
	sbc [hl]                                         ; $7473: $9e
	jr c, jr_019_7468                                ; $7474: $38 $f2

	sbc [hl]                                         ; $7476: $9e
	pop hl                                           ; $7477: $e1
	ldh a, [c]                                       ; $7478: $f2
	sbc [hl]                                         ; $7479: $9e
	ret nz                                           ; $747a: $c0

	dec bc                                           ; $747b: $0b
	ret nc                                           ; $747c: $d0

	ldh a, [c]                                       ; $747d: $f2
	inc b                                            ; $747e: $04
	nop                                              ; $747f: $00
	call c, $1d33                                    ; $7480: $dc $33 $1d
	nop                                              ; $7483: $00
	sbc l                                            ; $7484: $9d
	nop                                              ; $7485: $00
	inc bc                                           ; $7486: $03
	ldh a, [c]                                       ; $7487: $f2
	sbc [hl]                                         ; $7488: $9e
	add b                                            ; $7489: $80

jr_019_748a:
	ldh a, [c]                                       ; $748a: $f2
	sbc [hl]                                         ; $748b: $9e
	rlca                                             ; $748c: $07
	ldh a, [c]                                       ; $748d: $f2
	sbc [hl]                                         ; $748e: $9e
	add e                                            ; $748f: $83
	ldh a, [c]                                       ; $7490: $f2
	sbc [hl]                                         ; $7491: $9e
	ret nz                                           ; $7492: $c0

	ldh a, [c]                                       ; $7493: $f2
	sbc [hl]                                         ; $7494: $9e
	ld hl, sp-$0e                                    ; $7495: $f8 $f2
	sbc [hl]                                         ; $7497: $9e
	ld c, $f2                                        ; $7498: $0e $f2
	sbc [hl]                                         ; $749a: $9e
	jr c, jr_019_74a8                                ; $749b: $38 $0b

	ldh [$f2], a                                     ; $749d: $e0 $f2
	inc b                                            ; $749f: $04
	nop                                              ; $74a0: $00
	call c, $1d33                                    ; $74a1: $dc $33 $1d
	nop                                              ; $74a4: $00
	rst SubAFromDE                                          ; $74a5: $df
	ld [hl], b                                       ; $74a6: $70
	di                                               ; $74a7: $f3

jr_019_74a8:
	rst SubAFromDE                                          ; $74a8: $df
	rst $38                                          ; $74a9: $ff
	di                                               ; $74aa: $f3
	rst SubAFromDE                                          ; $74ab: $df
	rrca                                             ; $74ac: $0f
	di                                               ; $74ad: $f3
	rst SubAFromDE                                          ; $74ae: $df
	pop bc                                           ; $74af: $c1
	di                                               ; $74b0: $f3
	rst SubAFromDE                                          ; $74b1: $df
	rst JumpTable                                          ; $74b2: $c7
	di                                               ; $74b3: $f3
	rst SubAFromDE                                          ; $74b4: $df
	add c                                            ; $74b5: $81
	di                                               ; $74b6: $f3
	rst SubAFromDE                                          ; $74b7: $df
	ldh a, [$f3]                                     ; $74b8: $f0 $f3
	rst SubAFromDE                                          ; $74ba: $df
	cp $e3                                           ; $74bb: $fe $e3
	rst SubAFromDE                                          ; $74bd: $df
	ld h, b                                          ; $74be: $60
	di                                               ; $74bf: $f3
	inc b                                            ; $74c0: $04
	nop                                              ; $74c1: $00
	call c, $1e22                                    ; $74c2: $dc $22 $1e
	nop                                              ; $74c5: $00
	sbc l                                            ; $74c6: $9d
	nop                                              ; $74c7: $00
	jr c, @-$0c                                      ; $74c8: $38 $f2

	sbc [hl]                                         ; $74ca: $9e
	inc bc                                           ; $74cb: $03
	ldh a, [c]                                       ; $74cc: $f2
	sbc [hl]                                         ; $74cd: $9e
	cp e                                             ; $74ce: $bb
	ldh a, [c]                                       ; $74cf: $f2
	sbc [hl]                                         ; $74d0: $9e
	sbc h                                            ; $74d1: $9c
	ldh a, [c]                                       ; $74d2: $f2
	sbc [hl]                                         ; $74d3: $9e
	ldh a, [$f2]                                     ; $74d4: $f0 $f2
	sbc [hl]                                         ; $74d6: $9e
	adc $f2                                          ; $74d7: $ce $f2
	sbc [hl]                                         ; $74d9: $9e
	ld [hl], b                                       ; $74da: $70
	ldh a, [c]                                       ; $74db: $f2
	sbc [hl]                                         ; $74dc: $9e
	cp $e2                                           ; $74dd: $fe $e2
	sbc [hl]                                         ; $74df: $9e
	ld h, b                                          ; $74e0: $60
	di                                               ; $74e1: $f3
	inc b                                            ; $74e2: $04
	nop                                              ; $74e3: $00
	call c, $1d33                                    ; $74e4: $dc $33 $1d
	nop                                              ; $74e7: $00
	rst SubAFromDE                                          ; $74e8: $df
	inc bc                                           ; $74e9: $03
	di                                               ; $74ea: $f3
	rst SubAFromDE                                          ; $74eb: $df
	add e                                            ; $74ec: $83
	di                                               ; $74ed: $f3
	rst SubAFromDE                                          ; $74ee: $df
	cp [hl]                                          ; $74ef: $be
	di                                               ; $74f0: $f3
	rst SubAFromDE                                          ; $74f1: $df
	rrca                                             ; $74f2: $0f

jr_019_74f3:
	di                                               ; $74f3: $f3
	rst SubAFromDE                                          ; $74f4: $df
	pop hl                                           ; $74f5: $e1
	di                                               ; $74f6: $f3
	rst SubAFromDE                                          ; $74f7: $df
	call c, $dff3                                    ; $74f8: $dc $f3 $df
	inc e                                            ; $74fb: $1c
	di                                               ; $74fc: $f3
	rst SubAFromDE                                          ; $74fd: $df
	jr c, jr_019_74f3                                ; $74fe: $38 $f3

	rst SubAFromDE                                          ; $7500: $df
	rlca                                             ; $7501: $07
	db $e3                                           ; $7502: $e3
	inc b                                            ; $7503: $04
	nop                                              ; $7504: $00
	call c, $1e55                                    ; $7505: $dc $55 $1e
	nop                                              ; $7508: $00
	sbc l                                            ; $7509: $9d
	nop                                              ; $750a: $00
	rlca                                             ; $750b: $07
	ldh a, [c]                                       ; $750c: $f2
	sbc [hl]                                         ; $750d: $9e
	rrca                                             ; $750e: $0f
	ldh a, [c]                                       ; $750f: $f2
	ld b, a                                          ; $7510: $47
	ldh [$9e], a                                     ; $7511: $e0 $9e
	ldh a, [$f2]                                     ; $7513: $f0 $f2
	sbc [hl]                                         ; $7515: $9e
	ld a, [hl]                                       ; $7516: $7e
	ldh a, [c]                                       ; $7517: $f2
	sbc [hl]                                         ; $7518: $9e
	inc bc                                           ; $7519: $03
	ldh a, [c]                                       ; $751a: $f2

jr_019_751b:
	sbc [hl]                                         ; $751b: $9e
	xor $f2                                          ; $751c: $ee $f2
	sbc [hl]                                         ; $751e: $9e
	dec sp                                           ; $751f: $3b
	dec bc                                           ; $7520: $0b
	or b                                             ; $7521: $b0
	sbc [hl]                                         ; $7522: $9e
	ldh [$f3], a                                     ; $7523: $e0 $f3
	inc b                                            ; $7525: $04
	nop                                              ; $7526: $00
	call c, Call_019_5333                            ; $7527: $dc $33 $53
	add b                                            ; $752a: $80
	ld sp, hl                                        ; $752b: $f9
	sbc [hl]                                         ; $752c: $9e
	ld a, h                                          ; $752d: $7c
	ldh a, [c]                                       ; $752e: $f2
	sbc [hl]                                         ; $752f: $9e
	rlca                                             ; $7530: $07
	ldh a, [c]                                       ; $7531: $f2
	sbc [hl]                                         ; $7532: $9e

Call_019_7533:
	ret nz                                           ; $7533: $c0

	ldh a, [c]                                       ; $7534: $f2
	sbc [hl]                                         ; $7535: $9e
	ld c, $f2                                        ; $7536: $0e $f2
	sbc [hl]                                         ; $7538: $9e
	rrca                                             ; $7539: $0f
	ld hl, sp-$80                                    ; $753a: $f8 $80
	ld b, $36                                        ; $753c: $06 $36
	ld [hl], $3f                                     ; $753e: $36 $3f
	scf                                              ; $7540: $37
	ld h, $80                                        ; $7541: $26 $80

jr_019_7543:
	nop                                              ; $7543: $00
	ld bc, $0909                                     ; $7544: $01 $09 $09
	nop                                              ; $7547: $00
	ld [$0019], sp                                   ; $7548: $08 $19 $00
	nop                                              ; $754b: $00
	jr nc, jr_019_757e                               ; $754c: $30 $30

	db $fc                                           ; $754e: $fc

jr_019_754f:
	jr nc, jr_019_754f                               ; $754f: $30 $fe

	jr jr_019_7543                                   ; $7551: $18 $f0

	nop                                              ; $7553: $00
	ld [$0208], sp                                   ; $7554: $08 $08 $02
	adc $01                                          ; $7557: $ce $01
	rst SubAFromBC                                          ; $7559: $e7
	nop                                              ; $755a: $00
	ld a, a                                          ; $755b: $7f
	add sp, -$67                                     ; $755c: $e8 $99
	ld bc, $0303                                     ; $755e: $01 $03 $03
	rlca                                             ; $7561: $07
	dec b                                            ; $7562: $05
	ld a, [hl]                                       ; $7563: $7e
	ei                                               ; $7564: $fb
	sbc d                                            ; $7565: $9a
	ld [bc], a                                       ; $7566: $02
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	sbc b                                            ; $7569: $98
	rst $38                                          ; $756a: $ff
	ld [hl], a                                       ; $756b: $77
	cp $9a                                           ; $756c: $fe $9a
	rra                                              ; $756e: $1f
	nop                                              ; $756f: $00
	ld b, h                                          ; $7570: $44
	nop                                              ; $7571: $00
	ld h, a                                          ; $7572: $67
	ld a, e                                          ; $7573: $7b
	cp $f9                                           ; $7574: $fe $f9
	sbc h                                            ; $7576: $9c
	add a                                            ; $7577: $87
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	call c, $0480                                    ; $757a: $dc $80 $04
	nop                                              ; $757d: $00

jr_019_757e:
	call c, Call_019_5477                            ; $757e: $dc $77 $54
	add b                                            ; $7581: $80
	ld sp, hl                                        ; $7582: $f9
	sbc [hl]                                         ; $7583: $9e
	ld a, c                                          ; $7584: $79
	ldh a, [c]                                       ; $7585: $f2

jr_019_7586:
	sbc [hl]                                         ; $7586: $9e
	rst SubAFromBC                                          ; $7587: $e7
	ldh a, [c]                                       ; $7588: $f2
	sbc [hl]                                         ; $7589: $9e
	ret nz                                           ; $758a: $c0

	ldh a, [c]                                       ; $758b: $f2
	sbc [hl]                                         ; $758c: $9e
	inc bc                                           ; $758d: $03
	ldh a, [c]                                       ; $758e: $f2
	sbc [hl]                                         ; $758f: $9e
	adc a                                            ; $7590: $8f
	ld hl, sp-$21                                    ; $7591: $f8 $df
	ld bc, $3f9a                                     ; $7593: $01 $9a $3f
	jr nc, jr_019_75cf                               ; $7596: $30 $37

	jr nc, jr_019_751b                               ; $7598: $30 $81

	db $fd                                           ; $759a: $fd
	adc h                                            ; $759b: $8c
	rrca                                             ; $759c: $0f
	ld [$000f], sp                                   ; $759d: $08 $0f $00
	nop                                              ; $75a0: $00
	add b                                            ; $75a1: $80
	add b                                            ; $75a2: $80
	cp $06                                           ; $75a3: $fe $06
	or $06                                           ; $75a5: $f6 $06
	db $fc                                           ; $75a7: $fc
	nop                                              ; $75a8: $00
	ld b, b                                          ; $75a9: $40
	ld b, b                                          ; $75aa: $40
	ld bc, $09f9                                     ; $75ab: $01 $f9 $09
	ld sp, hl                                        ; $75ae: $f9
	db $fc                                           ; $75af: $fc
	sbc e                                            ; $75b0: $9b
	rlca                                             ; $75b1: $07

jr_019_75b2:
	ld b, $06                                        ; $75b2: $06 $06
	rra                                              ; $75b4: $1f
	ld l, e                                          ; $75b5: $6b
	call nc, $deff                                   ; $75b6: $d4 $ff $de
	jr nc, @-$64                                     ; $75b9: $30 $9a

	rst $38                                          ; $75bb: $ff
	jr jr_019_75d9                                   ; $75bc: $18 $1b

	sbc [hl]                                         ; $75be: $9e
	nop                                              ; $75bf: $00
	sbc $08                                          ; $75c0: $de $08
	ld a, a                                          ; $75c2: $7f
	adc d                                            ; $75c3: $8a
	sbc [hl]                                         ; $75c4: $9e
	inc b                                            ; $75c5: $04
	ld a, e                                          ; $75c6: $7b
	ret nc                                           ; $75c7: $d0

	rst SubAFromDE                                          ; $75c8: $df
	ld b, b                                          ; $75c9: $40
	cp $97                                           ; $75ca: $fe $97
	ld e, $00                                        ; $75cc: $1e $00
	ld b, b                                          ; $75ce: $40

jr_019_75cf:
	and b                                            ; $75cf: $a0
	jr nz, jr_019_75b2                               ; $75d0: $20 $e0

	add b                                            ; $75d2: $80
	add b                                            ; $75d3: $80
	inc b                                            ; $75d4: $04
	nop                                              ; $75d5: $00
	call c, Call_019_5033                            ; $75d6: $dc $33 $50

jr_019_75d9:
	add b                                            ; $75d9: $80
	add b                                            ; $75da: $80
	daa                                              ; $75db: $27
	ld c, $1f                                        ; $75dc: $0e $1f
	ld [hl], $36                                     ; $75de: $36 $36
	ld b, $06                                        ; $75e0: $06 $06
	nop                                              ; $75e2: $00
	db $10                                           ; $75e3: $10
	ld sp, $0900                                     ; $75e4: $31 $00 $09
	add hl, bc                                       ; $75e7: $09
	add hl, sp                                       ; $75e8: $39
	ld bc, $fe07                                     ; $75e9: $01 $07 $fe
	jr jr_019_7586                                   ; $75ec: $18 $98

	ld a, b                                          ; $75ee: $78
	jr jr_019_7629                                   ; $75ef: $18 $38

	jr jr_019_75f3                                   ; $75f1: $18 $00

jr_019_75f3:
	ld bc, $44e7                                     ; $75f3: $01 $e7 $44
	add h                                            ; $75f6: $84

jr_019_75f7:
	ld h, h                                          ; $75f7: $64
	inc b                                            ; $75f8: $04
	inc h                                            ; $75f9: $24
	sbc h                                            ; $75fa: $9c
	inc e                                            ; $75fb: $1c
	ld bc, $bf01                                     ; $75fc: $01 $01 $bf
	inc bc                                           ; $75ff: $03
	inc bc                                           ; $7600: $03
	sbc [hl]                                         ; $7601: $9e
	rrca                                             ; $7602: $0f
	cp l                                             ; $7603: $bd
	ld b, $01                                        ; $7604: $06 $01
	inc bc                                           ; $7606: $03
	nop                                              ; $7607: $00
	sub a                                            ; $7608: $97
	rrca                                             ; $7609: $0f
	sbc b                                            ; $760a: $98
	rst $38                                          ; $760b: $ff
	jr @+$01                                         ; $760c: $18 $ff

	cp $db                                           ; $760e: $fe $db
	add hl, de                                       ; $7610: $19
	cp [hl]                                          ; $7611: $be
	ld h, a                                          ; $7612: $67
	rst SubAFromBC                                          ; $7613: $e7
	ld bc, $249c                                     ; $7614: $01 $9c $24
	and $9d                                          ; $7617: $e6 $9d
	cp [hl]                                          ; $7619: $be
	nop                                              ; $761a: $00
	add b                                            ; $761b: $80
	add b                                            ; $761c: $80
	sbc l                                            ; $761d: $9d
	ldh [rP1], a                                     ; $761e: $e0 $00
	sbc $80                                          ; $7620: $de $80
	sbc d                                            ; $7622: $9a
	ld b, b                                          ; $7623: $40
	ret nz                                           ; $7624: $c0

	ld b, b                                          ; $7625: $40
	db $10                                           ; $7626: $10
	ldh a, [rDIV]                                    ; $7627: $f0 $04

jr_019_7629:
	nop                                              ; $7629: $00
	rst SubAFromDE                                          ; $762a: $df
	ld [hl], a                                       ; $762b: $77
	ld c, [hl]                                       ; $762c: $4e
	nop                                              ; $762d: $00
	sbc d                                            ; $762e: $9a
	rra                                              ; $762f: $1f
	jr nz, jr_019_7635                               ; $7630: $20 $03

	inc e                                            ; $7632: $1c
	inc bc                                           ; $7633: $03
	cp [hl]                                          ; $7634: $be

jr_019_7635:
	inc bc                                           ; $7635: $03
	rlca                                             ; $7636: $07
	ld c, $84                                        ; $7637: $0e $84
	ld bc, $0738                                     ; $7639: $01 $38 $07
	nop                                              ; $763c: $00
	inc a                                            ; $763d: $3c
	db $fc                                           ; $763e: $fc
	inc bc                                           ; $763f: $03
	ld h, b                                          ; $7640: $60
	sbc [hl]                                         ; $7641: $9e
	ld h, b                                          ; $7642: $60
	sub b                                            ; $7643: $90
	ld h, h                                          ; $7644: $64
	sub d                                            ; $7645: $92
	ld h, h                                          ; $7646: $64
	sub d                                            ; $7647: $92
	ld h, [hl]                                       ; $7648: $66
	sub c                                            ; $7649: $91
	ld a, $41                                        ; $764a: $3e $41
	nop                                              ; $764c: $00
	ld a, $07                                        ; $764d: $3e $07
	nop                                              ; $764f: $00
	ld b, $01                                        ; $7650: $06 $01
	ld b, $01                                        ; $7652: $06 $01
	ld [hl], a                                       ; $7654: $77
	ld a, [$048b]                                    ; $7655: $fa $8b $04
	inc bc                                           ; $7658: $03
	inc c                                            ; $7659: $0c
	ld [bc], a                                       ; $765a: $02
	nop                                              ; $765b: $00
	ld c, $db                                        ; $765c: $0e $db
	inc h                                            ; $765e: $24
	ld e, a                                          ; $765f: $5f
	and b                                            ; $7660: $a0
	ld c, [hl]                                       ; $7661: $4e
	ld sp, $23cc                                     ; $7662: $31 $cc $23
	sbc $21                                          ; $7665: $de $21
	ccf                                              ; $7667: $3f
	ret nz                                           ; $7668: $c0

	inc sp                                           ; $7669: $33
	inc c                                            ; $766a: $0c
	cp h                                             ; $766b: $bc
	dec sp                                           ; $766c: $3b
	add b                                            ; $766d: $80
	add b                                            ; $766e: $80
	add b                                            ; $766f: $80
	nop                                              ; $7670: $00
	sub a                                            ; $7671: $97
	add b                                            ; $7672: $80
	ld b, b                                          ; $7673: $40
	ret nz                                           ; $7674: $c0

	jr nz, jr_019_75f7                               ; $7675: $20 $80

	ld h, b                                          ; $7677: $60
	nop                                              ; $7678: $00
	ret nz                                           ; $7679: $c0

	inc b                                            ; $767a: $04
	nop                                              ; $767b: $00
	rst SubAFromDE                                          ; $767c: $df
	inc sp                                           ; $767d: $33
	ld c, h                                          ; $767e: $4c
	add b                                            ; $767f: $80
	db $fd                                           ; $7680: $fd
	sbc l                                            ; $7681: $9d
	inc a                                            ; $7682: $3c
	ld [bc], a                                       ; $7683: $02
	ei                                               ; $7684: $fb
	ld h, a                                          ; $7685: $67
	ld hl, sp-$65                                    ; $7686: $f8 $9b
	jr c, jr_019_76de                                ; $7688: $38 $54

	sub d                                            ; $768a: $92
	sub d                                            ; $768b: $92
	ld d, a                                          ; $768c: $57
	ld hl, sp-$62                                    ; $768d: $f8 $9e
	ld a, [hl]                                       ; $768f: $7e
	sbc $02                                          ; $7690: $de $02
	ld d, a                                          ; $7692: $57
	ld hl, sp-$02                                    ; $7693: $f8 $fe
	sbc [hl]                                         ; $7695: $9e
	ld c, $5b                                        ; $7696: $0e $5b
	ld hl, sp-$22                                    ; $7698: $f8 $de
	ld [$7e9d], sp                                   ; $769a: $08 $9d $7e
	ld [$f85b], sp                                   ; $769d: $08 $5b $f8

jr_019_76a0:
	ld c, a                                          ; $76a0: $4f
	ldh [$df], a                                     ; $76a1: $e0 $df
	ld a, [bc]                                       ; $76a3: $0a
	sbc d                                            ; $76a4: $9a
	nop                                              ; $76a5: $00
	cp $08                                           ; $76a6: $fe $08
	db $10                                           ; $76a8: $10
	jr nz, jr_019_770e                               ; $76a9: $20 $63

	ld hl, sp-$63                                    ; $76ab: $f8 $9d
	ccf                                              ; $76ad: $3f
	jr nz, @+$7d                                     ; $76ae: $20 $7b

	cp $9d                                           ; $76b0: $fe $9d
	rst $38                                          ; $76b2: $ff
	ld l, b                                          ; $76b3: $68
	ld h, e                                          ; $76b4: $63
	ld hl, sp-$68                                    ; $76b5: $f8 $98
	add d                                            ; $76b7: $82
	adc a                                            ; $76b8: $8f
	add l                                            ; $76b9: $85
	add l                                            ; $76ba: $85
	adc a                                            ; $76bb: $8f
	ldh [c], a                                       ; $76bc: $e2
	rrca                                             ; $76bd: $0f
	ld h, e                                          ; $76be: $63
	ld hl, sp-$68                                    ; $76bf: $f8 $98
	ld b, $98                                        ; $76c1: $06 $98
	jr nz, jr_019_76e5                               ; $76c3: $20 $20

	cp [hl]                                          ; $76c5: $be
	inc h                                            ; $76c6: $24
	and h                                            ; $76c7: $a4
	ld h, a                                          ; $76c8: $67
	ld hl, sp+$04                                    ; $76c9: $f8 $04
	nop                                              ; $76cb: $00
	call c, $5144                                    ; $76cc: $dc $44 $51
	add b                                            ; $76cf: $80
	sub a                                            ; $76d0: $97
	nop                                              ; $76d1: $00
	ld [bc], a                                       ; $76d2: $02
	ld [bc], a                                       ; $76d3: $02
	ccf                                              ; $76d4: $3f
	ld [bc], a                                       ; $76d5: $02
	rlca                                             ; $76d6: $07
	rrca                                             ; $76d7: $0f
	ld a, [de]                                       ; $76d8: $1a
	ld h, e                                          ; $76d9: $63
	ld hl, sp-$68                                    ; $76da: $f8 $98
	inc bc                                           ; $76dc: $03
	nop                                              ; $76dd: $00

jr_019_76de:
	rst SubAFromBC                                          ; $76de: $e7
	nop                                              ; $76df: $00
	inc bc                                           ; $76e0: $03
	add b                                            ; $76e1: $80
	jp $f863                                         ; $76e2: $c3 $63 $f8


jr_019_76e5:
	sbc b                                            ; $76e5: $98
	add h                                            ; $76e6: $84
	inc b                                            ; $76e7: $04
	rst SubAFromDE                                          ; $76e8: $df
	inc b                                            ; $76e9: $04
	add h                                            ; $76ea: $84
	ld e, $80                                        ; $76eb: $1e $80
	ld h, e                                          ; $76ed: $63
	ld hl, sp-$01                                    ; $76ee: $f8 $ff
	rst SubAFromDE                                          ; $76f0: $df
	ld b, d                                          ; $76f1: $42
	sbc h                                            ; $76f2: $9c
	ld e, a                                          ; $76f3: $5f
	ld b, d                                          ; $76f4: $42
	ld b, d                                          ; $76f5: $42
	ld h, e                                          ; $76f6: $63
	ld hl, sp-$68                                    ; $76f7: $f8 $98
	ld [bc], a                                       ; $76f9: $02
	dec b                                            ; $76fa: $05
	ld [$2010], sp                                   ; $76fb: $08 $10 $20
	ld c, a                                          ; $76fe: $4f
	nop                                              ; $76ff: $00
	ld h, e                                          ; $7700: $63
	ld hl, sp-$21                                    ; $7701: $f8 $df
	ld bc, $819b                                     ; $7703: $01 $9b $81
	ld b, c                                          ; $7706: $41
	jr nz, jr_019_76a0                               ; $7707: $20 $97

	ld e, a                                          ; $7709: $5f
	ld hl, sp-$68                                    ; $770a: $f8 $98
	db $fc                                           ; $770c: $fc
	inc b                                            ; $770d: $04

jr_019_770e:
	inc b                                            ; $770e: $04
	db $fc                                           ; $770f: $fc
	nop                                              ; $7710: $00
	rst $38                                          ; $7711: $ff
	add b                                            ; $7712: $80
	ld h, e                                          ; $7713: $63
	ld hl, sp-$01                                    ; $7714: $f8 $ff
	rst SubAFromDE                                          ; $7716: $df
	db $10                                           ; $7717: $10
	sbc h                                            ; $7718: $9c
	ld a, $10                                        ; $7719: $3e $10
	dec sp                                           ; $771b: $3b
	ld e, e                                          ; $771c: $5b
	ld hl, sp-$1c                                    ; $771d: $f8 $e4
	inc b                                            ; $771f: $04

Jump_019_7720:
	nop                                              ; $7720: $00
	call c, Call_019_5344                            ; $7721: $dc $44 $53
	add b                                            ; $7724: $80
	sub a                                            ; $7725: $97
	nop                                              ; $7726: $00
	ld [bc], a                                       ; $7727: $02
	dec b                                            ; $7728: $05
	ld [$2010], sp                                   ; $7729: $08 $10 $20
	ld c, a                                          ; $772c: $4f
	nop                                              ; $772d: $00
	ld h, e                                          ; $772e: $63
	ld hl, sp-$68                                    ; $772f: $f8 $98
	rlca                                             ; $7731: $07

Call_019_7732:
	inc b                                            ; $7732: $04
	add h                                            ; $7733: $84
	ld b, a                                          ; $7734: $47
	inc h                                            ; $7735: $24
	sub h                                            ; $7736: $94
	rlca                                             ; $7737: $07
	ld h, e                                          ; $7738: $63
	ld hl, sp-$68                                    ; $7739: $f8 $98
	pop af                                           ; $773b: $f1
	ld de, $f111                                     ; $773c: $11 $11 $f1
	db $10                                           ; $773f: $10

jr_019_7740:
	rla                                              ; $7740: $17
	ldh a, [$63]                                     ; $7741: $f0 $63
	ld hl, sp-$68                                    ; $7743: $f8 $98
	db $fc                                           ; $7745: $fc
	inc b                                            ; $7746: $04
	inc b                                            ; $7747: $04
	db $fc                                           ; $7748: $fc
	nop                                              ; $7749: $00
	rst $38                                          ; $774a: $ff
	add b                                            ; $774b: $80
	ld h, e                                          ; $774c: $63
	ld hl, sp-$01                                    ; $774d: $f8 $ff
	rst SubAFromDE                                          ; $774f: $df
	ld b, d                                          ; $7750: $42
	sbc h                                            ; $7751: $9c
	ld e, a                                          ; $7752: $5f
	ld b, d                                          ; $7753: $42
	ld b, d                                          ; $7754: $42
	ld e, e                                          ; $7755: $5b
	ld hl, sp-$0d                                    ; $7756: $f8 $f3
	sbc b                                            ; $7758: $98
	ld de, $2410                                     ; $7759: $11 $10 $24
	ld c, b                                          ; $775c: $48
	ld sp, $7d24                                     ; $775d: $31 $24 $7d
	ld h, e                                          ; $7760: $63
	ld hl, sp-$68                                    ; $7761: $f8 $98
	ldh a, [$50]                                     ; $7763: $f0 $50
	ld d, b                                          ; $7765: $50
	sub c                                            ; $7766: $91
	ld [hl+], a                                      ; $7767: $22
	inc b                                            ; $7768: $04
	ldh a, [$63]                                     ; $7769: $f0 $63
	ld hl, sp-$68                                    ; $776b: $f8 $98
	jr nz, @+$52                                     ; $776d: $20 $50

	adc b                                            ; $776f: $88
	inc b                                            ; $7770: $04
	ld [bc], a                                       ; $7771: $02
	adc c                                            ; $7772: $89
	adc b                                            ; $7773: $88
	ld h, a                                          ; $7774: $67
	ld hl, sp+$04                                    ; $7775: $f8 $04
	nop                                              ; $7777: $00
	db $dd                                           ; $7778: $dd
	ld b, h                                          ; $7779: $44
	ld b, l                                          ; $777a: $45
	add b                                            ; $777b: $80
	rst $38                                          ; $777c: $ff
	rst SubAFromDE                                          ; $777d: $df
	ld b, b                                          ; $777e: $40
	sbc [hl]                                         ; $777f: $9e
	ld a, $fc                                        ; $7780: $3e $fc
	ld l, a                                          ; $7782: $6f
	ld hl, sp-$66                                    ; $7783: $f8 $9a
	sub d                                            ; $7785: $92
	and d                                            ; $7786: $a2
	and d                                            ; $7787: $a2
	jp nz, Jump_019_5b4c                             ; $7788: $c2 $4c $5b

	ld hl, sp-$23                                    ; $778b: $f8 $dd
	ld [bc], a                                       ; $778d: $02
	sbc [hl]                                         ; $778e: $9e
	ld a, [hl]                                       ; $778f: $7e
	ld e, e                                          ; $7790: $5b
	ld hl, sp-$62                                    ; $7791: $f8 $9e
	ldh a, [$fa]                                     ; $7793: $f0 $fa
	ld h, a                                          ; $7795: $67
	ld hl, sp-$22                                    ; $7796: $f8 $de
	ld [$109d], sp                                   ; $7798: $08 $9d $10
	ld h, b                                          ; $779b: $60
	ld e, e                                          ; $779c: $5b
	ld hl, sp+$47                                    ; $779d: $f8 $47
	ldh [$de], a                                     ; $779f: $e0 $de
	jr nz, jr_019_7740                               ; $77a1: $20 $9d

	db $10                                           ; $77a3: $10
	inc c                                            ; $77a4: $0c
	ld e, e                                          ; $77a5: $5b
	ld hl, sp-$66                                    ; $77a6: $f8 $9a
	ld e, e                                          ; $77a8: $5b
	ld l, d                                          ; $77a9: $6a
	ld e, l                                          ; $77aa: $5d
	jp hl                                            ; $77ab: $e9


	ld a, [bc]                                       ; $77ac: $0a
	ld e, e                                          ; $77ad: $5b
	ld hl, sp-$66                                    ; $77ae: $f8 $9a
	rst SubAFromBC                                          ; $77b0: $e7
	ld b, [hl]                                       ; $77b1: $46
	adc d                                            ; $77b2: $8a
	jp z, Jump_019_5b22                              ; $77b3: $ca $22 $5b

	ld hl, sp-$66                                    ; $77b6: $f8 $9a
	inc h                                            ; $77b8: $24
	and h                                            ; $77b9: $a4
	call nz, $0444                                   ; $77ba: $c4 $44 $04
	ld e, e                                          ; $77bd: $5b
	ld hl, sp+$04                                    ; $77be: $f8 $04
	nop                                              ; $77c0: $00
	call c, Call_019_4444                            ; $77c1: $dc $44 $44
	add b                                            ; $77c4: $80
	sbc d                                            ; $77c5: $9a
	ld [hl+], a                                      ; $77c6: $22
	ld b, d                                          ; $77c7: $42
	rrca                                             ; $77c8: $0f
	ld [bc], a                                       ; $77c9: $02
	ld [bc], a                                       ; $77ca: $02
	cp $67                                           ; $77cb: $fe $67
	ld hl, sp-$66                                    ; $77cd: $f8 $9a
	jr nz, jr_019_77e8                               ; $77cf: $20 $17

	add h                                            ; $77d1: $84
	inc b                                            ; $77d2: $04
	rlca                                             ; $77d3: $07
	ld e, e                                          ; $77d4: $5b
	ld hl, sp-$66                                    ; $77d5: $f8 $9a
	ld a, [de]                                       ; $77d7: $1a
	push de                                          ; $77d8: $d5
	ld [hl], l                                       ; $77d9: $75
	ld l, b                                          ; $77da: $68
	rst SubAFromBC                                          ; $77db: $e7
	ld e, e                                          ; $77dc: $5b
	ld hl, sp-$66                                    ; $77dd: $f8 $9a
	ld b, d                                          ; $77df: $42

Call_019_77e0:
	ld c, [hl]                                       ; $77e0: $4e
	ld d, e                                          ; $77e1: $53
	ld d, d                                          ; $77e2: $52
	inc l                                            ; $77e3: $2c
	ld e, e                                          ; $77e4: $5b
	ld hl, sp-$66                                    ; $77e5: $f8 $9a
	rra                                              ; $77e7: $1f

jr_019_77e8:
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	inc bc                                           ; $77ea: $03
	inc c                                            ; $77eb: $0c
	ld e, e                                          ; $77ec: $5b
	ld hl, sp-$64                                    ; $77ed: $f8 $9c
	pop bc                                           ; $77ef: $c1
	ld b, b                                          ; $77f0: $40
	add b                                            ; $77f1: $80
	db $fc                                           ; $77f2: $fc
	ld h, a                                          ; $77f3: $67
	ld hl, sp-$66                                    ; $77f4: $f8 $9a
	db $fc                                           ; $77f6: $fc
	inc b                                            ; $77f7: $04
	ld [$6090], sp                                   ; $77f8: $08 $90 $60
	ld e, e                                          ; $77fb: $5b
	ld hl, sp-$65                                    ; $77fc: $f8 $9b
	ld c, h                                          ; $77fe: $4c
	inc d                                            ; $77ff: $14
	jr nz, jr_019_7822                               ; $7800: $20 $20

	ld a, e                                          ; $7802: $7b
	call nc, $f863                                   ; $7803: $d4 $63 $f8
	pop hl                                           ; $7806: $e1
	inc b                                            ; $7807: $04
	nop                                              ; $7808: $00
	call c, Call_019_4c44                            ; $7809: $dc $44 $4c
	add b                                            ; $780c: $80
	sbc d                                            ; $780d: $9a
	rra                                              ; $780e: $1f
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	inc bc                                           ; $7811: $03
	inc c                                            ; $7812: $0c
	cp $67                                           ; $7813: $fe $67
	ld hl, sp-$66                                    ; $7815: $f8 $9a
	call nz, $8444                                   ; $7817: $c4 $44 $84
	inc b                                            ; $781a: $04
	ld [$f85b], sp                                   ; $781b: $08 $5b $f8
	sbc d                                            ; $781e: $9a
	ld de, $1010                                     ; $781f: $11 $10 $10

jr_019_7822:
	jr nc, jr_019_7834                               ; $7822: $30 $10

	ld e, e                                          ; $7824: $5b
	ld hl, sp-$66                                    ; $7825: $f8 $9a
	db $fc                                           ; $7827: $fc
	inc b                                            ; $7828: $04
	ld [$6090], sp                                   ; $7829: $08 $90 $60
	ld e, e                                          ; $782c: $5b
	ld hl, sp-$66                                    ; $782d: $f8 $9a
	ld b, d                                          ; $782f: $42
	ld c, [hl]                                       ; $7830: $4e
	ld d, e                                          ; $7831: $53
	ld d, d                                          ; $7832: $52
	inc l                                            ; $7833: $2c

jr_019_7834:
	ld e, e                                          ; $7834: $5b
	ld hl, sp-$01                                    ; $7835: $f8 $ff
	sbc h                                            ; $7837: $9c
	jr nz, jr_019_784a                               ; $7838: $20 $10

	jr jr_019_78b3                                   ; $783a: $18 $77

	rst JumpTable                                          ; $783c: $c7
	ld l, e                                          ; $783d: $6b
	ld hl, sp-$66                                    ; $783e: $f8 $9a
	ld de, $5555                                     ; $7840: $11 $55 $55
	ld d, c                                          ; $7843: $51
	ld de, $c077                                     ; $7844: $11 $77 $c0
	ld l, e                                          ; $7847: $6b
	ld hl, sp-$21                                    ; $7848: $f8 $df

jr_019_784a:
	db $10                                           ; $784a: $10
	sbc h                                            ; $784b: $9c
	ld de, $12f1                                     ; $784c: $11 $f1 $12
	ld e, e                                          ; $784f: $5b
	ld hl, sp-$21                                    ; $7850: $f8 $df
	adc b                                            ; $7852: $88
	sbc $08                                          ; $7853: $de $08
	ld e, e                                          ; $7855: $5b
	ld hl, sp+$04                                    ; $7856: $f8 $04
	nop                                              ; $7858: $00
	db $dd                                           ; $7859: $dd
	ld b, h                                          ; $785a: $44
	ld c, a                                          ; $785b: $4f
	add b                                            ; $785c: $80
	db $fd                                           ; $785d: $fd
	sbc e                                            ; $785e: $9b
	ld a, $02                                        ; $785f: $3e $02
	ld [bc], a                                       ; $7861: $02
	inc b                                            ; $7862: $04
	ld h, e                                          ; $7863: $63
	ld hl, sp-$68                                    ; $7864: $f8 $98
	ld [bc], a                                       ; $7866: $02
	dec b                                            ; $7867: $05
	dec c                                            ; $7868: $0d
	ld a, [bc]                                       ; $7869: $0a
	ld a, a                                          ; $786a: $7f
	ld [$6308], sp                                   ; $786b: $08 $08 $63
	ld hl, sp-$04                                    ; $786e: $f8 $fc
	rst SubAFromDE                                          ; $7870: $df
	ld a, [hl+]                                      ; $7871: $2a
	ld e, e                                          ; $7872: $5b
	ld hl, sp-$22                                    ; $7873: $f8 $de
	db $10                                           ; $7875: $10
	sbc l                                            ; $7876: $9d
	jr @+$16                                         ; $7877: $18 $14

	ld e, e                                          ; $7879: $5b
	ld hl, sp-$66                                    ; $787a: $f8 $9a
	nop                                              ; $787c: $00
	inc e                                            ; $787d: $1c
	ld a, [hl+]                                      ; $787e: $2a
	ld c, c                                          ; $787f: $49
	ld c, c                                          ; $7880: $49
	ld h, e                                          ; $7881: $63

jr_019_7882:
	ld hl, sp-$68                                    ; $7882: $f8 $98
	db $10                                           ; $7884: $10
	inc de                                           ; $7885: $13
	db $10                                           ; $7886: $10
	inc de                                           ; $7887: $13
	jr c, jr_019_78c9                                ; $7888: $38 $3f

	ld d, a                                          ; $788a: $57
	ld h, e                                          ; $788b: $63
	ld hl, sp-$68                                    ; $788c: $f8 $98
	add c                                            ; $788e: $81
	db $e3                                           ; $788f: $e3
	add c                                            ; $7890: $81
	rst SubAFromBC                                          ; $7891: $e7
	add d                                            ; $7892: $82
	ldh a, [c]                                       ; $7893: $f2
	rst SubAFromBC                                          ; $7894: $e7
	ld h, e                                          ; $7895: $63
	ld hl, sp-$68                                    ; $7896: $f8 $98
	ccf                                              ; $7898: $3f
	and c                                            ; $7899: $a1
	ld [hl+], a                                      ; $789a: $22
	ldh [$bf], a                                     ; $789b: $e0 $bf
	or c                                             ; $789d: $b1
	ld [$f863], a                                    ; $789e: $ea $63 $f8
	ld [hl], a                                       ; $78a1: $77
	cp b                                             ; $78a2: $b8
	sbc h                                            ; $78a3: $9c
	ld a, $10                                        ; $78a4: $3e $10
	dec sp                                           ; $78a6: $3b
	ld e, e                                          ; $78a7: $5b
	ld hl, sp-$0c                                    ; $78a8: $f8 $f4
	inc b                                            ; $78aa: $04
	nop                                              ; $78ab: $00
	call c, $3e44                                    ; $78ac: $dc $44 $3e
	add b                                            ; $78af: $80
	cp $df                                           ; $78b0: $fe $df
	db $10                                           ; $78b2: $10

jr_019_78b3:
	sbc h                                            ; $78b3: $9c
	inc a                                            ; $78b4: $3c
	db $10                                           ; $78b5: $10
	ld d, b                                          ; $78b6: $50
	ld e, e                                          ; $78b7: $5b
	ld hl, sp-$02                                    ; $78b8: $f8 $fe
	sbc l                                            ; $78ba: $9d
	inc a                                            ; $78bb: $3c
	ld b, d                                          ; $78bc: $42
	ld d, a                                          ; $78bd: $57
	ld hl, sp-$65                                    ; $78be: $f8 $9b
	ld a, a                                          ; $78c0: $7f
	inc b                                            ; $78c1: $04
	ld [$5710], sp                                   ; $78c2: $08 $10 $57
	ld hl, sp-$0c                                    ; $78c5: $f8 $f4
	sbc $08                                          ; $78c7: $de $08

jr_019_78c9:
	sbc e                                            ; $78c9: $9b
	rla                                              ; $78ca: $17
	ld de, $3231                                     ; $78cb: $11 $31 $32
	ld h, e                                          ; $78ce: $63
	ld hl, sp-$68                                    ; $78cf: $f8 $98
	add a                                            ; $78d1: $87
	add c                                            ; $78d2: $81
	add c                                            ; $78d3: $81
	pop af                                           ; $78d4: $f1
	pop bc                                           ; $78d5: $c1
	rst JumpTable                                          ; $78d6: $c7
	and c                                            ; $78d7: $a1
	ld h, e                                          ; $78d8: $63
	ld hl, sp-$62                                    ; $78d9: $f8 $9e
	pop de                                           ; $78db: $d1
	db $dd                                           ; $78dc: $dd
	ld de, $fb7f                                     ; $78dd: $11 $7f $fb
	ld h, e                                          ; $78e0: $63
	ld hl, sp-$01                                    ; $78e1: $f8 $ff
	rst SubAFromDE                                          ; $78e3: $df
	jr nz, jr_019_7882                               ; $78e4: $20 $9c

	db $10                                           ; $78e6: $10
	inc de                                           ; $78e7: $13
	inc c                                            ; $78e8: $0c
	ld e, e                                          ; $78e9: $5b
	ld hl, sp-$1c                                    ; $78ea: $f8 $e4
	inc b                                            ; $78ec: $04
	nop                                              ; $78ed: $00
	call c, Call_019_4644                            ; $78ee: $dc $44 $46
	add b                                            ; $78f1: $80
	sub a                                            ; $78f2: $97
	nop                                              ; $78f3: $00
	dec b                                            ; $78f4: $05
	dec b                                            ; $78f5: $05
	nop                                              ; $78f6: $00
	ld a, a                                          ; $78f7: $7f
	inc b                                            ; $78f8: $04
	ld [$6310], sp                                   ; $78f9: $08 $10 $63
	ld hl, sp-$01                                    ; $78fc: $f8 $ff
	rst SubAFromDE                                          ; $78fe: $df
	db $10                                           ; $78ff: $10
	sbc h                                            ; $7900: $9c
	ld a, [hl]                                       ; $7901: $7e
	ld [$5b3f], sp                                   ; $7902: $08 $3f $5b
	ld hl, sp-$62                                    ; $7905: $f8 $9e
	ld a, $7b                                        ; $7907: $3e $7b
	jp hl                                            ; $7909: $e9


	sbc [hl]                                         ; $790a: $9e
	ld a, $5b                                        ; $790b: $3e $5b
	ld hl, sp+$7f                                    ; $790d: $f8 $7f
	rst FarCall                                          ; $790f: $f7
	rst SubAFromDE                                          ; $7910: $df
	ld [bc], a                                       ; $7911: $02
	sbc [hl]                                         ; $7912: $9e
	inc b                                            ; $7913: $04
	ld h, e                                          ; $7914: $63
	ld hl, sp-$68                                    ; $7915: $f8 $98
	ld [bc], a                                       ; $7917: $02
	dec b                                            ; $7918: $05
	dec c                                            ; $7919: $0d
	ld a, [bc]                                       ; $791a: $0a
	ld a, a                                          ; $791b: $7f
	ld [$6308], sp                                   ; $791c: $08 $08 $63
	ld hl, sp-$04                                    ; $791f: $f8 $fc
	rst SubAFromDE                                          ; $7921: $df
	ld a, [hl+]                                      ; $7922: $2a
	ld e, e                                          ; $7923: $5b
	ld hl, sp-$22                                    ; $7924: $f8 $de
	db $10                                           ; $7926: $10
	sbc l                                            ; $7927: $9d
	jr jr_019_793e                                   ; $7928: $18 $14

	ld e, a                                          ; $792a: $5f
	ld hl, sp-$67                                    ; $792b: $f8 $99
	dec b                                            ; $792d: $05
	dec d                                            ; $792e: $15
	db $10                                           ; $792f: $10
	ld [de], a                                       ; $7930: $12
	ld a, c                                          ; $7931: $79
	dec d                                            ; $7932: $15
	ld e, a                                          ; $7933: $5f
	ld hl, sp-$0d                                    ; $7934: $f8 $f3
	inc b                                            ; $7936: $04
	nop                                              ; $7937: $00
	db $dd                                           ; $7938: $dd
	ld b, h                                          ; $7939: $44
	ld c, d                                          ; $793a: $4a
	add b                                            ; $793b: $80
	sbc d                                            ; $793c: $9a
	inc b                                            ; $793d: $04

jr_019_793e:
	ld [$2214], sp                                   ; $793e: $08 $14 $22
	ld b, c                                          ; $7941: $41
	cp $67                                           ; $7942: $fe $67
	ld hl, sp-$66                                    ; $7944: $f8 $9a
	ld a, [hl+]                                      ; $7946: $2a
	add hl, hl                                       ; $7947: $29
	add hl, hl                                       ; $7948: $29
	ld c, c                                          ; $7949: $49
	ld [$f857], sp                                   ; $794a: $08 $57 $f8
	rst SubAFromDE                                          ; $794d: $df
	ld [bc], a                                       ; $794e: $02
	sbc l                                            ; $794f: $9d
	inc b                                            ; $7950: $04
	jr jr_019_79ae                                   ; $7951: $18 $5b

	ld hl, sp-$63                                    ; $7953: $f8 $9d
	ld [de], a                                       ; $7955: $12
	ld de, $10de                                     ; $7956: $11 $de $10
	ld e, e                                          ; $7959: $5b
	ld hl, sp-$66                                    ; $795a: $f8 $9a
	ld c, c                                          ; $795c: $49
	ld d, c                                          ; $795d: $51
	ld d, c                                          ; $795e: $51
	ld h, c                                          ; $795f: $61
	ld h, $5b                                        ; $7960: $26 $5b
	ld hl, sp-$66                                    ; $7962: $f8 $9a
	ld d, [hl]                                       ; $7964: $56
	inc de                                           ; $7965: $13
	ld [de], a                                       ; $7966: $12
	inc de                                           ; $7967: $13
	inc d                                            ; $7968: $14
	ld e, e                                          ; $7969: $5b
	ld hl, sp-$66                                    ; $796a: $f8 $9a
	ld hl, $21e7                                     ; $796c: $21 $e7 $21
	pop hl                                           ; $796f: $e1
	ld hl, $f85b                                     ; $7970: $21 $5b $f8
	sbc d                                            ; $7973: $9a
	ld a, [hl+]                                      ; $7974: $2a
	db $e4                                           ; $7975: $e4
	ld l, $2a                                        ; $7976: $2e $2a
	ld sp, $f85b                                     ; $7978: $31 $5b $f8
	sbc d                                            ; $797b: $9a
	inc c                                            ; $797c: $0c
	inc d                                            ; $797d: $14
	jr nz, jr_019_79a0                               ; $797e: $20 $20

	rra                                              ; $7980: $1f
	ld e, e                                          ; $7981: $5b
	ld hl, sp-$0f                                    ; $7982: $f8 $f1
	inc b                                            ; $7984: $04
	nop                                              ; $7985: $00
	call c, Call_019_4044                            ; $7986: $dc $44 $40
	nop                                              ; $7989: $00
	rst SubAFromDE                                          ; $798a: $df
	inc a                                            ; $798b: $3c
	rst SubAFromDE                                          ; $798c: $df
	db $10                                           ; $798d: $10
	db $dd                                           ; $798e: $dd
	ld de, $0edf                                     ; $798f: $11 $df $0e
	ei                                               ; $7992: $fb

jr_019_7993:
	db $dd                                           ; $7993: $dd
	ld [bc], a                                       ; $7994: $02
	rst SubAFromDE                                          ; $7995: $df
	inc b                                            ; $7996: $04
	rst SubAFromDE                                          ; $7997: $df
	jr jr_019_7993                                   ; $7998: $18 $f9

	db $db                                           ; $799a: $db
	db $10                                           ; $799b: $10
	rst SubAFromDE                                          ; $799c: $df
	ld [$06df], sp                                   ; $799d: $08 $df $06

jr_019_79a0:
	rst FarCall                                          ; $79a0: $f7
	rst SubAFromDE                                          ; $79a1: $df
	jr nz, @-$1f                                     ; $79a2: $20 $df

jr_019_79a4:
	db $10                                           ; $79a4: $10
	rst SubAFromDE                                          ; $79a5: $df
	jr @-$1f                                         ; $79a6: $18 $df

	ld [$dffd], sp                                   ; $79a8: $08 $fd $df
	ld d, d                                          ; $79ab: $52
	db $dd                                           ; $79ac: $dd
	inc d                                            ; $79ad: $14

jr_019_79ae:
	db $dd                                           ; $79ae: $dd
	db $10                                           ; $79af: $10
	ei                                               ; $79b0: $fb
	rst SubAFromDE                                          ; $79b1: $df
	and c                                            ; $79b2: $a1
	db $dd                                           ; $79b3: $dd
	sub c                                            ; $79b4: $91
	db $dd                                           ; $79b5: $dd
	add c                                            ; $79b6: $81
	ei                                               ; $79b7: $fb
	db $dd                                           ; $79b8: $dd
	ld bc, $05df                                     ; $79b9: $01 $df $05
	rst SubAFromDE                                          ; $79bc: $df
	inc bc                                           ; $79bd: $03
	rst SubAFromDE                                          ; $79be: $df
	ld bc, $b067                                     ; $79bf: $01 $67 $b0
	db $db                                           ; $79c2: $db
	jr nz, jr_019_79a4                               ; $79c3: $20 $df

	rra                                              ; $79c5: $1f
	ldh [$db], a                                     ; $79c6: $e0 $db
	inc b                                            ; $79c8: $04
	nop                                              ; $79c9: $00
	call c, Call_019_4244                            ; $79ca: $dc $44 $42
	add b                                            ; $79cd: $80
	sbc $10                                          ; $79ce: $de $10
	sbc l                                            ; $79d0: $9d
	ld [$fe06], sp                                   ; $79d1: $08 $06 $fe
	ld h, a                                          ; $79d4: $67
	ld hl, sp-$66                                    ; $79d5: $f8 $9a
	inc b                                            ; $79d7: $04
	ld [bc], a                                       ; $79d8: $02
	ld b, b                                          ; $79d9: $40
	ld b, b                                          ; $79da: $40
	ld a, $5b                                        ; $79db: $3e $5b
	ld hl, sp-$66                                    ; $79dd: $f8 $9a
	ld b, c                                          ; $79df: $41
	add hl, de                                       ; $79e0: $19
	dec h                                            ; $79e1: $25
	ld h, $1c                                        ; $79e2: $26 $1c
	ld e, e                                          ; $79e4: $5b
	ld hl, sp-$66                                    ; $79e5: $f8 $9a
	inc b                                            ; $79e7: $04
	ld [$2214], sp                                   ; $79e8: $08 $14 $22
	ld b, c                                          ; $79eb: $41
	ld e, e                                          ; $79ec: $5b
	ld hl, sp-$66                                    ; $79ed: $f8 $9a
	ld a, [hl+]                                      ; $79ef: $2a
	add hl, hl                                       ; $79f0: $29
	add hl, hl                                       ; $79f1: $29
	ld c, c                                          ; $79f2: $49
	ld [$f857], sp                                   ; $79f3: $08 $57 $f8
	rst SubAFromDE                                          ; $79f6: $df
	ld [bc], a                                       ; $79f7: $02
	sbc l                                            ; $79f8: $9d
	inc b                                            ; $79f9: $04
	jr jr_019_7a57                                   ; $79fa: $18 $5b

	ld hl, sp-$63                                    ; $79fc: $f8 $9d
	ld [de], a                                       ; $79fe: $12
	ld de, $10de                                     ; $79ff: $11 $de $10
	ld e, e                                          ; $7a02: $5b
	ld hl, sp-$65                                    ; $7a03: $f8 $9b
	dec h                                            ; $7a05: $25
	inc h                                            ; $7a06: $24
	ld b, h                                          ; $7a07: $44
	ld d, h                                          ; $7a08: $54
	ld [hl], a                                       ; $7a09: $77
	ret c                                            ; $7a0a: $d8

	ld h, a                                          ; $7a0b: $67
	ld hl, sp-$0f                                    ; $7a0c: $f8 $f1
	inc b                                            ; $7a0e: $04
	nop                                              ; $7a0f: $00
	db $dd                                           ; $7a10: $dd
	ld b, h                                          ; $7a11: $44
	inc hl                                           ; $7a12: $23
	add b                                            ; $7a13: $80
	sub a                                            ; $7a14: $97
	nop                                              ; $7a15: $00
	ld de, $2410                                     ; $7a16: $11 $10 $24
	ld c, b                                          ; $7a19: $48
	ld sp, $7d24                                     ; $7a1a: $31 $24 $7d
	ld h, e                                          ; $7a1d: $63
	ld hl, sp-$68                                    ; $7a1e: $f8 $98
	ldh a, [hDisp1_SCY]                                     ; $7a20: $f0 $90
	sub b                                            ; $7a22: $90
	sub c                                            ; $7a23: $91
	ld [hl+], a                                      ; $7a24: $22
	inc b                                            ; $7a25: $04
	ldh a, [$63]                                     ; $7a26: $f0 $63
	ld hl, sp-$68                                    ; $7a28: $f8 $98
	jr nz, jr_019_7a7c                               ; $7a2a: $20 $50

	adc b                                            ; $7a2c: $88
	inc b                                            ; $7a2d: $04
	ld [bc], a                                       ; $7a2e: $02
	adc c                                            ; $7a2f: $89
	adc b                                            ; $7a30: $88
	ld h, e                                          ; $7a31: $63
	ld hl, sp-$20                                    ; $7a32: $f8 $e0
	sub d                                            ; $7a34: $92
	inc b                                            ; $7a35: $04
	nop                                              ; $7a36: $00
	call c, $2344                                    ; $7a37: $dc $44 $23
	add b                                            ; $7a3a: $80
	cp $9a                                           ; $7a3b: $fe $9a
	jr nz, jr_019_7a62                               ; $7a3d: $20 $23

	ld a, c                                          ; $7a3f: $79
	jr nz, jr_019_7a64                               ; $7a40: $20 $22

	ld e, e                                          ; $7a42: $5b
	ld hl, sp-$62                                    ; $7a43: $f8 $9e
	ld [hl+], a                                      ; $7a45: $22
	db $dd                                           ; $7a46: $dd
	ld hl, $f85b                                     ; $7a47: $21 $5b $f8
	rst SubAFromDE                                          ; $7a4a: $df
	ld [$7f9c], sp                                   ; $7a4b: $08 $9c $7f
	ld [$5b3e], sp                                   ; $7a4e: $08 $3e $5b
	ld hl, sp-$21                                    ; $7a51: $f8 $df
	inc b                                            ; $7a53: $04
	sbc h                                            ; $7a54: $9c
	ld a, a                                          ; $7a55: $7f
	inc b                                            ; $7a56: $04

jr_019_7a57:
	inc e                                            ; $7a57: $1c
	ld e, e                                          ; $7a58: $5b
	ld hl, sp-$20                                    ; $7a59: $f8 $e0
	and h                                            ; $7a5b: $a4
	inc b                                            ; $7a5c: $04
	nop                                              ; $7a5d: $00
	call c, $2944                                    ; $7a5e: $dc $44 $29
	add b                                            ; $7a61: $80

jr_019_7a62:
	cp $9a                                           ; $7a62: $fe $9a

jr_019_7a64:
	ld [$103c], sp                                   ; $7a64: $08 $3c $10
	ld de, $5b3e                                     ; $7a67: $11 $3e $5b
	ld hl, sp-$62                                    ; $7a6a: $f8 $9e
	ld [hl+], a                                      ; $7a6c: $22
	db $dd                                           ; $7a6d: $dd
	ld hl, $f85b                                     ; $7a6e: $21 $5b $f8
	rst SubAFromDE                                          ; $7a71: $df
	ld [$7f9d], sp                                   ; $7a72: $08 $9d $7f
	ld [$e073], sp                                   ; $7a75: $08 $73 $e0
	ld l, e                                          ; $7a78: $6b
	ld hl, sp-$22                                    ; $7a79: $f8 $de
	inc h                                            ; $7a7b: $24

jr_019_7a7c:
	sbc l                                            ; $7a7c: $9d
	ld a, a                                          ; $7a7d: $7f
	inc h                                            ; $7a7e: $24
	ld e, e                                          ; $7a7f: $5b
	ld hl, sp-$22                                    ; $7a80: $f8 $de
	ld [$10df], sp                                   ; $7a82: $08 $df $10
	ld e, e                                          ; $7a85: $5b

jr_019_7a86:
	ld hl, sp-$20                                    ; $7a86: $f8 $e0
	call nz, $0004                                   ; $7a88: $c4 $04 $00
	db $dd                                           ; $7a8b: $dd
	ld b, h                                          ; $7a8c: $44

jr_019_7a8d:
	ld hl, $df00                                     ; $7a8d: $21 $00 $df
	ld de, $55dd                                     ; $7a90: $11 $dd $55
	rst SubAFromDE                                          ; $7a93: $df
	ld d, c                                          ; $7a94: $51
	rst SubAFromDE                                          ; $7a95: $df
	ld de, $ddfb                                     ; $7a96: $11 $fb $dd
	db $10                                           ; $7a99: $10
	rst SubAFromDE                                          ; $7a9a: $df
	ld de, $f1df                                     ; $7a9b: $11 $df $f1
	rst SubAFromDE                                          ; $7a9e: $df
	ld [de], a                                       ; $7a9f: $12
	ei                                               ; $7aa0: $fb
	db $dd                                           ; $7aa1: $dd
	adc b                                            ; $7aa2: $88
	db $db                                           ; $7aa3: $db
	ld [$dff7], sp                                   ; $7aa4: $08 $f7 $df
	jr jr_019_7a86                                   ; $7aa7: $18 $dd

	inc h                                            ; $7aa9: $24
	rst SubAFromDE                                          ; $7aaa: $df
	jr jr_019_7a8d                                   ; $7aab: $18 $e0

	sbc l                                            ; $7aad: $9d
	inc b                                            ; $7aae: $04
	nop                                              ; $7aaf: $00
	call c, $2d44                                    ; $7ab0: $dc $44 $2d
	add b                                            ; $7ab3: $80
	sbc d                                            ; $7ab4: $9a
	ld b, d                                          ; $7ab5: $42
	ld c, [hl]                                       ; $7ab6: $4e
	inc de                                           ; $7ab7: $13
	ld [de], a                                       ; $7ab8: $12
	ld c, $fe                                        ; $7ab9: $0e $fe
	ld h, a                                          ; $7abb: $67
	ld hl, sp-$66                                    ; $7abc: $f8 $9a
	ld hl, $0211                                     ; $7abe: $21 $11 $02
	ld [bc], a                                       ; $7ac1: $02
	inc c                                            ; $7ac2: $0c
	ld e, e                                          ; $7ac3: $5b
	ld hl, sp-$66                                    ; $7ac4: $f8 $9a
	ld [$4e38], sp                                   ; $7ac6: $08 $38 $4e
	ld c, c                                          ; $7ac9: $49
	jr nc, jr_019_7b27                               ; $7aca: $30 $5b

	ld hl, sp-$21                                    ; $7acc: $f8 $df
	inc h                                            ; $7ace: $24
	sbc h                                            ; $7acf: $9c
	inc e                                            ; $7ad0: $1c
	inc b                                            ; $7ad1: $04
	ld [$f85b], sp                                   ; $7ad2: $08 $5b $f8
	rst $38                                          ; $7ad5: $ff
	sbc e                                            ; $7ad6: $9b
	jr jr_019_7afd                                   ; $7ad7: $18 $24

	inc h                                            ; $7ad9: $24
	jr jr_019_7b33                                   ; $7ada: $18 $57

	ld hl, sp-$20                                    ; $7adc: $f8 $e0
	or e                                             ; $7ade: $b3
	inc b                                            ; $7adf: $04
	nop                                              ; $7ae0: $00
	call c, $3544                                    ; $7ae1: $dc $44 $35
	add b                                            ; $7ae4: $80
	sbc d                                            ; $7ae5: $9a
	ld d, e                                          ; $7ae6: $53
	ld d, l                                          ; $7ae7: $55
	ld c, c                                          ; $7ae8: $49
	ld e, c                                          ; $7ae9: $59
	ld [hl-], a                                      ; $7aea: $32
	cp $67                                           ; $7aeb: $fe $67
	ld hl, sp-$66                                    ; $7aed: $f8 $9a
	ld hl, $0211                                     ; $7aef: $21 $11 $02
	ld [bc], a                                       ; $7af2: $02
	inc c                                            ; $7af3: $0c
	ld e, e                                          ; $7af4: $5b
	ld hl, sp-$66                                    ; $7af5: $f8 $9a
	ld [$4e38], sp                                   ; $7af7: $08 $38 $4e
	ld c, c                                          ; $7afa: $49
	jr nc, jr_019_7b58                               ; $7afb: $30 $5b

jr_019_7afd:
	ld hl, sp-$62                                    ; $7afd: $f8 $9e
	inc h                                            ; $7aff: $24
	sbc $20                                          ; $7b00: $de $20
	sbc [hl]                                         ; $7b02: $9e
	ld e, $5b                                        ; $7b03: $1e $5b
	ld hl, sp-$66                                    ; $7b05: $f8 $9a
	jr c, jr_019_7b32                                ; $7b07: $38 $29

	add hl, hl                                       ; $7b09: $29
	ld c, c                                          ; $7b0a: $49
	ld b, [hl]                                       ; $7b0b: $46
	ld e, e                                          ; $7b0c: $5b
	ld hl, sp-$01                                    ; $7b0d: $f8 $ff
	sbc e                                            ; $7b0f: $9b
	jr jr_019_7b36                                   ; $7b10: $18 $24

	inc h                                            ; $7b12: $24
	jr jr_019_7b6c                                   ; $7b13: $18 $57

	ld hl, sp-$20                                    ; $7b15: $f8 $e0
	db $d3                                           ; $7b17: $d3
	inc b                                            ; $7b18: $04
	nop                                              ; $7b19: $00
	db $dd                                           ; $7b1a: $dd
	ld b, h                                          ; $7b1b: $44
	ld a, [bc]                                       ; $7b1c: $0a
	nop                                              ; $7b1d: $00
	db $dd                                           ; $7b1e: $dd
	rst $38                                          ; $7b1f: $ff
	rst SubAFromDE                                          ; $7b20: $df
	rst SubAFromBC                                          ; $7b21: $e7
	db $dd                                           ; $7b22: $dd
	rst JumpTable                                          ; $7b23: $c7
	db $db                                           ; $7b24: $db
	rst SubAFromBC                                          ; $7b25: $e7
	ld [bc], a                                       ; $7b26: $02

jr_019_7b27:
	nop                                              ; $7b27: $00
	dec c                                            ; $7b28: $0d
	add b                                            ; $7b29: $80
	rst SubAFromDE                                          ; $7b2a: $df
	rst $38                                          ; $7b2b: $ff
	sbc c                                            ; $7b2c: $99
	jp $9981                                         ; $7b2d: $c3 $81 $99


	sbc c                                            ; $7b30: $99
	sub c                                            ; $7b31: $91

jr_019_7b32:
	di                                               ; $7b32: $f3

jr_019_7b33:
	ld h, a                                          ; $7b33: $67
	ld hl, sp+$02                                    ; $7b34: $f8 $02

jr_019_7b36:
	nop                                              ; $7b36: $00
	dec c                                            ; $7b37: $0d
	add b                                            ; $7b38: $80
	rst SubAFromDE                                          ; $7b39: $df
	rst $38                                          ; $7b3a: $ff
	sbc c                                            ; $7b3b: $99
	jp $9981                                         ; $7b3c: $c3 $81 $99


	sbc c                                            ; $7b3f: $99

Jump_019_7b40:
	ld sp, hl                                        ; $7b40: $f9
	db $e3                                           ; $7b41: $e3
	ld h, a                                          ; $7b42: $67
	ld hl, sp+$02                                    ; $7b43: $f8 $02
	nop                                              ; $7b45: $00
	inc c                                            ; $7b46: $0c
	nop                                              ; $7b47: $00
	db $dd                                           ; $7b48: $dd
	rst $38                                          ; $7b49: $ff
	rst SubAFromDE                                          ; $7b4a: $df
	di                                               ; $7b4b: $f3
	db $dd                                           ; $7b4c: $dd
	db $e3                                           ; $7b4d: $e3
	db $dd                                           ; $7b4e: $dd
	jp $d3df                                         ; $7b4f: $c3 $df $d3


	ld [bc], a                                       ; $7b52: $02
	nop                                              ; $7b53: $00
	inc c                                            ; $7b54: $0c
	nop                                              ; $7b55: $00
	db $dd                                           ; $7b56: $dd
	rst $38                                          ; $7b57: $ff

jr_019_7b58:
	db $dd                                           ; $7b58: $dd
	add c                                            ; $7b59: $81
	db $dd                                           ; $7b5a: $dd
	sbc a                                            ; $7b5b: $9f
	rst SubAFromDE                                          ; $7b5c: $df
	add e                                            ; $7b5d: $83
	rst SubAFromDE                                          ; $7b5e: $df
	add c                                            ; $7b5f: $81
	ld [bc], a                                       ; $7b60: $02
	nop                                              ; $7b61: $00
	dec c                                            ; $7b62: $0d
	add b                                            ; $7b63: $80
	rst SubAFromDE                                          ; $7b64: $df
	rst $38                                          ; $7b65: $ff
	sbc c                                            ; $7b66: $99
	jp $9981                                         ; $7b67: $c3 $81 $99


	sbc c                                            ; $7b6a: $99
	sbc a                                            ; $7b6b: $9f

jr_019_7b6c:
	add e                                            ; $7b6c: $83
	ld h, a                                          ; $7b6d: $67
	ld hl, sp+$02                                    ; $7b6e: $f8 $02
	nop                                              ; $7b70: $00
	inc c                                            ; $7b71: $0c
	nop                                              ; $7b72: $00
	db $dd                                           ; $7b73: $dd
	rst $38                                          ; $7b74: $ff
	db $dd                                           ; $7b75: $dd
	add c                                            ; $7b76: $81
	db $dd                                           ; $7b77: $dd
	sbc c                                            ; $7b78: $99
	rst SubAFromDE                                          ; $7b79: $df
	ld sp, hl                                        ; $7b7a: $f9
	rst SubAFromDE                                          ; $7b7b: $df
	di                                               ; $7b7c: $f3
	ld [bc], a                                       ; $7b7d: $02
	nop                                              ; $7b7e: $00
	inc c                                            ; $7b7f: $0c
	nop                                              ; $7b80: $00
	db $dd                                           ; $7b81: $dd
	rst $38                                          ; $7b82: $ff

Jump_019_7b83:
	rst SubAFromDE                                          ; $7b83: $df
	jp $81df                                         ; $7b84: $c3 $df $81


	db $db                                           ; $7b87: $db
	sbc c                                            ; $7b88: $99
	rst SubAFromDE                                          ; $7b89: $df
	jp $0002                                         ; $7b8a: $c3 $02 $00


	inc c                                            ; $7b8d: $0c
	nop                                              ; $7b8e: $00
	db $dd                                           ; $7b8f: $dd
	rst $38                                          ; $7b90: $ff
	rst SubAFromDE                                          ; $7b91: $df
	jp $81df                                         ; $7b92: $c3 $df $81


	db $db                                           ; $7b95: $db
	sbc c                                            ; $7b96: $99
	rst SubAFromDE                                          ; $7b97: $df
	add c                                            ; $7b98: $81
	ld [bc], a                                       ; $7b99: $02
	nop                                              ; $7b9a: $00
	inc c                                            ; $7b9b: $0c
	nop                                              ; $7b9c: $00
	db $dd                                           ; $7b9d: $dd
	rst $38                                          ; $7b9e: $ff
	rst SubAFromDE                                          ; $7b9f: $df
	sbc c                                            ; $7ba0: $99
	rst SubAFromDE                                          ; $7ba1: $df
	sub b                                            ; $7ba2: $90
	db $dd                                           ; $7ba3: $dd
	ld d, $dd                                        ; $7ba4: $16 $dd
	sub [hl]                                         ; $7ba6: $96
	ld [bc], a                                       ; $7ba7: $02
	nop                                              ; $7ba8: $00
	ld a, [bc]                                       ; $7ba9: $0a
	nop                                              ; $7baa: $00
	db $dd                                           ; $7bab: $dd
	rst $38                                          ; $7bac: $ff
	db $dd                                           ; $7bad: $dd
	sbc c                                            ; $7bae: $99
	db $dd                                           ; $7baf: $dd
	ld de, $99dd                                     ; $7bb0: $11 $dd $99
	ld [bc], a                                       ; $7bb3: $02
	nop                                              ; $7bb4: $00
	ld a, [bc]                                       ; $7bb5: $0a
	nop                                              ; $7bb6: $00
	db $dd                                           ; $7bb7: $dd
	rst $38                                          ; $7bb8: $ff
	db $dd                                           ; $7bb9: $dd
	sub c                                            ; $7bba: $91
	db $dd                                           ; $7bbb: $dd
	inc b                                            ; $7bbc: $04
	db $dd                                           ; $7bbd: $dd
	add h                                            ; $7bbe: $84
	ld [bc], a                                       ; $7bbf: $02
	nop                                              ; $7bc0: $00
	ld [$d900], sp                                   ; $7bc1: $08 $00 $d9
	rst SubAFromBC                                          ; $7bc4: $e7
	db $dd                                           ; $7bc5: $dd
	jp $ffdd                                         ; $7bc6: $c3 $dd $ff


	ld [bc], a                                       ; $7bc9: $02
	nop                                              ; $7bca: $00
	dec c                                            ; $7bcb: $0d
	add b                                            ; $7bcc: $80
	sub a                                            ; $7bcd: $97
	db $e3                                           ; $7bce: $e3
	rst SubAFromBC                                          ; $7bcf: $e7
	rst JumpTable                                          ; $7bd0: $c7
	rst GetHLinHL                                          ; $7bd1: $cf
	add c                                            ; $7bd2: $81
	add c                                            ; $7bd3: $81
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	ld h, a                                          ; $7bd6: $67
	ld hl, sp+$02                                    ; $7bd7: $f8 $02
	nop                                              ; $7bd9: $00
	dec c                                            ; $7bda: $0d
	add b                                            ; $7bdb: $80
	sub a                                            ; $7bdc: $97
	db $e3                                           ; $7bdd: $e3
	ld sp, hl                                        ; $7bde: $f9
	sbc c                                            ; $7bdf: $99
	sbc c                                            ; $7be0: $99
	add c                                            ; $7be1: $81
	jp rIE                                         ; $7be2: $c3 $ff $ff


	ld h, a                                          ; $7be5: $67
	ld hl, sp+$02                                    ; $7be6: $f8 $02
	nop                                              ; $7be8: $00
	ld a, [bc]                                       ; $7be9: $0a
	nop                                              ; $7bea: $00
	rst SubAFromDE                                          ; $7beb: $df
	sub e                                            ; $7bec: $93
	db $dd                                           ; $7bed: $dd
	add c                                            ; $7bee: $81
	db $db                                           ; $7bef: $db
	di                                               ; $7bf0: $f3
	db $dd                                           ; $7bf1: $dd
	rst $38                                          ; $7bf2: $ff
	ld [bc], a                                       ; $7bf3: $02
	nop                                              ; $7bf4: $00
	inc c                                            ; $7bf5: $0c
	nop                                              ; $7bf6: $00
	rst SubAFromDE                                          ; $7bf7: $df
	ld sp, hl                                        ; $7bf8: $f9
	db $db                                           ; $7bf9: $db
	sbc c                                            ; $7bfa: $99
	rst SubAFromDE                                          ; $7bfb: $df
	add c                                            ; $7bfc: $81
	rst SubAFromDE                                          ; $7bfd: $df
	jp $ffdd                                         ; $7bfe: $c3 $dd $ff


	ld [bc], a                                       ; $7c01: $02
	nop                                              ; $7c02: $00
	inc c                                            ; $7c03: $0c
	nop                                              ; $7c04: $00
	rst SubAFromDE                                          ; $7c05: $df
	add c                                            ; $7c06: $81
	db $db                                           ; $7c07: $db
	sbc c                                            ; $7c08: $99
	rst SubAFromDE                                          ; $7c09: $df
	add c                                            ; $7c0a: $81
	rst SubAFromDE                                          ; $7c0b: $df
	jp $ffdd                                         ; $7c0c: $c3 $dd $ff


	ld [bc], a                                       ; $7c0f: $02
	nop                                              ; $7c10: $00
	ld b, $00                                        ; $7c11: $06 $00
	push de                                          ; $7c13: $d5
	rst SubAFromBC                                          ; $7c14: $e7
	db $dd                                           ; $7c15: $dd
	rst $38                                          ; $7c16: $ff
	ld [bc], a                                       ; $7c17: $02
	nop                                              ; $7c18: $00
	inc c                                            ; $7c19: $0c
	nop                                              ; $7c1a: $00
	rst SubAFromDE                                          ; $7c1b: $df
	jp $99db                                         ; $7c1c: $c3 $db $99


	rst SubAFromDE                                          ; $7c1f: $df
	add c                                            ; $7c20: $81
	rst SubAFromDE                                          ; $7c21: $df

Call_019_7c22:
	jp $ffdd                                         ; $7c22: $c3 $dd $ff


	ld [bc], a                                       ; $7c25: $02
	nop                                              ; $7c26: $00
	dec c                                            ; $7c27: $0d
	add b                                            ; $7c28: $80
	sub a                                            ; $7c29: $97
	pop bc                                           ; $7c2a: $c1
	ld sp, hl                                        ; $7c2b: $f9
	sbc c                                            ; $7c2c: $99
	sbc c                                            ; $7c2d: $99
	add c                                            ; $7c2e: $81
	jp rIE                                         ; $7c2f: $c3 $ff $ff


	ld h, a                                          ; $7c32: $67
	ld hl, sp+$02                                    ; $7c33: $f8 $02
	nop                                              ; $7c35: $00
	add hl, bc                                       ; $7c36: $09
	nop                                              ; $7c37: $00
	reti                                             ; $7c38: $d9


	sub [hl]                                         ; $7c39: $96
	rst $38                                          ; $7c3a: $ff
	rst SubAFromDE                                          ; $7c3b: $df
	add hl, bc                                       ; $7c3c: $09
	db $dd                                           ; $7c3d: $dd
	rst $38                                          ; $7c3e: $ff
	ld [bc], a                                       ; $7c3f: $02
	nop                                              ; $7c40: $00
	rlca                                             ; $7c41: $07
	nop                                              ; $7c42: $00
	reti                                             ; $7c43: $d9


	sbc c                                            ; $7c44: $99
	db $fd                                           ; $7c45: $fd
	db $dd                                           ; $7c46: $dd
	rst $38                                          ; $7c47: $ff
	ld [bc], a                                       ; $7c48: $02
	nop                                              ; $7c49: $00
	add hl, bc                                       ; $7c4a: $09
	nop                                              ; $7c4b: $00
	db $dd                                           ; $7c4c: $dd
	sbc c                                            ; $7c4d: $99
	db $dd                                           ; $7c4e: $dd
	sub e                                            ; $7c4f: $93
	db $fd                                           ; $7c50: $fd
	db $dd                                           ; $7c51: $dd
	rst $38                                          ; $7c52: $ff
	ld [bc], a                                       ; $7c53: $02
	nop                                              ; $7c54: $00
	ld b, $00                                        ; $7c55: $06 $00
	pop bc                                           ; $7c57: $c1
	rst $38                                          ; $7c58: $ff
	pop de                                           ; $7c59: $d1
	rst $38                                          ; $7c5a: $ff
	inc b                                            ; $7c5b: $04
	nop                                              ; $7c5c: $00
	sbc [hl]                                         ; $7c5d: $9e
	ld h, [hl]                                       ; $7c5e: $66
	ld a, [de]                                       ; $7c5f: $1a
	nop                                              ; $7c60: $00
	db $dd                                           ; $7c61: $dd
	rst $38                                          ; $7c62: $ff
	rst SubAFromDE                                          ; $7c63: $df
	ei                                               ; $7c64: $fb
	rst SubAFromDE                                          ; $7c65: $df
	push af                                          ; $7c66: $f5
	rst SubAFromDE                                          ; $7c67: $df
	add d                                            ; $7c68: $82
	db $db                                           ; $7c69: $db
	ld a, [$ffd9]                                    ; $7c6a: $fa $d9 $ff
	rst SubAFromDE                                          ; $7c6d: $df
	dec bc                                           ; $7c6e: $0b
	db $db                                           ; $7c6f: $db
	db $eb                                           ; $7c70: $eb
	reti                                             ; $7c71: $d9


	rst $38                                          ; $7c72: $ff
	rst SubAFromDE                                          ; $7c73: $df
	pop bc                                           ; $7c74: $c1
	db $dd                                           ; $7c75: $dd
	db $fd                                           ; $7c76: $fd
	rst SubAFromDE                                          ; $7c77: $df
	ei                                               ; $7c78: $fb
	inc b                                            ; $7c79: $04
	nop                                              ; $7c7a: $00
	sbc [hl]                                         ; $7c7b: $9e
	ld h, [hl]                                       ; $7c7c: $66
	dec e                                            ; $7c7d: $1d
	add b                                            ; $7c7e: $80
	sbc $ff                                          ; $7c7f: $de $ff
	sbc d                                            ; $7c81: $9a
	add d                                            ; $7c82: $82
	xor e                                            ; $7c83: $ab
	add e                                            ; $7c84: $83
	xor b                                            ; $7c85: $a8
	add e                                            ; $7c86: $83
	ld e, e                                          ; $7c87: $5b
	ld hl, sp-$66                                    ; $7c88: $f8 $9a
	nop                                              ; $7c8a: $00
	db $dd                                           ; $7c8b: $dd
	dec a                                            ; $7c8c: $3d
	dec c                                            ; $7c8d: $0d
	sub b                                            ; $7c8e: $90
	ld e, a                                          ; $7c8f: $5f
	ld hl, sp-$67                                    ; $7c90: $f8 $99
	db $eb                                           ; $7c92: $eb
	db $ed                                           ; $7c93: $ed
	ld bc, todo_Clears40hBytesAtWramBank0Pages2Plus                                     ; $7c94: $01 $ef $2d
	bit 4, a                                         ; $7c97: $cb $67
	ld hl, sp+$04                                    ; $7c99: $f8 $04
	nop                                              ; $7c9b: $00
	sbc [hl]                                         ; $7c9c: $9e
	ld h, [hl]                                       ; $7c9d: $66
	dec c                                            ; $7c9e: $0d
	nop                                              ; $7c9f: $00
	rst SubAFromDE                                          ; $7ca0: $df
	ldh a, [$d3]                                     ; $7ca1: $f0 $d3
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	db $d3                                           ; $7ca5: $d3
	rst $38                                          ; $7ca6: $ff
	rst SubAFromDE                                          ; $7ca7: $df
	rrca                                             ; $7ca8: $0f
	db $d3                                           ; $7ca9: $d3
	rst $38                                          ; $7caa: $ff
	inc b                                            ; $7cab: $04
	nop                                              ; $7cac: $00
	sbc [hl]                                         ; $7cad: $9e
	ld h, [hl]                                       ; $7cae: $66
	ld e, $80                                        ; $7caf: $1e $80
	sub a                                            ; $7cb1: $97
	ld a, [$f6f2]                                    ; $7cb2: $fa $f2 $f6
	and $ce                                          ; $7cb5: $e6 $ce
	sbc [hl]                                         ; $7cb7: $9e
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	ld h, a                                          ; $7cba: $67
	ld hl, sp-$22                                    ; $7cbb: $f8 $de
	db $eb                                           ; $7cbd: $eb
	sbc h                                            ; $7cbe: $9c
	ld [$e908], a                                    ; $7cbf: $ea $08 $e9
	ld e, a                                          ; $7cc2: $5f
	ld hl, sp-$67                                    ; $7cc3: $f8 $99
	ei                                               ; $7cc5: $fb
	or e                                             ; $7cc6: $b3
	inc sp                                           ; $7cc7: $33
	ld l, l                                          ; $7cc8: $6d
	db $ed                                           ; $7cc9: $ed
	db $dd                                           ; $7cca: $dd
	ld e, a                                          ; $7ccb: $5f
	ld hl, sp+$04                                    ; $7ccc: $f8 $04
	nop                                              ; $7cce: $00
	sbc [hl]                                         ; $7ccf: $9e
	ld h, [hl]                                       ; $7cd0: $66
	rra                                              ; $7cd1: $1f
	add b                                            ; $7cd2: $80
	sub a                                            ; $7cd3: $97
	xor e                                            ; $7cd4: $ab
	rst JumpTable                                          ; $7cd5: $c7
	db $eb                                           ; $7cd6: $eb
	rst SubAFromBC                                          ; $7cd7: $e7
	adc $9f                                          ; $7cd8: $ce $9f
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	ld h, a                                          ; $7cdc: $67
	ld hl, sp-$67                                    ; $7cdd: $f8 $99
	cp l                                             ; $7cdf: $bd
	cp h                                             ; $7ce0: $bc
	cp c                                             ; $7ce1: $b9
	or e                                             ; $7ce2: $b3
	ld [hl], $bf                                     ; $7ce3: $36 $bf
	ld e, a                                          ; $7ce5: $5f
	ld hl, sp-$67                                    ; $7ce6: $f8 $99
	rst AddAOntoHL                                          ; $7ce8: $ef
	rst GetHLinHL                                          ; $7ce9: $cf
	add a                                            ; $7cea: $87
	add hl, hl                                       ; $7ceb: $29
	call Call_019_5fef                               ; $7cec: $cd $ef $5f
	ld hl, sp+$04                                    ; $7cef: $f8 $04
	nop                                              ; $7cf1: $00
	sbc [hl]                                         ; $7cf2: $9e
	ld h, [hl]                                       ; $7cf3: $66
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

Call_019_7f80:
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
