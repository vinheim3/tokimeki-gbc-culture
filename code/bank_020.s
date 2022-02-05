; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

	add h                                            ; $4000: $84
	nop                                              ; $4001: $00
	sbc d                                            ; $4002: $9a
	jr c, jr_020_402d                                ; $4003: $38 $28

	db $20, $f8                                      ; $4005: $20 $f8
	ldh [$de], a                                     ; $4007: $e0 $de
	ldh a, [$9b]                                     ; $4009: $f0 $9b
	ld b, h                                          ; $400b: $44
	ld b, d                                          ; $400c: $42
	ld b, b                                          ; $400d: $40
	ld a, $de                                        ; $400e: $3e $de
	db $28, $9d                                      ; $4010: $28 $9d
	jr nz, @-$0e                                     ; $4012: $20 $f0

	sbc $f8                                          ; $4014: $de $f8
	sub a                                            ; $4016: $97
	ldh a, [$e0]                                     ; $4017: $f0 $e0
	ret nc                                           ; $4019: $d0

	ret nz                                           ; $401a: $c0

	inc a                                            ; $401b: $3c
	ld a, [hl-]                                      ; $401c: $3a
	jr c, jr_020_4055                                ; $401d: $38 $36

	db $dd                                           ; $401f: $dd
	jr nz, @+$7d                                     ; $4020: $20 $7b

	ldh a, [c]                                       ; $4022: $f2
	sbc l                                            ; $4023: $9d
	add sp, -$50                                     ; $4024: $e8 $b0
	sbc $a0                                          ; $4026: $de $a0
	sbc e                                            ; $4028: $9b
	inc [hl]                                         ; $4029: $34
	ld [hl-], a                                      ; $402a: $32
	jr nc, @+$30                                     ; $402b: $30 $2e

jr_020_402d:
	db $dd                                           ; $402d: $dd
	inc h                                            ; $402e: $24
	ld a, e                                          ; $402f: $7b
	pop af                                           ; $4030: $f1
	sbc [hl]                                         ; $4031: $9e
	ld hl, sp-$22                                    ; $4032: $f8 $de
	sub b                                            ; $4034: $90
	sub d                                            ; $4035: $92
	add b                                            ; $4036: $80
	inc l                                            ; $4037: $2c
	ld a, [hl+]                                      ; $4038: $2a
	jr z, jr_020_4061                                ; $4039: $28 $26

	ld [hl+], a                                      ; $403b: $22
	inc h                                            ; $403c: $24
	inc h                                            ; $403d: $24
	ld [hl+], a                                      ; $403e: $22
	ldh a, [$e8]                                     ; $403f: $f0 $e8
	ldh [$d8], a                                     ; $4041: $e0 $d8
	db $dd                                           ; $4043: $dd
	add b                                            ; $4044: $80
	ld a, a                                          ; $4045: $7f
	or $95                                           ; $4046: $f6 $95
	jr nz, @+$20                                     ; $4048: $20 $1e

	inc h                                            ; $404a: $24
	inc h                                            ; $404b: $24
	ld h, $26                                        ; $404c: $26 $26
	ret nc                                           ; $404e: $d0

	ret z                                            ; $404f: $c8

	ret nz                                           ; $4050: $c0

	cp b                                             ; $4051: $b8
	db $dd                                           ; $4052: $dd

Call_020_4053:
	add b                                            ; $4053: $80
	sbc e                                            ; $4054: $9b

jr_020_4055:
	inc e                                            ; $4055: $1c
	ld a, [de]                                       ; $4056: $1a
	jr jr_020_406f                                   ; $4057: $18 $16

	db $dd                                           ; $4059: $dd
	ld h, $9e                                        ; $405a: $26 $9e
	or b                                             ; $405c: $b0
	ld a, e                                          ; $405d: $7b
	rst GetHLinHL                                          ; $405e: $cf
	sbc [hl]                                         ; $405f: $9e
	add b                                            ; $4060: $80

jr_020_4061:
	sbc $70                                          ; $4061: $de $70
	sbc e                                            ; $4063: $9b
	inc d                                            ; $4064: $14
	ld [de], a                                       ; $4065: $12

Call_020_4066:
	db $10                                           ; $4066: $10
	ld c, $dd                                        ; $4067: $0e $dd
	ld h, $7f                                        ; $4069: $26 $7f
	jp nc, $de7f                                     ; $406b: $d2 $7f $de

	db $dd                                           ; $406e: $dd

Jump_020_406f:
jr_020_406f:
	ld [hl], b                                       ; $406f: $70
	sbc e                                            ; $4070: $9b
	inc c                                            ; $4071: $0c
	ld a, [bc]                                       ; $4072: $0a
	ld [$dd06], sp                                   ; $4073: $08 $06 $dd
	ld h, $93                                        ; $4076: $26 $93
	ret nz                                           ; $4078: $c0

	ld [hl], b                                       ; $4079: $70
	inc b                                            ; $407a: $04
	ld h, $b8                                        ; $407b: $26 $b8
	ld [hl], b                                       ; $407d: $70
	ld [bc], a                                       ; $407e: $02
	ld h, $b0                                        ; $407f: $26 $b0
	ld [hl], b                                       ; $4081: $70
	nop                                              ; $4082: $00
	daa                                              ; $4083: $27
	ld l, [hl]                                       ; $4084: $6e
	ld [bc], a                                       ; $4085: $02
	sbc e                                            ; $4086: $9b
	ldh a, [$f8]                                     ; $4087: $f0 $f8
	nop                                              ; $4089: $00
	ld [$a0dd], sp                                   ; $408a: $08 $dd $a0
	sbc e                                            ; $408d: $9b
	nop                                              ; $408e: $00
	ld [bc], a                                       ; $408f: $02
	inc b                                            ; $4090: $04
	ld b, $dd                                        ; $4091: $06 $dd
	jr nz, jr_020_410c                               ; $4093: $20 $77

	ldh a, [$dd]                                     ; $4095: $f0 $dd
	or b                                             ; $4097: $b0
	sbc e                                            ; $4098: $9b
	ld [$0c0a], sp                                   ; $4099: $08 $0a $0c
	ld c, $dd                                        ; $409c: $0e $dd
	ld [hl+], a                                      ; $409e: $22
	sbc [hl]                                         ; $409f: $9e
	add sp, $7b                                      ; $40a0: $e8 $7b
	rst AddAOntoHL                                          ; $40a2: $ef
	db $dd                                           ; $40a3: $dd
	ret nz                                           ; $40a4: $c0

	adc e                                            ; $40a5: $8b
	db $10                                           ; $40a6: $10
	ld [de], a                                       ; $40a7: $12
	inc d                                            ; $40a8: $14
	ld d, $20                                        ; $40a9: $16 $20
	jr nz, @+$04                                     ; $40ab: $20 $02

	ld [hl+], a                                      ; $40ad: $22

jr_020_40ae:
	ld [$e010], sp                                   ; $40ae: $08 $10 $e0
	add sp, -$40                                     ; $40b1: $e8 $c0
	ret nz                                           ; $40b3: $c0

	ret nc                                           ; $40b4: $d0

	ret nc                                           ; $40b5: $d0

	jr @+$1c                                         ; $40b6: $18 $1a

	inc e                                            ; $40b8: $1c
	ld e, $de                                        ; $40b9: $1e $de
	jr nz, @-$60                                     ; $40bb: $20 $9e

	nop                                              ; $40bd: $00
	ld [hl], a                                       ; $40be: $77
	ret nc                                           ; $40bf: $d0

	db $dd                                           ; $40c0: $dd
	ret nc                                           ; $40c1: $d0

	sbc e                                            ; $40c2: $9b
	jr nz, jr_020_40e7                               ; $40c3: $20 $22

	inc h                                            ; $40c5: $24
	ld h, $de                                        ; $40c6: $26 $de
	ld [hl+], a                                      ; $40c8: $22
	sub d                                            ; $40c9: $92
	nop                                              ; $40ca: $00
	db $10                                           ; $40cb: $10
	jr jr_020_40ae                                   ; $40cc: $18 $e0

	add sp, -$30                                     ; $40ce: $e8 $d0
	ret nc                                           ; $40d0: $d0

	ldh [$e0], a                                     ; $40d1: $e0 $e0
	jr z, jr_020_40ff                                ; $40d3: $28 $2a

	inc l                                            ; $40d5: $2c
	ld l, $73                                        ; $40d6: $2e $73
	or b                                             ; $40d8: $b0
	ld a, a                                          ; $40d9: $7f
	rst GetHLinHL                                          ; $40da: $cf
	ld a, a                                          ; $40db: $7f
	xor $de                                          ; $40dc: $ee $de
	ldh [$9a], a                                     ; $40de: $e0 $9a
	jr nc, jr_020_4114                               ; $40e0: $30 $32

	inc [hl]                                         ; $40e2: $34
	ld [hl], $00                                     ; $40e3: $36 $00
	sbc $20                                          ; $40e5: $de $20

jr_020_40e7:
	ld a, a                                          ; $40e7: $7f
	or b                                             ; $40e8: $b0
	ld a, a                                          ; $40e9: $7f
	rst AddAOntoHL                                          ; $40ea: $ef
	db $dd                                           ; $40eb: $dd
	ldh a, [$8b]                                     ; $40ec: $f0 $8b
	jr c, jr_020_412a                                ; $40ee: $38 $3a

jr_020_40f0:
	inc a                                            ; $40f0: $3c
	ld a, $20                                        ; $40f1: $3e $20
	nop                                              ; $40f3: $00
	nop                                              ; $40f4: $00
	inc h                                            ; $40f5: $24
	jr jr_020_40f0                                   ; $40f6: $18 $f8

jr_020_40f8:
	nop                                              ; $40f8: $00
	ld hl, sp-$10                                    ; $40f9: $f8 $f0
	ldh [$e0], a                                     ; $40fb: $e0 $e0
	ldh a, [rLCDC]                                   ; $40fd: $f0 $40

jr_020_40ff:
	ld hl, sp-$06                                    ; $40ff: $f8 $fa
	ld hl, sp-$23                                    ; $4101: $f8 $dd
	ld [hl+], a                                      ; $4103: $22
	ld a, a                                          ; $4104: $7f
	xor a                                            ; $4105: $af
	sbc $f0                                          ; $4106: $de $f0
	sub a                                            ; $4108: $97
	jp nc, $a2c8                                     ; $4109: $d2 $c8 $a2

jr_020_410c:
	ld a, [$0202]                                    ; $410c: $fa $02 $02
	nop                                              ; $410f: $00
	inc hl                                           ; $4110: $23
	sbc $20                                          ; $4111: $de $20
	ld a, e                                          ; $4113: $7b

jr_020_4114:
	and c                                            ; $4114: $a1
	sbc [hl]                                         ; $4115: $9e
	ldh a, [$de]                                     ; $4116: $f0 $de
	and d                                            ; $4118: $a2
	sbc [hl]                                         ; $4119: $9e
	or d                                             ; $411a: $b2
	ld a, e                                          ; $411b: $7b
	ld h, c                                          ; $411c: $61
	sbc [hl]                                         ; $411d: $9e
	ld [$20de], sp                                   ; $411e: $08 $de $20
	sbc [hl]                                         ; $4121: $9e
	ld [hl+], a                                      ; $4122: $22
	ld a, e                                          ; $4123: $7b
	ldh a, [$9e]                                     ; $4124: $f0 $9e
	add sp, -$22                                     ; $4126: $e8 $de
	or d                                             ; $4128: $b2
	sbc [hl]                                         ; $4129: $9e

jr_020_412a:
	jp nz, $617b                                     ; $412a: $c2 $7b $61

	sbc [hl]                                         ; $412d: $9e
	ld b, d                                          ; $412e: $42
	sbc $22                                          ; $412f: $de $22
	ld [hl], e                                       ; $4131: $73
	ld d, b                                          ; $4132: $50
	db $dd                                           ; $4133: $dd
	jp nz, $449a                                     ; $4134: $c2 $9a $44

	ld b, [hl]                                       ; $4137: $46
	ld c, b                                          ; $4138: $48
	ld c, d                                          ; $4139: $4a
	jr nz, @+$7d                                     ; $413a: $20 $7b

	ldh a, [$7b]                                     ; $413c: $f0 $7b
	ld h, c                                          ; $413e: $61
	sbc l                                            ; $413f: $9d
	ld hl, sp-$3e                                    ; $4140: $f8 $c2
	sbc $d2                                          ; $4142: $de $d2
	sbc e                                            ; $4144: $9b
	ld c, h                                          ; $4145: $4c
	ld c, [hl]                                       ; $4146: $4e
	ld d, b                                          ; $4147: $50
	ld d, d                                          ; $4148: $52
	ld [hl], a                                       ; $4149: $77
	ret nc                                           ; $414a: $d0

	ld [hl], a                                       ; $414b: $77
	add c                                            ; $414c: $81
	sbc $d2                                          ; $414d: $de $d2

jr_020_414f:
	sbc d                                            ; $414f: $9a
	ldh [c], a                                       ; $4150: $e2
	ld d, h                                          ; $4151: $54
	ld d, [hl]                                       ; $4152: $56
	ld e, b                                          ; $4153: $58
	ld e, d                                          ; $4154: $5a
	db $dd                                           ; $4155: $dd
	jr nz, jr_020_41d3                               ; $4156: $20 $7b

	jr nc, jr_020_40f8                               ; $4158: $30 $9e

	ld [$e2dd], sp                                   ; $415a: $08 $dd $e2
	sbc e                                            ; $415d: $9b
	ld e, h                                          ; $415e: $5c
	ld e, [hl]                                       ; $415f: $5e
	ld h, b                                          ; $4160: $60
	ld h, d                                          ; $4161: $62
	ld [hl], e                                       ; $4162: $73
	ret nc                                           ; $4163: $d0

	sub e                                            ; $4164: $93
	jr jr_020_414f                                   ; $4165: $18 $e8

	ldh a, [$e2]                                     ; $4167: $f0 $e2
	ldh [c], a                                       ; $4169: $e2
	ldh a, [c]                                       ; $416a: $f2
	ldh a, [c]                                       ; $416b: $f2
	ld h, h                                          ; $416c: $64
	ld h, [hl]                                       ; $416d: $66
	ld l, b                                          ; $416e: $68
	ld l, d                                          ; $416f: $6a
	ld [hl+], a                                      ; $4170: $22
	sbc $20                                          ; $4171: $de $20
	ld a, e                                          ; $4173: $7b
	ret nc                                           ; $4174: $d0

	sbc [hl]                                         ; $4175: $9e
	nop                                              ; $4176: $00
	sbc $f2                                          ; $4177: $de $f2
	sbc c                                            ; $4179: $99
	jp nc, $6e6c                                     ; $417a: $d2 $6c $6e

	ld [hl], b                                       ; $417d: $70
	ld a, [$7b26]                                    ; $417e: $fa $26 $7b
	ld l, $bf                                        ; $4181: $2e $bf
	ld hl, sp-$10                                    ; $4183: $f8 $f0
	ld a, e                                          ; $4185: $7b
	pop hl                                           ; $4186: $e1
	sub a                                            ; $4187: $97
	and h                                            ; $4188: $a4
	ld a, [$faf8]                                    ; $4189: $fa $f8 $fa
	nop                                              ; $418c: $00
	ld [hl+], a                                      ; $418d: $22
	ld [hl+], a                                      ; $418e: $22
	inc hl                                           ; $418f: $23
	ld [hl], e                                       ; $4190: $73
	ld [hl], b                                       ; $4191: $70
	sbc $a4                                          ; $4192: $de $a4
	sbc [hl]                                         ; $4194: $9e
	or h                                             ; $4195: $b4
	ld d, a                                          ; $4196: $57
	ld [hl], b                                       ; $4197: $70
	sbc $b4                                          ; $4198: $de $b4
	sbc [hl]                                         ; $419a: $9e
	call nz, Call_020_707b                           ; $419b: $c4 $7b $70
	sbc [hl]                                         ; $419e: $9e
	ld [hl], d                                       ; $419f: $72
	ld [hl], e                                       ; $41a0: $73
	ld [hl], b                                       ; $41a1: $70
	sbc h                                            ; $41a2: $9c
	db $10                                           ; $41a3: $10
	ld hl, sp+$00                                    ; $41a4: $f8 $00
	db $dd                                           ; $41a6: $dd
	call nz, Call_020_749b                           ; $41a7: $c4 $9b $74
	halt                                             ; $41aa: $76
	ld b, [hl]                                       ; $41ab: $46
	ld c, b                                          ; $41ac: $48
	ld a, e                                          ; $41ad: $7b
	pop hl                                           ; $41ae: $e1
	ld a, a                                          ; $41af: $7f
	add b                                            ; $41b0: $80
	ld a, a                                          ; $41b1: $7f
	ld [hl], b                                       ; $41b2: $70
	sbc l                                            ; $41b3: $9d
	ldh a, [$c4]                                     ; $41b4: $f0 $c4
	sbc $d4                                          ; $41b6: $de $d4
	sbc e                                            ; $41b8: $9b
	ld c, d                                          ; $41b9: $4a
	ld a, b                                          ; $41ba: $78
	ld a, d                                          ; $41bb: $7a
	ld a, h                                          ; $41bc: $7c
	halt                                             ; $41bd: $76
	ret nc                                           ; $41be: $d0

	ld [hl], a                                       ; $41bf: $77
	ld [hl], b                                       ; $41c0: $70
	sbc $d4                                          ; $41c1: $de $d4
	sbc d                                            ; $41c3: $9a
	db $e4                                           ; $41c4: $e4
	ld a, [hl]                                       ; $41c5: $7e
	add b                                            ; $41c6: $80
	add d                                            ; $41c7: $82
	add h                                            ; $41c8: $84
	ld [hl], e                                       ; $41c9: $73
	ld [hl], b                                       ; $41ca: $70
	ld a, d                                          ; $41cb: $7a
	rst AddAOntoHL                                          ; $41cc: $ef
	sub e                                            ; $41cd: $93
	db $e4                                           ; $41ce: $e4
	db $ec                                           ; $41cf: $ec
	db $e4                                           ; $41d0: $e4
	db $e4                                           ; $41d1: $e4
	add [hl]                                         ; $41d2: $86

jr_020_41d3:
	adc b                                            ; $41d3: $88
	adc d                                            ; $41d4: $8a
	adc h                                            ; $41d5: $8c
	jr nz, jr_020_41fa                               ; $41d6: $20 $22

	jr nz, @+$28                                     ; $41d8: $20 $26

	halt                                             ; $41da: $76
	ret nz                                           ; $41db: $c0

	rst SubAFromDE                                          ; $41dc: $df
	db $e4                                           ; $41dd: $e4
	rst SubAFromDE                                          ; $41de: $df
	db $f4                                           ; $41df: $f4
	sbc d                                            ; $41e0: $9a
	adc [hl]                                         ; $41e1: $8e
	sub b                                            ; $41e2: $90
	sub d                                            ; $41e3: $92
	sub h                                            ; $41e4: $94
	ld h, $7b                                        ; $41e5: $26 $7b
	ret nz                                           ; $41e7: $c0

	ld a, d                                          ; $41e8: $7a
	pop de                                           ; $41e9: $d1
	sbc [hl]                                         ; $41ea: $9e
	ld hl, sp-$22                                    ; $41eb: $f8 $de
	db $f4                                           ; $41ed: $f4
	sbc c                                            ; $41ee: $99
	call nc, $9896                                   ; $41ef: $d4 $96 $98
	jp z, $22f8                                      ; $41f2: $ca $f8 $22

	ld a, e                                          ; $41f5: $7b
	rst AddAOntoHL                                          ; $41f6: $ef
	rst $38                                          ; $41f7: $ff
	ld a, a                                          ; $41f8: $7f
	and b                                            ; $41f9: $a0

jr_020_41fa:
	ld a, a                                          ; $41fa: $7f
	jp nz, $df7f                                     ; $41fb: $c2 $7f $df

	rst SubAFromDE                                          ; $41fe: $df
	ld a, [$6f7f]                                    ; $41ff: $fa $7f $6f
	db $dd                                           ; $4202: $dd
	ld [hl+], a                                      ; $4203: $22
	ld a, [hl]                                       ; $4204: $7e
	jp $f07f                                         ; $4205: $c3 $7f $f0


	sbc [hl]                                         ; $4208: $9e
	db $f4                                           ; $4209: $f4
	sbc $a2                                          ; $420a: $de $a2
	ld a, a                                          ; $420c: $7f
	ld a, [$6e7f]                                    ; $420d: $fa $7f $6e
	halt                                             ; $4210: $76
	ret nc                                           ; $4211: $d0

	ld a, a                                          ; $4212: $7f
	ld h, d                                          ; $4213: $62
	ld a, a                                          ; $4214: $7f
	or $7e                                           ; $4215: $f6 $7e
	jp nc, $b2df                                     ; $4217: $d2 $df $b2

	ld a, a                                          ; $421a: $7f
	ld h, d                                          ; $421b: $62
	ld a, a                                          ; $421c: $7f
	ld l, [hl]                                       ; $421d: $6e
	ld a, e                                          ; $421e: $7b
	pop bc                                           ; $421f: $c1
	ld [hl], e                                       ; $4220: $73
	add b                                            ; $4221: $80
	ld a, [hl]                                       ; $4222: $7e
	jp nc, $c2df                                     ; $4223: $d2 $df $c2

	sbc e                                            ; $4226: $9b
	ld c, $9c                                        ; $4227: $0e $9c
	sbc [hl]                                         ; $4229: $9e
	and b                                            ; $422a: $a0
	ld l, a                                          ; $422b: $6f
	jr nz, jr_020_42ad                               ; $422c: $20 $7f

	rst AddAOntoHL                                          ; $422e: $ef
	rst SubAFromDE                                          ; $422f: $df
	jp nz, $d2df                                     ; $4230: $c2 $df $d2

	sbc e                                            ; $4233: $9b
	and d                                            ; $4234: $a2
	and h                                            ; $4235: $a4
	and [hl]                                         ; $4236: $a6
	xor b                                            ; $4237: $a8
	ld [hl], d                                       ; $4238: $72
	ld h, b                                          ; $4239: $60
	ld a, e                                          ; $423a: $7b
	ld l, [hl]                                       ; $423b: $6e
	db $dd                                           ; $423c: $dd
	jp nc, $aa9b                                     ; $423d: $d2 $9b $aa

	xor h                                            ; $4240: $ac
	xor [hl]                                         ; $4241: $ae
	or b                                             ; $4242: $b0
	ld a, e                                          ; $4243: $7b
	rra                                              ; $4244: $1f
	sbc [hl]                                         ; $4245: $9e
	jr nz, jr_020_42c3                               ; $4246: $20 $7b

	add c                                            ; $4248: $81
	ld a, [hl]                                       ; $4249: $7e
	add c                                            ; $424a: $81
	sbc $e2                                          ; $424b: $de $e2
	sbc e                                            ; $424d: $9b
	or d                                             ; $424e: $b2
	or h                                             ; $424f: $b4
	or [hl]                                          ; $4250: $b6
	cp b                                             ; $4251: $b8
	db $dd                                           ; $4252: $dd
	jr nz, jr_020_42d3                               ; $4253: $20 $7e

	ldh a, [c]                                       ; $4255: $f2
	ld a, a                                          ; $4256: $7f
	ldh [$dd], a                                     ; $4257: $e0 $dd
	ldh [c], a                                       ; $4259: $e2
	sbc e                                            ; $425a: $9b
	ret nz                                           ; $425b: $c0

	cp d                                             ; $425c: $ba
	cp h                                             ; $425d: $bc
	cp [hl]                                          ; $425e: $be
	halt                                             ; $425f: $76
	ret nc                                           ; $4260: $d0

	ld a, e                                          ; $4261: $7b
	pop hl                                           ; $4262: $e1
	sbc [hl]                                         ; $4263: $9e
	ld [$f2dd], sp                                   ; $4264: $08 $dd $f2
	sbc e                                            ; $4267: $9b
	jp nz, $c6c4                                     ; $4268: $c2 $c4 $c6

	ret z                                            ; $426b: $c8

	ld a, e                                          ; $426c: $7b
	pop af                                           ; $426d: $f1
	ld a, [hl]                                       ; $426e: $7e
	ret nz                                           ; $426f: $c0

	rst SubAFromDE                                          ; $4270: $df
	ld hl, sp+$7e                                    ; $4271: $f8 $7e
	ret nc                                           ; $4273: $d0

	sbc d                                            ; $4274: $9a
	jp nc, $c2c2                                     ; $4275: $d2 $c2 $c2

	jp z, Jump_020_7bf8                              ; $4278: $ca $f8 $7b

	db $10                                           ; $427b: $10
	ld [hl], a                                       ; $427c: $77
	ld [hl], b                                       ; $427d: $70
	ld a, d                                          ; $427e: $7a
	ret nc                                           ; $427f: $d0

	sbc d                                            ; $4280: $9a
	pop hl                                           ; $4281: $e1
	pop af                                           ; $4282: $f1
	pop af                                           ; $4283: $f1
	and b                                            ; $4284: $a0
	ld hl, sp+$5a                                    ; $4285: $f8 $5a
	ret nc                                           ; $4287: $d0

	sbc $a0                                          ; $4288: $de $a0
	sbc [hl]                                         ; $428a: $9e
	or b                                             ; $428b: $b0
	ld d, [hl]                                       ; $428c: $56
	ret nc                                           ; $428d: $d0

	sbc $b0                                          ; $428e: $de $b0
	sbc [hl]                                         ; $4290: $9e
	ret nz                                           ; $4291: $c0

	ld a, d                                          ; $4292: $7a
	ret nc                                           ; $4293: $d0

	sbc [hl]                                         ; $4294: $9e
	call z, Call_020_4066                            ; $4295: $cc $66 $40
	db $dd                                           ; $4298: $dd
	ret nz                                           ; $4299: $c0

	sbc e                                            ; $429a: $9b
	adc $d0                                          ; $429b: $ce $d0
	jp nc, $6fd4                                     ; $429d: $d2 $d4 $6f

	and b                                            ; $42a0: $a0
	ld a, [hl]                                       ; $42a1: $7e
	ld h, b                                          ; $42a2: $60
	db $dd                                           ; $42a3: $dd
	ret nc                                           ; $42a4: $d0

	sbc e                                            ; $42a5: $9b
	sub $d8                                          ; $42a6: $d6 $d8
	jp c, Jump_020_76de                              ; $42a8: $da $de $76

	ret nz                                           ; $42ab: $c0

	ld [hl], l                                       ; $42ac: $75

jr_020_42ad:
	xor a                                            ; $42ad: $af

jr_020_42ae:
	sbc $d0                                          ; $42ae: $de $d0
	sbc c                                            ; $42b0: $99
	ldh [$dc], a                                     ; $42b1: $e0 $dc
	ldh [$e2], a                                     ; $42b3: $e0 $e2
	db $e4                                           ; $42b5: $e4
	ld [hl+], a                                      ; $42b6: $22
	ld a, c                                          ; $42b7: $79
	cp a                                             ; $42b8: $bf
	ld [hl], l                                       ; $42b9: $75

jr_020_42ba:
	ret nz                                           ; $42ba: $c0

	db $dd                                           ; $42bb: $dd
	ldh [$9b], a                                     ; $42bc: $e0 $9b
	and $e8                                          ; $42be: $e6 $e8
	ld [$73ec], a                                    ; $42c0: $ea $ec $73

jr_020_42c3:
	ld h, b                                          ; $42c3: $60
	ld a, e                                          ; $42c4: $7b
	ld l, a                                          ; $42c5: $6f
	ld a, l                                          ; $42c6: $7d
	jp nz, $f0df                                     ; $42c7: $c2 $df $f0

	sbc e                                            ; $42ca: $9b
	xor $f0                                          ; $42cb: $ee $f0
	ldh a, [c]                                       ; $42cd: $f2
	db $f4                                           ; $42ce: $f4
	ld a, c                                          ; $42cf: $79
	ld a, h                                          ; $42d0: $7c
	ld a, e                                          ; $42d1: $7b
	ld d, d                                          ; $42d2: $52

jr_020_42d3:
	ld a, e                                          ; $42d3: $7b
	ld a, a                                          ; $42d4: $7f
	sbc $f0                                          ; $42d5: $de $f0
	sbc l                                            ; $42d7: $9d
	or $ca                                           ; $42d8: $f6 $ca
	ld a, e                                          ; $42da: $7b
	ld a, a                                          ; $42db: $7f
	ld [hl], a                                       ; $42dc: $77
	ret nz                                           ; $42dd: $c0

	sbc l                                            ; $42de: $9d
	ld hl, sp+$10                                    ; $42df: $f8 $10
	ld a, c                                          ; $42e1: $79
	and c                                            ; $42e2: $a1
	ld a, l                                          ; $42e3: $7d
	ld c, a                                          ; $42e4: $4f
	ld a, [hl]                                       ; $42e5: $7e
	pop de                                           ; $42e6: $d1
	sbc l                                            ; $42e7: $9d
	and h                                            ; $42e8: $a4
	xor d                                            ; $42e9: $aa
	ld a, e                                          ; $42ea: $7b
	and c                                            ; $42eb: $a1
	sbc d                                            ; $42ec: $9a
	nop                                              ; $42ed: $00
	ldh [$c0], a                                     ; $42ee: $e0 $c0
	sbc h                                            ; $42f0: $9c
	ld hl, $005a                                     ; $42f1: $21 $5a $00
	add e                                            ; $42f4: $83
	ld c, b                                          ; $42f5: $48
	ld b, b                                          ; $42f6: $40
	ld c, b                                          ; $42f7: $48
	ld c, b                                          ; $42f8: $48
	ret c                                            ; $42f9: $d8

	sbc b                                            ; $42fa: $98
	ret z                                            ; $42fb: $c8

	cp b                                             ; $42fc: $b8
	jr z, @+$2a                                      ; $42fd: $28 $28

	ld h, $24                                        ; $42ff: $26 $24
	jr nz, jr_020_4323                               ; $4301: $20 $20

	ld [hl+], a                                      ; $4303: $22
	ld [hl+], a                                      ; $4304: $22
	ld c, b                                          ; $4305: $48
	ld b, b                                          ; $4306: $40
	ld b, b                                          ; $4307: $40
	jr c, @-$56                                      ; $4308: $38 $a8

	ret c                                            ; $430a: $d8

	xor b                                            ; $430b: $a8
	sbc b                                            ; $430c: $98
	ld [hl+], a                                      ; $430d: $22
	jr nz, jr_020_432e                               ; $430e: $20 $1e

	inc e                                            ; $4310: $1c
	sbc $22                                          ; $4311: $de $22
	sbc [hl]                                         ; $4313: $9e
	ld h, $de                                        ; $4314: $26 $de
	jr nc, jr_020_42ae                               ; $4316: $30 $96

	jr z, jr_020_42ba                                ; $4318: $28 $a0

	sub b                                            ; $431a: $90
	adc b                                            ; $431b: $88
	xor b                                            ; $431c: $a8
	ld a, [de]                                       ; $431d: $1a
	jr jr_020_4336                                   ; $431e: $18 $16

	inc d                                            ; $4320: $14
	ld a, e                                          ; $4321: $7b
	rst SubAFromDE                                          ; $4322: $df

jr_020_4323:
	rst SubAFromDE                                          ; $4323: $df
	jr nz, jr_020_42ba                               ; $4324: $20 $94

	jr jr_020_4338                                   ; $4326: $18 $10

	db $10                                           ; $4328: $10
	xor b                                            ; $4329: $a8
	ret c                                            ; $432a: $d8

	ret c                                            ; $432b: $d8

	cp b                                             ; $432c: $b8
	ld [de], a                                       ; $432d: $12

jr_020_432e:
	db $10                                           ; $432e: $10
	ld c, $0c                                        ; $432f: $0e $0c
	ld a, e                                          ; $4331: $7b
	pop de                                           ; $4332: $d1
	sbc l                                            ; $4333: $9d
	jr z, @+$12                                      ; $4334: $28 $10

jr_020_4336:
	sbc $08                                          ; $4336: $de $08

jr_020_4338:
	ld a, a                                          ; $4338: $7f
	ldh a, [hDisp1_SCX]                                     ; $4339: $f0 $91
	ret z                                            ; $433b: $c8

	xor b                                            ; $433c: $a8
	ld a, [bc]                                       ; $433d: $0a
	ld [$0406], sp                                   ; $433e: $08 $06 $04

jr_020_4341:
	inc l                                            ; $4341: $2c
	ld [hl+], a                                      ; $4342: $22
	ld l, $2c                                        ; $4343: $2e $2c
	ld [$0298], sp                                   ; $4345: $08 $98 $02
	inc l                                            ; $4348: $2c
	cp a                                             ; $4349: $bf
	ret nc                                           ; $434a: $d0

	cpl                                              ; $434b: $2f
	ld c, c                                          ; $434c: $49
	nop                                              ; $434d: $00
	add e                                            ; $434e: $83
	ld hl, sp-$48                                    ; $434f: $f8 $b8
	ld hl, sp-$08                                    ; $4351: $f8 $f8
	ret c                                            ; $4353: $d8

jr_020_4354:
	adc b                                            ; $4354: $88
	ret z                                            ; $4355: $c8

	cp b                                             ; $4356: $b8
	jr nz, jr_020_4379                               ; $4357: $20 $20

	ld e, $1c                                        ; $4359: $1e $1c
	jr nz, jr_020_437d                               ; $435b: $20 $20

	ld [hl+], a                                      ; $435d: $22
	ld [hl+], a                                      ; $435e: $22
	ld hl, sp-$08                                    ; $435f: $f8 $f8
	ldh a, [$f0]                                     ; $4361: $f0 $f0
	xor b                                            ; $4363: $a8
	sbc b                                            ; $4364: $98
	sbc b                                            ; $4365: $98
	adc b                                            ; $4366: $88
	ld a, [de]                                       ; $4367: $1a
	jr jr_020_4380                                   ; $4368: $18 $16

	inc d                                            ; $436a: $14
	db $dd                                           ; $436b: $dd
	inc l                                            ; $436c: $2c
	sbc $c0                                          ; $436d: $de $c0
	add l                                            ; $436f: $85
	cp b                                             ; $4370: $b8
	ret c                                            ; $4371: $d8

	sbc b                                            ; $4372: $98
	adc b                                            ; $4373: $88
	ret c                                            ; $4374: $d8

	ld [de], a                                       ; $4375: $12
	db $10                                           ; $4376: $10
	ld c, $0c                                        ; $4377: $0e $0c

jr_020_4379:
	ld [hl+], a                                      ; $4379: $22
	inc h                                            ; $437a: $24
	jr nz, jr_020_439f                               ; $437b: $20 $22

jr_020_437d:
	cp b                                             ; $437d: $b8
	cp b                                             ; $437e: $b8
	or b                                             ; $437f: $b0

jr_020_4380:
	or b                                             ; $4380: $b0
	xor b                                            ; $4381: $a8
	sbc b                                            ; $4382: $98
	ret nc                                           ; $4383: $d0

	ret nz                                           ; $4384: $c0

	ld a, [bc]                                       ; $4385: $0a

jr_020_4386:
	ld [$0406], sp                                   ; $4386: $08 $06 $04
	ld l, $7b                                        ; $4389: $2e $7b
	ret nc                                           ; $438b: $d0

	rst SubAFromDE                                          ; $438c: $df
	or b                                             ; $438d: $b0
	sbc c                                            ; $438e: $99
	ld [bc], a                                       ; $438f: $02
	ld [hl+], a                                      ; $4390: $22
	or b                                             ; $4391: $b0
	and b                                            ; $4392: $a0
	nop                                              ; $4393: $00
	ld hl, $0058                                     ; $4394: $21 $58 $00
	sbc [hl]                                         ; $4397: $9e
	jr c, @-$20                                      ; $4398: $38 $de

	ld c, b                                          ; $439a: $48
	sub a                                            ; $439b: $97
	xor b                                            ; $439c: $a8
	ret c                                            ; $439d: $d8

	cp b                                             ; $439e: $b8

jr_020_439f:
	xor b                                            ; $439f: $a8
	inc e                                            ; $43a0: $1c
	ld a, [hl+]                                      ; $43a1: $2a
	jr z, jr_020_43ca                                ; $43a2: $28 $26

	db $dd                                           ; $43a4: $dd
	jr nz, jr_020_4386                               ; $43a5: $20 $df

	ld c, b                                          ; $43a7: $48
	rst SubAFromDE                                          ; $43a8: $df
	ld b, b                                          ; $43a9: $40

jr_020_43aa:
	sub a                                            ; $43aa: $97
	sbc b                                            ; $43ab: $98
	adc b                                            ; $43ac: $88
	ret z                                            ; $43ad: $c8

	adc b                                            ; $43ae: $88
	inc h                                            ; $43af: $24
	ld [hl+], a                                      ; $43b0: $22
	jr nz, @+$20                                     ; $43b1: $20 $1e

	db $dd                                           ; $43b3: $dd
	jr nz, jr_020_4354                               ; $43b4: $20 $9e

	jr c, @-$20                                      ; $43b6: $38 $de

	jr nc, jr_020_4341                               ; $43b8: $30 $87

	sbc b                                            ; $43ba: $98
	xor b                                            ; $43bb: $a8
	sbc b                                            ; $43bc: $98
	adc b                                            ; $43bd: $88
	ld a, [de]                                       ; $43be: $1a
	jr jr_020_43d7                                   ; $43bf: $18 $16

	inc d                                            ; $43c1: $14
	jr nz, jr_020_43f0                               ; $43c2: $20 $2c

	inc l                                            ; $43c4: $2c
	jr nz, jr_020_43ef                               ; $43c5: $20 $28

	jr jr_020_43d9                                   ; $43c7: $18 $10

	db $10                                           ; $43c9: $10

jr_020_43ca:
	adc b                                            ; $43ca: $88
	cp b                                             ; $43cb: $b8
	cp b                                             ; $43cc: $b8
	xor b                                            ; $43cd: $a8
	ld [de], a                                       ; $43ce: $12
	db $10                                           ; $43cf: $10
	ld c, $0c                                        ; $43d0: $0e $0c
	ld a, e                                          ; $43d2: $7b
	ldh a, [c]                                       ; $43d3: $f2
	sbc l                                            ; $43d4: $9d
	inc h                                            ; $43d5: $24
	db $10                                           ; $43d6: $10

jr_020_43d7:
	sbc $08                                          ; $43d7: $de $08

jr_020_43d9:
	sbc [hl]                                         ; $43d9: $9e
	adc b                                            ; $43da: $88
	ld a, e                                          ; $43db: $7b
	ldh [$9a], a                                     ; $43dc: $e0 $9a
	ld a, [bc]                                       ; $43de: $0a
	ld [$0406], sp                                   ; $43df: $08 $06 $04
	inc l                                            ; $43e2: $2c
	sbc $24                                          ; $43e3: $de $24
	sbc e                                            ; $43e5: $9b
	nop                                              ; $43e6: $00
	ret c                                            ; $43e7: $d8

	ld [bc], a                                       ; $43e8: $02
	jr z, jr_020_43aa                                ; $43e9: $28 $bf

	ret z                                            ; $43eb: $c8

	dec h                                            ; $43ec: $25
	ld d, h                                          ; $43ed: $54
	nop                                              ; $43ee: $00

jr_020_43ef:
	sbc d                                            ; $43ef: $9a

jr_020_43f0:
	ld hl, sp+$00                                    ; $43f0: $f8 $00
	ld [$d8f8], sp                                   ; $43f2: $08 $f8 $d8
	sbc $f8                                          ; $43f5: $de $f8
	sbc e                                            ; $43f7: $9b
	inc l                                            ; $43f8: $2c
	jr z, @+$2c                                      ; $43f9: $28 $2a

	jr z, @-$01                                      ; $43fb: $28 $fd

	sbc d                                            ; $43fd: $9a
	ldh a, [$08]                                     ; $43fe: $f0 $08
	nop                                              ; $4400: $00
	ld hl, sp-$10                                    ; $4401: $f8 $f0
	sbc $e8                                          ; $4403: $de $e8
	sbc e                                            ; $4405: $9b
	ld h, $24                                        ; $4406: $26 $24
	ld [hl+], a                                      ; $4408: $22
	jr nz, jr_020_447e                               ; $4409: $20 $73

	ldh a, [$df]                                     ; $440b: $f0 $df
	add sp, -$6a                                     ; $440d: $e8 $96
	ld [$f0e0], sp                                   ; $440f: $08 $e0 $f0
	ldh [$d8], a                                     ; $4412: $e0 $d8
	ld e, $1c                                        ; $4414: $1e $1c
	ld a, [de]                                       ; $4416: $1a
	jr @-$02                                         ; $4417: $18 $fc

	ld a, a                                          ; $4419: $7f
	ldh [c], a                                       ; $441a: $e2
	sbc [hl]                                         ; $441b: $9e
	ldh a, [$de]                                     ; $441c: $f0 $de
	ret c                                            ; $441e: $d8

	sub [hl]                                         ; $441f: $96
	ret nc                                           ; $4420: $d0

	ld d, $14                                        ; $4421: $16 $14
	ld [de], a                                       ; $4423: $12
	stop                                             ; $4424: $10 $00
	inc b                                            ; $4426: $04
	nop                                              ; $4427: $00
	inc h                                            ; $4428: $24
	ld [hl], a                                       ; $4429: $77
	pop de                                           ; $442a: $d1
	db $dd                                           ; $442b: $dd
	ret z                                            ; $442c: $c8

	sbc e                                            ; $442d: $9b
	ld c, $0c                                        ; $442e: $0e $0c
	ld a, [bc]                                       ; $4430: $0a
	ld [$22dd], sp                                   ; $4431: $08 $dd $22
	ld [hl], a                                       ; $4434: $77
	ldh a, [$dd]                                     ; $4435: $f0 $dd
	cp b                                             ; $4437: $b8
	sbc e                                            ; $4438: $9b
	ld b, $04                                        ; $4439: $06 $04
	ld [bc], a                                       ; $443b: $02
	nop                                              ; $443c: $00
	sbc $22                                          ; $443d: $de $22
	sbc [hl]                                         ; $443f: $9e
	inc hl                                           ; $4440: $23
	db $fd                                           ; $4441: $fd
	nop                                              ; $4442: $00
	cp a                                             ; $4443: $bf
	ldh a, [$f8]                                     ; $4444: $f0 $f8
	rst SubAFromDE                                          ; $4446: $df
	ld a, [$eadf]                                    ; $4447: $fa $df $ea
	sbc e                                            ; $444a: $9b
	ld c, $0c                                        ; $444b: $0e $0c
	ld a, [bc]                                       ; $444d: $0a
	ld [$20dd], sp                                   ; $444e: $08 $dd $20
	sbc d                                            ; $4451: $9a
	ldh a, [$08]                                     ; $4452: $f0 $08
	nop                                              ; $4454: $00
	ld hl, sp-$16                                    ; $4455: $f8 $ea
	sbc $da                                          ; $4457: $de $da
	sbc e                                            ; $4459: $9b
	ld b, $04                                        ; $445a: $06 $04
	ld [bc], a                                       ; $445c: $02
	nop                                              ; $445d: $00
	sbc $20                                          ; $445e: $de $20
	sub d                                            ; $4460: $92
	ld hl, $fe06                                     ; $4461: $21 $06 $fe
	ld b, $fe                                        ; $4464: $06 $fe
	ei                                               ; $4466: $fb
	ei                                               ; $4467: $fb
	db $eb                                           ; $4468: $eb
	db $eb                                           ; $4469: $eb
	jr nz, jr_020_448a                               ; $446a: $20 $1e

	inc e                                            ; $446c: $1c
	ld a, [de]                                       ; $446d: $1a
	cp a                                             ; $446e: $bf
	jr nz, jr_020_4491                               ; $446f: $20 $20

	sub d                                            ; $4471: $92
	or $ee                                           ; $4472: $f6 $ee
	ld b, $fe                                        ; $4474: $06 $fe
	db $eb                                           ; $4476: $eb
	db $eb                                           ; $4477: $eb
	db $db                                           ; $4478: $db
	db $db                                           ; $4479: $db
	jr jr_020_4492                                   ; $447a: $18 $16

	inc d                                            ; $447c: $14
	ld [de], a                                       ; $447d: $12

jr_020_447e:
	jr nz, @+$79                                     ; $447e: $20 $77

	ldh a, [$9b]                                     ; $4480: $f0 $9b
	or $fe                                           ; $4482: $f6 $fe
	or $db                                           ; $4484: $f6 $db
	ld a, e                                          ; $4486: $7b
	ret nz                                           ; $4487: $c0

	sbc d                                            ; $4488: $9a
	db $10                                           ; $4489: $10

jr_020_448a:
	inc l                                            ; $448a: $2c
	ld a, [hl+]                                      ; $448b: $2a
	jr z, jr_020_44af                                ; $448c: $28 $21

	sbc $20                                          ; $448e: $de $20
	ld a, a                                          ; $4490: $7f

jr_020_4491:
	ldh [c], a                                       ; $4491: $e2

jr_020_4492:
	sbc l                                            ; $4492: $9d
	or $fd                                           ; $4493: $f6 $fd
	sbc $da                                          ; $4495: $de $da
	sub d                                            ; $4497: $92
	ld a, [$2426]                                    ; $4498: $fa $26 $24
	ld [hl+], a                                      ; $449b: $22
	jr c, jr_020_44be                                ; $449c: $38 $20

	jr nz, jr_020_44a1                               ; $449e: $20 $01

	nop                                              ; $44a0: $00

jr_020_44a1:
	push af                                          ; $44a1: $f5
	db $fd                                           ; $44a2: $fd
	push af                                          ; $44a3: $f5
	db $fd                                           ; $44a4: $fd
	ld a, e                                          ; $44a5: $7b
	pop hl                                           ; $44a6: $e1
	sbc d                                            ; $44a7: $9a
	jp c, $3436                                      ; $44a8: $da $36 $34

	ld [hl-], a                                      ; $44ab: $32
	jr nc, jr_020_4525                               ; $44ac: $30 $77

	xor a                                            ; $44ae: $af

jr_020_44af:
	sbc d                                            ; $44af: $9a
	push af                                          ; $44b0: $f5
	cp $f6                                           ; $44b1: $fe $f6
	cp $da                                           ; $44b3: $fe $da
	ld a, e                                          ; $44b5: $7b
	adc a                                            ; $44b6: $8f
	sbc e                                            ; $44b7: $9b
	ld l, $46                                        ; $44b8: $2e $46
	ld b, h                                          ; $44ba: $44
	ld b, d                                          ; $44bb: $42
	ld [hl], a                                       ; $44bc: $77
	ret nc                                           ; $44bd: $d0

jr_020_44be:
	sbc [hl]                                         ; $44be: $9e
	or $7b                                           ; $44bf: $f6 $7b
	rst GetHLinHL                                          ; $44c1: $cf
	ld [hl], a                                       ; $44c2: $77
	sub b                                            ; $44c3: $90
	sbc e                                            ; $44c4: $9b
	ld b, b                                          ; $44c5: $40
	ld a, $3c                                        ; $44c6: $3e $3c
	ld a, [hl-]                                      ; $44c8: $3a
	sbc $20                                          ; $44c9: $de $20
	sbc [hl]                                         ; $44cb: $9e
	ld bc, $e17b                                     ; $44cc: $01 $7b $e1
	sbc [hl]                                         ; $44cf: $9e
	or $77                                           ; $44d0: $f6 $77
	ld [hl], b                                       ; $44d2: $70
	sbc e                                            ; $44d3: $9b
	ld d, h                                          ; $44d4: $54
	ld d, d                                          ; $44d5: $52
	ld d, b                                          ; $44d6: $50
	ld c, [hl]                                       ; $44d7: $4e
	ld [hl], a                                       ; $44d8: $77
	ret nc                                           ; $44d9: $d0

	ld a, e                                          ; $44da: $7b
	pop hl                                           ; $44db: $e1
	ld a, a                                          ; $44dc: $7f
	ret nc                                           ; $44dd: $d0

	ld a, e                                          ; $44de: $7b
	or b                                             ; $44df: $b0
	sbc e                                            ; $44e0: $9b
	ld c, h                                          ; $44e1: $4c
	ld c, d                                          ; $44e2: $4a
	ld c, b                                          ; $44e3: $48
	ld d, h                                          ; $44e4: $54
	ld a, e                                          ; $44e5: $7b
	ld [hl], c                                       ; $44e6: $71
	sbc [hl]                                         ; $44e7: $9e
	nop                                              ; $44e8: $00
	ld [hl], a                                       ; $44e9: $77
	ret nc                                           ; $44ea: $d0

	ld a, e                                          ; $44eb: $7b
	pop hl                                           ; $44ec: $e1
	sbc d                                            ; $44ed: $9a
	ld [$6052], a                                    ; $44ee: $ea $52 $60
	ld e, [hl]                                       ; $44f1: $5e
	ld e, h                                          ; $44f2: $5c
	ld a, e                                          ; $44f3: $7b
	add c                                            ; $44f4: $81
	ld h, e                                          ; $44f5: $63
	ldh [$9a], a                                     ; $44f6: $e0 $9a
	ld e, d                                          ; $44f8: $5a
	ld e, b                                          ; $44f9: $58
	ld d, [hl]                                       ; $44fa: $56
	ld d, h                                          ; $44fb: $54
	nop                                              ; $44fc: $00
	ld l, a                                          ; $44fd: $6f
	ldh [hDisp1_WX], a                                     ; $44fe: $e0 $96
	ld b, $fa                                        ; $4500: $06 $fa
	jp c, $eada                                      ; $4502: $da $da $ea

	ld d, d                                          ; $4505: $52
	ld h, h                                          ; $4506: $64
	ld h, d                                          ; $4507: $62
	ld l, d                                          ; $4508: $6a
	db $dd                                           ; $4509: $dd
	jr nz, jr_020_458b                               ; $450a: $20 $7f

	pop hl                                           ; $450c: $e1
	ld a, a                                          ; $450d: $7f
	rst AddAOntoHL                                          ; $450e: $ef
	ld a, e                                          ; $450f: $7b
	add c                                            ; $4510: $81
	sbc c                                            ; $4511: $99
	jp c, Jump_020_6668                              ; $4512: $da $68 $66

	ld l, h                                          ; $4515: $6c
	ld h, d                                          ; $4516: $62
	jr nz, jr_020_4594                               ; $4517: $20 $7b

	adc a                                            ; $4519: $8f
	ld [hl], a                                       ; $451a: $77
	ret nc                                           ; $451b: $d0

	sbc $ea                                          ; $451c: $de $ea
	sbc e                                            ; $451e: $9b
	ld a, [$686e]                                    ; $451f: $fa $6e $68
	ld h, [hl]                                       ; $4522: $66
	ld a, e                                          ; $4523: $7b
	or b                                             ; $4524: $b0

jr_020_4525:
	ld a, a                                          ; $4525: $7f
	cp [hl]                                          ; $4526: $be
	ld a, e                                          ; $4527: $7b
	sub c                                            ; $4528: $91
	ld a, e                                          ; $4529: $7b
	sub b                                            ; $452a: $90
	ld a, a                                          ; $452b: $7f
	xor [hl]                                         ; $452c: $ae
	sbc d                                            ; $452d: $9a
	ld d, d                                          ; $452e: $52
	ld d, h                                          ; $452f: $54
	ld d, d                                          ; $4530: $52
	ld h, [hl]                                       ; $4531: $66
	ld hl, $b073                                     ; $4532: $21 $73 $b0
	ld l, a                                          ; $4535: $6f
	ret nc                                           ; $4536: $d0

	sbc e                                            ; $4537: $9b
	ld [hl], h                                       ; $4538: $74
	ld l, b                                          ; $4539: $68
	ld [hl], d                                       ; $453a: $72
	ld [hl], b                                       ; $453b: $70
	ld [hl], a                                       ; $453c: $77
	nop                                              ; $453d: $00
	ld l, $02                                        ; $453e: $2e $02
	sub e                                            ; $4540: $93
	dec hl                                           ; $4541: $2b
	inc hl                                           ; $4542: $23
	dec hl                                           ; $4543: $2b
	inc hl                                           ; $4544: $23
	ldh a, [$f0]                                     ; $4545: $f0 $f0
	ldh [$e0], a                                     ; $4547: $e0 $e0
	ld a, [bc]                                       ; $4549: $0a
	ld [$0406], sp                                   ; $454a: $08 $06 $04
	db $dd                                           ; $454d: $dd
	jr nz, jr_020_45cf                               ; $454e: $20 $7f

	ldh a, [c]                                       ; $4550: $f2
	add l                                            ; $4551: $85
	ld a, [hl+]                                      ; $4552: $2a
	ld [hl+], a                                      ; $4553: $22
	ret nc                                           ; $4554: $d0

	ret nc                                           ; $4555: $d0

	ldh a, [$f0]                                     ; $4556: $f0 $f0
	ld [bc], a                                       ; $4558: $02
	nop                                              ; $4559: $00
	ld c, $0c                                        ; $455a: $0e $0c
	jr nz, jr_020_457f                               ; $455c: $20 $21

	jr nz, jr_020_4580                               ; $455e: $20 $20

	ld a, [hl+]                                      ; $4560: $2a
	ld [hl+], a                                      ; $4561: $22
	ld a, [hl+]                                      ; $4562: $2a
	ld [hl+], a                                      ; $4563: $22
	ldh [$e0], a                                     ; $4564: $e0 $e0
	ret nc                                           ; $4566: $d0

	ret nc                                           ; $4567: $d0

	ld b, $04                                        ; $4568: $06 $04
	ld [bc], a                                       ; $456a: $02
	nop                                              ; $456b: $00
	sbc $20                                          ; $456c: $de $20
	sbc l                                            ; $456e: $9d
	ld hl, $7b29                                     ; $456f: $21 $29 $7b
	cp $77                                           ; $4572: $fe $77
	ret nc                                           ; $4574: $d0

	sbc l                                            ; $4575: $9d
	ld [de], a                                       ; $4576: $12
	db $10                                           ; $4577: $10
	ld l, a                                          ; $4578: $6f
	ret nc                                           ; $4579: $d0

	ld a, a                                          ; $457a: $7f
	ldh a, [c]                                       ; $457b: $f2
	sbc l                                            ; $457c: $9d
	jr z, jr_020_459f                                ; $457d: $28 $20

jr_020_457f:
	ld l, a                                          ; $457f: $6f

jr_020_4580:
	ret nc                                           ; $4580: $d0

	sbc l                                            ; $4581: $9d
	ld d, $14                                        ; $4582: $16 $14
	ld [hl], a                                       ; $4584: $77
	ret nc                                           ; $4585: $d0

	ld a, a                                          ; $4586: $7f
	ldh a, [c]                                       ; $4587: $f2
	ld a, a                                          ; $4588: $7f
	cp $57                                           ; $4589: $fe $57

jr_020_458b:
	ret nc                                           ; $458b: $d0

	sbc e                                            ; $458c: $9b
	daa                                              ; $458d: $27
	rra                                              ; $458e: $1f
	daa                                              ; $458f: $27
	rra                                              ; $4590: $1f
	ld [hl], a                                       ; $4591: $77
	ret nc                                           ; $4592: $d0

	sbc l                                            ; $4593: $9d

jr_020_4594:
	ld a, [de]                                       ; $4594: $1a
	jr jr_020_4606                                   ; $4595: $18 $6f

	ret nc                                           ; $4597: $d0

	ld a, a                                          ; $4598: $7f
	ldh a, [c]                                       ; $4599: $f2
	sbc l                                            ; $459a: $9d
	ld h, $1e                                        ; $459b: $26 $1e
	ld l, a                                          ; $459d: $6f
	ret nc                                           ; $459e: $d0

jr_020_459f:
	sbc l                                            ; $459f: $9d
	ld e, $1c                                        ; $45a0: $1e $1c
	ld [hl], a                                       ; $45a2: $77
	ret nc                                           ; $45a3: $d0

	ld a, a                                          ; $45a4: $7f
	ldh a, [c]                                       ; $45a5: $f2
	ld a, a                                          ; $45a6: $7f
	cp $57                                           ; $45a7: $fe $57
	ret nc                                           ; $45a9: $d0

	sbc e                                            ; $45aa: $9b
	dec h                                            ; $45ab: $25
	dec e                                            ; $45ac: $1d
	dec h                                            ; $45ad: $25
	dec e                                            ; $45ae: $1d
	ld [hl], a                                       ; $45af: $77
	ret nc                                           ; $45b0: $d0

	ld a, a                                          ; $45b1: $7f
	add d                                            ; $45b2: $82
	ld l, a                                          ; $45b3: $6f
	ret nc                                           ; $45b4: $d0

	ld a, a                                          ; $45b5: $7f
	ldh a, [c]                                       ; $45b6: $f2
	sbc l                                            ; $45b7: $9d
	inc h                                            ; $45b8: $24
	inc e                                            ; $45b9: $1c
	ld l, a                                          ; $45ba: $6f
	ret nc                                           ; $45bb: $d0

	ld a, a                                          ; $45bc: $7f
	adc [hl]                                         ; $45bd: $8e
	ld [hl], a                                       ; $45be: $77
	ret nc                                           ; $45bf: $d0

	ld a, a                                          ; $45c0: $7f
	ldh a, [c]                                       ; $45c1: $f2
	ld a, a                                          ; $45c2: $7f
	cp $57                                           ; $45c3: $fe $57
	ret nc                                           ; $45c5: $d0

	sbc e                                            ; $45c6: $9b
	inc hl                                           ; $45c7: $23
	dec de                                           ; $45c8: $1b
	inc hl                                           ; $45c9: $23
	dec de                                           ; $45ca: $1b
	ld [hl], a                                       ; $45cb: $77
	ret nc                                           ; $45cc: $d0

	ld a, a                                          ; $45cd: $7f
	add d                                            ; $45ce: $82

jr_020_45cf:
	ld l, a                                          ; $45cf: $6f
	ret nc                                           ; $45d0: $d0

	ld a, a                                          ; $45d1: $7f
	ldh a, [c]                                       ; $45d2: $f2
	sbc l                                            ; $45d3: $9d
	ld [hl+], a                                      ; $45d4: $22
	ld a, [de]                                       ; $45d5: $1a
	ld l, a                                          ; $45d6: $6f
	ret nc                                           ; $45d7: $d0

	ld a, a                                          ; $45d8: $7f
	adc [hl]                                         ; $45d9: $8e
	ld [hl], a                                       ; $45da: $77
	ret nc                                           ; $45db: $d0

	ld a, a                                          ; $45dc: $7f
	ldh a, [c]                                       ; $45dd: $f2
	ld a, a                                          ; $45de: $7f
	cp $57                                           ; $45df: $fe $57
	ret nc                                           ; $45e1: $d0

	sbc e                                            ; $45e2: $9b
	ld hl, $2119                                     ; $45e3: $21 $19 $21
	add hl, de                                       ; $45e6: $19
	ld d, a                                          ; $45e7: $57
	and b                                            ; $45e8: $a0
	ld a, a                                          ; $45e9: $7f
	ldh a, [c]                                       ; $45ea: $f2
	sbc l                                            ; $45eb: $9d
	jr nz, jr_020_4606                               ; $45ec: $20 $18

	ld d, a                                          ; $45ee: $57
	and b                                            ; $45ef: $a0
	ld a, a                                          ; $45f0: $7f
	ldh a, [c]                                       ; $45f1: $f2
	ld a, a                                          ; $45f2: $7f
	cp $57                                           ; $45f3: $fe $57
	ret nc                                           ; $45f5: $d0

	sbc e                                            ; $45f6: $9b
	rra                                              ; $45f7: $1f
	rla                                              ; $45f8: $17
	rra                                              ; $45f9: $1f
	rla                                              ; $45fa: $17
	ld d, a                                          ; $45fb: $57
	and b                                            ; $45fc: $a0
	ld a, a                                          ; $45fd: $7f
	ldh a, [c]                                       ; $45fe: $f2
	sbc l                                            ; $45ff: $9d
	ld e, $16                                        ; $4600: $1e $16
	ld d, a                                          ; $4602: $57
	and b                                            ; $4603: $a0
	ld a, a                                          ; $4604: $7f
	ldh a, [c]                                       ; $4605: $f2

jr_020_4606:
	ld a, a                                          ; $4606: $7f
	cp $57                                           ; $4607: $fe $57
	ret nc                                           ; $4609: $d0

	sbc e                                            ; $460a: $9b
	dec e                                            ; $460b: $1d
	dec d                                            ; $460c: $15
	dec e                                            ; $460d: $1d
	dec d                                            ; $460e: $15
	ld l, a                                          ; $460f: $6f
	ret nc                                           ; $4610: $d0

	sbc [hl]                                         ; $4611: $9e
	jr nz, jr_020_4687                               ; $4612: $20 $73

	ret nc                                           ; $4614: $d0

	ld a, a                                          ; $4615: $7f
	ldh a, [c]                                       ; $4616: $f2
	sbc l                                            ; $4617: $9d
	inc e                                            ; $4618: $1c
	inc d                                            ; $4619: $14
	ld d, a                                          ; $461a: $57
	ret nc                                           ; $461b: $d0

	ld a, a                                          ; $461c: $7f
	ldh a, [c]                                       ; $461d: $f2
	ld a, a                                          ; $461e: $7f
	cp $77                                           ; $461f: $fe $77
	ret nc                                           ; $4621: $d0

	sbc l                                            ; $4622: $9d
	inc h                                            ; $4623: $24
	ld [hl+], a                                      ; $4624: $22
	ld l, a                                          ; $4625: $6f
	ret nc                                           ; $4626: $d0

	sbc e                                            ; $4627: $9b
	dec de                                           ; $4628: $1b
	inc de                                           ; $4629: $13
	dec de                                           ; $462a: $1b
	inc de                                           ; $462b: $13
	ld [hl], a                                       ; $462c: $77
	ret nc                                           ; $462d: $d0

	ld a, [hl]                                       ; $462e: $7e
	ldh a, [c]                                       ; $462f: $f2
	sbc l                                            ; $4630: $9d
	ld h, $22                                        ; $4631: $26 $22
	db $dd                                           ; $4633: $dd
	jr nz, jr_020_46b5                               ; $4634: $20 $7f

	ldh a, [c]                                       ; $4636: $f2
	sbc l                                            ; $4637: $9d
	ld a, [de]                                       ; $4638: $1a
	ld [de], a                                       ; $4639: $12
	ld l, a                                          ; $463a: $6f
	ret nc                                           ; $463b: $d0

	ld a, [hl]                                       ; $463c: $7e
	ld l, [hl]                                       ; $463d: $6e
	ld [hl], a                                       ; $463e: $77
	ret nc                                           ; $463f: $d0

	ld a, a                                          ; $4640: $7f
	ldh a, [c]                                       ; $4641: $f2
	ld a, a                                          ; $4642: $7f
	cp $77                                           ; $4643: $fe $77
	ret nc                                           ; $4645: $d0

	sbc [hl]                                         ; $4646: $9e
	jr z, jr_020_46b4                                ; $4647: $28 $6b

	ret nc                                           ; $4649: $d0

	sbc e                                            ; $464a: $9b
	add hl, de                                       ; $464b: $19
	ld de, $1119                                     ; $464c: $11 $19 $11
	ld l, a                                          ; $464f: $6f
	ld b, b                                          ; $4650: $40
	ld a, [hl]                                       ; $4651: $7e
	ld l, b                                          ; $4652: $68
	db $dd                                           ; $4653: $dd
	jr nz, jr_020_46d5                               ; $4654: $20 $7f

	ldh a, [c]                                       ; $4656: $f2
	sbc l                                            ; $4657: $9d
	jr jr_020_466a                                   ; $4658: $18 $10

	ld d, a                                          ; $465a: $57
	ld b, b                                          ; $465b: $40
	ld a, a                                          ; $465c: $7f
	ldh a, [c]                                       ; $465d: $f2
	ld a, a                                          ; $465e: $7f
	cp $77                                           ; $465f: $fe $77
	ret nc                                           ; $4661: $d0

	sbc [hl]                                         ; $4662: $9e
	inc l                                            ; $4663: $2c
	ld l, e                                          ; $4664: $6b
	ret nc                                           ; $4665: $d0

	sbc e                                            ; $4666: $9b
	rla                                              ; $4667: $17
	rrca                                             ; $4668: $0f
	rla                                              ; $4669: $17

jr_020_466a:
	rrca                                             ; $466a: $0f
	ld l, a                                          ; $466b: $6f
	ld [hl], b                                       ; $466c: $70
	sbc [hl]                                         ; $466d: $9e
	ld l, $73                                        ; $466e: $2e $73
	ret nc                                           ; $4670: $d0

	ld a, a                                          ; $4671: $7f
	ldh a, [c]                                       ; $4672: $f2
	sbc l                                            ; $4673: $9d
	ld d, $0e                                        ; $4674: $16 $0e
	ld d, a                                          ; $4676: $57
	ld [hl], b                                       ; $4677: $70
	ld a, a                                          ; $4678: $7f
	ldh a, [c]                                       ; $4679: $f2
	ld a, a                                          ; $467a: $7f
	cp $57                                           ; $467b: $fe $57
	ld [hl], b                                       ; $467d: $70
	sbc e                                            ; $467e: $9b
	dec d                                            ; $467f: $15
	dec c                                            ; $4680: $0d
	dec d                                            ; $4681: $15
	dec c                                            ; $4682: $0d
	ld d, a                                          ; $4683: $57
	ld [hl], b                                       ; $4684: $70
	ld a, a                                          ; $4685: $7f
	ldh a, [c]                                       ; $4686: $f2

jr_020_4687:
	sbc l                                            ; $4687: $9d
	inc d                                            ; $4688: $14
	inc c                                            ; $4689: $0c
	ld d, a                                          ; $468a: $57
	ld [hl], b                                       ; $468b: $70
	ld a, a                                          ; $468c: $7f
	ldh a, [c]                                       ; $468d: $f2
	ld a, a                                          ; $468e: $7f
	cp $57                                           ; $468f: $fe $57
	ld [hl], b                                       ; $4691: $70
	sbc e                                            ; $4692: $9b
	inc de                                           ; $4693: $13
	dec bc                                           ; $4694: $0b
	inc de                                           ; $4695: $13
	dec bc                                           ; $4696: $0b
	ld d, a                                          ; $4697: $57
	ld [hl], b                                       ; $4698: $70
	ld a, a                                          ; $4699: $7f
	ldh a, [c]                                       ; $469a: $f2
	sbc l                                            ; $469b: $9d
	ld [de], a                                       ; $469c: $12
	ld a, [bc]                                       ; $469d: $0a
	ld d, a                                          ; $469e: $57
	ld [hl], b                                       ; $469f: $70
	ld a, a                                          ; $46a0: $7f
	ldh a, [c]                                       ; $46a1: $f2
	ld a, a                                          ; $46a2: $7f
	cp $57                                           ; $46a3: $fe $57
	ld [hl], b                                       ; $46a5: $70
	sbc e                                            ; $46a6: $9b
	ld de, $1109                                     ; $46a7: $11 $09 $11
	add hl, bc                                       ; $46aa: $09
	ld d, a                                          ; $46ab: $57
	ld [hl], b                                       ; $46ac: $70
	ld a, a                                          ; $46ad: $7f
	ldh a, [c]                                       ; $46ae: $f2
	sbc l                                            ; $46af: $9d
	db $10                                           ; $46b0: $10
	ld [$7057], sp                                   ; $46b1: $08 $57 $70

jr_020_46b4:
	ld a, a                                          ; $46b4: $7f

jr_020_46b5:
	ldh a, [c]                                       ; $46b5: $f2
	ld a, a                                          ; $46b6: $7f
	cp $57                                           ; $46b7: $fe $57
	ld [hl], b                                       ; $46b9: $70
	sbc e                                            ; $46ba: $9b
	rrca                                             ; $46bb: $0f
	rlca                                             ; $46bc: $07
	rrca                                             ; $46bd: $0f
	rlca                                             ; $46be: $07
	ld d, a                                          ; $46bf: $57
	ld [hl], b                                       ; $46c0: $70
	ld a, a                                          ; $46c1: $7f
	ldh a, [c]                                       ; $46c2: $f2
	sbc l                                            ; $46c3: $9d
	ld c, $06                                        ; $46c4: $0e $06
	ld d, a                                          ; $46c6: $57
	ld [hl], b                                       ; $46c7: $70
	ld a, a                                          ; $46c8: $7f
	ldh a, [c]                                       ; $46c9: $f2
	ld a, a                                          ; $46ca: $7f
	cp $57                                           ; $46cb: $fe $57
	ld [hl], b                                       ; $46cd: $70
	sbc e                                            ; $46ce: $9b
	dec c                                            ; $46cf: $0d
	dec b                                            ; $46d0: $05
	dec c                                            ; $46d1: $0d
	dec b                                            ; $46d2: $05
	ld d, a                                          ; $46d3: $57
	ld [hl], b                                       ; $46d4: $70

jr_020_46d5:
	ld a, a                                          ; $46d5: $7f
	ldh a, [c]                                       ; $46d6: $f2
	sbc l                                            ; $46d7: $9d
	inc c                                            ; $46d8: $0c
	inc b                                            ; $46d9: $04
	ld d, a                                          ; $46da: $57
	ld [hl], b                                       ; $46db: $70
	ld a, a                                          ; $46dc: $7f
	ldh a, [c]                                       ; $46dd: $f2
	ld a, a                                          ; $46de: $7f
	cp $57                                           ; $46df: $fe $57
	ld [hl], b                                       ; $46e1: $70
	sbc e                                            ; $46e2: $9b
	dec bc                                           ; $46e3: $0b
	inc bc                                           ; $46e4: $03
	dec bc                                           ; $46e5: $0b
	inc bc                                           ; $46e6: $03
	ld d, a                                          ; $46e7: $57
	ld [hl], b                                       ; $46e8: $70
	ld a, a                                          ; $46e9: $7f
	ldh a, [c]                                       ; $46ea: $f2
	sbc l                                            ; $46eb: $9d
	ld a, [bc]                                       ; $46ec: $0a
	ld [bc], a                                       ; $46ed: $02
	ld d, a                                          ; $46ee: $57
	ld [hl], b                                       ; $46ef: $70
	ld a, a                                          ; $46f0: $7f
	ldh a, [c]                                       ; $46f1: $f2
	ld a, a                                          ; $46f2: $7f
	cp $57                                           ; $46f3: $fe $57
	ld [hl], b                                       ; $46f5: $70
	sbc e                                            ; $46f6: $9b
	add hl, bc                                       ; $46f7: $09
	ld bc, $0109                                     ; $46f8: $01 $09 $01

jr_020_46fb:
	ld d, a                                          ; $46fb: $57
	ld [hl], b                                       ; $46fc: $70
	ld a, a                                          ; $46fd: $7f
	ldh a, [c]                                       ; $46fe: $f2
	sbc l                                            ; $46ff: $9d
	ld [$5700], sp                                   ; $4700: $08 $00 $57
	ld [hl], b                                       ; $4703: $70
	ld a, a                                          ; $4704: $7f
	ldh a, [c]                                       ; $4705: $f2
	ld a, a                                          ; $4706: $7f
	cp $57                                           ; $4707: $fe $57
	ld [hl], b                                       ; $4709: $70
	sbc e                                            ; $470a: $9b
	ld b, $fe                                        ; $470b: $06 $fe
	ld b, $fe                                        ; $470d: $06 $fe
	ld d, a                                          ; $470f: $57
	ld [hl], b                                       ; $4710: $70
	ld a, a                                          ; $4711: $7f
	ldh a, [c]                                       ; $4712: $f2
	sbc l                                            ; $4713: $9d
	dec b                                            ; $4714: $05
	db $fd                                           ; $4715: $fd
	ld d, a                                          ; $4716: $57
	ld [hl], b                                       ; $4717: $70

jr_020_4718:
	ld a, a                                          ; $4718: $7f
	ldh a, [c]                                       ; $4719: $f2
	ld a, a                                          ; $471a: $7f
	cp $57                                           ; $471b: $fe $57
	ld [hl], b                                       ; $471d: $70
	sbc e                                            ; $471e: $9b
	inc b                                            ; $471f: $04
	db $fc                                           ; $4720: $fc
	inc b                                            ; $4721: $04
	db $fc                                           ; $4722: $fc
	ld d, a                                          ; $4723: $57
	ld [hl], b                                       ; $4724: $70
	ld a, a                                          ; $4725: $7f
	ldh a, [c]                                       ; $4726: $f2
	sbc l                                            ; $4727: $9d
	inc bc                                           ; $4728: $03
	ei                                               ; $4729: $fb
	ld d, a                                          ; $472a: $57
	ld [hl], b                                       ; $472b: $70
	ld a, a                                          ; $472c: $7f
	ldh a, [c]                                       ; $472d: $f2
	ld a, a                                          ; $472e: $7f
	cp $57                                           ; $472f: $fe $57
	ld [hl], b                                       ; $4731: $70
	sbc e                                            ; $4732: $9b
	ld [bc], a                                       ; $4733: $02
	ld a, [$fa02]                                    ; $4734: $fa $02 $fa
	ld d, a                                          ; $4737: $57
	ld [hl], b                                       ; $4738: $70
	ld a, a                                          ; $4739: $7f
	ldh a, [c]                                       ; $473a: $f2
	sbc l                                            ; $473b: $9d
	ld bc, $57f9                                     ; $473c: $01 $f9 $57
	ld [hl], b                                       ; $473f: $70
	ld a, a                                          ; $4740: $7f
	ldh a, [c]                                       ; $4741: $f2
	ld a, a                                          ; $4742: $7f
	cp $57                                           ; $4743: $fe $57
	ld [hl], b                                       ; $4745: $70
	cp a                                             ; $4746: $bf
	ld hl, sp-$08                                    ; $4747: $f8 $f8
	ld d, a                                          ; $4749: $57
	ld [hl], b                                       ; $474a: $70
	ld a, a                                          ; $474b: $7f
	ldh a, [c]                                       ; $474c: $f2
	sbc l                                            ; $474d: $9d
	rst $38                                          ; $474e: $ff
	rst FarCall                                          ; $474f: $f7
	ld d, a                                          ; $4750: $57
	ld [hl], b                                       ; $4751: $70
	ld a, a                                          ; $4752: $7f
	ldh a, [c]                                       ; $4753: $f2
	ld a, a                                          ; $4754: $7f
	cp $57                                           ; $4755: $fe $57
	ld [hl], b                                       ; $4757: $70
	ld [hl], a                                       ; $4758: $77
	ldh a, [rPCM34]                                  ; $4759: $f0 $77
	ret nc                                           ; $475b: $d0

	sbc e                                            ; $475c: $9b
	jr c, jr_020_4795                                ; $475d: $38 $36

	inc [hl]                                         ; $475f: $34

jr_020_4760:
	ld [hl-], a                                      ; $4760: $32
	db $dd                                           ; $4761: $dd
	jr nz, jr_020_46fb                               ; $4762: $20 $97

	rst $38                                          ; $4764: $ff
	ret nc                                           ; $4765: $d0

	ld [bc], a                                       ; $4766: $02
	jr nz, jr_020_4760                               ; $4767: $20 $f7

	ret nc                                           ; $4769: $d0

	jr nc, jr_020_478d                               ; $476a: $30 $21

	call c, $9301                                    ; $476c: $dc $01 $93
	dec l                                            ; $476f: $2d
	dec h                                            ; $4770: $25
	dec l                                            ; $4771: $2d
	dec h                                            ; $4772: $25
	ldh a, [$f0]                                     ; $4773: $f0 $f0
	ldh [$e0], a                                     ; $4775: $e0 $e0
	ld [$0406], sp                                   ; $4777: $08 $06 $04
	ld [bc], a                                       ; $477a: $02
	db $dd                                           ; $477b: $dd
	jr nz, jr_020_4718                               ; $477c: $20 $9a

	dec h                                            ; $477e: $25
	inc l                                            ; $477f: $2c
	inc h                                            ; $4780: $24
	inc l                                            ; $4781: $2c
	ret nc                                           ; $4782: $d0

	ld a, e                                          ; $4783: $7b
	rst AddAOntoHL                                          ; $4784: $ef
	sbc d                                            ; $4785: $9a
	nop                                              ; $4786: $00
	inc c                                            ; $4787: $0c
	ld a, [bc]                                       ; $4788: $0a
	inc b                                            ; $4789: $04
	ld hl, $20de                                     ; $478a: $21 $de $20

jr_020_478d:
	rst SubAFromDE                                          ; $478d: $df
	inc h                                            ; $478e: $24
	sbc h                                            ; $478f: $9c
	ld a, [hl+]                                      ; $4790: $2a
	ld [hl+], a                                      ; $4791: $22
	ldh [$7b], a                                     ; $4792: $e0 $7b
	rst AddAOntoHL                                          ; $4794: $ef

jr_020_4795:
	sbc d                                            ; $4795: $9a
	ld [bc], a                                       ; $4796: $02
	nop                                              ; $4797: $00
	ld d, $14                                        ; $4798: $16 $14
	jr nz, @+$7d                                     ; $479a: $20 $7b

	rst AddAOntoHL                                          ; $479c: $ef
	ld a, a                                          ; $479d: $7f
	ldh a, [c]                                       ; $479e: $f2
	sbc h                                            ; $479f: $9c
	ld [hl+], a                                      ; $47a0: $22
	add hl, hl                                       ; $47a1: $29
	ldh [$7b], a                                     ; $47a2: $e0 $7b
	rst AddAOntoHL                                          ; $47a4: $ef
	sbc d                                            ; $47a5: $9a
	ld [de], a                                       ; $47a6: $12
	db $10                                           ; $47a7: $10
	ld c, $1a                                        ; $47a8: $0e $1a
	jr nz, jr_020_4827                               ; $47aa: $20 $7b

	rst AddAOntoHL                                          ; $47ac: $ef
	sbc e                                            ; $47ad: $9b
	ld hl, $2129                                     ; $47ae: $21 $29 $21
	ld hl, $c17b                                     ; $47b1: $21 $7b $c1
	sbc l                                            ; $47b4: $9d
	ret nc                                           ; $47b5: $d0

	jr jr_020_4833                                   ; $47b6: $18 $7b

	rst AddAOntoHL                                          ; $47b8: $ef
	sbc $20                                          ; $47b9: $de $20
	sbc d                                            ; $47bb: $9a
	ld hl, $2028                                     ; $47bc: $21 $28 $20
	jr z, jr_020_47e1                                ; $47bf: $28 $20

	ld [hl], a                                       ; $47c1: $77
	or b                                             ; $47c2: $b0
	sbc e                                            ; $47c3: $9b
	ld e, $1c                                        ; $47c4: $1e $1c
	ld [de], a                                       ; $47c6: $12
	db $10                                           ; $47c7: $10
	call c, $9c20                                    ; $47c8: $dc $20 $9c
	daa                                              ; $47cb: $27
	rra                                              ; $47cc: $1f
	daa                                              ; $47cd: $27
	ld [hl], a                                       ; $47ce: $77
	or b                                             ; $47cf: $b0
	sbc h                                            ; $47d0: $9c
	ld c, $22                                        ; $47d1: $0e $22
	jr nz, jr_020_4848                               ; $47d3: $20 $73

	or b                                             ; $47d5: $b0
	rst SubAFromDE                                          ; $47d6: $df
	rra                                              ; $47d7: $1f
	sbc l                                            ; $47d8: $9d
	ld h, $1e                                        ; $47d9: $26 $1e
	ld l, a                                          ; $47db: $6f
	or b                                             ; $47dc: $b0
	ld a, a                                          ; $47dd: $7f
	adc [hl]                                         ; $47de: $8e
	ld [hl], a                                       ; $47df: $77
	or b                                             ; $47e0: $b0

jr_020_47e1:
	ld a, a                                          ; $47e1: $7f
	ldh a, [c]                                       ; $47e2: $f2
	sbc l                                            ; $47e3: $9d
	ld e, $25                                        ; $47e4: $1e $25
	ld [hl], a                                       ; $47e6: $77
	or b                                             ; $47e7: $b0
	ld a, a                                          ; $47e8: $7f
	add d                                            ; $47e9: $82
	ld a, a                                          ; $47ea: $7f
	adc [hl]                                         ; $47eb: $8e
	ld [hl], a                                       ; $47ec: $77
	or b                                             ; $47ed: $b0
	sbc e                                            ; $47ee: $9b
	dec e                                            ; $47ef: $1d
	dec h                                            ; $47f0: $25
	dec e                                            ; $47f1: $1d
	dec e                                            ; $47f2: $1d
	ld [hl], a                                       ; $47f3: $77
	or b                                             ; $47f4: $b0
	ld a, a                                          ; $47f5: $7f
	add d                                            ; $47f6: $82
	ld a, a                                          ; $47f7: $7f
	rst AddAOntoHL                                          ; $47f8: $ef
	ld [hl], a                                       ; $47f9: $77
	or b                                             ; $47fa: $b0
	sbc e                                            ; $47fb: $9b
	inc hl                                           ; $47fc: $23
	dec de                                           ; $47fd: $1b
	inc hl                                           ; $47fe: $23
	dec de                                           ; $47ff: $1b
	ld [hl], a                                       ; $4800: $77
	or b                                             ; $4801: $b0
	ld a, a                                          ; $4802: $7f
	add d                                            ; $4803: $82

jr_020_4804:
	ld l, a                                          ; $4804: $6f
	or b                                             ; $4805: $b0
	sbc e                                            ; $4806: $9b
	dec de                                           ; $4807: $1b
	ld [hl+], a                                      ; $4808: $22
	ld a, [de]                                       ; $4809: $1a
	ld [hl+], a                                      ; $480a: $22
	ld [hl], e                                       ; $480b: $73
	or b                                             ; $480c: $b0
	sbc h                                            ; $480d: $9c
	ld a, [de]                                       ; $480e: $1a
	jr jr_020_4823                                   ; $480f: $18 $12

	ld [hl], a                                       ; $4811: $77
	or b                                             ; $4812: $b0
	rst SubAFromDE                                          ; $4813: $df
	ld a, [de]                                       ; $4814: $1a
	sbc l                                            ; $4815: $9d
	ld hl, $7719                                     ; $4816: $21 $19 $77
	or b                                             ; $4819: $b0
	ld a, a                                          ; $481a: $7f
	add d                                            ; $481b: $82
	ld a, a                                          ; $481c: $7f
	adc [hl]                                         ; $481d: $8e
	ld [hl], a                                       ; $481e: $77
	or b                                             ; $481f: $b0
	ld a, a                                          ; $4820: $7f
	ldh a, [c]                                       ; $4821: $f2
	sbc l                                            ; $4822: $9d

jr_020_4823:
	add hl, de                                       ; $4823: $19
	jr nz, jr_020_4891                               ; $4824: $20 $6b

	ld h, b                                          ; $4826: $60

jr_020_4827:
	ld a, a                                          ; $4827: $7f
	adc [hl]                                         ; $4828: $8e
	ld a, e                                          ; $4829: $7b
	rst AddAOntoHL                                          ; $482a: $ef
	sbc e                                            ; $482b: $9b
	jr jr_020_484e                                   ; $482c: $18 $20

	jr jr_020_4848                                   ; $482e: $18 $18

	ld [hl], a                                       ; $4830: $77
	or b                                             ; $4831: $b0
	ld a, a                                          ; $4832: $7f

jr_020_4833:
	add d                                            ; $4833: $82
	ld l, a                                          ; $4834: $6f
	or b                                             ; $4835: $b0
	sbc e                                            ; $4836: $9b
	rra                                              ; $4837: $1f
	rla                                              ; $4838: $17
	rra                                              ; $4839: $1f
	rla                                              ; $483a: $17
	ld d, a                                          ; $483b: $57
	db $10                                           ; $483c: $10
	sbc e                                            ; $483d: $9b
	rla                                              ; $483e: $17
	ld e, $16                                        ; $483f: $1e $16
	ld e, $57                                        ; $4841: $1e $57
	db $10                                           ; $4843: $10

jr_020_4844:
	rst SubAFromDE                                          ; $4844: $df
	ld d, $9d                                        ; $4845: $16 $9d
	inc e                                            ; $4847: $1c

jr_020_4848:
	inc d                                            ; $4848: $14
	ld d, a                                          ; $4849: $57
	db $10                                           ; $484a: $10
	ld a, a                                          ; $484b: $7f
	ldh a, [c]                                       ; $484c: $f2
	sbc l                                            ; $484d: $9d

jr_020_484e:
	inc d                                            ; $484e: $14
	dec de                                           ; $484f: $1b
	ld d, a                                          ; $4850: $57
	db $10                                           ; $4851: $10
	sbc e                                            ; $4852: $9b
	inc de                                           ; $4853: $13
	dec de                                           ; $4854: $1b
	inc de                                           ; $4855: $13
	inc de                                           ; $4856: $13
	ld d, a                                          ; $4857: $57
	db $10                                           ; $4858: $10
	ld a, a                                          ; $4859: $7f
	pop af                                           ; $485a: $f1
	ld a, a                                          ; $485b: $7f
	cp $df                                           ; $485c: $fe $df
	ldh [$df], a                                     ; $485e: $e0 $df
	ldh a, [$9b]                                     ; $4860: $f0 $9b
	ld h, $24                                        ; $4862: $26 $24
	ld a, [de]                                       ; $4864: $1a
	jr jr_020_4844                                   ; $4865: $18 $dd

	jr nz, jr_020_4804                               ; $4867: $20 $9b

	inc de                                           ; $4869: $13
	inc e                                            ; $486a: $1c
	inc d                                            ; $486b: $14
	inc e                                            ; $486c: $1c
	ld [hl], e                                       ; $486d: $73
	ld h, b                                          ; $486e: $60
	ld a, e                                          ; $486f: $7b
	ld c, a                                          ; $4870: $4f
	ld [hl], a                                       ; $4871: $77
	or b                                             ; $4872: $b0
	rst SubAFromDE                                          ; $4873: $df
	inc d                                            ; $4874: $14
	sbc l                                            ; $4875: $9d
	dec e                                            ; $4876: $1d
	dec d                                            ; $4877: $15
	ld l, a                                          ; $4878: $6f
	ld h, b                                          ; $4879: $60
	ld a, a                                          ; $487a: $7f
	sbc a                                            ; $487b: $9f
	ld [hl], a                                       ; $487c: $77
	or b                                             ; $487d: $b0
	ld a, a                                          ; $487e: $7f
	ldh a, [c]                                       ; $487f: $f2
	sbc l                                            ; $4880: $9d
	dec d                                            ; $4881: $15
	ld e, $6b                                        ; $4882: $1e $6b
	db $10                                           ; $4884: $10
	sbc [hl]                                         ; $4885: $9e
	ld [$b077], sp                                   ; $4886: $08 $77 $b0
	ld a, a                                          ; $4889: $7f
	add d                                            ; $488a: $82
	rst SubAFromDE                                          ; $488b: $df
	ld d, $77                                        ; $488c: $16 $77
	or b                                             ; $488e: $b0
	ld a, e                                          ; $488f: $7b
	ld [hl], c                                       ; $4890: $71

jr_020_4891:
	ld [hl], e                                       ; $4891: $73
	ld h, b                                          ; $4892: $60
	ld a, a                                          ; $4893: $7f
	ldh [$7f], a                                     ; $4894: $e0 $7f
	cp $77                                           ; $4896: $fe $77
	ld h, b                                          ; $4898: $60
	ld a, e                                          ; $4899: $7b
	ld [hl], c                                       ; $489a: $71
	ld [hl], e                                       ; $489b: $73
	ld h, b                                          ; $489c: $60
	sbc [hl]                                         ; $489d: $9e
	dec d                                            ; $489e: $15
	ld a, e                                          ; $489f: $7b
	sbc a                                            ; $48a0: $9f
	ld [hl], e                                       ; $48a1: $73
	ld h, b                                          ; $48a2: $60
	ld l, e                                          ; $48a3: $6b
	or b                                             ; $48a4: $b0
	rst SubAFromDE                                          ; $48a5: $df
	inc de                                           ; $48a6: $13
	sbc l                                            ; $48a7: $9d
	ld a, [de]                                       ; $48a8: $1a
	ld [de], a                                       ; $48a9: $12
	ld l, a                                          ; $48aa: $6f
	or b                                             ; $48ab: $b0
	ld a, e                                          ; $48ac: $7b
	sub b                                            ; $48ad: $90
	ld a, e                                          ; $48ae: $7b
	rst AddAOntoHL                                          ; $48af: $ef
	ld a, a                                          ; $48b0: $7f
	ldh a, [c]                                       ; $48b1: $f2
	sbc l                                            ; $48b2: $9d
	ld [de], a                                       ; $48b3: $12
	add hl, de                                       ; $48b4: $19
	ld a, e                                          ; $48b5: $7b
	pop bc                                           ; $48b6: $c1
	sbc [hl]                                         ; $48b7: $9e
	ldh [$7b], a                                     ; $48b8: $e0 $7b
	ld [hl], c                                       ; $48ba: $71
	sbc [hl]                                         ; $48bb: $9e
	ld h, $77                                        ; $48bc: $26 $77
	or b                                             ; $48be: $b0
	sbc e                                            ; $48bf: $9b
	ld de, $1119                                     ; $48c0: $11 $19 $11
	ld de, $717b                                     ; $48c3: $11 $7b $71
	sbc [hl]                                         ; $48c6: $9e
	ret nc                                           ; $48c7: $d0

	ld a, e                                          ; $48c8: $7b
	ld [hl], c                                       ; $48c9: $71
	ld [hl], e                                       ; $48ca: $73
	ld h, b                                          ; $48cb: $60
	sbc e                                            ; $48cc: $9b

jr_020_48cd:
	jr jr_020_48df                                   ; $48cd: $18 $10

	jr jr_020_48e1                                   ; $48cf: $18 $10

	ld d, [hl]                                       ; $48d1: $56
	ld [hl], b                                       ; $48d2: $70
	sbc e                                            ; $48d3: $9b
	db $10                                           ; $48d4: $10
	rla                                              ; $48d5: $17
	rrca                                             ; $48d6: $0f
	rla                                              ; $48d7: $17
	ld d, [hl]                                       ; $48d8: $56
	ld [hl], b                                       ; $48d9: $70
	rst SubAFromDE                                          ; $48da: $df
	rrca                                             ; $48db: $0f
	sbc l                                            ; $48dc: $9d
	ld d, $0e                                        ; $48dd: $16 $0e

jr_020_48df:
	ld d, [hl]                                       ; $48df: $56
	ld [hl], b                                       ; $48e0: $70

jr_020_48e1:
	ld a, a                                          ; $48e1: $7f
	ldh a, [c]                                       ; $48e2: $f2
	sbc l                                            ; $48e3: $9d
	ld c, $15                                        ; $48e4: $0e $15
	ld d, [hl]                                       ; $48e6: $56
	ld [hl], b                                       ; $48e7: $70
	sbc e                                            ; $48e8: $9b
	dec c                                            ; $48e9: $0d
	dec d                                            ; $48ea: $15
	dec c                                            ; $48eb: $0d
	dec c                                            ; $48ec: $0d
	ld d, [hl]                                       ; $48ed: $56
	ld [hl], b                                       ; $48ee: $70
	sbc e                                            ; $48ef: $9b
	inc de                                           ; $48f0: $13
	dec bc                                           ; $48f1: $0b
	inc de                                           ; $48f2: $13
	dec bc                                           ; $48f3: $0b
	ld d, [hl]                                       ; $48f4: $56
	ld [hl], b                                       ; $48f5: $70
	sbc e                                            ; $48f6: $9b
	dec bc                                           ; $48f7: $0b
	ld [de], a                                       ; $48f8: $12
	ld a, [bc]                                       ; $48f9: $0a
	ld [de], a                                       ; $48fa: $12
	ld d, [hl]                                       ; $48fb: $56
	ld [hl], b                                       ; $48fc: $70
	rst SubAFromDE                                          ; $48fd: $df
	ld a, [bc]                                       ; $48fe: $0a
	sbc l                                            ; $48ff: $9d
	ld de, $6f09                                     ; $4900: $11 $09 $6f
	ld h, b                                          ; $4903: $60
	ld [hl], d                                       ; $4904: $72
	add c                                            ; $4905: $81
	ld a, a                                          ; $4906: $7f
	ld [hl], b                                       ; $4907: $70
	rst SubAFromDE                                          ; $4908: $df
	add hl, bc                                       ; $4909: $09
	sbc [hl]                                         ; $490a: $9e
	db $10                                           ; $490b: $10
	ld d, a                                          ; $490c: $57
	db $10                                           ; $490d: $10
	sbc e                                            ; $490e: $9b
	ld [$0810], sp                                   ; $490f: $08 $10 $08
	ld [$1057], sp                                   ; $4912: $08 $57 $10
	sbc e                                            ; $4915: $9b
	rrca                                             ; $4916: $0f
	rlca                                             ; $4917: $07
	rrca                                             ; $4918: $0f
	rlca                                             ; $4919: $07
	ld d, a                                          ; $491a: $57
	db $10                                           ; $491b: $10
	sbc e                                            ; $491c: $9b
	rlca                                             ; $491d: $07
	dec c                                            ; $491e: $0d
	dec b                                            ; $491f: $05
	dec c                                            ; $4920: $0d
	ld d, a                                          ; $4921: $57
	db $10                                           ; $4922: $10
	rst SubAFromDE                                          ; $4923: $df
	dec b                                            ; $4924: $05
	sbc l                                            ; $4925: $9d
	inc c                                            ; $4926: $0c
	inc b                                            ; $4927: $04
	ld d, a                                          ; $4928: $57
	db $10                                           ; $4929: $10
	ld a, a                                          ; $492a: $7f
	ldh a, [c]                                       ; $492b: $f2
	sbc l                                            ; $492c: $9d
	inc b                                            ; $492d: $04
	dec bc                                           ; $492e: $0b
	ld d, [hl]                                       ; $492f: $56
	jr nz, jr_020_48cd                               ; $4930: $20 $9b

	inc bc                                           ; $4932: $03
	dec bc                                           ; $4933: $0b
	inc bc                                           ; $4934: $03
	inc bc                                           ; $4935: $03
	ld d, [hl]                                       ; $4936: $56
	jr nz, jr_020_49b8                               ; $4937: $20 $7f

	pop af                                           ; $4939: $f1
	ld a, a                                          ; $493a: $7f
	cp $77                                           ; $493b: $fe $77
	or b                                             ; $493d: $b0
	sbc l                                            ; $493e: $9d
	ld a, [hl+]                                      ; $493f: $2a
	jr z, jr_020_49b1                                ; $4940: $28 $6f

	or b                                             ; $4942: $b0
	sbc e                                            ; $4943: $9b
	inc bc                                           ; $4944: $03
	ret nc                                           ; $4945: $d0

	nop                                              ; $4946: $00
	ld hl, $01fb                                     ; $4947: $21 $fb $01
	sub e                                            ; $494a: $93
	dec hl                                           ; $494b: $2b
	inc hl                                           ; $494c: $23
	dec hl                                           ; $494d: $2b
	inc hl                                           ; $494e: $23
	ldh a, [$f0]                                     ; $494f: $f0 $f0
	ldh [$e0], a                                     ; $4951: $e0 $e0
	ld a, [bc]                                       ; $4953: $0a
	ld [$0406], sp                                   ; $4954: $08 $06 $04
	db $dd                                           ; $4957: $dd
	jr nz, jr_020_49d9                               ; $4958: $20 $7f

	ldh a, [c]                                       ; $495a: $f2
	add l                                            ; $495b: $85
	ld a, [hl+]                                      ; $495c: $2a
	ld [hl+], a                                      ; $495d: $22
	ret nc                                           ; $495e: $d0

	ret nc                                           ; $495f: $d0

	ldh a, [$f0]                                     ; $4960: $f0 $f0
	ld [bc], a                                       ; $4962: $02
	nop                                              ; $4963: $00
	ld c, $0c                                        ; $4964: $0e $0c
	jr nz, jr_020_4989                               ; $4966: $20 $21

	jr nz, jr_020_498a                               ; $4968: $20 $20

	ld a, [hl+]                                      ; $496a: $2a
	ld [hl+], a                                      ; $496b: $22
	ld a, [hl+]                                      ; $496c: $2a
	ld [hl+], a                                      ; $496d: $22
	ldh [$e0], a                                     ; $496e: $e0 $e0
	ret nc                                           ; $4970: $d0

	ret nc                                           ; $4971: $d0

	ld b, $04                                        ; $4972: $06 $04
	ld [bc], a                                       ; $4974: $02
	nop                                              ; $4975: $00
	sbc $20                                          ; $4976: $de $20
	sbc d                                            ; $4978: $9a
	ld hl, $2028                                     ; $4979: $21 $28 $20
	jr z, jr_020_499e                                ; $497c: $28 $20

	ld [hl], a                                       ; $497e: $77
	ret nc                                           ; $497f: $d0

	sbc e                                            ; $4980: $9b
	ld a, [de]                                       ; $4981: $1a
	jr jr_020_499a                                   ; $4982: $18 $16

	inc d                                            ; $4984: $14
	db $dd                                           ; $4985: $dd
	jr nz, jr_020_4a07                               ; $4986: $20 $7f

	ldh a, [c]                                       ; $4988: $f2

jr_020_4989:
	sbc l                                            ; $4989: $9d

jr_020_498a:
	daa                                              ; $498a: $27
	rra                                              ; $498b: $1f
	ld [hl], a                                       ; $498c: $77
	ret nc                                           ; $498d: $d0

	sbc e                                            ; $498e: $9b
	ld [de], a                                       ; $498f: $12
	db $10                                           ; $4990: $10
	ld e, $1c                                        ; $4991: $1e $1c
	ld [hl], a                                       ; $4993: $77
	ret nc                                           ; $4994: $d0

	ld a, a                                          ; $4995: $7f
	ldh a, [c]                                       ; $4996: $f2
	ld a, a                                          ; $4997: $7f
	cp $77                                           ; $4998: $fe $77

jr_020_499a:
	ret nc                                           ; $499a: $d0

	ld a, a                                          ; $499b: $7f
	ldh [c], a                                       ; $499c: $e2
	ld a, a                                          ; $499d: $7f

jr_020_499e:
	xor $77                                          ; $499e: $ee $77
	ret nc                                           ; $49a0: $d0

	sbc e                                            ; $49a1: $9b
	ld h, $1e                                        ; $49a2: $26 $1e
	ld h, $1e                                        ; $49a4: $26 $1e
	ld [hl], a                                       ; $49a6: $77
	ret nc                                           ; $49a7: $d0

	sbc l                                            ; $49a8: $9d
	ld [hl+], a                                      ; $49a9: $22
	jr nz, jr_020_4a1b                               ; $49aa: $20 $6f

	ret nc                                           ; $49ac: $d0

	ld a, a                                          ; $49ad: $7f
	ldh a, [c]                                       ; $49ae: $f2
	sbc l                                            ; $49af: $9d
	dec h                                            ; $49b0: $25

jr_020_49b1:
	dec e                                            ; $49b1: $1d
	ld l, a                                          ; $49b2: $6f
	ret nc                                           ; $49b3: $d0

	sbc l                                            ; $49b4: $9d
	ld h, $24                                        ; $49b5: $26 $24
	ld [hl], a                                       ; $49b7: $77

jr_020_49b8:
	ret nc                                           ; $49b8: $d0

	ld a, a                                          ; $49b9: $7f
	ldh a, [c]                                       ; $49ba: $f2
	ld a, a                                          ; $49bb: $7f
	cp $57                                           ; $49bc: $fe $57
	and b                                            ; $49be: $a0
	sbc e                                            ; $49bf: $9b
	inc h                                            ; $49c0: $24
	inc e                                            ; $49c1: $1c
	inc h                                            ; $49c2: $24
	inc e                                            ; $49c3: $1c
	ld d, a                                          ; $49c4: $57
	ld [hl], b                                       ; $49c5: $70
	ld a, a                                          ; $49c6: $7f
	ldh a, [c]                                       ; $49c7: $f2
	sbc l                                            ; $49c8: $9d
	inc hl                                           ; $49c9: $23
	dec de                                           ; $49ca: $1b
	ld d, a                                          ; $49cb: $57
	ld [hl], b                                       ; $49cc: $70
	ld a, a                                          ; $49cd: $7f
	ldh a, [c]                                       ; $49ce: $f2
	ld a, a                                          ; $49cf: $7f
	cp $57                                           ; $49d0: $fe $57
	ret nc                                           ; $49d2: $d0

	sbc e                                            ; $49d3: $9b
	ld hl, $2119                                     ; $49d4: $21 $19 $21
	add hl, de                                       ; $49d7: $19
	ld d, a                                          ; $49d8: $57

jr_020_49d9:
	ld [hl], b                                       ; $49d9: $70
	ld a, a                                          ; $49da: $7f
	ldh a, [c]                                       ; $49db: $f2
	sbc l                                            ; $49dc: $9d
	jr nz, jr_020_49f7                               ; $49dd: $20 $18

	ld d, a                                          ; $49df: $57
	ld [hl], b                                       ; $49e0: $70
	ld a, a                                          ; $49e1: $7f
	ldh a, [c]                                       ; $49e2: $f2
	ld a, a                                          ; $49e3: $7f
	cp $57                                           ; $49e4: $fe $57
	ld [hl], b                                       ; $49e6: $70
	sbc e                                            ; $49e7: $9b
	rra                                              ; $49e8: $1f
	rla                                              ; $49e9: $17
	rra                                              ; $49ea: $1f
	rla                                              ; $49eb: $17
	ld d, a                                          ; $49ec: $57
	ld [hl], b                                       ; $49ed: $70
	ld a, a                                          ; $49ee: $7f
	ldh a, [c]                                       ; $49ef: $f2
	sbc l                                            ; $49f0: $9d
	ld e, $16                                        ; $49f1: $1e $16
	ld d, a                                          ; $49f3: $57
	ld [hl], b                                       ; $49f4: $70
	ld a, a                                          ; $49f5: $7f
	ldh a, [c]                                       ; $49f6: $f2

jr_020_49f7:
	ld a, a                                          ; $49f7: $7f
	cp $57                                           ; $49f8: $fe $57
	and b                                            ; $49fa: $a0
	sbc e                                            ; $49fb: $9b
	dec e                                            ; $49fc: $1d
	dec d                                            ; $49fd: $15
	dec e                                            ; $49fe: $1d
	dec d                                            ; $49ff: $15
	ld [hl], a                                       ; $4a00: $77
	ret nc                                           ; $4a01: $d0

	sbc l                                            ; $4a02: $9d
	ld a, [hl+]                                      ; $4a03: $2a
	jr z, jr_020_4a75                                ; $4a04: $28 $6f

	ld [hl], b                                       ; $4a06: $70

jr_020_4a07:
	ld [hl], a                                       ; $4a07: $77
	ldh a, [$6f]                                     ; $4a08: $f0 $6f
	ld [hl], b                                       ; $4a0a: $70
	ld a, a                                          ; $4a0b: $7f
	xor $77                                          ; $4a0c: $ee $77
	ret nc                                           ; $4a0e: $d0

	ld [hl], a                                       ; $4a0f: $77
	ldh a, [rPCM34]                                  ; $4a10: $f0 $77
	ret nc                                           ; $4a12: $d0

	sbc [hl]                                         ; $4a13: $9e
	inc l                                            ; $4a14: $2c
	ld b, e                                          ; $4a15: $43
	ret nc                                           ; $4a16: $d0

	sbc [hl]                                         ; $4a17: $9e
	jr nc, jr_020_4a6d                               ; $4a18: $30 $53

	ret nc                                           ; $4a1a: $d0

jr_020_4a1b:
	sbc [hl]                                         ; $4a1b: $9e
	ld l, $4b                                        ; $4a1c: $2e $4b
	ret nc                                           ; $4a1e: $d0

	sbc h                                            ; $4a1f: $9c
	inc [hl]                                         ; $4a20: $34
	inc b                                            ; $4a21: $04
	ld [hl-], a                                      ; $4a22: $32
	ld c, e                                          ; $4a23: $4b
	ret nc                                           ; $4a24: $d0

	sbc [hl]                                         ; $4a25: $9e
	jr c, jr_020_4a7b                                ; $4a26: $38 $53

	ret nc                                           ; $4a28: $d0

	sbc [hl]                                         ; $4a29: $9e
	ld [hl], $4b                                     ; $4a2a: $36 $4b
	ret nc                                           ; $4a2c: $d0

	sbc [hl]                                         ; $4a2d: $9e
	ld a, [hl-]                                      ; $4a2e: $3a
	ld b, e                                          ; $4a2f: $43
	and b                                            ; $4a30: $a0
	sbc [hl]                                         ; $4a31: $9e
	inc a                                            ; $4a32: $3c
	ld l, e                                          ; $4a33: $6b
	ret nc                                           ; $4a34: $d0

	sbc l                                            ; $4a35: $9d

Call_020_4a36:
	inc e                                            ; $4a36: $1c
	inc d                                            ; $4a37: $14
	ld l, a                                          ; $4a38: $6f
	ld [hl], b                                       ; $4a39: $70
	ld a, [hl]                                       ; $4a3a: $7e
	adc $77                                          ; $4a3b: $ce $77
	ret nc                                           ; $4a3d: $d0

	ld a, a                                          ; $4a3e: $7f
	ldh a, [c]                                       ; $4a3f: $f2
	ld a, a                                          ; $4a40: $7f
	cp $57                                           ; $4a41: $fe $57
	ld b, b                                          ; $4a43: $40
	sbc e                                            ; $4a44: $9b
	dec de                                           ; $4a45: $1b
	inc de                                           ; $4a46: $13
	dec de                                           ; $4a47: $1b
	inc de                                           ; $4a48: $13
	ld [hl], a                                       ; $4a49: $77
	ret nc                                           ; $4a4a: $d0

	ld a, [hl]                                       ; $4a4b: $7e
	jp nz, Jump_020_406f                             ; $4a4c: $c2 $6f $40

	ld a, a                                          ; $4a4f: $7f
	ldh a, [c]                                       ; $4a50: $f2
	sbc l                                            ; $4a51: $9d
	add hl, de                                       ; $4a52: $19
	ld de, $d06f                                     ; $4a53: $11 $6f $d0
	ld a, [hl]                                       ; $4a56: $7e
	adc $77                                          ; $4a57: $ce $77
	ret nc                                           ; $4a59: $d0

	ld a, a                                          ; $4a5a: $7f
	ldh a, [c]                                       ; $4a5b: $f2
	ld a, a                                          ; $4a5c: $7f
	cp $56                                           ; $4a5d: $fe $56
	ldh [$9b], a                                     ; $4a5f: $e0 $9b
	jr jr_020_4a73                                   ; $4a61: $18 $10

	jr jr_020_4a75                                   ; $4a63: $18 $10

	ld [hl], a                                       ; $4a65: $77
	ret nc                                           ; $4a66: $d0

	ld a, [hl]                                       ; $4a67: $7e
	jp nz, $e06e                                     ; $4a68: $c2 $6e $e0

	ld a, a                                          ; $4a6b: $7f
	ldh a, [c]                                       ; $4a6c: $f2

jr_020_4a6d:
	sbc l                                            ; $4a6d: $9d
	rla                                              ; $4a6e: $17
	rrca                                             ; $4a6f: $0f
	ld l, [hl]                                       ; $4a70: $6e
	ldh [$7e], a                                     ; $4a71: $e0 $7e

jr_020_4a73:
	adc $77                                          ; $4a73: $ce $77

jr_020_4a75:
	ret nc                                           ; $4a75: $d0

	ld a, a                                          ; $4a76: $7f
	ldh a, [c]                                       ; $4a77: $f2
	ld a, a                                          ; $4a78: $7f
	cp $57                                           ; $4a79: $fe $57

jr_020_4a7b:
	ret nc                                           ; $4a7b: $d0

	sbc e                                            ; $4a7c: $9b
	ld d, $0e                                        ; $4a7d: $16 $0e
	ld d, $0e                                        ; $4a7f: $16 $0e
	ld [hl], a                                       ; $4a81: $77
	ret nc                                           ; $4a82: $d0

	ld a, [hl]                                       ; $4a83: $7e
	jp nz, $a06f                                     ; $4a84: $c2 $6f $a0

	ld a, a                                          ; $4a87: $7f
	ldh a, [c]                                       ; $4a88: $f2
	sbc l                                            ; $4a89: $9d
	dec d                                            ; $4a8a: $15
	dec c                                            ; $4a8b: $0d
	ld d, a                                          ; $4a8c: $57
	ld [hl], b                                       ; $4a8d: $70
	ld a, a                                          ; $4a8e: $7f
	ldh a, [c]                                       ; $4a8f: $f2
	ld a, a                                          ; $4a90: $7f
	cp $57                                           ; $4a91: $fe $57
	ld [hl], b                                       ; $4a93: $70
	sbc e                                            ; $4a94: $9b
	inc d                                            ; $4a95: $14
	inc c                                            ; $4a96: $0c
	inc d                                            ; $4a97: $14
	inc c                                            ; $4a98: $0c
	ld d, a                                          ; $4a99: $57
	ld [hl], b                                       ; $4a9a: $70
	ld a, a                                          ; $4a9b: $7f
	ldh a, [c]                                       ; $4a9c: $f2
	sbc l                                            ; $4a9d: $9d
	ld [de], a                                       ; $4a9e: $12
	ld a, [bc]                                       ; $4a9f: $0a
	ld d, a                                          ; $4aa0: $57
	ld [hl], b                                       ; $4aa1: $70
	ld a, a                                          ; $4aa2: $7f
	ldh a, [c]                                       ; $4aa3: $f2
	ld a, a                                          ; $4aa4: $7f
	cp $57                                           ; $4aa5: $fe $57
	and b                                            ; $4aa7: $a0
	sbc e                                            ; $4aa8: $9b
	ld de, $1109                                     ; $4aa9: $11 $09 $11
	add hl, bc                                       ; $4aac: $09
	ld d, a                                          ; $4aad: $57
	ld [hl], b                                       ; $4aae: $70
	ld a, a                                          ; $4aaf: $7f
	ldh a, [c]                                       ; $4ab0: $f2
	sbc l                                            ; $4ab1: $9d
	db $10                                           ; $4ab2: $10
	ld [$7057], sp                                   ; $4ab3: $08 $57 $70
	ld a, a                                          ; $4ab6: $7f
	ldh a, [c]                                       ; $4ab7: $f2
	ld a, a                                          ; $4ab8: $7f
	cp $57                                           ; $4ab9: $fe $57
	ret nc                                           ; $4abb: $d0

	sbc e                                            ; $4abc: $9b
	rrca                                             ; $4abd: $0f
	rlca                                             ; $4abe: $07
	rrca                                             ; $4abf: $0f
	rlca                                             ; $4ac0: $07
	ld d, a                                          ; $4ac1: $57
	ld [hl], b                                       ; $4ac2: $70
	ld a, a                                          ; $4ac3: $7f
	ldh a, [c]                                       ; $4ac4: $f2
	sbc l                                            ; $4ac5: $9d
	ld c, $06                                        ; $4ac6: $0e $06
	ld d, a                                          ; $4ac8: $57
	ld [hl], b                                       ; $4ac9: $70
	ld a, a                                          ; $4aca: $7f
	ldh a, [c]                                       ; $4acb: $f2
	ld a, a                                          ; $4acc: $7f
	cp $57                                           ; $4acd: $fe $57
	ld [hl], b                                       ; $4acf: $70
	sbc e                                            ; $4ad0: $9b
	dec c                                            ; $4ad1: $0d
	dec b                                            ; $4ad2: $05
	dec c                                            ; $4ad3: $0d
	dec b                                            ; $4ad4: $05
	ld d, a                                          ; $4ad5: $57
	ld [hl], b                                       ; $4ad6: $70
	ld a, a                                          ; $4ad7: $7f
	ldh a, [c]                                       ; $4ad8: $f2
	sbc l                                            ; $4ad9: $9d
	dec bc                                           ; $4ada: $0b
	inc bc                                           ; $4adb: $03
	ld d, a                                          ; $4adc: $57
	ld [hl], b                                       ; $4add: $70
	ld a, a                                          ; $4ade: $7f
	ldh a, [c]                                       ; $4adf: $f2
	ld a, a                                          ; $4ae0: $7f
	cp $57                                           ; $4ae1: $fe $57
	and b                                            ; $4ae3: $a0
	sbc e                                            ; $4ae4: $9b
	ld a, [bc]                                       ; $4ae5: $0a
	ld [bc], a                                       ; $4ae6: $02
	ld a, [bc]                                       ; $4ae7: $0a
	ld [bc], a                                       ; $4ae8: $02
	ld d, a                                          ; $4ae9: $57
	ld [hl], b                                       ; $4aea: $70
	ld a, a                                          ; $4aeb: $7f
	ldh a, [c]                                       ; $4aec: $f2
	sbc l                                            ; $4aed: $9d
	add hl, bc                                       ; $4aee: $09
	ld bc, $7057                                     ; $4aef: $01 $57 $70
	ld a, a                                          ; $4af2: $7f
	ldh a, [c]                                       ; $4af3: $f2
	ld a, a                                          ; $4af4: $7f
	cp $57                                           ; $4af5: $fe $57
	ret nc                                           ; $4af7: $d0

	sbc e                                            ; $4af8: $9b
	ld [$0800], sp                                   ; $4af9: $08 $00 $08
	nop                                              ; $4afc: $00
	ld d, a                                          ; $4afd: $57
	ld [hl], b                                       ; $4afe: $70
	ld a, a                                          ; $4aff: $7f
	ldh a, [c]                                       ; $4b00: $f2
	sbc l                                            ; $4b01: $9d
	rlca                                             ; $4b02: $07
	rst $38                                          ; $4b03: $ff
	ld d, a                                          ; $4b04: $57
	ld [hl], b                                       ; $4b05: $70
	ld a, a                                          ; $4b06: $7f
	ldh a, [c]                                       ; $4b07: $f2
	ld a, a                                          ; $4b08: $7f
	cp $57                                           ; $4b09: $fe $57
	ld [hl], b                                       ; $4b0b: $70
	sbc e                                            ; $4b0c: $9b
	ld b, $fe                                        ; $4b0d: $06 $fe
	ld b, $fe                                        ; $4b0f: $06 $fe
	ld d, a                                          ; $4b11: $57
	ld [hl], b                                       ; $4b12: $70
	ld a, a                                          ; $4b13: $7f
	ldh a, [c]                                       ; $4b14: $f2
	sbc l                                            ; $4b15: $9d
	inc b                                            ; $4b16: $04
	db $fc                                           ; $4b17: $fc
	ld d, a                                          ; $4b18: $57
	ld [hl], b                                       ; $4b19: $70
	ld a, a                                          ; $4b1a: $7f
	ldh a, [c]                                       ; $4b1b: $f2
	ld a, a                                          ; $4b1c: $7f
	cp $57                                           ; $4b1d: $fe $57
	and b                                            ; $4b1f: $a0
	sbc e                                            ; $4b20: $9b
	inc bc                                           ; $4b21: $03
	ei                                               ; $4b22: $fb
	inc bc                                           ; $4b23: $03
	ei                                               ; $4b24: $fb
	ld d, a                                          ; $4b25: $57
	ld [hl], b                                       ; $4b26: $70
	ld a, a                                          ; $4b27: $7f
	ldh a, [c]                                       ; $4b28: $f2
	sbc l                                            ; $4b29: $9d
	ld [bc], a                                       ; $4b2a: $02
	ld a, [$7057]                                    ; $4b2b: $fa $57 $70
	ld a, a                                          ; $4b2e: $7f
	ldh a, [c]                                       ; $4b2f: $f2
	ld a, a                                          ; $4b30: $7f
	cp $57                                           ; $4b31: $fe $57
	ret nc                                           ; $4b33: $d0

	sbc e                                            ; $4b34: $9b
	ld bc, $01f9                                     ; $4b35: $01 $f9 $01
	ld sp, hl                                        ; $4b38: $f9
	ld d, a                                          ; $4b39: $57
	ld [hl], b                                       ; $4b3a: $70
	ld [hl], a                                       ; $4b3b: $77
	ldh a, [rHDMA5]                                  ; $4b3c: $f0 $55
	jr nc, jr_020_4bb7                               ; $4b3e: $30 $77

	ldh a, [$57]                                     ; $4b40: $f0 $57
	ld [hl], b                                       ; $4b42: $70
	rst JumpTable                                          ; $4b43: $c7
	nop                                              ; $4b44: $00
	sbc e                                            ; $4b45: $9b
	db $10                                           ; $4b46: $10
	ld [$0018], sp                                   ; $4b47: $08 $18 $00
	db $dd                                           ; $4b4a: $dd
	db $10                                           ; $4b4b: $10
	sbc e                                            ; $4b4c: $9b
	inc c                                            ; $4b4d: $0c
	ld a, [bc]                                       ; $4b4e: $0a
	ld c, $08                                        ; $4b4f: $0e $08
	db $dd                                           ; $4b51: $dd
	inc h                                            ; $4b52: $24
	sbc h                                            ; $4b53: $9c
	jr jr_020_4b66                                   ; $4b54: $18 $10

	ld [$9bfc], sp                                   ; $4b56: $08 $fc $9b
	ld b, $04                                        ; $4b59: $06 $04
	ld [bc], a                                       ; $4b5b: $02
	nop                                              ; $4b5c: $00
	sbc $24                                          ; $4b5d: $de $24
	sbc [hl]                                         ; $4b5f: $9e
	dec h                                            ; $4b60: $25
	ld a, e                                          ; $4b61: $7b
	ldh a, [$7f]                                     ; $4b62: $f0 $7f
	db $fd                                           ; $4b64: $fd
	rst SubAFromDE                                          ; $4b65: $df

jr_020_4b66:
	db $10                                           ; $4b66: $10
	sub e                                            ; $4b67: $93
	nop                                              ; $4b68: $00
	jr c, jr_020_4b83                                ; $4b69: $38 $18

	ld d, $14                                        ; $4b6b: $16 $14
	inc h                                            ; $4b6d: $24
	ld a, [hl+]                                      ; $4b6e: $2a
	inc h                                            ; $4b6f: $24
	inc h                                            ; $4b70: $24
	stop                                             ; $4b71: $10 $00
	nop                                              ; $4b73: $00
	ld a, e                                          ; $4b74: $7b
	rst SubAFromDE                                          ; $4b75: $df
	ld a, a                                          ; $4b76: $7f
	ld a, [$129b]                                    ; $4b77: $fa $9b $12
	nop                                              ; $4b7a: $00
	ld [$7710], sp                                   ; $4b7b: $08 $10 $77
	ldh [$9b], a                                     ; $4b7e: $e0 $9b
	nop                                              ; $4b80: $00
	jr @+$12                                         ; $4b81: $18 $10

jr_020_4b83:
	jr jr_020_4c00                                   ; $4b83: $18 $7b

	db $ec                                           ; $4b85: $ec
	ld a, a                                          ; $4b86: $7f
	jp c, $3c9c                                      ; $4b87: $da $9c $3c

	ld a, [hl-]                                      ; $4b8a: $3a
	ld [hl+], a                                      ; $4b8b: $22
	sbc $24                                          ; $4b8c: $de $24
	sbc e                                            ; $4b8e: $9b
	ld a, [hl+]                                      ; $4b8f: $2a
	db $10                                           ; $4b90: $10
	ld [$7b08], sp                                   ; $4b91: $08 $08 $7b
	or b                                             ; $4b94: $b0
	rst $38                                          ; $4b95: $ff
	sbc d                                            ; $4b96: $9a
	jr nz, jr_020_4bb7                               ; $4b97: $20 $1e

	inc e                                            ; $4b99: $1c
	ld a, [de]                                       ; $4b9a: $1a
	jr z, @+$79                                      ; $4b9b: $28 $77

	ldh [$7f], a                                     ; $4b9d: $e0 $7f
	reti                                             ; $4b9f: $d9


	ld [hl], a                                       ; $4ba0: $77
	sbc $7f                                          ; $4ba1: $de $7f
	jp hl                                            ; $4ba3: $e9


	sub [hl]                                         ; $4ba4: $96
	jr z, jr_020_4bcd                                ; $4ba5: $28 $26

	ld [hl+], a                                      ; $4ba7: $22
	inc h                                            ; $4ba8: $24
	jr z, jr_020_4bd3                                ; $4ba9: $28 $28

	ld a, [hl+]                                      ; $4bab: $2a
	jr jr_020_4bb6                                   ; $4bac: $18 $08

	ld a, e                                          ; $4bae: $7b
	db $e3                                           ; $4baf: $e3
	cp $9b                                           ; $4bb0: $fe $9b
	inc a                                            ; $4bb2: $3c
	inc e                                            ; $4bb3: $1c
	ld a, [hl-]                                      ; $4bb4: $3a
	ld a, [de]                                       ; $4bb5: $1a

jr_020_4bb6:
	db $dd                                           ; $4bb6: $dd

jr_020_4bb7:
	inc h                                            ; $4bb7: $24
	ld a, e                                          ; $4bb8: $7b
	pop de                                           ; $4bb9: $d1
	ld [hl], e                                       ; $4bba: $73
	ldh [$99], a                                     ; $4bbb: $e0 $99
	inc h                                            ; $4bbd: $24
	ld l, $08                                        ; $4bbe: $2e $08
	ld [hl+], a                                      ; $4bc0: $22
	dec h                                            ; $4bc1: $25
	jr z, jr_020_4c3b                                ; $4bc2: $28 $77

	ret nz                                           ; $4bc4: $c0

	ld [hl], e                                       ; $4bc5: $73
	sub c                                            ; $4bc6: $91
	sbc d                                            ; $4bc7: $9a
	nop                                              ; $4bc8: $00
	inc l                                            ; $4bc9: $2c
	ld a, [hl+]                                      ; $4bca: $2a
	inc a                                            ; $4bcb: $3c
	ld a, [hl-]                                      ; $4bcc: $3a

jr_020_4bcd:
	ld a, e                                          ; $4bcd: $7b
	ret nz                                           ; $4bce: $c0

	sbc [hl]                                         ; $4bcf: $9e
	inc h                                            ; $4bd0: $24
	ld a, e                                          ; $4bd1: $7b
	sub d                                            ; $4bd2: $92

jr_020_4bd3:
	ld a, a                                          ; $4bd3: $7f
	ld e, a                                          ; $4bd4: $5f
	ld a, e                                          ; $4bd5: $7b
	xor [hl]                                         ; $4bd6: $ae
	sub a                                            ; $4bd7: $97
	ld a, [de]                                       ; $4bd8: $1a
	inc e                                            ; $4bd9: $1c
	ld [$2422], sp                                   ; $4bda: $08 $22 $24
	dec h                                            ; $4bdd: $25
	inc h                                            ; $4bde: $24
	ld a, [hl+]                                      ; $4bdf: $2a
	ld a, e                                          ; $4be0: $7b
	sub e                                            ; $4be1: $93
	ld [hl], e                                       ; $4be2: $73
	ld e, a                                          ; $4be3: $5f
	ld a, a                                          ; $4be4: $7f
	ldh [c], a                                       ; $4be5: $e2
	ld a, a                                          ; $4be6: $7f
	xor $73                                          ; $4be7: $ee $73
	ret nz                                           ; $4be9: $c0

	ld a, e                                          ; $4bea: $7b
	ldh a, [$dd]                                     ; $4beb: $f0 $dd
	db $10                                           ; $4bed: $10
	sbc c                                            ; $4bee: $99
	inc [hl]                                         ; $4bef: $34
	ld [hl], $08                                     ; $4bf0: $36 $08
	jr nc, @+$26                                     ; $4bf2: $30 $24

	add hl, hl                                       ; $4bf4: $29
	ld a, e                                          ; $4bf5: $7b
	ld h, b                                          ; $4bf6: $60
	rst SubAFromDE                                          ; $4bf7: $df
	jr @+$75                                         ; $4bf8: $18 $73

	ret nz                                           ; $4bfa: $c0

	sbc l                                            ; $4bfb: $9d
	ld [hl-], a                                      ; $4bfc: $32
	ld [hl+], a                                      ; $4bfd: $22
	ld a, e                                          ; $4bfe: $7b
	ret nz                                           ; $4bff: $c0

jr_020_4c00:
	ld a, e                                          ; $4c00: $7b
	ld d, b                                          ; $4c01: $50
	rst $38                                          ; $4c02: $ff
	ld a, a                                          ; $4c03: $7f
	sbc c                                            ; $4c04: $99
	ld a, a                                          ; $4c05: $7f
	rst GetHLinHL                                          ; $4c06: $cf
	sbc l                                            ; $4c07: $9d
	inc e                                            ; $4c08: $1c
	dec h                                            ; $4c09: $25
	or l                                             ; $4c0a: $b5
	ld bc, $2c93                                     ; $4c0b: $01 $93 $2c
	inc h                                            ; $4c0e: $24
	inc l                                            ; $4c0f: $2c
	inc h                                            ; $4c10: $24
	ldh a, [$f0]                                     ; $4c11: $f0 $f0
	ldh [$e0], a                                     ; $4c13: $e0 $e0
	ld a, [bc]                                       ; $4c15: $0a
	ld [$0406], sp                                   ; $4c16: $08 $06 $04
	db $dd                                           ; $4c19: $dd
	jr nz, jr_020_4c9b                               ; $4c1a: $20 $7f

	ldh a, [c]                                       ; $4c1c: $f2
	add l                                            ; $4c1d: $85
	ld a, [hl+]                                      ; $4c1e: $2a
	ld [hl+], a                                      ; $4c1f: $22
	ret nc                                           ; $4c20: $d0

	ret nc                                           ; $4c21: $d0

	ldh a, [$f0]                                     ; $4c22: $f0 $f0
	ld [bc], a                                       ; $4c24: $02
	nop                                              ; $4c25: $00
	ld c, $0c                                        ; $4c26: $0e $0c
	jr nz, jr_020_4c4b                               ; $4c28: $20 $21

	jr nz, jr_020_4c4c                               ; $4c2a: $20 $20

	ld a, [hl+]                                      ; $4c2c: $2a
	ld [hl+], a                                      ; $4c2d: $22
	ld a, [hl+]                                      ; $4c2e: $2a
	ld [hl+], a                                      ; $4c2f: $22
	ldh [$e0], a                                     ; $4c30: $e0 $e0
	ret nc                                           ; $4c32: $d0

	ret nc                                           ; $4c33: $d0

	ld b, $04                                        ; $4c34: $06 $04
	ld [bc], a                                       ; $4c36: $02
	nop                                              ; $4c37: $00
	sbc $20                                          ; $4c38: $de $20
	sbc l                                            ; $4c3a: $9d

jr_020_4c3b:
	ld hl, $7b29                                     ; $4c3b: $21 $29 $7b
	cp $77                                           ; $4c3e: $fe $77
	ret nc                                           ; $4c40: $d0

	sbc l                                            ; $4c41: $9d
	ld [de], a                                       ; $4c42: $12
	db $10                                           ; $4c43: $10
	ld l, a                                          ; $4c44: $6f
	ret nc                                           ; $4c45: $d0

	ld a, a                                          ; $4c46: $7f
	ldh a, [c]                                       ; $4c47: $f2
	sbc l                                            ; $4c48: $9d
	jr z, jr_020_4c6b                                ; $4c49: $28 $20

jr_020_4c4b:
	ld l, a                                          ; $4c4b: $6f

jr_020_4c4c:
	ret nc                                           ; $4c4c: $d0

	sbc l                                            ; $4c4d: $9d
	ld d, $14                                        ; $4c4e: $16 $14
	ld [hl], a                                       ; $4c50: $77
	ret nc                                           ; $4c51: $d0

	ld a, a                                          ; $4c52: $7f
	ldh a, [c]                                       ; $4c53: $f2
	ld a, a                                          ; $4c54: $7f
	cp $57                                           ; $4c55: $fe $57
	ret nc                                           ; $4c57: $d0

	sbc e                                            ; $4c58: $9b
	daa                                              ; $4c59: $27
	rra                                              ; $4c5a: $1f
	daa                                              ; $4c5b: $27
	rra                                              ; $4c5c: $1f
	ld [hl], a                                       ; $4c5d: $77
	ret nc                                           ; $4c5e: $d0

	sbc l                                            ; $4c5f: $9d
	ld a, [de]                                       ; $4c60: $1a
	jr jr_020_4cd2                                   ; $4c61: $18 $6f

	ret nc                                           ; $4c63: $d0

	ld a, a                                          ; $4c64: $7f
	ldh a, [c]                                       ; $4c65: $f2
	sbc l                                            ; $4c66: $9d
	ld h, $1e                                        ; $4c67: $26 $1e
	ld l, a                                          ; $4c69: $6f
	ret nc                                           ; $4c6a: $d0

jr_020_4c6b:
	sbc l                                            ; $4c6b: $9d
	ld e, $1c                                        ; $4c6c: $1e $1c
	ld [hl], a                                       ; $4c6e: $77
	ret nc                                           ; $4c6f: $d0

	ld a, a                                          ; $4c70: $7f
	ldh a, [c]                                       ; $4c71: $f2
	ld a, a                                          ; $4c72: $7f
	cp $57                                           ; $4c73: $fe $57
	ret nc                                           ; $4c75: $d0

	sbc e                                            ; $4c76: $9b
	dec h                                            ; $4c77: $25
	dec e                                            ; $4c78: $1d
	dec h                                            ; $4c79: $25
	dec e                                            ; $4c7a: $1d
	ld d, a                                          ; $4c7b: $57
	ld [hl], b                                       ; $4c7c: $70
	ld a, a                                          ; $4c7d: $7f
	ldh a, [c]                                       ; $4c7e: $f2
	sbc l                                            ; $4c7f: $9d
	inc hl                                           ; $4c80: $23
	dec de                                           ; $4c81: $1b
	ld d, a                                          ; $4c82: $57
	ld [hl], b                                       ; $4c83: $70
	ld a, a                                          ; $4c84: $7f
	ldh a, [c]                                       ; $4c85: $f2
	ld a, a                                          ; $4c86: $7f
	cp $57                                           ; $4c87: $fe $57
	ret nc                                           ; $4c89: $d0

	sbc e                                            ; $4c8a: $9b
	ld [hl+], a                                      ; $4c8b: $22
	ld a, [de]                                       ; $4c8c: $1a
	ld [hl+], a                                      ; $4c8d: $22
	ld a, [de]                                       ; $4c8e: $1a
	ld d, a                                          ; $4c8f: $57
	ld [hl], b                                       ; $4c90: $70
	ld a, a                                          ; $4c91: $7f
	ldh a, [c]                                       ; $4c92: $f2
	sbc l                                            ; $4c93: $9d
	ld hl, $5719                                     ; $4c94: $21 $19 $57
	ld [hl], b                                       ; $4c97: $70
	ld a, a                                          ; $4c98: $7f
	ldh a, [c]                                       ; $4c99: $f2
	ld a, a                                          ; $4c9a: $7f

jr_020_4c9b:
	cp $57                                           ; $4c9b: $fe $57
	ret nc                                           ; $4c9d: $d0

	sbc e                                            ; $4c9e: $9b
	jr nz, jr_020_4cb9                               ; $4c9f: $20 $18

	jr nz, jr_020_4cbb                               ; $4ca1: $20 $18

	ld d, a                                          ; $4ca3: $57
	ld [hl], b                                       ; $4ca4: $70
	ld a, a                                          ; $4ca5: $7f
	ldh a, [c]                                       ; $4ca6: $f2
	sbc l                                            ; $4ca7: $9d
	rra                                              ; $4ca8: $1f
	rla                                              ; $4ca9: $17
	ld d, a                                          ; $4caa: $57
	ld [hl], b                                       ; $4cab: $70
	ld a, a                                          ; $4cac: $7f
	ldh a, [c]                                       ; $4cad: $f2
	ld a, a                                          ; $4cae: $7f
	cp $57                                           ; $4caf: $fe $57
	ret nc                                           ; $4cb1: $d0

	sbc e                                            ; $4cb2: $9b
	ld e, $16                                        ; $4cb3: $1e $16
	ld e, $16                                        ; $4cb5: $1e $16
	ld d, a                                          ; $4cb7: $57
	ld [hl], b                                       ; $4cb8: $70

jr_020_4cb9:
	ld a, a                                          ; $4cb9: $7f
	ldh a, [c]                                       ; $4cba: $f2

jr_020_4cbb:
	sbc l                                            ; $4cbb: $9d
	inc e                                            ; $4cbc: $1c
	inc d                                            ; $4cbd: $14
	ld d, a                                          ; $4cbe: $57
	ld [hl], b                                       ; $4cbf: $70
	ld a, a                                          ; $4cc0: $7f
	ldh a, [c]                                       ; $4cc1: $f2
	ld a, a                                          ; $4cc2: $7f
	cp $57                                           ; $4cc3: $fe $57
	ret nc                                           ; $4cc5: $d0

	sbc e                                            ; $4cc6: $9b
	dec de                                           ; $4cc7: $1b
	inc de                                           ; $4cc8: $13
	dec de                                           ; $4cc9: $1b
	inc de                                           ; $4cca: $13
	ld d, a                                          ; $4ccb: $57
	ld [hl], b                                       ; $4ccc: $70
	ld a, a                                          ; $4ccd: $7f
	ldh a, [c]                                       ; $4cce: $f2
	sbc l                                            ; $4ccf: $9d
	ld a, [de]                                       ; $4cd0: $1a
	ld [de], a                                       ; $4cd1: $12

jr_020_4cd2:
	ld d, a                                          ; $4cd2: $57
	ld [hl], b                                       ; $4cd3: $70
	ld a, a                                          ; $4cd4: $7f
	ldh a, [c]                                       ; $4cd5: $f2
	ld a, a                                          ; $4cd6: $7f
	cp $57                                           ; $4cd7: $fe $57
	ret nc                                           ; $4cd9: $d0

	sbc e                                            ; $4cda: $9b
	add hl, de                                       ; $4cdb: $19
	ld de, $1119                                     ; $4cdc: $11 $19 $11
	ld d, a                                          ; $4cdf: $57
	ld [hl], b                                       ; $4ce0: $70
	ld a, a                                          ; $4ce1: $7f
	ldh a, [c]                                       ; $4ce2: $f2
	sbc l                                            ; $4ce3: $9d
	jr jr_020_4cf6                                   ; $4ce4: $18 $10

	ld d, a                                          ; $4ce6: $57
	ld [hl], b                                       ; $4ce7: $70
	ld a, a                                          ; $4ce8: $7f
	ldh a, [c]                                       ; $4ce9: $f2
	ld a, a                                          ; $4cea: $7f
	cp $57                                           ; $4ceb: $fe $57
	ret nc                                           ; $4ced: $d0

	sbc e                                            ; $4cee: $9b
	rla                                              ; $4cef: $17
	rrca                                             ; $4cf0: $0f
	rla                                              ; $4cf1: $17
	rrca                                             ; $4cf2: $0f
	ld d, a                                          ; $4cf3: $57
	ld [hl], b                                       ; $4cf4: $70
	ld a, a                                          ; $4cf5: $7f

jr_020_4cf6:
	ldh a, [c]                                       ; $4cf6: $f2
	sbc l                                            ; $4cf7: $9d
	dec d                                            ; $4cf8: $15
	dec c                                            ; $4cf9: $0d
	ld d, a                                          ; $4cfa: $57
	ld [hl], b                                       ; $4cfb: $70
	ld a, a                                          ; $4cfc: $7f
	ldh a, [c]                                       ; $4cfd: $f2
	ld a, a                                          ; $4cfe: $7f
	cp $57                                           ; $4cff: $fe $57
	ret nc                                           ; $4d01: $d0

	sbc e                                            ; $4d02: $9b
	inc d                                            ; $4d03: $14
	inc c                                            ; $4d04: $0c
	inc d                                            ; $4d05: $14
	inc c                                            ; $4d06: $0c
	ld d, a                                          ; $4d07: $57
	ld [hl], b                                       ; $4d08: $70
	ld a, a                                          ; $4d09: $7f
	ldh a, [c]                                       ; $4d0a: $f2
	sbc l                                            ; $4d0b: $9d
	inc de                                           ; $4d0c: $13
	dec bc                                           ; $4d0d: $0b
	ld d, a                                          ; $4d0e: $57
	ld [hl], b                                       ; $4d0f: $70
	ld a, a                                          ; $4d10: $7f
	ldh a, [c]                                       ; $4d11: $f2
	ld a, a                                          ; $4d12: $7f
	cp $57                                           ; $4d13: $fe $57
	ret nc                                           ; $4d15: $d0

	sbc e                                            ; $4d16: $9b
	ld [de], a                                       ; $4d17: $12
	ld a, [bc]                                       ; $4d18: $0a
	ld [de], a                                       ; $4d19: $12
	ld a, [bc]                                       ; $4d1a: $0a
	ld d, a                                          ; $4d1b: $57
	ld [hl], b                                       ; $4d1c: $70
	ld a, a                                          ; $4d1d: $7f
	ldh a, [c]                                       ; $4d1e: $f2
	sbc l                                            ; $4d1f: $9d
	ld de, $5709                                     ; $4d20: $11 $09 $57
	ld [hl], b                                       ; $4d23: $70
	ld a, a                                          ; $4d24: $7f
	ldh a, [c]                                       ; $4d25: $f2
	ld a, a                                          ; $4d26: $7f
	cp $57                                           ; $4d27: $fe $57
	ret nc                                           ; $4d29: $d0

	sbc e                                            ; $4d2a: $9b
	db $10                                           ; $4d2b: $10
	ld [$0810], sp                                   ; $4d2c: $08 $10 $08
	ld d, a                                          ; $4d2f: $57
	ld [hl], b                                       ; $4d30: $70
	ld a, a                                          ; $4d31: $7f
	ldh a, [c]                                       ; $4d32: $f2
	sbc l                                            ; $4d33: $9d
	ld c, $06                                        ; $4d34: $0e $06
	ld d, a                                          ; $4d36: $57
	ld [hl], b                                       ; $4d37: $70
	ld a, a                                          ; $4d38: $7f
	ldh a, [c]                                       ; $4d39: $f2
	ld a, a                                          ; $4d3a: $7f
	cp $57                                           ; $4d3b: $fe $57
	ret nc                                           ; $4d3d: $d0

	sbc e                                            ; $4d3e: $9b
	dec c                                            ; $4d3f: $0d
	dec b                                            ; $4d40: $05
	dec c                                            ; $4d41: $0d
	dec b                                            ; $4d42: $05
	ld d, a                                          ; $4d43: $57
	ld [hl], b                                       ; $4d44: $70
	ld a, a                                          ; $4d45: $7f
	ldh a, [c]                                       ; $4d46: $f2
	sbc l                                            ; $4d47: $9d
	inc c                                            ; $4d48: $0c
	inc b                                            ; $4d49: $04
	ld d, a                                          ; $4d4a: $57
	ld [hl], b                                       ; $4d4b: $70
	ld a, a                                          ; $4d4c: $7f

Call_020_4d4d:
	ldh a, [c]                                       ; $4d4d: $f2
	ld a, a                                          ; $4d4e: $7f
	cp $57                                           ; $4d4f: $fe $57
	ret nc                                           ; $4d51: $d0

	sbc e                                            ; $4d52: $9b
	dec bc                                           ; $4d53: $0b
	inc bc                                           ; $4d54: $03
	dec bc                                           ; $4d55: $0b
	inc bc                                           ; $4d56: $03
	ld d, a                                          ; $4d57: $57
	ld [hl], b                                       ; $4d58: $70
	ld a, a                                          ; $4d59: $7f
	ldh a, [c]                                       ; $4d5a: $f2
	sbc l                                            ; $4d5b: $9d
	ld a, [bc]                                       ; $4d5c: $0a
	ld [bc], a                                       ; $4d5d: $02
	ld d, a                                          ; $4d5e: $57
	ld [hl], b                                       ; $4d5f: $70
	ld a, a                                          ; $4d60: $7f
	ldh a, [c]                                       ; $4d61: $f2
	ld a, a                                          ; $4d62: $7f
	cp $57                                           ; $4d63: $fe $57
	ret nc                                           ; $4d65: $d0

	sbc e                                            ; $4d66: $9b
	add hl, bc                                       ; $4d67: $09
	ld bc, $0109                                     ; $4d68: $01 $09 $01
	ld d, a                                          ; $4d6b: $57
	ld [hl], b                                       ; $4d6c: $70
	ld a, a                                          ; $4d6d: $7f
	ldh a, [c]                                       ; $4d6e: $f2
	sbc l                                            ; $4d6f: $9d
	rlca                                             ; $4d70: $07
	rst $38                                          ; $4d71: $ff
	ld d, a                                          ; $4d72: $57
	ld [hl], b                                       ; $4d73: $70
	ld a, a                                          ; $4d74: $7f
	ldh a, [c]                                       ; $4d75: $f2
	ld a, a                                          ; $4d76: $7f
	cp $57                                           ; $4d77: $fe $57
	ret nc                                           ; $4d79: $d0

	sbc e                                            ; $4d7a: $9b
	ld b, $fe                                        ; $4d7b: $06 $fe
	ld b, $fe                                        ; $4d7d: $06 $fe

Call_020_4d7f:
	ld d, a                                          ; $4d7f: $57
	ld [hl], b                                       ; $4d80: $70
	ld a, a                                          ; $4d81: $7f
	ldh a, [c]                                       ; $4d82: $f2
	sbc l                                            ; $4d83: $9d
	dec b                                            ; $4d84: $05
	db $fd                                           ; $4d85: $fd
	ld d, a                                          ; $4d86: $57
	ld [hl], b                                       ; $4d87: $70
	ld a, a                                          ; $4d88: $7f
	ldh a, [c]                                       ; $4d89: $f2
	ld a, a                                          ; $4d8a: $7f
	cp $57                                           ; $4d8b: $fe $57
	ret nc                                           ; $4d8d: $d0

	sbc e                                            ; $4d8e: $9b
	inc b                                            ; $4d8f: $04
	db $fc                                           ; $4d90: $fc
	inc b                                            ; $4d91: $04
	db $fc                                           ; $4d92: $fc
	ld d, a                                          ; $4d93: $57
	ld [hl], b                                       ; $4d94: $70
	ld a, a                                          ; $4d95: $7f
	ldh a, [c]                                       ; $4d96: $f2
	sbc l                                            ; $4d97: $9d
	inc bc                                           ; $4d98: $03
	ei                                               ; $4d99: $fb
	ld d, a                                          ; $4d9a: $57
	ld [hl], b                                       ; $4d9b: $70
	ld a, a                                          ; $4d9c: $7f
	ldh a, [c]                                       ; $4d9d: $f2
	ld a, a                                          ; $4d9e: $7f
	cp $57                                           ; $4d9f: $fe $57
	ret nc                                           ; $4da1: $d0

	ld [hl], a                                       ; $4da2: $77
	ldh a, [rPCM34]                                  ; $4da3: $f0 $77
	ret nc                                           ; $4da5: $d0

	sbc l                                            ; $4da6: $9d
	ld [hl+], a                                      ; $4da7: $22
	jr nz, jr_020_4e19                               ; $4da8: $20 $6f

	ret nc                                           ; $4daa: $d0

	ld [hl], a                                       ; $4dab: $77
	ldh a, [$6f]                                     ; $4dac: $f0 $6f
	ret nc                                           ; $4dae: $d0

	ld a, a                                          ; $4daf: $7f
	xor $53                                          ; $4db0: $ee $53
	ret nc                                           ; $4db2: $d0

	sbc [hl]                                         ; $4db3: $9e
	inc h                                            ; $4db4: $24
	ld b, e                                          ; $4db5: $43
	ret nc                                           ; $4db6: $d0

	sbc [hl]                                         ; $4db7: $9e
	ld h, $13                                        ; $4db8: $26 $13
	ret nc                                           ; $4dba: $d0

	sbc [hl]                                         ; $4dbb: $9e
	jr z, jr_020_4e2d                                ; $4dbc: $28 $6f

	ret nc                                           ; $4dbe: $d0

	pop de                                           ; $4dbf: $d1
	ld bc, $2c93                                     ; $4dc0: $01 $93 $2c
	inc h                                            ; $4dc3: $24
	inc l                                            ; $4dc4: $2c
	inc h                                            ; $4dc5: $24
	ldh a, [$f0]                                     ; $4dc6: $f0 $f0
	ldh [$e0], a                                     ; $4dc8: $e0 $e0
	ld a, [bc]                                       ; $4dca: $0a
	ld [$0406], sp                                   ; $4dcb: $08 $06 $04
	db $dd                                           ; $4dce: $dd
	jr nz, jr_020_4e50                               ; $4dcf: $20 $7f

	ldh a, [c]                                       ; $4dd1: $f2
	add l                                            ; $4dd2: $85
	dec hl                                           ; $4dd3: $2b
	inc hl                                           ; $4dd4: $23
	ret nc                                           ; $4dd5: $d0

	ret nc                                           ; $4dd6: $d0

	ldh a, [$f0]                                     ; $4dd7: $f0 $f0
	ld [bc], a                                       ; $4dd9: $02
	nop                                              ; $4dda: $00
	ld c, $0c                                        ; $4ddb: $0e $0c
	jr nz, jr_020_4e00                               ; $4ddd: $20 $21

	jr nz, jr_020_4e01                               ; $4ddf: $20 $20

	dec hl                                           ; $4de1: $2b
	inc hl                                           ; $4de2: $23
	dec hl                                           ; $4de3: $2b
	inc hl                                           ; $4de4: $23
	ldh [$e0], a                                     ; $4de5: $e0 $e0
	ret nc                                           ; $4de7: $d0

	ret nc                                           ; $4de8: $d0

	ld b, $04                                        ; $4de9: $06 $04
	ld [bc], a                                       ; $4deb: $02
	nop                                              ; $4dec: $00
	sbc $20                                          ; $4ded: $de $20
	sbc l                                            ; $4def: $9d
	ld hl, $7b29                                     ; $4df0: $21 $29 $7b
	cp $77                                           ; $4df3: $fe $77
	ret nc                                           ; $4df5: $d0

	sbc l                                            ; $4df6: $9d
	ld [de], a                                       ; $4df7: $12
	db $10                                           ; $4df8: $10
	ld l, a                                          ; $4df9: $6f
	ret nc                                           ; $4dfa: $d0

	ld a, a                                          ; $4dfb: $7f
	ldh a, [c]                                       ; $4dfc: $f2
	sbc l                                            ; $4dfd: $9d
	jr z, jr_020_4e20                                ; $4dfe: $28 $20

jr_020_4e00:
	ld l, a                                          ; $4e00: $6f

jr_020_4e01:
	ret nc                                           ; $4e01: $d0

	sbc l                                            ; $4e02: $9d
	ld d, $14                                        ; $4e03: $16 $14
	ld [hl], a                                       ; $4e05: $77
	ret nc                                           ; $4e06: $d0

	ld a, a                                          ; $4e07: $7f
	ldh a, [c]                                       ; $4e08: $f2
	ld a, a                                          ; $4e09: $7f
	cp $57                                           ; $4e0a: $fe $57
	ret nc                                           ; $4e0c: $d0

	sbc e                                            ; $4e0d: $9b
	daa                                              ; $4e0e: $27
	rra                                              ; $4e0f: $1f
	daa                                              ; $4e10: $27
	rra                                              ; $4e11: $1f
	ld [hl], a                                       ; $4e12: $77
	ret nc                                           ; $4e13: $d0

	sbc l                                            ; $4e14: $9d
	ld a, [de]                                       ; $4e15: $1a
	jr jr_020_4e87                                   ; $4e16: $18 $6f

	ret nc                                           ; $4e18: $d0

jr_020_4e19:
	ld a, a                                          ; $4e19: $7f
	ldh a, [c]                                       ; $4e1a: $f2
	sbc l                                            ; $4e1b: $9d
	ld h, $1e                                        ; $4e1c: $26 $1e
	ld l, a                                          ; $4e1e: $6f
	ret nc                                           ; $4e1f: $d0

jr_020_4e20:
	sbc l                                            ; $4e20: $9d
	ld e, $1c                                        ; $4e21: $1e $1c
	ld [hl], a                                       ; $4e23: $77
	ret nc                                           ; $4e24: $d0

	ld a, a                                          ; $4e25: $7f
	ldh a, [c]                                       ; $4e26: $f2
	ld a, a                                          ; $4e27: $7f
	cp $57                                           ; $4e28: $fe $57
	ret nc                                           ; $4e2a: $d0

	sbc e                                            ; $4e2b: $9b
	dec h                                            ; $4e2c: $25

jr_020_4e2d:
	dec e                                            ; $4e2d: $1d
	dec h                                            ; $4e2e: $25
	dec e                                            ; $4e2f: $1d
	ld d, a                                          ; $4e30: $57
	ld [hl], b                                       ; $4e31: $70
	ld a, a                                          ; $4e32: $7f
	ldh a, [c]                                       ; $4e33: $f2
	sbc l                                            ; $4e34: $9d
	inc h                                            ; $4e35: $24
	inc e                                            ; $4e36: $1c
	ld d, a                                          ; $4e37: $57
	ld [hl], b                                       ; $4e38: $70
	ld a, a                                          ; $4e39: $7f
	ldh a, [c]                                       ; $4e3a: $f2
	ld a, a                                          ; $4e3b: $7f
	cp $57                                           ; $4e3c: $fe $57
	ret nc                                           ; $4e3e: $d0

	sbc e                                            ; $4e3f: $9b
	ld [hl+], a                                      ; $4e40: $22
	ld a, [de]                                       ; $4e41: $1a
	ld [hl+], a                                      ; $4e42: $22
	ld a, [de]                                       ; $4e43: $1a
	ld d, a                                          ; $4e44: $57
	ld [hl], b                                       ; $4e45: $70
	ld a, a                                          ; $4e46: $7f
	ldh a, [c]                                       ; $4e47: $f2
	sbc l                                            ; $4e48: $9d
	ld hl, $5719                                     ; $4e49: $21 $19 $57
	ld [hl], b                                       ; $4e4c: $70
	ld a, a                                          ; $4e4d: $7f
	ldh a, [c]                                       ; $4e4e: $f2
	ld a, a                                          ; $4e4f: $7f

jr_020_4e50:
	cp $57                                           ; $4e50: $fe $57
	ret nc                                           ; $4e52: $d0

	sbc e                                            ; $4e53: $9b
	jr nz, jr_020_4e6e                               ; $4e54: $20 $18

	jr nz, jr_020_4e70                               ; $4e56: $20 $18

	ld d, a                                          ; $4e58: $57
	ld [hl], b                                       ; $4e59: $70
	ld a, a                                          ; $4e5a: $7f
	ldh a, [c]                                       ; $4e5b: $f2
	sbc l                                            ; $4e5c: $9d
	rra                                              ; $4e5d: $1f
	rla                                              ; $4e5e: $17
	ld l, a                                          ; $4e5f: $6f
	ret nc                                           ; $4e60: $d0

	sbc [hl]                                         ; $4e61: $9e
	ld [hl+], a                                      ; $4e62: $22
	ld [hl], a                                       ; $4e63: $77
	ldh [c], a                                       ; $4e64: $e2
	sbc d                                            ; $4e65: $9a
	jr nz, jr_020_4e87                               ; $4e66: $20 $1f

	rla                                              ; $4e68: $17
	rra                                              ; $4e69: $1f
	rla                                              ; $4e6a: $17
	ld d, a                                          ; $4e6b: $57
	ret nc                                           ; $4e6c: $d0

	ld [hl], a                                       ; $4e6d: $77

jr_020_4e6e:
	ldh a, [rPCM34]                                  ; $4e6e: $f0 $77

jr_020_4e70:
	ret nc                                           ; $4e70: $d0

	ld a, a                                          ; $4e71: $7f
	ldh [c], a                                       ; $4e72: $e2
	sbc l                                            ; $4e73: $9d
	ld b, $2c                                        ; $4e74: $06 $2c
	db $dd                                           ; $4e76: $dd
	jr nz, jr_020_4ef0                               ; $4e77: $20 $77

	ldh a, [$33]                                     ; $4e79: $f0 $33
	ret nc                                           ; $4e7b: $d0

	sbc [hl]                                         ; $4e7c: $9e
	inc h                                            ; $4e7d: $24
	ld l, a                                          ; $4e7e: $6f
	ret nc                                           ; $4e7f: $d0

	sbc e                                            ; $4e80: $9b
	ld e, $16                                        ; $4e81: $1e $16
	ld e, $16                                        ; $4e83: $1e $16
	ld l, a                                          ; $4e85: $6f
	ld b, b                                          ; $4e86: $40

jr_020_4e87:
	sbc l                                            ; $4e87: $9d
	jr z, jr_020_4eb0                                ; $4e88: $28 $26

	db $dd                                           ; $4e8a: $dd
	jr nz, jr_020_4f0c                               ; $4e8b: $20 $7f

	ldh a, [c]                                       ; $4e8d: $f2
	sbc l                                            ; $4e8e: $9d
	dec e                                            ; $4e8f: $1d
	dec d                                            ; $4e90: $15
	ld d, a                                          ; $4e91: $57
	ld b, b                                          ; $4e92: $40
	ld a, a                                          ; $4e93: $7f
	ldh a, [c]                                       ; $4e94: $f2
	ld a, a                                          ; $4e95: $7f
	cp $73                                           ; $4e96: $fe $73
	ret nc                                           ; $4e98: $d0

	sbc [hl]                                         ; $4e99: $9e
	ld a, [hl+]                                      ; $4e9a: $2a
	ld l, a                                          ; $4e9b: $6f
	ret nc                                           ; $4e9c: $d0

	sbc e                                            ; $4e9d: $9b
	dec de                                           ; $4e9e: $1b
	inc de                                           ; $4e9f: $13
	dec de                                           ; $4ea0: $1b
	inc de                                           ; $4ea1: $13
	ld l, e                                          ; $4ea2: $6b
	ld b, b                                          ; $4ea3: $40
	sbc [hl]                                         ; $4ea4: $9e
	ld a, [hl+]                                      ; $4ea5: $2a
	db $dd                                           ; $4ea6: $dd
	jr nz, jr_020_4f28                               ; $4ea7: $20 $7f

	ldh a, [c]                                       ; $4ea9: $f2
	sbc l                                            ; $4eaa: $9d
	ld a, [de]                                       ; $4eab: $1a
	ld [de], a                                       ; $4eac: $12
	ld d, a                                          ; $4ead: $57
	ld b, b                                          ; $4eae: $40
	ld a, a                                          ; $4eaf: $7f

jr_020_4eb0:
	ldh a, [c]                                       ; $4eb0: $f2
	ld a, a                                          ; $4eb1: $7f
	cp $57                                           ; $4eb2: $fe $57
	ret nc                                           ; $4eb4: $d0

	sbc e                                            ; $4eb5: $9b
	add hl, de                                       ; $4eb6: $19
	ld de, $1119                                     ; $4eb7: $11 $19 $11
	ld l, e                                          ; $4eba: $6b
	ld b, b                                          ; $4ebb: $40
	ld [hl], e                                       ; $4ebc: $73
	ret nc                                           ; $4ebd: $d0

	ld a, a                                          ; $4ebe: $7f
	ldh a, [c]                                       ; $4ebf: $f2
	sbc l                                            ; $4ec0: $9d
	jr jr_020_4ed3                                   ; $4ec1: $18 $10

	ld d, [hl]                                       ; $4ec3: $56
	or b                                             ; $4ec4: $b0
	ld a, a                                          ; $4ec5: $7f
	ldh a, [c]                                       ; $4ec6: $f2
	ld a, a                                          ; $4ec7: $7f
	cp $57                                           ; $4ec8: $fe $57
	ret nc                                           ; $4eca: $d0

	sbc e                                            ; $4ecb: $9b
	rla                                              ; $4ecc: $17
	rrca                                             ; $4ecd: $0f
	rla                                              ; $4ece: $17
	rrca                                             ; $4ecf: $0f
	ld l, d                                          ; $4ed0: $6a
	or b                                             ; $4ed1: $b0
	ld [hl], e                                       ; $4ed2: $73

jr_020_4ed3:
	ret nc                                           ; $4ed3: $d0

	ld a, a                                          ; $4ed4: $7f
	ldh a, [c]                                       ; $4ed5: $f2
	sbc l                                            ; $4ed6: $9d
	ld d, $0e                                        ; $4ed7: $16 $0e
	ld d, a                                          ; $4ed9: $57
	ld [hl], b                                       ; $4eda: $70
	ld a, a                                          ; $4edb: $7f
	ldh a, [c]                                       ; $4edc: $f2
	ld a, a                                          ; $4edd: $7f
	cp $57                                           ; $4ede: $fe $57
	ret nc                                           ; $4ee0: $d0

	sbc e                                            ; $4ee1: $9b
	inc d                                            ; $4ee2: $14
	inc c                                            ; $4ee3: $0c
	inc d                                            ; $4ee4: $14
	inc c                                            ; $4ee5: $0c
	ld d, a                                          ; $4ee6: $57
	ld [hl], b                                       ; $4ee7: $70
	ld a, a                                          ; $4ee8: $7f
	ldh a, [c]                                       ; $4ee9: $f2
	sbc l                                            ; $4eea: $9d
	inc de                                           ; $4eeb: $13
	dec bc                                           ; $4eec: $0b
	ld d, a                                          ; $4eed: $57
	ld [hl], b                                       ; $4eee: $70
	ld a, a                                          ; $4eef: $7f

jr_020_4ef0:
	ldh a, [c]                                       ; $4ef0: $f2
	ld a, a                                          ; $4ef1: $7f
	cp $57                                           ; $4ef2: $fe $57
	ret nc                                           ; $4ef4: $d0

	sbc e                                            ; $4ef5: $9b
	ld [de], a                                       ; $4ef6: $12
	ld a, [bc]                                       ; $4ef7: $0a
	ld [de], a                                       ; $4ef8: $12
	ld a, [bc]                                       ; $4ef9: $0a
	ld d, a                                          ; $4efa: $57
	ld [hl], b                                       ; $4efb: $70
	ld a, a                                          ; $4efc: $7f
	ldh a, [c]                                       ; $4efd: $f2
	sbc l                                            ; $4efe: $9d
	db $10                                           ; $4eff: $10
	ld [$7057], sp                                   ; $4f00: $08 $57 $70
	ld a, a                                          ; $4f03: $7f
	ldh a, [c]                                       ; $4f04: $f2
	ld a, a                                          ; $4f05: $7f
	cp $57                                           ; $4f06: $fe $57
	ret nc                                           ; $4f08: $d0

	sbc e                                            ; $4f09: $9b
	rrca                                             ; $4f0a: $0f
	rlca                                             ; $4f0b: $07

jr_020_4f0c:
	rrca                                             ; $4f0c: $0f
	rlca                                             ; $4f0d: $07
	ld d, a                                          ; $4f0e: $57
	ld [hl], b                                       ; $4f0f: $70
	ld a, a                                          ; $4f10: $7f
	ldh a, [c]                                       ; $4f11: $f2
	sbc l                                            ; $4f12: $9d
	ld c, $06                                        ; $4f13: $0e $06
	ld d, a                                          ; $4f15: $57
	ld [hl], b                                       ; $4f16: $70
	ld a, a                                          ; $4f17: $7f
	ldh a, [c]                                       ; $4f18: $f2
	ld a, a                                          ; $4f19: $7f
	cp $57                                           ; $4f1a: $fe $57
	ret nc                                           ; $4f1c: $d0

	sbc e                                            ; $4f1d: $9b
	inc c                                            ; $4f1e: $0c
	inc b                                            ; $4f1f: $04
	inc c                                            ; $4f20: $0c
	inc b                                            ; $4f21: $04
	ld d, a                                          ; $4f22: $57
	ld [hl], b                                       ; $4f23: $70
	ld a, a                                          ; $4f24: $7f
	ldh a, [c]                                       ; $4f25: $f2
	sbc l                                            ; $4f26: $9d
	dec bc                                           ; $4f27: $0b

jr_020_4f28:
	inc bc                                           ; $4f28: $03
	ld d, a                                          ; $4f29: $57
	ld [hl], b                                       ; $4f2a: $70
	ld a, a                                          ; $4f2b: $7f
	ldh a, [c]                                       ; $4f2c: $f2
	ld a, a                                          ; $4f2d: $7f
	cp $57                                           ; $4f2e: $fe $57
	ret nc                                           ; $4f30: $d0

	sbc e                                            ; $4f31: $9b
	ld a, [bc]                                       ; $4f32: $0a
	ld [bc], a                                       ; $4f33: $02
	ld a, [bc]                                       ; $4f34: $0a
	ld [bc], a                                       ; $4f35: $02
	ld d, a                                          ; $4f36: $57
	ld [hl], b                                       ; $4f37: $70
	ld a, a                                          ; $4f38: $7f
	ldh a, [c]                                       ; $4f39: $f2
	sbc l                                            ; $4f3a: $9d
	add hl, bc                                       ; $4f3b: $09
	ld bc, $7057                                     ; $4f3c: $01 $57 $70
	ld a, a                                          ; $4f3f: $7f
	ldh a, [c]                                       ; $4f40: $f2
	ld a, a                                          ; $4f41: $7f
	cp $57                                           ; $4f42: $fe $57
	ret nc                                           ; $4f44: $d0

	sbc e                                            ; $4f45: $9b
	ld [$0800], sp                                   ; $4f46: $08 $00 $08
	nop                                              ; $4f49: $00
	ld d, a                                          ; $4f4a: $57
	ld [hl], b                                       ; $4f4b: $70
	ld a, a                                          ; $4f4c: $7f
	ldh a, [c]                                       ; $4f4d: $f2
	sbc l                                            ; $4f4e: $9d
	rlca                                             ; $4f4f: $07
	rst $38                                          ; $4f50: $ff
	ld d, a                                          ; $4f51: $57
	ld [hl], b                                       ; $4f52: $70
	ld a, a                                          ; $4f53: $7f
	ldh a, [c]                                       ; $4f54: $f2
	ld a, a                                          ; $4f55: $7f
	cp $57                                           ; $4f56: $fe $57
	ret nc                                           ; $4f58: $d0

	sbc e                                            ; $4f59: $9b
	dec b                                            ; $4f5a: $05
	db $fd                                           ; $4f5b: $fd
	dec b                                            ; $4f5c: $05
	db $fd                                           ; $4f5d: $fd
	ld d, a                                          ; $4f5e: $57
	ld [hl], b                                       ; $4f5f: $70
	ld a, a                                          ; $4f60: $7f
	ldh a, [c]                                       ; $4f61: $f2
	sbc l                                            ; $4f62: $9d
	inc b                                            ; $4f63: $04
	db $fc                                           ; $4f64: $fc
	ld d, a                                          ; $4f65: $57
	ld [hl], b                                       ; $4f66: $70
	ld a, a                                          ; $4f67: $7f
	ldh a, [c]                                       ; $4f68: $f2
	ld a, a                                          ; $4f69: $7f
	cp $57                                           ; $4f6a: $fe $57
	ret nc                                           ; $4f6c: $d0

	sbc e                                            ; $4f6d: $9b
	inc bc                                           ; $4f6e: $03
	ei                                               ; $4f6f: $fb
	inc bc                                           ; $4f70: $03
	ei                                               ; $4f71: $fb
	ld d, a                                          ; $4f72: $57
	ld [hl], b                                       ; $4f73: $70
	ld a, a                                          ; $4f74: $7f
	ldh a, [c]                                       ; $4f75: $f2
	sbc l                                            ; $4f76: $9d
	ld [bc], a                                       ; $4f77: $02
	ld a, [$7057]                                    ; $4f78: $fa $57 $70
	ld a, a                                          ; $4f7b: $7f
	ldh a, [c]                                       ; $4f7c: $f2
	ld a, a                                          ; $4f7d: $7f
	cp $57                                           ; $4f7e: $fe $57
	ret nc                                           ; $4f80: $d0

	sbc e                                            ; $4f81: $9b
	ld bc, $01f9                                     ; $4f82: $01 $f9 $01
	ld sp, hl                                        ; $4f85: $f9
	ld d, a                                          ; $4f86: $57
	ld [hl], b                                       ; $4f87: $70
	ld [hl], a                                       ; $4f88: $77
	ldh a, [rHDMA5]                                  ; $4f89: $f0 $55
	sub b                                            ; $4f8b: $90
	ld [hl], a                                       ; $4f8c: $77
	ldh a, [$57]                                     ; $4f8d: $f0 $57
	ret nc                                           ; $4f8f: $d0

	xor $01                                          ; $4f90: $ee $01
	sub e                                            ; $4f92: $93
	dec hl                                           ; $4f93: $2b
	inc hl                                           ; $4f94: $23
	dec hl                                           ; $4f95: $2b
	inc hl                                           ; $4f96: $23
	ldh a, [$f0]                                     ; $4f97: $f0 $f0
	ldh [$e0], a                                     ; $4f99: $e0 $e0
	ld a, [bc]                                       ; $4f9b: $0a
	ld [$0406], sp                                   ; $4f9c: $08 $06 $04
	db $dd                                           ; $4f9f: $dd
	jr nz, jr_020_5021                               ; $4fa0: $20 $7f

	ldh a, [c]                                       ; $4fa2: $f2
	add l                                            ; $4fa3: $85
	ld a, [hl+]                                      ; $4fa4: $2a
	ld [hl+], a                                      ; $4fa5: $22
	ret nc                                           ; $4fa6: $d0

	ret nc                                           ; $4fa7: $d0

	ldh a, [$f0]                                     ; $4fa8: $f0 $f0
	ld [bc], a                                       ; $4faa: $02
	nop                                              ; $4fab: $00
	ld c, $0c                                        ; $4fac: $0e $0c
	jr nz, jr_020_4fd1                               ; $4fae: $20 $21

	jr nz, jr_020_4fd2                               ; $4fb0: $20 $20

	ld a, [hl+]                                      ; $4fb2: $2a
	ld [hl+], a                                      ; $4fb3: $22
	ld a, [hl+]                                      ; $4fb4: $2a
	ld [hl+], a                                      ; $4fb5: $22
	ldh [$e0], a                                     ; $4fb6: $e0 $e0
	ret nc                                           ; $4fb8: $d0

	ret nc                                           ; $4fb9: $d0

	ld b, $04                                        ; $4fba: $06 $04
	ld [bc], a                                       ; $4fbc: $02
	nop                                              ; $4fbd: $00
	sbc $20                                          ; $4fbe: $de $20
	sbc d                                            ; $4fc0: $9a
	ld hl, $2028                                     ; $4fc1: $21 $28 $20
	jr z, jr_020_4fe6                                ; $4fc4: $28 $20

	ld [hl], a                                       ; $4fc6: $77
	ret nc                                           ; $4fc7: $d0

	sbc l                                            ; $4fc8: $9d
	ld [de], a                                       ; $4fc9: $12
	db $10                                           ; $4fca: $10
	ld l, a                                          ; $4fcb: $6f
	ret nc                                           ; $4fcc: $d0

	ld a, a                                          ; $4fcd: $7f
	ldh a, [c]                                       ; $4fce: $f2
	sbc l                                            ; $4fcf: $9d
	daa                                              ; $4fd0: $27

jr_020_4fd1:
	rra                                              ; $4fd1: $1f

jr_020_4fd2:
	ld l, a                                          ; $4fd2: $6f
	ret nc                                           ; $4fd3: $d0

	sbc l                                            ; $4fd4: $9d
	ld d, $14                                        ; $4fd5: $16 $14
	ld [hl], a                                       ; $4fd7: $77
	ret nc                                           ; $4fd8: $d0

	ld a, a                                          ; $4fd9: $7f
	ldh a, [c]                                       ; $4fda: $f2
	ld a, a                                          ; $4fdb: $7f
	cp $57                                           ; $4fdc: $fe $57
	ret nc                                           ; $4fde: $d0

	sbc e                                            ; $4fdf: $9b
	ld h, $1e                                        ; $4fe0: $26 $1e
	ld h, $1e                                        ; $4fe2: $26 $1e
	ld [hl], a                                       ; $4fe4: $77
	ret nc                                           ; $4fe5: $d0

jr_020_4fe6:
	sbc l                                            ; $4fe6: $9d
	ld a, [de]                                       ; $4fe7: $1a
	jr @+$71                                         ; $4fe8: $18 $6f

	ret nc                                           ; $4fea: $d0

	ld a, a                                          ; $4feb: $7f
	ldh a, [c]                                       ; $4fec: $f2
	sbc l                                            ; $4fed: $9d
	dec h                                            ; $4fee: $25
	dec e                                            ; $4fef: $1d
	ld l, a                                          ; $4ff0: $6f
	ret nc                                           ; $4ff1: $d0

	sbc l                                            ; $4ff2: $9d
	ld e, $1c                                        ; $4ff3: $1e $1c
	ld [hl], a                                       ; $4ff5: $77
	ret nc                                           ; $4ff6: $d0

	ld a, a                                          ; $4ff7: $7f
	ldh a, [c]                                       ; $4ff8: $f2
	ld a, a                                          ; $4ff9: $7f
	cp $57                                           ; $4ffa: $fe $57
	ret nc                                           ; $4ffc: $d0

	sbc e                                            ; $4ffd: $9b
	inc h                                            ; $4ffe: $24
	inc e                                            ; $4fff: $1c
	inc h                                            ; $5000: $24
	inc e                                            ; $5001: $1c
	ld d, a                                          ; $5002: $57
	ld [hl], b                                       ; $5003: $70
	ld a, a                                          ; $5004: $7f
	ldh a, [c]                                       ; $5005: $f2
	sbc l                                            ; $5006: $9d
	inc hl                                           ; $5007: $23
	dec de                                           ; $5008: $1b
	ld d, a                                          ; $5009: $57
	ld [hl], b                                       ; $500a: $70
	ld a, a                                          ; $500b: $7f
	ldh a, [c]                                       ; $500c: $f2
	ld a, a                                          ; $500d: $7f
	cp $57                                           ; $500e: $fe $57
	ret nc                                           ; $5010: $d0

	sbc e                                            ; $5011: $9b
	ld hl, $2119                                     ; $5012: $21 $19 $21
	add hl, de                                       ; $5015: $19
	ld d, a                                          ; $5016: $57
	ld [hl], b                                       ; $5017: $70
	ld a, a                                          ; $5018: $7f
	ldh a, [c]                                       ; $5019: $f2
	sbc l                                            ; $501a: $9d
	jr nz, jr_020_5035                               ; $501b: $20 $18

	ld d, a                                          ; $501d: $57
	ld [hl], b                                       ; $501e: $70
	ld a, a                                          ; $501f: $7f
	ldh a, [c]                                       ; $5020: $f2

jr_020_5021:
	ld a, a                                          ; $5021: $7f
	cp $57                                           ; $5022: $fe $57
	ret nc                                           ; $5024: $d0

	sbc e                                            ; $5025: $9b
	rra                                              ; $5026: $1f
	rla                                              ; $5027: $17
	rra                                              ; $5028: $1f
	rla                                              ; $5029: $17
	ld d, a                                          ; $502a: $57
	ld [hl], b                                       ; $502b: $70
	ld a, a                                          ; $502c: $7f
	ldh a, [c]                                       ; $502d: $f2
	sbc l                                            ; $502e: $9d
	ld e, $16                                        ; $502f: $1e $16
	ld d, a                                          ; $5031: $57
	ld [hl], b                                       ; $5032: $70
	ld a, a                                          ; $5033: $7f
	ldh a, [c]                                       ; $5034: $f2

jr_020_5035:
	ld a, a                                          ; $5035: $7f
	cp $57                                           ; $5036: $fe $57
	ret nc                                           ; $5038: $d0

	sbc e                                            ; $5039: $9b
	dec e                                            ; $503a: $1d
	dec d                                            ; $503b: $15
	dec e                                            ; $503c: $1d
	dec d                                            ; $503d: $15
	ld d, a                                          ; $503e: $57
	ld [hl], b                                       ; $503f: $70
	ld [hl], a                                       ; $5040: $77
	ldh a, [$6f]                                     ; $5041: $f0 $6f
	ret nc                                           ; $5043: $d0

	sbc l                                            ; $5044: $9d
	ld h, $24                                        ; $5045: $26 $24
	ld [hl], a                                       ; $5047: $77
	ret nc                                           ; $5048: $d0

	ld [hl], a                                       ; $5049: $77
	ldh a, [rBGP]                                    ; $504a: $f0 $47
	ret nc                                           ; $504c: $d0

	ld [hl], a                                       ; $504d: $77
	ldh a, [$9c]                                     ; $504e: $f0 $9c
	ld a, [hl+]                                      ; $5050: $2a
	jr z, jr_020_5075                                ; $5051: $28 $22

	call c, Call_020_6720                            ; $5053: $dc $20 $67
	ret nz                                           ; $5056: $c0

	ld a, a                                          ; $5057: $7f
	jp nc, $2e9d                                     ; $5058: $d2 $9d $2e

	inc l                                            ; $505b: $2c
	ld h, a                                          ; $505c: $67
	ret nc                                           ; $505d: $d0

	ld [hl], a                                       ; $505e: $77
	ret nz                                           ; $505f: $c0

	ld a, a                                          ; $5060: $7f
	ldh [c], a                                       ; $5061: $e2
	ld a, e                                          ; $5062: $7b

Jump_020_5063:
	ret nz                                           ; $5063: $c0

	ld a, e                                          ; $5064: $7b
	ret nc                                           ; $5065: $d0

	sbc e                                            ; $5066: $9b
	inc e                                            ; $5067: $1c
	inc d                                            ; $5068: $14
	inc e                                            ; $5069: $1c
	inc d                                            ; $506a: $14
	ld l, a                                          ; $506b: $6f
	and b                                            ; $506c: $a0
	sbc l                                            ; $506d: $9d
	ld [hl], $34                                     ; $506e: $36 $34
	db $dd                                           ; $5070: $dd
	jr nz, jr_020_50f2                               ; $5071: $20 $7f

	ldh a, [c]                                       ; $5073: $f2
	sbc l                                            ; $5074: $9d

jr_020_5075:
	dec de                                           ; $5075: $1b
	inc de                                           ; $5076: $13
	ld [hl], a                                       ; $5077: $77
	ldh [$9d], a                                     ; $5078: $e0 $9d
	ld [hl-], a                                      ; $507a: $32
	jr nc, jr_020_50ec                               ; $507b: $30 $6f

	db $10                                           ; $507d: $10
	ld a, a                                          ; $507e: $7f
	ldh a, [c]                                       ; $507f: $f2
	ld a, a                                          ; $5080: $7f
	cp $77                                           ; $5081: $fe $77
	or b                                             ; $5083: $b0
	ld a, a                                          ; $5084: $7f
	ldh [c], a                                       ; $5085: $e2
	ld a, a                                          ; $5086: $7f
	xor $73                                          ; $5087: $ee $73
	ld hl, $119c                                     ; $5089: $21 $9c $11
	add hl, de                                       ; $508c: $19
	ld de, $106f                                     ; $508d: $11 $6f $10
	ld l, a                                          ; $5090: $6f
	ret nc                                           ; $5091: $d0

	ld a, a                                          ; $5092: $7f
	ldh a, [c]                                       ; $5093: $f2
	sbc l                                            ; $5094: $9d
	jr jr_020_50a7                                   ; $5095: $18 $10

	ld l, a                                          ; $5097: $6f
	ret nc                                           ; $5098: $d0

	ld l, a                                          ; $5099: $6f
	db $10                                           ; $509a: $10
	ld a, a                                          ; $509b: $7f
	ldh a, [c]                                       ; $509c: $f2
	ld a, a                                          ; $509d: $7f
	cp $57                                           ; $509e: $fe $57
	ret nc                                           ; $50a0: $d0

	sbc e                                            ; $50a1: $9b
	rla                                              ; $50a2: $17
	rrca                                             ; $50a3: $0f
	rla                                              ; $50a4: $17
	rrca                                             ; $50a5: $0f
	ld l, a                                          ; $50a6: $6f

jr_020_50a7:
	db $10                                           ; $50a7: $10
	ld l, a                                          ; $50a8: $6f
	ret nc                                           ; $50a9: $d0

	ld a, a                                          ; $50aa: $7f
	ldh a, [c]                                       ; $50ab: $f2
	sbc l                                            ; $50ac: $9d
	ld d, $0e                                        ; $50ad: $16 $0e
	ld l, a                                          ; $50af: $6f
	ret nc                                           ; $50b0: $d0

	ld l, a                                          ; $50b1: $6f
	db $10                                           ; $50b2: $10
	ld a, a                                          ; $50b3: $7f
	ldh a, [c]                                       ; $50b4: $f2
	ld a, a                                          ; $50b5: $7f
	cp $57                                           ; $50b6: $fe $57
	ret nc                                           ; $50b8: $d0

	sbc e                                            ; $50b9: $9b
	dec d                                            ; $50ba: $15
	dec c                                            ; $50bb: $0d
	dec d                                            ; $50bc: $15
	dec c                                            ; $50bd: $0d
	ld d, a                                          ; $50be: $57
	ld [hl], b                                       ; $50bf: $70
	ld a, a                                          ; $50c0: $7f
	ldh a, [c]                                       ; $50c1: $f2
	sbc l                                            ; $50c2: $9d
	inc d                                            ; $50c3: $14
	inc c                                            ; $50c4: $0c
	ld d, a                                          ; $50c5: $57
	ld [hl], b                                       ; $50c6: $70
	ld a, a                                          ; $50c7: $7f
	ldh a, [c]                                       ; $50c8: $f2
	ld a, a                                          ; $50c9: $7f
	cp $57                                           ; $50ca: $fe $57
	ret nc                                           ; $50cc: $d0

	sbc e                                            ; $50cd: $9b
	ld [de], a                                       ; $50ce: $12
	ld a, [bc]                                       ; $50cf: $0a
	ld [de], a                                       ; $50d0: $12
	ld a, [bc]                                       ; $50d1: $0a
	ld d, a                                          ; $50d2: $57
	ld [hl], b                                       ; $50d3: $70
	ld a, a                                          ; $50d4: $7f
	ldh a, [c]                                       ; $50d5: $f2
	sbc l                                            ; $50d6: $9d
	ld de, $5709                                     ; $50d7: $11 $09 $57
	ld [hl], b                                       ; $50da: $70
	ld a, a                                          ; $50db: $7f
	ldh a, [c]                                       ; $50dc: $f2
	ld a, a                                          ; $50dd: $7f
	cp $57                                           ; $50de: $fe $57
	ret nc                                           ; $50e0: $d0

	sbc e                                            ; $50e1: $9b
	db $10                                           ; $50e2: $10
	ld [$0810], sp                                   ; $50e3: $08 $10 $08
	ld d, a                                          ; $50e6: $57
	ld [hl], b                                       ; $50e7: $70
	ld a, a                                          ; $50e8: $7f
	ldh a, [c]                                       ; $50e9: $f2
	sbc l                                            ; $50ea: $9d
	rrca                                             ; $50eb: $0f

jr_020_50ec:
	rlca                                             ; $50ec: $07
	ld d, a                                          ; $50ed: $57
	ld [hl], b                                       ; $50ee: $70
	ld a, a                                          ; $50ef: $7f
	ldh a, [c]                                       ; $50f0: $f2
	ld a, a                                          ; $50f1: $7f

jr_020_50f2:
	cp $57                                           ; $50f2: $fe $57
	ret nc                                           ; $50f4: $d0

	sbc e                                            ; $50f5: $9b
	ld c, $06                                        ; $50f6: $0e $06
	ld c, $06                                        ; $50f8: $0e $06
	ld d, a                                          ; $50fa: $57
	ld [hl], b                                       ; $50fb: $70
	ld a, a                                          ; $50fc: $7f
	ldh a, [c]                                       ; $50fd: $f2
	sbc l                                            ; $50fe: $9d
	dec c                                            ; $50ff: $0d
	dec b                                            ; $5100: $05
	ld d, a                                          ; $5101: $57
	ld [hl], b                                       ; $5102: $70
	ld a, a                                          ; $5103: $7f
	ldh a, [c]                                       ; $5104: $f2
	ld a, a                                          ; $5105: $7f
	cp $57                                           ; $5106: $fe $57
	ret nc                                           ; $5108: $d0

	sbc e                                            ; $5109: $9b
	dec bc                                           ; $510a: $0b
	inc bc                                           ; $510b: $03
	dec bc                                           ; $510c: $0b
	inc bc                                           ; $510d: $03
	ld d, a                                          ; $510e: $57
	ld [hl], b                                       ; $510f: $70
	ld a, a                                          ; $5110: $7f
	ldh a, [c]                                       ; $5111: $f2
	sbc l                                            ; $5112: $9d
	ld a, [bc]                                       ; $5113: $0a
	ld [bc], a                                       ; $5114: $02
	ld d, a                                          ; $5115: $57
	ld [hl], b                                       ; $5116: $70
	ld a, a                                          ; $5117: $7f
	ldh a, [c]                                       ; $5118: $f2
	ld a, a                                          ; $5119: $7f
	cp $57                                           ; $511a: $fe $57
	ret nc                                           ; $511c: $d0

	sbc e                                            ; $511d: $9b
	add hl, bc                                       ; $511e: $09
	ld bc, $0109                                     ; $511f: $01 $09 $01
	ld d, a                                          ; $5122: $57
	ld [hl], b                                       ; $5123: $70
	ld a, a                                          ; $5124: $7f
	ldh a, [c]                                       ; $5125: $f2
	sbc l                                            ; $5126: $9d
	ld [$5700], sp                                   ; $5127: $08 $00 $57
	ld [hl], b                                       ; $512a: $70
	ld a, a                                          ; $512b: $7f
	ldh a, [c]                                       ; $512c: $f2
	ld a, a                                          ; $512d: $7f
	cp $57                                           ; $512e: $fe $57
	ret nc                                           ; $5130: $d0

	sbc e                                            ; $5131: $9b
	rlca                                             ; $5132: $07
	rst $38                                          ; $5133: $ff
	rlca                                             ; $5134: $07
	rst $38                                          ; $5135: $ff
	ld d, a                                          ; $5136: $57
	ld [hl], b                                       ; $5137: $70
	ld a, a                                          ; $5138: $7f
	ldh a, [c]                                       ; $5139: $f2
	sbc l                                            ; $513a: $9d
	ld b, $fe                                        ; $513b: $06 $fe
	ld d, a                                          ; $513d: $57
	ld [hl], b                                       ; $513e: $70
	ld a, a                                          ; $513f: $7f
	ldh a, [c]                                       ; $5140: $f2
	ld a, a                                          ; $5141: $7f
	cp $57                                           ; $5142: $fe $57
	ret nc                                           ; $5144: $d0

	sbc e                                            ; $5145: $9b
	dec b                                            ; $5146: $05
	db $fd                                           ; $5147: $fd
	dec b                                            ; $5148: $05
	db $fd                                           ; $5149: $fd
	ld d, a                                          ; $514a: $57
	ld [hl], b                                       ; $514b: $70
	ld a, a                                          ; $514c: $7f
	ldh a, [c]                                       ; $514d: $f2
	sbc l                                            ; $514e: $9d
	inc b                                            ; $514f: $04
	db $fc                                           ; $5150: $fc
	ld d, a                                          ; $5151: $57
	ld [hl], b                                       ; $5152: $70
	ld a, a                                          ; $5153: $7f
	ldh a, [c]                                       ; $5154: $f2
	ld a, a                                          ; $5155: $7f
	cp $57                                           ; $5156: $fe $57
	ret nc                                           ; $5158: $d0

	sbc e                                            ; $5159: $9b
	inc bc                                           ; $515a: $03
	ei                                               ; $515b: $fb
	inc bc                                           ; $515c: $03
	ei                                               ; $515d: $fb
	ld d, a                                          ; $515e: $57
	ld [hl], b                                       ; $515f: $70
	ld a, a                                          ; $5160: $7f
	ldh a, [c]                                       ; $5161: $f2
	sbc l                                            ; $5162: $9d
	ld [bc], a                                       ; $5163: $02
	ld a, [$7057]                                    ; $5164: $fa $57 $70
	ld a, a                                          ; $5167: $7f
	ldh a, [c]                                       ; $5168: $f2
	ld a, a                                          ; $5169: $7f
	cp $57                                           ; $516a: $fe $57
	ret nc                                           ; $516c: $d0

	sbc e                                            ; $516d: $9b
	ld bc, $01f9                                     ; $516e: $01 $f9 $01
	ld sp, hl                                        ; $5171: $f9
	ld d, a                                          ; $5172: $57
	ld [hl], b                                       ; $5173: $70
	ld [hl], a                                       ; $5174: $77
	ldh a, [$6f]                                     ; $5175: $f0 $6f
	ret nc                                           ; $5177: $d0

	ld l, l                                          ; $5178: $6d
	ld h, b                                          ; $5179: $60
	ld [hl], a                                       ; $517a: $77
	ldh a, [$57]                                     ; $517b: $f0 $57
	ret nc                                           ; $517d: $d0

	ei                                               ; $517e: $fb
	ld bc, $2b93                                     ; $517f: $01 $93 $2b
	inc hl                                           ; $5182: $23
	dec hl                                           ; $5183: $2b
	inc hl                                           ; $5184: $23
	ldh a, [$f0]                                     ; $5185: $f0 $f0
	ldh [$e0], a                                     ; $5187: $e0 $e0
	ld a, [bc]                                       ; $5189: $0a
	ld [$0406], sp                                   ; $518a: $08 $06 $04
	db $dd                                           ; $518d: $dd
	jr nz, jr_020_520f                               ; $518e: $20 $7f

	ldh a, [c]                                       ; $5190: $f2
	add l                                            ; $5191: $85
	ld a, [hl+]                                      ; $5192: $2a
	ld [hl+], a                                      ; $5193: $22
	ret nc                                           ; $5194: $d0

	ret nc                                           ; $5195: $d0

	ldh a, [$f0]                                     ; $5196: $f0 $f0
	ld [bc], a                                       ; $5198: $02
	nop                                              ; $5199: $00
	ld c, $0c                                        ; $519a: $0e $0c
	jr nz, jr_020_51bf                               ; $519c: $20 $21

	jr nz, jr_020_51c0                               ; $519e: $20 $20

	ld a, [hl+]                                      ; $51a0: $2a
	ld [hl+], a                                      ; $51a1: $22
	ld a, [hl+]                                      ; $51a2: $2a
	ld [hl+], a                                      ; $51a3: $22
	ldh [$e0], a                                     ; $51a4: $e0 $e0
	ret nc                                           ; $51a6: $d0

	ret nc                                           ; $51a7: $d0

	ld b, $04                                        ; $51a8: $06 $04
	ld [bc], a                                       ; $51aa: $02
	nop                                              ; $51ab: $00
	sbc $20                                          ; $51ac: $de $20
	sbc d                                            ; $51ae: $9a
	ld hl, $2028                                     ; $51af: $21 $28 $20
	jr z, jr_020_51d4                                ; $51b2: $28 $20

	ld [hl], a                                       ; $51b4: $77
	ret nc                                           ; $51b5: $d0

	sbc l                                            ; $51b6: $9d
	ld [de], a                                       ; $51b7: $12
	db $10                                           ; $51b8: $10
	ld l, a                                          ; $51b9: $6f
	ret nc                                           ; $51ba: $d0

	ld a, a                                          ; $51bb: $7f
	ldh a, [c]                                       ; $51bc: $f2
	sbc l                                            ; $51bd: $9d
	daa                                              ; $51be: $27

jr_020_51bf:
	rra                                              ; $51bf: $1f

jr_020_51c0:
	ld l, a                                          ; $51c0: $6f
	ret nc                                           ; $51c1: $d0

	sbc l                                            ; $51c2: $9d
	ld d, $14                                        ; $51c3: $16 $14
	ld [hl], a                                       ; $51c5: $77
	ret nc                                           ; $51c6: $d0

	ld a, a                                          ; $51c7: $7f
	ldh a, [c]                                       ; $51c8: $f2
	ld a, a                                          ; $51c9: $7f
	cp $57                                           ; $51ca: $fe $57
	ret nc                                           ; $51cc: $d0

	sbc e                                            ; $51cd: $9b
	ld h, $1e                                        ; $51ce: $26 $1e
	ld h, $1e                                        ; $51d0: $26 $1e
	ld [hl], a                                       ; $51d2: $77
	ret nc                                           ; $51d3: $d0

jr_020_51d4:
	sbc l                                            ; $51d4: $9d
	ld a, [de]                                       ; $51d5: $1a
	jr jr_020_5247                                   ; $51d6: $18 $6f

	ret nc                                           ; $51d8: $d0

	ld a, a                                          ; $51d9: $7f
	ldh a, [c]                                       ; $51da: $f2
	sbc l                                            ; $51db: $9d
	dec h                                            ; $51dc: $25
	dec e                                            ; $51dd: $1d
	ld l, a                                          ; $51de: $6f
	ret nc                                           ; $51df: $d0

	sbc l                                            ; $51e0: $9d
	ld e, $1c                                        ; $51e1: $1e $1c
	ld [hl], a                                       ; $51e3: $77
	ret nc                                           ; $51e4: $d0

	ld a, a                                          ; $51e5: $7f
	ldh a, [c]                                       ; $51e6: $f2
	ld a, a                                          ; $51e7: $7f
	cp $57                                           ; $51e8: $fe $57
	ret nc                                           ; $51ea: $d0

	sbc e                                            ; $51eb: $9b
	inc h                                            ; $51ec: $24
	inc e                                            ; $51ed: $1c
	inc h                                            ; $51ee: $24
	inc e                                            ; $51ef: $1c
	ld d, a                                          ; $51f0: $57
	ld [hl], b                                       ; $51f1: $70
	ld a, a                                          ; $51f2: $7f
	ldh a, [c]                                       ; $51f3: $f2
	sbc l                                            ; $51f4: $9d
	inc hl                                           ; $51f5: $23
	dec de                                           ; $51f6: $1b
	ld d, a                                          ; $51f7: $57
	ld [hl], b                                       ; $51f8: $70
	ld a, a                                          ; $51f9: $7f
	ldh a, [c]                                       ; $51fa: $f2
	ld a, a                                          ; $51fb: $7f
	cp $57                                           ; $51fc: $fe $57
	ret nc                                           ; $51fe: $d0

	sbc e                                            ; $51ff: $9b
	ld hl, $2119                                     ; $5200: $21 $19 $21
	add hl, de                                       ; $5203: $19
	ld d, a                                          ; $5204: $57
	ld [hl], b                                       ; $5205: $70
	ld a, a                                          ; $5206: $7f
	ldh a, [c]                                       ; $5207: $f2
	sbc l                                            ; $5208: $9d
	jr nz, jr_020_5223                               ; $5209: $20 $18

	ld d, a                                          ; $520b: $57
	ld [hl], b                                       ; $520c: $70
	ld a, a                                          ; $520d: $7f
	ldh a, [c]                                       ; $520e: $f2

jr_020_520f:
	ld a, a                                          ; $520f: $7f
	cp $57                                           ; $5210: $fe $57
	ret nc                                           ; $5212: $d0

	sbc e                                            ; $5213: $9b
	rra                                              ; $5214: $1f
	rla                                              ; $5215: $17
	rra                                              ; $5216: $1f
	rla                                              ; $5217: $17
	ld d, a                                          ; $5218: $57
	ld [hl], b                                       ; $5219: $70
	ld a, a                                          ; $521a: $7f
	ldh a, [c]                                       ; $521b: $f2
	sbc l                                            ; $521c: $9d
	ld e, $16                                        ; $521d: $1e $16
	ld d, a                                          ; $521f: $57
	ld [hl], b                                       ; $5220: $70
	ld a, a                                          ; $5221: $7f
	ldh a, [c]                                       ; $5222: $f2

jr_020_5223:
	ld a, a                                          ; $5223: $7f
	cp $57                                           ; $5224: $fe $57
	ret nc                                           ; $5226: $d0

	sbc e                                            ; $5227: $9b
	dec e                                            ; $5228: $1d
	dec d                                            ; $5229: $15
	dec e                                            ; $522a: $1d
	dec d                                            ; $522b: $15
	ld d, a                                          ; $522c: $57
	ld [hl], b                                       ; $522d: $70
	ld [hl], a                                       ; $522e: $77
	ldh a, [$6f]                                     ; $522f: $f0 $6f
	ret nc                                           ; $5231: $d0

	sbc [hl]                                         ; $5232: $9e
	ld [hl+], a                                      ; $5233: $22
	ld a, e                                          ; $5234: $7b
	ldh [c], a                                       ; $5235: $e2
	ld l, a                                          ; $5236: $6f
	ldh a, [$37]                                     ; $5237: $f0 $37
	ret nc                                           ; $5239: $d0

	ld a, a                                          ; $523a: $7f
	ldh [c], a                                       ; $523b: $e2
	sbc l                                            ; $523c: $9d
	ld a, [hl+]                                      ; $523d: $2a
	jr z, jr_020_5297                                ; $523e: $28 $57

	ret nc                                           ; $5240: $d0

	sbc l                                            ; $5241: $9d
	ld h, $24                                        ; $5242: $26 $24
	ld c, a                                          ; $5244: $4f
	ret nc                                           ; $5245: $d0

	sbc e                                            ; $5246: $9b

jr_020_5247:
	ld [hl-], a                                      ; $5247: $32
	jr nc, @+$30                                     ; $5248: $30 $2e

	inc l                                            ; $524a: $2c
	ld c, a                                          ; $524b: $4f
	ret nc                                           ; $524c: $d0

	sbc l                                            ; $524d: $9d
	ld a, [hl-]                                      ; $524e: $3a
	jr c, jr_020_52c0                                ; $524f: $38 $6f

	ret nc                                           ; $5251: $d0

	sbc l                                            ; $5252: $9d
	inc e                                            ; $5253: $1c
	inc d                                            ; $5254: $14
	ld [hl], a                                       ; $5255: $77
	ret nc                                           ; $5256: $d0

	sbc e                                            ; $5257: $9b
	ld [hl], $34                                     ; $5258: $36 $34
	ld a, [bc]                                       ; $525a: $0a
	ld [$d077], sp                                   ; $525b: $08 $77 $d0
	ld a, a                                          ; $525e: $7f
	ldh a, [c]                                       ; $525f: $f2
	ld a, a                                          ; $5260: $7f
	cp $57                                           ; $5261: $fe $57
	and b                                            ; $5263: $a0
	sbc e                                            ; $5264: $9b
	dec de                                           ; $5265: $1b
	inc de                                           ; $5266: $13
	dec de                                           ; $5267: $1b
	inc de                                           ; $5268: $13
	ld [hl], a                                       ; $5269: $77
	ret nc                                           ; $526a: $d0

	ld a, [hl]                                       ; $526b: $7e
	ldh a, [c]                                       ; $526c: $f2
	ld l, a                                          ; $526d: $6f
	ld [hl], b                                       ; $526e: $70
	ld a, a                                          ; $526f: $7f
	ldh a, [c]                                       ; $5270: $f2
	sbc l                                            ; $5271: $9d
	add hl, de                                       ; $5272: $19
	ld de, $706f                                     ; $5273: $11 $6f $70
	ld a, [hl]                                       ; $5276: $7e
	cp $77                                           ; $5277: $fe $77
	ret nc                                           ; $5279: $d0

	ld a, a                                          ; $527a: $7f
	ldh a, [c]                                       ; $527b: $f2
	ld a, a                                          ; $527c: $7f
	cp $57                                           ; $527d: $fe $57
	ret nc                                           ; $527f: $d0

	sbc e                                            ; $5280: $9b
	jr jr_020_5293                                   ; $5281: $18 $10

	jr jr_020_5295                                   ; $5283: $18 $10

	ld [hl], a                                       ; $5285: $77
	ret nc                                           ; $5286: $d0

	ld a, [hl]                                       ; $5287: $7e
	ldh a, [c]                                       ; $5288: $f2
	ld l, a                                          ; $5289: $6f
	ret nc                                           ; $528a: $d0

	ld a, a                                          ; $528b: $7f
	ldh a, [c]                                       ; $528c: $f2
	sbc l                                            ; $528d: $9d
	rla                                              ; $528e: $17
	rrca                                             ; $528f: $0f
	ld l, a                                          ; $5290: $6f
	ret nc                                           ; $5291: $d0

	ld a, [hl]                                       ; $5292: $7e

jr_020_5293:
	cp $77                                           ; $5293: $fe $77

jr_020_5295:
	ret nc                                           ; $5295: $d0

	ld a, a                                          ; $5296: $7f

jr_020_5297:
	ldh a, [c]                                       ; $5297: $f2
	ld a, a                                          ; $5298: $7f
	cp $57                                           ; $5299: $fe $57
	ret nc                                           ; $529b: $d0

	sbc e                                            ; $529c: $9b
	ld d, $0e                                        ; $529d: $16 $0e
	ld d, $0e                                        ; $529f: $16 $0e
	ld [hl], a                                       ; $52a1: $77
	ret nc                                           ; $52a2: $d0

	ld a, [hl]                                       ; $52a3: $7e
	ldh a, [c]                                       ; $52a4: $f2
	ld l, a                                          ; $52a5: $6f
	ret nc                                           ; $52a6: $d0

	ld a, a                                          ; $52a7: $7f
	ldh a, [c]                                       ; $52a8: $f2
	sbc l                                            ; $52a9: $9d
	dec d                                            ; $52aa: $15
	dec c                                            ; $52ab: $0d
	ld l, a                                          ; $52ac: $6f
	ret nc                                           ; $52ad: $d0

	ld l, a                                          ; $52ae: $6f
	ld [hl], b                                       ; $52af: $70
	ld a, a                                          ; $52b0: $7f
	ldh a, [c]                                       ; $52b1: $f2
	ld a, a                                          ; $52b2: $7f
	cp $57                                           ; $52b3: $fe $57
	ret nc                                           ; $52b5: $d0

	sbc e                                            ; $52b6: $9b
	inc d                                            ; $52b7: $14
	inc c                                            ; $52b8: $0c
	inc d                                            ; $52b9: $14
	inc c                                            ; $52ba: $0c
	ld d, a                                          ; $52bb: $57
	ld [hl], b                                       ; $52bc: $70
	ld a, a                                          ; $52bd: $7f
	ldh a, [c]                                       ; $52be: $f2
	sbc l                                            ; $52bf: $9d

jr_020_52c0:
	ld [de], a                                       ; $52c0: $12
	ld a, [bc]                                       ; $52c1: $0a
	ld d, a                                          ; $52c2: $57
	ld [hl], b                                       ; $52c3: $70
	ld a, a                                          ; $52c4: $7f
	ldh a, [c]                                       ; $52c5: $f2
	ld a, a                                          ; $52c6: $7f
	cp $57                                           ; $52c7: $fe $57
	ret nc                                           ; $52c9: $d0

	sbc e                                            ; $52ca: $9b
	ld de, $1109                                     ; $52cb: $11 $09 $11
	add hl, bc                                       ; $52ce: $09
	ld d, a                                          ; $52cf: $57
	ld [hl], b                                       ; $52d0: $70
	ld a, a                                          ; $52d1: $7f
	ldh a, [c]                                       ; $52d2: $f2
	sbc l                                            ; $52d3: $9d
	db $10                                           ; $52d4: $10
	ld [$7057], sp                                   ; $52d5: $08 $57 $70
	ld a, a                                          ; $52d8: $7f
	ldh a, [c]                                       ; $52d9: $f2
	ld a, a                                          ; $52da: $7f
	cp $57                                           ; $52db: $fe $57
	ret nc                                           ; $52dd: $d0

	sbc e                                            ; $52de: $9b
	rrca                                             ; $52df: $0f
	rlca                                             ; $52e0: $07
	rrca                                             ; $52e1: $0f
	rlca                                             ; $52e2: $07
	ld d, a                                          ; $52e3: $57
	ld [hl], b                                       ; $52e4: $70
	ld a, a                                          ; $52e5: $7f
	ldh a, [c]                                       ; $52e6: $f2
	sbc l                                            ; $52e7: $9d
	ld c, $06                                        ; $52e8: $0e $06
	ld d, a                                          ; $52ea: $57
	ld [hl], b                                       ; $52eb: $70
	ld a, a                                          ; $52ec: $7f
	ldh a, [c]                                       ; $52ed: $f2
	ld a, a                                          ; $52ee: $7f
	cp $57                                           ; $52ef: $fe $57
	ret nc                                           ; $52f1: $d0

	sbc e                                            ; $52f2: $9b
	dec c                                            ; $52f3: $0d
	dec b                                            ; $52f4: $05
	dec c                                            ; $52f5: $0d
	dec b                                            ; $52f6: $05
	ld d, a                                          ; $52f7: $57
	ld [hl], b                                       ; $52f8: $70
	ld a, a                                          ; $52f9: $7f
	ldh a, [c]                                       ; $52fa: $f2
	sbc l                                            ; $52fb: $9d
	dec bc                                           ; $52fc: $0b
	inc bc                                           ; $52fd: $03
	ld d, a                                          ; $52fe: $57
	ld [hl], b                                       ; $52ff: $70
	ld a, a                                          ; $5300: $7f
	ldh a, [c]                                       ; $5301: $f2
	ld a, a                                          ; $5302: $7f
	cp $57                                           ; $5303: $fe $57
	ret nc                                           ; $5305: $d0

	sbc e                                            ; $5306: $9b
	ld a, [bc]                                       ; $5307: $0a
	ld [bc], a                                       ; $5308: $02
	ld a, [bc]                                       ; $5309: $0a
	ld [bc], a                                       ; $530a: $02
	ld d, a                                          ; $530b: $57
	ld [hl], b                                       ; $530c: $70
	ld a, a                                          ; $530d: $7f
	ldh a, [c]                                       ; $530e: $f2
	sbc l                                            ; $530f: $9d
	add hl, bc                                       ; $5310: $09
	ld bc, $7057                                     ; $5311: $01 $57 $70
	ld a, a                                          ; $5314: $7f
	ldh a, [c]                                       ; $5315: $f2
	ld a, a                                          ; $5316: $7f
	cp $57                                           ; $5317: $fe $57
	ret nc                                           ; $5319: $d0

	sbc e                                            ; $531a: $9b
	ld [$0800], sp                                   ; $531b: $08 $00 $08
	nop                                              ; $531e: $00
	ld d, a                                          ; $531f: $57
	ld [hl], b                                       ; $5320: $70
	ld a, a                                          ; $5321: $7f
	ldh a, [c]                                       ; $5322: $f2
	sbc l                                            ; $5323: $9d
	rlca                                             ; $5324: $07
	rst $38                                          ; $5325: $ff
	ld d, a                                          ; $5326: $57
	ld [hl], b                                       ; $5327: $70
	ld a, a                                          ; $5328: $7f
	ldh a, [c]                                       ; $5329: $f2
	ld a, a                                          ; $532a: $7f
	cp $57                                           ; $532b: $fe $57
	ret nc                                           ; $532d: $d0

	sbc e                                            ; $532e: $9b
	ld b, $fe                                        ; $532f: $06 $fe
	ld b, $fe                                        ; $5331: $06 $fe
	ld d, a                                          ; $5333: $57
	ld [hl], b                                       ; $5334: $70
	ld a, a                                          ; $5335: $7f
	ldh a, [c]                                       ; $5336: $f2
	sbc l                                            ; $5337: $9d
	inc b                                            ; $5338: $04
	db $fc                                           ; $5339: $fc
	ld d, a                                          ; $533a: $57
	ld [hl], b                                       ; $533b: $70
	ld a, a                                          ; $533c: $7f
	ldh a, [c]                                       ; $533d: $f2
	ld a, a                                          ; $533e: $7f
	cp $57                                           ; $533f: $fe $57
	ret nc                                           ; $5341: $d0

	sbc e                                            ; $5342: $9b
	inc bc                                           ; $5343: $03
	ei                                               ; $5344: $fb
	inc bc                                           ; $5345: $03
	ei                                               ; $5346: $fb
	ld d, a                                          ; $5347: $57
	ld [hl], b                                       ; $5348: $70
	ld a, a                                          ; $5349: $7f
	ldh a, [c]                                       ; $534a: $f2
	sbc l                                            ; $534b: $9d
	ld [bc], a                                       ; $534c: $02
	ld a, [$7057]                                    ; $534d: $fa $57 $70
	ld a, a                                          ; $5350: $7f
	ldh a, [c]                                       ; $5351: $f2
	ld a, a                                          ; $5352: $7f
	cp $57                                           ; $5353: $fe $57
	ret nc                                           ; $5355: $d0

	sbc e                                            ; $5356: $9b
	ld bc, $01f9                                     ; $5357: $01 $f9 $01
	ld sp, hl                                        ; $535a: $f9
	ld d, a                                          ; $535b: $57
	ld [hl], b                                       ; $535c: $70
	ld a, a                                          ; $535d: $7f
	ldh a, [c]                                       ; $535e: $f2
	sbc l                                            ; $535f: $9d
	nop                                              ; $5360: $00
	ld hl, sp+$57                                    ; $5361: $f8 $57
	ld [hl], b                                       ; $5363: $70
	ld a, a                                          ; $5364: $7f
	ldh a, [c]                                       ; $5365: $f2
	ld a, a                                          ; $5366: $7f
	cp $57                                           ; $5367: $fe $57
	ret nc                                           ; $5369: $d0

	ld [hl], a                                       ; $536a: $77
	ldh a, [$6d]                                     ; $536b: $f0 $6d
	sub b                                            ; $536d: $90

jr_020_536e:
	ld l, a                                          ; $536e: $6f
	ret nc                                           ; $536f: $d0

	sub a                                            ; $5370: $97
	nop                                              ; $5371: $00
	ret nc                                           ; $5372: $d0

	ld [bc], a                                       ; $5373: $02
	jr nz, jr_020_536e                               ; $5374: $20 $f8

	ret nc                                           ; $5376: $d0

	nop                                              ; $5377: $00
	ld hl, $01ee                                     ; $5378: $21 $ee $01
	sub e                                            ; $537b: $93
	inc l                                            ; $537c: $2c
	inc h                                            ; $537d: $24
	inc l                                            ; $537e: $2c
	inc h                                            ; $537f: $24
	ldh a, [$f0]                                     ; $5380: $f0 $f0
	ldh [$e0], a                                     ; $5382: $e0 $e0
	ld a, [bc]                                       ; $5384: $0a
	ld [$0406], sp                                   ; $5385: $08 $06 $04
	db $dd                                           ; $5388: $dd
	jr nz, jr_020_540a                               ; $5389: $20 $7f

	ldh a, [c]                                       ; $538b: $f2
	add l                                            ; $538c: $85
	dec hl                                           ; $538d: $2b
	inc hl                                           ; $538e: $23
	ret nc                                           ; $538f: $d0

	ret nc                                           ; $5390: $d0

	ldh a, [$f0]                                     ; $5391: $f0 $f0
	ld [bc], a                                       ; $5393: $02
	nop                                              ; $5394: $00
	ld c, $0c                                        ; $5395: $0e $0c
	jr nz, jr_020_53ba                               ; $5397: $20 $21

	jr nz, @+$22                                     ; $5399: $20 $20

	dec hl                                           ; $539b: $2b
	inc hl                                           ; $539c: $23
	dec hl                                           ; $539d: $2b
	inc hl                                           ; $539e: $23
	ldh [$e0], a                                     ; $539f: $e0 $e0
	ret nc                                           ; $53a1: $d0

	ret nc                                           ; $53a2: $d0

	ld b, $04                                        ; $53a3: $06 $04
	ld [bc], a                                       ; $53a5: $02
	nop                                              ; $53a6: $00
	sbc $20                                          ; $53a7: $de $20
	sbc d                                            ; $53a9: $9a
	ld hl, $222a                                     ; $53aa: $21 $2a $22
	ld a, [hl+]                                      ; $53ad: $2a
	ld [hl+], a                                      ; $53ae: $22
	ld [hl], a                                       ; $53af: $77
	ret nc                                           ; $53b0: $d0

	sbc l                                            ; $53b1: $9d
	ld [de], a                                       ; $53b2: $12
	db $10                                           ; $53b3: $10
	ld l, a                                          ; $53b4: $6f
	ret nc                                           ; $53b5: $d0

	ld a, a                                          ; $53b6: $7f
	ldh a, [c]                                       ; $53b7: $f2
	sbc l                                            ; $53b8: $9d
	add hl, hl                                       ; $53b9: $29

jr_020_53ba:
	ld hl, $d06f                                     ; $53ba: $21 $6f $d0
	sbc l                                            ; $53bd: $9d
	ld d, $14                                        ; $53be: $16 $14
	ld [hl], a                                       ; $53c0: $77
	ret nc                                           ; $53c1: $d0

	ld a, a                                          ; $53c2: $7f
	ldh a, [c]                                       ; $53c3: $f2
	ld a, a                                          ; $53c4: $7f
	cp $57                                           ; $53c5: $fe $57
	ret nc                                           ; $53c7: $d0

	sbc e                                            ; $53c8: $9b
	jr z, jr_020_53eb                                ; $53c9: $28 $20

	jr z, jr_020_53ed                                ; $53cb: $28 $20

	ld [hl], a                                       ; $53cd: $77
	ret nc                                           ; $53ce: $d0

	sbc e                                            ; $53cf: $9b
	ld [hl+], a                                      ; $53d0: $22
	jr nz, jr_020_53f1                               ; $53d1: $20 $1e

	inc e                                            ; $53d3: $1c
	db $dd                                           ; $53d4: $dd
	jr nz, jr_020_5456                               ; $53d5: $20 $7f

	ldh a, [c]                                       ; $53d7: $f2
	sbc l                                            ; $53d8: $9d

jr_020_53d9:
	daa                                              ; $53d9: $27
	rra                                              ; $53da: $1f
	ld [hl], a                                       ; $53db: $77
	ret nc                                           ; $53dc: $d0

	sbc e                                            ; $53dd: $9b
	ld a, [de]                                       ; $53de: $1a
	jr jr_020_5407                                   ; $53df: $18 $26

	inc h                                            ; $53e1: $24
	ld [hl], a                                       ; $53e2: $77
	ret nc                                           ; $53e3: $d0

	ld a, a                                          ; $53e4: $7f
	ldh a, [c]                                       ; $53e5: $f2
	ld a, a                                          ; $53e6: $7f
	cp $77                                           ; $53e7: $fe $77
	ret nc                                           ; $53e9: $d0

	ld a, a                                          ; $53ea: $7f

jr_020_53eb:
	ldh [c], a                                       ; $53eb: $e2
	ld a, a                                          ; $53ec: $7f

jr_020_53ed:
	xor $77                                          ; $53ed: $ee $77
	ret nc                                           ; $53ef: $d0

	sbc e                                            ; $53f0: $9b

jr_020_53f1:
	dec h                                            ; $53f1: $25
	dec e                                            ; $53f2: $1d
	dec h                                            ; $53f3: $25
	dec e                                            ; $53f4: $1d
	ld d, a                                          ; $53f5: $57
	ld [hl], b                                       ; $53f6: $70
	ld a, a                                          ; $53f7: $7f
	ldh a, [c]                                       ; $53f8: $f2
	sbc l                                            ; $53f9: $9d
	inc h                                            ; $53fa: $24
	inc e                                            ; $53fb: $1c
	ld d, a                                          ; $53fc: $57
	ld [hl], b                                       ; $53fd: $70
	ld a, a                                          ; $53fe: $7f
	ldh a, [c]                                       ; $53ff: $f2
	ld a, a                                          ; $5400: $7f
	cp $57                                           ; $5401: $fe $57
	and b                                            ; $5403: $a0
	sbc e                                            ; $5404: $9b
	inc hl                                           ; $5405: $23
	dec de                                           ; $5406: $1b

jr_020_5407:
	inc hl                                           ; $5407: $23
	dec de                                           ; $5408: $1b
	ld d, a                                          ; $5409: $57

jr_020_540a:
	ld [hl], b                                       ; $540a: $70
	ld a, a                                          ; $540b: $7f
	ldh a, [c]                                       ; $540c: $f2
	sbc l                                            ; $540d: $9d
	ld [hl+], a                                      ; $540e: $22
	ld a, [de]                                       ; $540f: $1a
	ld d, a                                          ; $5410: $57
	ld [hl], b                                       ; $5411: $70
	ld a, a                                          ; $5412: $7f
	ldh a, [c]                                       ; $5413: $f2
	ld a, a                                          ; $5414: $7f
	cp $57                                           ; $5415: $fe $57

jr_020_5417:
	ret nc                                           ; $5417: $d0

	sbc e                                            ; $5418: $9b
	ld hl, $2119                                     ; $5419: $21 $19 $21
	add hl, de                                       ; $541c: $19
	ld d, a                                          ; $541d: $57
	ld [hl], b                                       ; $541e: $70
	ld a, a                                          ; $541f: $7f
	ldh a, [c]                                       ; $5420: $f2
	sbc l                                            ; $5421: $9d
	jr nz, @+$1a                                     ; $5422: $20 $18

	ld l, a                                          ; $5424: $6f
	ld [hl], b                                       ; $5425: $70
	sbc l                                            ; $5426: $9d
	ld a, [hl+]                                      ; $5427: $2a
	jr z, jr_020_54a1                                ; $5428: $28 $77

	ret nc                                           ; $542a: $d0

	ld a, a                                          ; $542b: $7f
	ldh a, [c]                                       ; $542c: $f2
	ld a, a                                          ; $542d: $7f
	cp $57                                           ; $542e: $fe $57
	ld [hl], b                                       ; $5430: $70
	ld [hl], a                                       ; $5431: $77
	ldh a, [rPCM34]                                  ; $5432: $f0 $77
	ret nc                                           ; $5434: $d0

	sbc e                                            ; $5435: $9b
	ld [hl], $34                                     ; $5436: $36 $34
	ld [hl-], a                                      ; $5438: $32
	jr nc, jr_020_5417                               ; $5439: $30 $dc

	jr nz, jr_020_53d9                               ; $543b: $20 $9c

	jr jr_020_545e                                   ; $543d: $18 $1f

	rla                                              ; $543f: $17
	ld [hl], a                                       ; $5440: $77
	ret nc                                           ; $5441: $d0

	sbc h                                            ; $5442: $9c
	ld l, $2c                                        ; $5443: $2e $2c
	ld [hl+], a                                      ; $5445: $22
	ld [hl], a                                       ; $5446: $77
	ldh [c], a                                       ; $5447: $e2
	sbc d                                            ; $5448: $9a
	jr nz, @+$21                                     ; $5449: $20 $1f

	rla                                              ; $544b: $17
	rra                                              ; $544c: $1f
	rla                                              ; $544d: $17
	ld d, a                                          ; $544e: $57
	ret nc                                           ; $544f: $d0

	sbc e                                            ; $5450: $9b
	ld e, $16                                        ; $5451: $1e $16
	ld e, $16                                        ; $5453: $1e $16
	ld [hl], a                                       ; $5455: $77

jr_020_5456:
	ret nc                                           ; $5456: $d0

	ld a, a                                          ; $5457: $7f
	ld [hl+], a                                      ; $5458: $22
	ld l, a                                          ; $5459: $6f
	and b                                            ; $545a: $a0
	ld a, a                                          ; $545b: $7f
	ldh a, [c]                                       ; $545c: $f2
	sbc l                                            ; $545d: $9d

jr_020_545e:
	inc e                                            ; $545e: $1c
	inc d                                            ; $545f: $14
	ld l, a                                          ; $5460: $6f
	and b                                            ; $5461: $a0
	ld a, a                                          ; $5462: $7f
	ld l, $77                                        ; $5463: $2e $77
	ret nc                                           ; $5465: $d0

	ld a, a                                          ; $5466: $7f
	ldh a, [c]                                       ; $5467: $f2
	ld a, a                                          ; $5468: $7f
	cp $57                                           ; $5469: $fe $57
	ld [hl], b                                       ; $546b: $70
	sbc e                                            ; $546c: $9b
	dec de                                           ; $546d: $1b
	inc de                                           ; $546e: $13
	dec de                                           ; $546f: $1b
	inc de                                           ; $5470: $13
	ld [hl], a                                       ; $5471: $77
	ret nc                                           ; $5472: $d0

	ld a, a                                          ; $5473: $7f
	ld [hl+], a                                      ; $5474: $22
	ld l, a                                          ; $5475: $6f
	ld b, b                                          ; $5476: $40
	ld a, a                                          ; $5477: $7f
	ldh a, [c]                                       ; $5478: $f2
	sbc l                                            ; $5479: $9d
	ld a, [de]                                       ; $547a: $1a
	ld [de], a                                       ; $547b: $12
	ld l, a                                          ; $547c: $6f
	ld b, b                                          ; $547d: $40
	ld a, a                                          ; $547e: $7f
	ld l, $77                                        ; $547f: $2e $77
	ret nc                                           ; $5481: $d0

	ld a, a                                          ; $5482: $7f
	ldh a, [c]                                       ; $5483: $f2
	ld a, a                                          ; $5484: $7f
	cp $57                                           ; $5485: $fe $57
	ret nc                                           ; $5487: $d0

	sbc e                                            ; $5488: $9b
	add hl, de                                       ; $5489: $19
	ld de, $1119                                     ; $548a: $11 $19 $11
	ld [hl], a                                       ; $548d: $77
	ret nc                                           ; $548e: $d0

	ld a, a                                          ; $548f: $7f
	ld [hl+], a                                      ; $5490: $22
	ld l, a                                          ; $5491: $6f
	ret nc                                           ; $5492: $d0

	ld a, a                                          ; $5493: $7f
	ldh a, [c]                                       ; $5494: $f2
	sbc l                                            ; $5495: $9d
	jr jr_020_54a8                                   ; $5496: $18 $10

	ld l, a                                          ; $5498: $6f
	ret nc                                           ; $5499: $d0

	ld l, a                                          ; $549a: $6f
	ld [hl], b                                       ; $549b: $70
	ld a, a                                          ; $549c: $7f
	ldh a, [c]                                       ; $549d: $f2
	ld a, a                                          ; $549e: $7f
	cp $57                                           ; $549f: $fe $57

jr_020_54a1:
	ld [hl], b                                       ; $54a1: $70
	sbc e                                            ; $54a2: $9b
	rla                                              ; $54a3: $17
	rrca                                             ; $54a4: $0f
	rla                                              ; $54a5: $17
	rrca                                             ; $54a6: $0f
	ld d, a                                          ; $54a7: $57

jr_020_54a8:
	ld [hl], b                                       ; $54a8: $70
	ld a, a                                          ; $54a9: $7f
	ldh a, [c]                                       ; $54aa: $f2
	sbc l                                            ; $54ab: $9d
	dec d                                            ; $54ac: $15
	dec c                                            ; $54ad: $0d
	ld d, a                                          ; $54ae: $57
	ld [hl], b                                       ; $54af: $70
	ld a, a                                          ; $54b0: $7f
	ldh a, [c]                                       ; $54b1: $f2
	ld a, a                                          ; $54b2: $7f
	cp $57                                           ; $54b3: $fe $57
	and b                                            ; $54b5: $a0
	sbc e                                            ; $54b6: $9b
	inc d                                            ; $54b7: $14
	inc c                                            ; $54b8: $0c
	inc d                                            ; $54b9: $14
	inc c                                            ; $54ba: $0c
	ld d, a                                          ; $54bb: $57
	ld [hl], b                                       ; $54bc: $70
	ld a, a                                          ; $54bd: $7f
	ldh a, [c]                                       ; $54be: $f2
	sbc l                                            ; $54bf: $9d
	inc de                                           ; $54c0: $13
	dec bc                                           ; $54c1: $0b
	ld d, a                                          ; $54c2: $57
	ld [hl], b                                       ; $54c3: $70
	ld a, a                                          ; $54c4: $7f
	ldh a, [c]                                       ; $54c5: $f2
	ld a, a                                          ; $54c6: $7f
	cp $57                                           ; $54c7: $fe $57
	ret nc                                           ; $54c9: $d0

	sbc e                                            ; $54ca: $9b
	ld [de], a                                       ; $54cb: $12
	ld a, [bc]                                       ; $54cc: $0a
	ld [de], a                                       ; $54cd: $12
	ld a, [bc]                                       ; $54ce: $0a
	ld d, a                                          ; $54cf: $57
	ld [hl], b                                       ; $54d0: $70
	ld a, a                                          ; $54d1: $7f
	ldh a, [c]                                       ; $54d2: $f2
	sbc l                                            ; $54d3: $9d
	ld de, $5709                                     ; $54d4: $11 $09 $57
	ld [hl], b                                       ; $54d7: $70
	ld a, a                                          ; $54d8: $7f
	ldh a, [c]                                       ; $54d9: $f2
	ld a, a                                          ; $54da: $7f
	cp $57                                           ; $54db: $fe $57
	ld [hl], b                                       ; $54dd: $70
	sbc e                                            ; $54de: $9b
	db $10                                           ; $54df: $10
	ld [$0810], sp                                   ; $54e0: $08 $10 $08
	ld d, a                                          ; $54e3: $57
	ld [hl], b                                       ; $54e4: $70
	ld a, a                                          ; $54e5: $7f
	ldh a, [c]                                       ; $54e6: $f2
	sbc l                                            ; $54e7: $9d
	ld c, $06                                        ; $54e8: $0e $06
	ld d, a                                          ; $54ea: $57
	ld [hl], b                                       ; $54eb: $70
	ld a, a                                          ; $54ec: $7f
	ldh a, [c]                                       ; $54ed: $f2
	ld a, a                                          ; $54ee: $7f
	cp $57                                           ; $54ef: $fe $57
	and b                                            ; $54f1: $a0
	sbc e                                            ; $54f2: $9b
	dec c                                            ; $54f3: $0d
	dec b                                            ; $54f4: $05
	dec c                                            ; $54f5: $0d
	dec b                                            ; $54f6: $05
	ld d, a                                          ; $54f7: $57
	ld [hl], b                                       ; $54f8: $70
	ld a, a                                          ; $54f9: $7f
	ldh a, [c]                                       ; $54fa: $f2
	sbc l                                            ; $54fb: $9d
	inc c                                            ; $54fc: $0c
	inc b                                            ; $54fd: $04
	ld d, a                                          ; $54fe: $57
	ld [hl], b                                       ; $54ff: $70
	ld a, a                                          ; $5500: $7f
	ldh a, [c]                                       ; $5501: $f2
	ld a, a                                          ; $5502: $7f
	cp $57                                           ; $5503: $fe $57
	ret nc                                           ; $5505: $d0

	sbc e                                            ; $5506: $9b
	dec bc                                           ; $5507: $0b
	inc bc                                           ; $5508: $03
	dec bc                                           ; $5509: $0b
	inc bc                                           ; $550a: $03
	ld d, a                                          ; $550b: $57
	ld [hl], b                                       ; $550c: $70
	ld a, a                                          ; $550d: $7f
	ldh a, [c]                                       ; $550e: $f2
	sbc l                                            ; $550f: $9d
	ld a, [bc]                                       ; $5510: $0a
	ld [bc], a                                       ; $5511: $02
	ld d, a                                          ; $5512: $57
	ld [hl], b                                       ; $5513: $70
	ld a, a                                          ; $5514: $7f
	ldh a, [c]                                       ; $5515: $f2
	ld a, a                                          ; $5516: $7f
	cp $57                                           ; $5517: $fe $57
	ld [hl], b                                       ; $5519: $70
	sbc e                                            ; $551a: $9b
	add hl, bc                                       ; $551b: $09
	ld bc, $0109                                     ; $551c: $01 $09 $01
	ld d, a                                          ; $551f: $57
	ld [hl], b                                       ; $5520: $70
	ld a, a                                          ; $5521: $7f
	ldh a, [c]                                       ; $5522: $f2
	sbc l                                            ; $5523: $9d
	rlca                                             ; $5524: $07
	rst $38                                          ; $5525: $ff
	ld d, a                                          ; $5526: $57
	ld [hl], b                                       ; $5527: $70
	ld a, a                                          ; $5528: $7f
	ldh a, [c]                                       ; $5529: $f2
	ld a, a                                          ; $552a: $7f
	cp $57                                           ; $552b: $fe $57
	and b                                            ; $552d: $a0
	sbc e                                            ; $552e: $9b
	ld b, $fe                                        ; $552f: $06 $fe
	ld b, $fe                                        ; $5531: $06 $fe
	ld d, a                                          ; $5533: $57
	ld [hl], b                                       ; $5534: $70
	ld a, a                                          ; $5535: $7f
	ldh a, [c]                                       ; $5536: $f2
	sbc l                                            ; $5537: $9d
	dec b                                            ; $5538: $05
	db $fd                                           ; $5539: $fd
	ld d, a                                          ; $553a: $57
	ld [hl], b                                       ; $553b: $70
	ld a, a                                          ; $553c: $7f
	ldh a, [c]                                       ; $553d: $f2
	ld a, a                                          ; $553e: $7f
	cp $57                                           ; $553f: $fe $57
	ret nc                                           ; $5541: $d0

	sbc e                                            ; $5542: $9b
	inc b                                            ; $5543: $04
	db $fc                                           ; $5544: $fc
	inc b                                            ; $5545: $04
	db $fc                                           ; $5546: $fc
	ld d, a                                          ; $5547: $57
	ld [hl], b                                       ; $5548: $70
	ld a, a                                          ; $5549: $7f
	ldh a, [c]                                       ; $554a: $f2
	sbc l                                            ; $554b: $9d
	inc bc                                           ; $554c: $03
	ei                                               ; $554d: $fb
	ld d, a                                          ; $554e: $57
	ld [hl], b                                       ; $554f: $70
	ld a, a                                          ; $5550: $7f
	ldh a, [c]                                       ; $5551: $f2
	ld a, a                                          ; $5552: $7f
	cp $57                                           ; $5553: $fe $57
	ld [hl], b                                       ; $5555: $70
	ld [hl], a                                       ; $5556: $77
	ldh a, [rPCM34]                                  ; $5557: $f0 $77
	ret nc                                           ; $5559: $d0

	ld a, l                                          ; $555a: $7d
	ld [hl], d                                       ; $555b: $72
	ld l, a                                          ; $555c: $6f
	ld [hl], b                                       ; $555d: $70
	sub a                                            ; $555e: $97

jr_020_555f:
	inc bc                                           ; $555f: $03
	ret nc                                           ; $5560: $d0

	ld a, [de]                                       ; $5561: $1a
	jr nz, jr_020_555f                               ; $5562: $20 $fb

	ret nc                                           ; $5564: $d0

	jr @+$23                                         ; $5565: $18 $21

	rst JumpTable                                          ; $5567: $c7
	ld bc, $2d93                                     ; $5568: $01 $93 $2d
	dec h                                            ; $556b: $25
	dec l                                            ; $556c: $2d
	dec h                                            ; $556d: $25
	ldh a, [$f0]                                     ; $556e: $f0 $f0
	ldh [$e0], a                                     ; $5570: $e0 $e0
	ld a, [bc]                                       ; $5572: $0a
	ld [$0406], sp                                   ; $5573: $08 $06 $04
	db $dd                                           ; $5576: $dd
	jr nz, jr_020_55f8                               ; $5577: $20 $7f

	ldh a, [c]                                       ; $5579: $f2
	add l                                            ; $557a: $85
	inc l                                            ; $557b: $2c
	inc h                                            ; $557c: $24
	ret nc                                           ; $557d: $d0

	ret nc                                           ; $557e: $d0

	ldh a, [$f0]                                     ; $557f: $f0 $f0
	ld [bc], a                                       ; $5581: $02
	nop                                              ; $5582: $00
	ld c, $0c                                        ; $5583: $0e $0c
	jr nz, jr_020_55a8                               ; $5585: $20 $21

	jr nz, jr_020_55a9                               ; $5587: $20 $20

	inc l                                            ; $5589: $2c
	inc h                                            ; $558a: $24
	inc l                                            ; $558b: $2c
	inc h                                            ; $558c: $24
	ldh [$e0], a                                     ; $558d: $e0 $e0
	ret nc                                           ; $558f: $d0

	ret nc                                           ; $5590: $d0

	ld b, $04                                        ; $5591: $06 $04
	ld [bc], a                                       ; $5593: $02
	nop                                              ; $5594: $00
	sbc $20                                          ; $5595: $de $20
	sbc d                                            ; $5597: $9a
	ld hl, $222a                                     ; $5598: $21 $2a $22
	ld a, [hl+]                                      ; $559b: $2a
	ld [hl+], a                                      ; $559c: $22
	ld [hl], a                                       ; $559d: $77
	ret nc                                           ; $559e: $d0

	sbc e                                            ; $559f: $9b
	ld a, [de]                                       ; $55a0: $1a
	jr jr_020_55b9                                   ; $55a1: $18 $16

	inc d                                            ; $55a3: $14
	db $dd                                           ; $55a4: $dd
	jr nz, jr_020_5626                               ; $55a5: $20 $7f

	ldh a, [c]                                       ; $55a7: $f2

jr_020_55a8:
	sbc l                                            ; $55a8: $9d

jr_020_55a9:
	add hl, hl                                       ; $55a9: $29
	ld hl, $d077                                     ; $55aa: $21 $77 $d0
	sbc e                                            ; $55ad: $9b
	ld [de], a                                       ; $55ae: $12
	db $10                                           ; $55af: $10
	ld e, $1c                                        ; $55b0: $1e $1c
	ld [hl], a                                       ; $55b2: $77
	ret nc                                           ; $55b3: $d0

	ld a, a                                          ; $55b4: $7f
	ldh a, [c]                                       ; $55b5: $f2
	ld a, a                                          ; $55b6: $7f
	cp $77                                           ; $55b7: $fe $77

jr_020_55b9:
	ret nc                                           ; $55b9: $d0

	ld a, a                                          ; $55ba: $7f
	ldh [c], a                                       ; $55bb: $e2
	ld a, a                                          ; $55bc: $7f
	xor $77                                          ; $55bd: $ee $77
	ret nc                                           ; $55bf: $d0

	sbc e                                            ; $55c0: $9b
	jr z, jr_020_55e3                                ; $55c1: $28 $20

	jr z, jr_020_55e5                                ; $55c3: $28 $20

	ld [hl], a                                       ; $55c5: $77
	ret nc                                           ; $55c6: $d0

	sbc l                                            ; $55c7: $9d
	ld [hl+], a                                      ; $55c8: $22
	jr nz, jr_020_563a                               ; $55c9: $20 $6f

	ret nc                                           ; $55cb: $d0

	ld a, a                                          ; $55cc: $7f
	ldh a, [c]                                       ; $55cd: $f2
	sbc l                                            ; $55ce: $9d
	daa                                              ; $55cf: $27
	rra                                              ; $55d0: $1f
	ld l, a                                          ; $55d1: $6f
	ret nc                                           ; $55d2: $d0

	sbc l                                            ; $55d3: $9d
	ld h, $24                                        ; $55d4: $26 $24
	ld [hl], a                                       ; $55d6: $77
	ret nc                                           ; $55d7: $d0

	ld a, a                                          ; $55d8: $7f
	ldh a, [c]                                       ; $55d9: $f2
	ld a, a                                          ; $55da: $7f
	cp $57                                           ; $55db: $fe $57
	and b                                            ; $55dd: $a0
	sbc e                                            ; $55de: $9b
	ld h, $1e                                        ; $55df: $26 $1e
	ld h, $1e                                        ; $55e1: $26 $1e

jr_020_55e3:
	ld d, a                                          ; $55e3: $57
	ld [hl], b                                       ; $55e4: $70

jr_020_55e5:
	ld a, a                                          ; $55e5: $7f
	ldh a, [c]                                       ; $55e6: $f2
	sbc l                                            ; $55e7: $9d
	dec h                                            ; $55e8: $25
	dec e                                            ; $55e9: $1d
	ld d, a                                          ; $55ea: $57
	ld [hl], b                                       ; $55eb: $70
	ld a, a                                          ; $55ec: $7f
	ldh a, [c]                                       ; $55ed: $f2
	ld a, a                                          ; $55ee: $7f
	cp $57                                           ; $55ef: $fe $57
	ret nc                                           ; $55f1: $d0

	sbc e                                            ; $55f2: $9b
	inc hl                                           ; $55f3: $23
	dec de                                           ; $55f4: $1b
	inc hl                                           ; $55f5: $23
	dec de                                           ; $55f6: $1b
	ld d, a                                          ; $55f7: $57

jr_020_55f8:
	ld [hl], b                                       ; $55f8: $70
	ld a, a                                          ; $55f9: $7f

Call_020_55fa:
	ldh a, [c]                                       ; $55fa: $f2
	sbc l                                            ; $55fb: $9d
	ld [hl+], a                                      ; $55fc: $22
	ld a, [de]                                       ; $55fd: $1a
	ld d, a                                          ; $55fe: $57
	ld [hl], b                                       ; $55ff: $70
	ld a, a                                          ; $5600: $7f
	ldh a, [c]                                       ; $5601: $f2
	ld a, a                                          ; $5602: $7f
	cp $57                                           ; $5603: $fe $57
	ld [hl], b                                       ; $5605: $70
	sbc e                                            ; $5606: $9b
	ld hl, $2119                                     ; $5607: $21 $19 $21
	add hl, de                                       ; $560a: $19
	ld d, a                                          ; $560b: $57
	ld [hl], b                                       ; $560c: $70
	ld a, a                                          ; $560d: $7f
	ldh a, [c]                                       ; $560e: $f2
	sbc l                                            ; $560f: $9d
	jr nz, jr_020_562a                               ; $5610: $20 $18

	ld d, a                                          ; $5612: $57
	ld [hl], b                                       ; $5613: $70
	ld a, a                                          ; $5614: $7f
	ldh a, [c]                                       ; $5615: $f2
	ld a, a                                          ; $5616: $7f
	cp $57                                           ; $5617: $fe $57
	and b                                            ; $5619: $a0
	sbc e                                            ; $561a: $9b
	rra                                              ; $561b: $1f
	rla                                              ; $561c: $17
	rra                                              ; $561d: $1f
	rla                                              ; $561e: $17
	ld d, a                                          ; $561f: $57
	ld [hl], b                                       ; $5620: $70
	ld [hl], a                                       ; $5621: $77
	ldh a, [$6f]                                     ; $5622: $f0 $6f
	ld [hl], b                                       ; $5624: $70
	sbc l                                            ; $5625: $9d

jr_020_5626:
	ld a, [hl+]                                      ; $5626: $2a
	jr z, jr_020_56a0                                ; $5627: $28 $77

	ret nc                                           ; $5629: $d0

jr_020_562a:
	ld [hl], a                                       ; $562a: $77
	ldh a, [$37]                                     ; $562b: $f0 $37
	ret nc                                           ; $562d: $d0

	ld a, a                                          ; $562e: $7f
	ldh [c], a                                       ; $562f: $e2
	sbc l                                            ; $5630: $9d
	ld l, $2c                                        ; $5631: $2e $2c
	ld l, a                                          ; $5633: $6f
	ret nc                                           ; $5634: $d0

	sbc l                                            ; $5635: $9d
	ld e, $16                                        ; $5636: $1e $16
	ld d, a                                          ; $5638: $57
	ld b, b                                          ; $5639: $40

jr_020_563a:
	ld a, a                                          ; $563a: $7f
	ldh a, [c]                                       ; $563b: $f2
	ld a, a                                          ; $563c: $7f
	cp $57                                           ; $563d: $fe $57
	ret nc                                           ; $563f: $d0

	sbc e                                            ; $5640: $9b
	inc e                                            ; $5641: $1c
	inc d                                            ; $5642: $14
	inc e                                            ; $5643: $1c
	inc d                                            ; $5644: $14
	ld d, a                                          ; $5645: $57
	ld b, b                                          ; $5646: $40
	ld a, a                                          ; $5647: $7f
	ldh a, [c]                                       ; $5648: $f2
	sbc l                                            ; $5649: $9d
	dec de                                           ; $564a: $1b
	inc de                                           ; $564b: $13
	ld d, a                                          ; $564c: $57
	ld b, b                                          ; $564d: $40
	ld a, a                                          ; $564e: $7f
	ldh a, [c]                                       ; $564f: $f2
	ld a, a                                          ; $5650: $7f
	cp $57                                           ; $5651: $fe $57
	ld b, b                                          ; $5653: $40
	sbc e                                            ; $5654: $9b
	ld a, [de]                                       ; $5655: $1a
	ld [de], a                                       ; $5656: $12
	ld a, [de]                                       ; $5657: $1a
	ld [de], a                                       ; $5658: $12
	ld d, a                                          ; $5659: $57
	ld b, b                                          ; $565a: $40
	ld a, a                                          ; $565b: $7f
	ldh a, [c]                                       ; $565c: $f2
	sbc l                                            ; $565d: $9d
	add hl, de                                       ; $565e: $19
	ld de, $4057                                     ; $565f: $11 $57 $40
	ld a, a                                          ; $5662: $7f
	ldh a, [c]                                       ; $5663: $f2
	ld a, a                                          ; $5664: $7f
	cp $57                                           ; $5665: $fe $57
	and b                                            ; $5667: $a0
	sbc e                                            ; $5668: $9b
	jr jr_020_567b                                   ; $5669: $18 $10

	jr jr_020_567d                                   ; $566b: $18 $10

	ld d, a                                          ; $566d: $57
	ld b, b                                          ; $566e: $40
	ld a, a                                          ; $566f: $7f
	ldh a, [c]                                       ; $5670: $f2
	sbc l                                            ; $5671: $9d
	rla                                              ; $5672: $17
	rrca                                             ; $5673: $0f
	ld d, a                                          ; $5674: $57
	ld [hl], b                                       ; $5675: $70
	ld a, a                                          ; $5676: $7f
	ldh a, [c]                                       ; $5677: $f2
	ld a, a                                          ; $5678: $7f
	cp $57                                           ; $5679: $fe $57

jr_020_567b:
	ret nc                                           ; $567b: $d0

	sbc e                                            ; $567c: $9b

jr_020_567d:
	dec d                                            ; $567d: $15
	dec c                                            ; $567e: $0d
	dec d                                            ; $567f: $15
	dec c                                            ; $5680: $0d
	ld d, a                                          ; $5681: $57
	ld [hl], b                                       ; $5682: $70
	ld a, a                                          ; $5683: $7f
	ldh a, [c]                                       ; $5684: $f2
	sbc l                                            ; $5685: $9d
	inc d                                            ; $5686: $14
	inc c                                            ; $5687: $0c
	ld d, a                                          ; $5688: $57
	ld [hl], b                                       ; $5689: $70
	ld a, a                                          ; $568a: $7f
	ldh a, [c]                                       ; $568b: $f2
	ld a, a                                          ; $568c: $7f
	cp $57                                           ; $568d: $fe $57
	ld [hl], b                                       ; $568f: $70
	sbc e                                            ; $5690: $9b
	inc de                                           ; $5691: $13
	dec bc                                           ; $5692: $0b
	inc de                                           ; $5693: $13
	dec bc                                           ; $5694: $0b
	ld d, a                                          ; $5695: $57
	ld [hl], b                                       ; $5696: $70
	ld a, a                                          ; $5697: $7f
	ldh a, [c]                                       ; $5698: $f2
	sbc l                                            ; $5699: $9d
	ld [de], a                                       ; $569a: $12
	ld a, [bc]                                       ; $569b: $0a
	ld d, a                                          ; $569c: $57
	ld [hl], b                                       ; $569d: $70
	ld a, a                                          ; $569e: $7f
	ldh a, [c]                                       ; $569f: $f2

jr_020_56a0:
	ld a, a                                          ; $56a0: $7f
	cp $57                                           ; $56a1: $fe $57
	and b                                            ; $56a3: $a0
	sbc e                                            ; $56a4: $9b
	ld de, $1109                                     ; $56a5: $11 $09 $11
	add hl, bc                                       ; $56a8: $09
	ld d, a                                          ; $56a9: $57
	ld [hl], b                                       ; $56aa: $70
	ld a, a                                          ; $56ab: $7f
	ldh a, [c]                                       ; $56ac: $f2
	sbc l                                            ; $56ad: $9d
	db $10                                           ; $56ae: $10
	ld [$7057], sp                                   ; $56af: $08 $57 $70
	ld a, a                                          ; $56b2: $7f
	ldh a, [c]                                       ; $56b3: $f2
	ld a, a                                          ; $56b4: $7f
	cp $57                                           ; $56b5: $fe $57
	ret nc                                           ; $56b7: $d0

	sbc e                                            ; $56b8: $9b
	ld c, $06                                        ; $56b9: $0e $06
	ld c, $06                                        ; $56bb: $0e $06
	ld d, a                                          ; $56bd: $57
	ld [hl], b                                       ; $56be: $70
	ld a, a                                          ; $56bf: $7f
	ldh a, [c]                                       ; $56c0: $f2
	sbc l                                            ; $56c1: $9d
	dec c                                            ; $56c2: $0d
	dec b                                            ; $56c3: $05
	ld d, a                                          ; $56c4: $57
	ld [hl], b                                       ; $56c5: $70
	ld a, a                                          ; $56c6: $7f
	ldh a, [c]                                       ; $56c7: $f2
	ld a, a                                          ; $56c8: $7f
	cp $57                                           ; $56c9: $fe $57
	ld [hl], b                                       ; $56cb: $70
	sbc e                                            ; $56cc: $9b
	inc c                                            ; $56cd: $0c
	inc b                                            ; $56ce: $04
	inc c                                            ; $56cf: $0c
	inc b                                            ; $56d0: $04
	ld d, a                                          ; $56d1: $57
	ld [hl], b                                       ; $56d2: $70
	ld a, a                                          ; $56d3: $7f
	ldh a, [c]                                       ; $56d4: $f2
	sbc l                                            ; $56d5: $9d
	dec bc                                           ; $56d6: $0b
	inc bc                                           ; $56d7: $03
	ld d, a                                          ; $56d8: $57
	ld [hl], b                                       ; $56d9: $70
	ld a, a                                          ; $56da: $7f
	ldh a, [c]                                       ; $56db: $f2
	ld a, a                                          ; $56dc: $7f
	cp $57                                           ; $56dd: $fe $57
	and b                                            ; $56df: $a0
	sbc e                                            ; $56e0: $9b
	ld a, [bc]                                       ; $56e1: $0a
	ld [bc], a                                       ; $56e2: $02
	ld a, [bc]                                       ; $56e3: $0a
	ld [bc], a                                       ; $56e4: $02
	ld d, a                                          ; $56e5: $57
	ld [hl], b                                       ; $56e6: $70
	ld a, a                                          ; $56e7: $7f
	ldh a, [c]                                       ; $56e8: $f2
	sbc l                                            ; $56e9: $9d
	add hl, bc                                       ; $56ea: $09
	ld bc, $7057                                     ; $56eb: $01 $57 $70
	ld a, a                                          ; $56ee: $7f
	ldh a, [c]                                       ; $56ef: $f2
	ld a, a                                          ; $56f0: $7f
	cp $57                                           ; $56f1: $fe $57
	ret nc                                           ; $56f3: $d0

	sbc e                                            ; $56f4: $9b
	rlca                                             ; $56f5: $07
	rst $38                                          ; $56f6: $ff
	rlca                                             ; $56f7: $07
	rst $38                                          ; $56f8: $ff
	ld d, a                                          ; $56f9: $57
	ld [hl], b                                       ; $56fa: $70
	ld a, a                                          ; $56fb: $7f
	ldh a, [c]                                       ; $56fc: $f2
	sbc l                                            ; $56fd: $9d
	ld b, $fe                                        ; $56fe: $06 $fe
	ld d, a                                          ; $5700: $57
	ld [hl], b                                       ; $5701: $70
	ld a, a                                          ; $5702: $7f
	ldh a, [c]                                       ; $5703: $f2
	ld a, a                                          ; $5704: $7f
	cp $57                                           ; $5705: $fe $57
	ld [hl], b                                       ; $5707: $70
	sbc e                                            ; $5708: $9b
	dec b                                            ; $5709: $05
	db $fd                                           ; $570a: $fd
	dec b                                            ; $570b: $05
	db $fd                                           ; $570c: $fd
	ld d, a                                          ; $570d: $57
	ld [hl], b                                       ; $570e: $70
	ld a, a                                          ; $570f: $7f

Call_020_5710:
	ldh a, [c]                                       ; $5710: $f2
	sbc l                                            ; $5711: $9d
	inc b                                            ; $5712: $04
	db $fc                                           ; $5713: $fc
	ld d, a                                          ; $5714: $57
	ld [hl], b                                       ; $5715: $70
	ld a, a                                          ; $5716: $7f
	ldh a, [c]                                       ; $5717: $f2
	ld a, a                                          ; $5718: $7f
	cp $57                                           ; $5719: $fe $57
	and b                                            ; $571b: $a0
	sbc e                                            ; $571c: $9b
	inc bc                                           ; $571d: $03
	ei                                               ; $571e: $fb
	inc bc                                           ; $571f: $03
	ei                                               ; $5720: $fb
	ld l, l                                          ; $5721: $6d
	ret nz                                           ; $5722: $c0

	ld l, a                                          ; $5723: $6f
	ld [hl], b                                       ; $5724: $70
	ld a, a                                          ; $5725: $7f

jr_020_5726:
	ld b, e                                          ; $5726: $43
	sbc c                                            ; $5727: $99
	ld [bc], a                                       ; $5728: $02
	jr nz, jr_020_5726                               ; $5729: $20 $fb

	ret nc                                           ; $572b: $d0

	nop                                              ; $572c: $00
	ld hl, $01ba                                     ; $572d: $21 $ba $01
	sub e                                            ; $5730: $93
	inc l                                            ; $5731: $2c
	inc h                                            ; $5732: $24
	inc l                                            ; $5733: $2c
	inc h                                            ; $5734: $24
	ldh a, [$f0]                                     ; $5735: $f0 $f0
	ldh [$e0], a                                     ; $5737: $e0 $e0
	ld a, [bc]                                       ; $5739: $0a
	ld [$0406], sp                                   ; $573a: $08 $06 $04
	db $dd                                           ; $573d: $dd
	jr nz, jr_020_57bf                               ; $573e: $20 $7f

	ldh a, [c]                                       ; $5740: $f2
	add l                                            ; $5741: $85
	dec hl                                           ; $5742: $2b
	inc hl                                           ; $5743: $23
	ret nc                                           ; $5744: $d0

	ret nc                                           ; $5745: $d0

	ldh a, [$f0]                                     ; $5746: $f0 $f0
	ld [bc], a                                       ; $5748: $02
	nop                                              ; $5749: $00
	ld c, $0c                                        ; $574a: $0e $0c
	jr nz, jr_020_576f                               ; $574c: $20 $21

	jr nz, @+$22                                     ; $574e: $20 $20

	dec hl                                           ; $5750: $2b
	inc hl                                           ; $5751: $23
	dec hl                                           ; $5752: $2b
	inc hl                                           ; $5753: $23
	ldh [$e0], a                                     ; $5754: $e0 $e0
	ret nc                                           ; $5756: $d0

	ret nc                                           ; $5757: $d0

	ld b, $04                                        ; $5758: $06 $04
	ld [bc], a                                       ; $575a: $02
	nop                                              ; $575b: $00
	sbc $20                                          ; $575c: $de $20
	sbc d                                            ; $575e: $9a
	ld hl, $222a                                     ; $575f: $21 $2a $22
	ld a, [hl+]                                      ; $5762: $2a
	ld [hl+], a                                      ; $5763: $22
	ld [hl], a                                       ; $5764: $77
	ret nc                                           ; $5765: $d0

	sbc l                                            ; $5766: $9d
	ld [de], a                                       ; $5767: $12
	db $10                                           ; $5768: $10
	ld l, a                                          ; $5769: $6f
	ret nc                                           ; $576a: $d0

	ld a, a                                          ; $576b: $7f
	ldh a, [c]                                       ; $576c: $f2
	sbc l                                            ; $576d: $9d
	add hl, hl                                       ; $576e: $29

jr_020_576f:
	ld hl, $d06f                                     ; $576f: $21 $6f $d0
	sbc l                                            ; $5772: $9d
	ld d, $14                                        ; $5773: $16 $14
	ld [hl], a                                       ; $5775: $77
	ret nc                                           ; $5776: $d0

	ld a, a                                          ; $5777: $7f
	ldh a, [c]                                       ; $5778: $f2
	ld a, a                                          ; $5779: $7f
	cp $57                                           ; $577a: $fe $57
	ret nc                                           ; $577c: $d0

	sbc e                                            ; $577d: $9b
	jr z, jr_020_57a0                                ; $577e: $28 $20

	jr z, jr_020_57a2                                ; $5780: $28 $20

	ld [hl], a                                       ; $5782: $77
	ret nc                                           ; $5783: $d0

	sbc l                                            ; $5784: $9d
	ld a, [de]                                       ; $5785: $1a
	jr jr_020_57f7                                   ; $5786: $18 $6f

	ret nc                                           ; $5788: $d0

	ld a, a                                          ; $5789: $7f
	ldh a, [c]                                       ; $578a: $f2
	sbc l                                            ; $578b: $9d
	daa                                              ; $578c: $27
	rra                                              ; $578d: $1f
	ld l, a                                          ; $578e: $6f
	ret nc                                           ; $578f: $d0

	sbc l                                            ; $5790: $9d
	ld e, $1c                                        ; $5791: $1e $1c
	ld [hl], a                                       ; $5793: $77
	ret nc                                           ; $5794: $d0

	ld a, a                                          ; $5795: $7f
	ldh a, [c]                                       ; $5796: $f2
	ld a, a                                          ; $5797: $7f
	cp $57                                           ; $5798: $fe $57
	ret nc                                           ; $579a: $d0

	sbc e                                            ; $579b: $9b
	dec h                                            ; $579c: $25
	dec e                                            ; $579d: $1d
	dec h                                            ; $579e: $25
	dec e                                            ; $579f: $1d

jr_020_57a0:
	ld d, a                                          ; $57a0: $57
	ld [hl], b                                       ; $57a1: $70

jr_020_57a2:
	ld a, a                                          ; $57a2: $7f
	ldh a, [c]                                       ; $57a3: $f2
	sbc l                                            ; $57a4: $9d
	inc h                                            ; $57a5: $24
	inc e                                            ; $57a6: $1c
	ld d, a                                          ; $57a7: $57
	ld [hl], b                                       ; $57a8: $70
	ld a, a                                          ; $57a9: $7f
	ldh a, [c]                                       ; $57aa: $f2
	ld a, a                                          ; $57ab: $7f
	cp $57                                           ; $57ac: $fe $57
	ret nc                                           ; $57ae: $d0

	sbc e                                            ; $57af: $9b
	inc hl                                           ; $57b0: $23
	dec de                                           ; $57b1: $1b
	inc hl                                           ; $57b2: $23
	dec de                                           ; $57b3: $1b
	ld d, a                                          ; $57b4: $57
	ld [hl], b                                       ; $57b5: $70
	ld a, a                                          ; $57b6: $7f
	ldh a, [c]                                       ; $57b7: $f2
	sbc l                                            ; $57b8: $9d
	ld [hl+], a                                      ; $57b9: $22
	ld a, [de]                                       ; $57ba: $1a
	ld d, a                                          ; $57bb: $57
	ld [hl], b                                       ; $57bc: $70
	ld a, a                                          ; $57bd: $7f
	ldh a, [c]                                       ; $57be: $f2

jr_020_57bf:
	ld a, a                                          ; $57bf: $7f
	cp $57                                           ; $57c0: $fe $57
	ret nc                                           ; $57c2: $d0

	sbc e                                            ; $57c3: $9b
	ld hl, $2119                                     ; $57c4: $21 $19 $21
	add hl, de                                       ; $57c7: $19
	ld d, a                                          ; $57c8: $57
	ld [hl], b                                       ; $57c9: $70
	ld a, a                                          ; $57ca: $7f
	ldh a, [c]                                       ; $57cb: $f2
	sbc l                                            ; $57cc: $9d
	jr nz, jr_020_57e7                               ; $57cd: $20 $18

	ld l, a                                          ; $57cf: $6f
	ret nc                                           ; $57d0: $d0

	sbc [hl]                                         ; $57d1: $9e
	ld [hl+], a                                      ; $57d2: $22
	ld a, e                                          ; $57d3: $7b
	di                                               ; $57d4: $f3
	sbc $20                                          ; $57d5: $de $20
	sbc h                                            ; $57d7: $9c
	jr jr_020_57fa                                   ; $57d8: $18 $20

	jr jr_020_5833                                   ; $57da: $18 $57

	ret nc                                           ; $57dc: $d0

	sbc e                                            ; $57dd: $9b
	rra                                              ; $57de: $1f
	rla                                              ; $57df: $17
	rra                                              ; $57e0: $1f
	rla                                              ; $57e1: $17
	ld d, a                                          ; $57e2: $57
	ret nc                                           ; $57e3: $d0

	ld a, a                                          ; $57e4: $7f
	ldh a, [c]                                       ; $57e5: $f2
	sbc l                                            ; $57e6: $9d

jr_020_57e7:
	ld e, $16                                        ; $57e7: $1e $16
	ld d, a                                          ; $57e9: $57
	ld b, b                                          ; $57ea: $40
	ld a, a                                          ; $57eb: $7f
	ldh a, [c]                                       ; $57ec: $f2
	ld a, a                                          ; $57ed: $7f
	cp $57                                           ; $57ee: $fe $57
	ret nc                                           ; $57f0: $d0

	sbc e                                            ; $57f1: $9b
	inc e                                            ; $57f2: $1c
	inc d                                            ; $57f3: $14
	inc e                                            ; $57f4: $1c
	inc d                                            ; $57f5: $14
	ld d, a                                          ; $57f6: $57

jr_020_57f7:
	ld b, b                                          ; $57f7: $40
	ld a, a                                          ; $57f8: $7f
	ldh a, [c]                                       ; $57f9: $f2

jr_020_57fa:
	sbc l                                            ; $57fa: $9d
	dec de                                           ; $57fb: $1b
	inc de                                           ; $57fc: $13
	ld d, a                                          ; $57fd: $57
	ld b, b                                          ; $57fe: $40
	ld a, a                                          ; $57ff: $7f
	ldh a, [c]                                       ; $5800: $f2
	ld a, a                                          ; $5801: $7f
	cp $57                                           ; $5802: $fe $57
	ret nc                                           ; $5804: $d0

	sbc e                                            ; $5805: $9b
	ld a, [de]                                       ; $5806: $1a
	ld [de], a                                       ; $5807: $12
	ld a, [de]                                       ; $5808: $1a
	ld [de], a                                       ; $5809: $12
	ld d, a                                          ; $580a: $57
	ld b, b                                          ; $580b: $40
	ld a, a                                          ; $580c: $7f
	ldh a, [c]                                       ; $580d: $f2
	sbc l                                            ; $580e: $9d
	add hl, de                                       ; $580f: $19
	ld de, $4057                                     ; $5810: $11 $57 $40
	ld a, a                                          ; $5813: $7f
	ldh a, [c]                                       ; $5814: $f2
	ld a, a                                          ; $5815: $7f
	cp $57                                           ; $5816: $fe $57
	ret nc                                           ; $5818: $d0

	sbc e                                            ; $5819: $9b
	jr jr_020_582c                                   ; $581a: $18 $10

	jr jr_020_582e                                   ; $581c: $18 $10

	ld d, a                                          ; $581e: $57
	ld [hl], b                                       ; $581f: $70
	ld a, a                                          ; $5820: $7f
	ldh a, [c]                                       ; $5821: $f2
	sbc l                                            ; $5822: $9d
	rla                                              ; $5823: $17
	rrca                                             ; $5824: $0f
	ld d, a                                          ; $5825: $57
	ld [hl], b                                       ; $5826: $70
	ld a, a                                          ; $5827: $7f
	ldh a, [c]                                       ; $5828: $f2
	ld a, a                                          ; $5829: $7f
	cp $57                                           ; $582a: $fe $57

jr_020_582c:
	ret nc                                           ; $582c: $d0

	sbc e                                            ; $582d: $9b

jr_020_582e:
	dec d                                            ; $582e: $15
	dec c                                            ; $582f: $0d
	dec d                                            ; $5830: $15
	dec c                                            ; $5831: $0d
	ld d, a                                          ; $5832: $57

jr_020_5833:
	ld [hl], b                                       ; $5833: $70
	ld a, a                                          ; $5834: $7f
	ldh a, [c]                                       ; $5835: $f2
	sbc l                                            ; $5836: $9d
	inc d                                            ; $5837: $14
	inc c                                            ; $5838: $0c
	ld d, a                                          ; $5839: $57
	ld [hl], b                                       ; $583a: $70
	ld a, a                                          ; $583b: $7f
	ldh a, [c]                                       ; $583c: $f2
	ld a, a                                          ; $583d: $7f
	cp $57                                           ; $583e: $fe $57
	ret nc                                           ; $5840: $d0

	sbc e                                            ; $5841: $9b
	inc de                                           ; $5842: $13
	dec bc                                           ; $5843: $0b
	inc de                                           ; $5844: $13
	dec bc                                           ; $5845: $0b
	ld d, a                                          ; $5846: $57
	ld [hl], b                                       ; $5847: $70
	ld a, a                                          ; $5848: $7f
	ldh a, [c]                                       ; $5849: $f2
	sbc l                                            ; $584a: $9d
	ld [de], a                                       ; $584b: $12
	ld a, [bc]                                       ; $584c: $0a
	ld d, a                                          ; $584d: $57
	ld [hl], b                                       ; $584e: $70
	ld a, a                                          ; $584f: $7f
	ldh a, [c]                                       ; $5850: $f2
	ld a, a                                          ; $5851: $7f
	cp $57                                           ; $5852: $fe $57
	ret nc                                           ; $5854: $d0

	sbc e                                            ; $5855: $9b
	ld de, $1109                                     ; $5856: $11 $09 $11
	add hl, bc                                       ; $5859: $09
	ld d, a                                          ; $585a: $57
	ld [hl], b                                       ; $585b: $70
	ld a, a                                          ; $585c: $7f
	ldh a, [c]                                       ; $585d: $f2
	sbc l                                            ; $585e: $9d
	db $10                                           ; $585f: $10
	ld [$7057], sp                                   ; $5860: $08 $57 $70
	ld a, a                                          ; $5863: $7f
	ldh a, [c]                                       ; $5864: $f2
	ld a, a                                          ; $5865: $7f
	cp $57                                           ; $5866: $fe $57
	ret nc                                           ; $5868: $d0

	sbc e                                            ; $5869: $9b
	ld c, $06                                        ; $586a: $0e $06
	ld c, $06                                        ; $586c: $0e $06
	ld d, a                                          ; $586e: $57
	ld [hl], b                                       ; $586f: $70
	ld a, a                                          ; $5870: $7f
	ldh a, [c]                                       ; $5871: $f2
	sbc l                                            ; $5872: $9d
	dec c                                            ; $5873: $0d
	dec b                                            ; $5874: $05
	ld d, a                                          ; $5875: $57
	ld [hl], b                                       ; $5876: $70
	ld a, a                                          ; $5877: $7f
	ldh a, [c]                                       ; $5878: $f2
	ld a, a                                          ; $5879: $7f
	cp $57                                           ; $587a: $fe $57
	ret nc                                           ; $587c: $d0

	sbc e                                            ; $587d: $9b
	inc c                                            ; $587e: $0c

Call_020_587f:
	inc b                                            ; $587f: $04
	inc c                                            ; $5880: $0c
	inc b                                            ; $5881: $04
	ld d, a                                          ; $5882: $57
	ld [hl], b                                       ; $5883: $70
	ld a, a                                          ; $5884: $7f
	ldh a, [c]                                       ; $5885: $f2
	sbc l                                            ; $5886: $9d
	dec bc                                           ; $5887: $0b
	inc bc                                           ; $5888: $03
	ld d, a                                          ; $5889: $57
	ld [hl], b                                       ; $588a: $70
	ld a, a                                          ; $588b: $7f
	ldh a, [c]                                       ; $588c: $f2
	ld a, a                                          ; $588d: $7f
	cp $57                                           ; $588e: $fe $57
	ret nc                                           ; $5890: $d0

	sbc e                                            ; $5891: $9b
	ld a, [bc]                                       ; $5892: $0a
	ld [bc], a                                       ; $5893: $02
	ld a, [bc]                                       ; $5894: $0a
	ld [bc], a                                       ; $5895: $02
	ld d, a                                          ; $5896: $57
	ld [hl], b                                       ; $5897: $70
	ld a, a                                          ; $5898: $7f
	ldh a, [c]                                       ; $5899: $f2
	sbc l                                            ; $589a: $9d
	add hl, bc                                       ; $589b: $09
	ld bc, $7057                                     ; $589c: $01 $57 $70
	ld a, a                                          ; $589f: $7f
	ldh a, [c]                                       ; $58a0: $f2
	ld a, a                                          ; $58a1: $7f
	cp $57                                           ; $58a2: $fe $57
	ret nc                                           ; $58a4: $d0

	sbc e                                            ; $58a5: $9b
	rlca                                             ; $58a6: $07
	rst $38                                          ; $58a7: $ff
	rlca                                             ; $58a8: $07
	rst $38                                          ; $58a9: $ff
	ld d, a                                          ; $58aa: $57
	ld [hl], b                                       ; $58ab: $70
	ld a, a                                          ; $58ac: $7f
	ldh a, [c]                                       ; $58ad: $f2
	sbc l                                            ; $58ae: $9d
	ld b, $fe                                        ; $58af: $06 $fe
	ld d, a                                          ; $58b1: $57
	ld [hl], b                                       ; $58b2: $70
	ld a, a                                          ; $58b3: $7f
	ldh a, [c]                                       ; $58b4: $f2
	ld a, a                                          ; $58b5: $7f
	cp $57                                           ; $58b6: $fe $57
	ret nc                                           ; $58b8: $d0

	sbc e                                            ; $58b9: $9b
	dec b                                            ; $58ba: $05
	db $fd                                           ; $58bb: $fd
	dec b                                            ; $58bc: $05
	db $fd                                           ; $58bd: $fd
	ld d, a                                          ; $58be: $57
	ld [hl], b                                       ; $58bf: $70
	ld a, a                                          ; $58c0: $7f
	ldh a, [c]                                       ; $58c1: $f2
	sbc l                                            ; $58c2: $9d
	inc b                                            ; $58c3: $04
	db $fc                                           ; $58c4: $fc
	ld d, a                                          ; $58c5: $57
	ld [hl], b                                       ; $58c6: $70
	ld a, a                                          ; $58c7: $7f
	ldh a, [c]                                       ; $58c8: $f2
	ld a, a                                          ; $58c9: $7f
	cp $57                                           ; $58ca: $fe $57
	ret nc                                           ; $58cc: $d0

	sbc e                                            ; $58cd: $9b
	inc bc                                           ; $58ce: $03
	ei                                               ; $58cf: $fb
	inc bc                                           ; $58d0: $03
	ei                                               ; $58d1: $fb
	ld d, a                                          ; $58d2: $57
	ld [hl], b                                       ; $58d3: $70
	ld [hl], a                                       ; $58d4: $77
	ldh a, [rHDMA5]                                  ; $58d5: $f0 $55
	sub b                                            ; $58d7: $90
	ld [hl], a                                       ; $58d8: $77
	ldh a, [$37]                                     ; $58d9: $f0 $37
	ret nc                                           ; $58db: $d0

	sbc e                                            ; $58dc: $9b
	ld l, $2c                                        ; $58dd: $2e $2c
	ld a, [hl+]                                      ; $58df: $2a
	jr z, jr_020_5939                                ; $58e0: $28 $57

	ret nc                                           ; $58e2: $d0

	sbc l                                            ; $58e3: $9d
	ld h, $24                                        ; $58e4: $26 $24
	cpl                                              ; $58e6: $2f
	ret nc                                           ; $58e7: $d0

	ld a, [bc]                                       ; $58e8: $0a
	ld e, c                                          ; $58e9: $59
	inc hl                                           ; $58ea: $23
	ld e, c                                          ; $58eb: $59
	jr nc, jr_020_5947                               ; $58ec: $30 $59

	ld c, b                                          ; $58ee: $48
	ld e, c                                          ; $58ef: $59
	ld c, a                                          ; $58f0: $4f
	ld e, c                                          ; $58f1: $59
	ld e, e                                          ; $58f2: $5b
	ld e, c                                          ; $58f3: $59
	push hl                                          ; $58f4: $e5
	ld e, c                                          ; $58f5: $59
	ld e, l                                          ; $58f6: $5d
	ld e, d                                          ; $58f7: $5a
	db $e4                                           ; $58f8: $e4
	ld e, d                                          ; $58f9: $5a
	ld e, a                                          ; $58fa: $5f
	ld e, e                                          ; $58fb: $5b
	db $e3                                           ; $58fc: $e3
	ld e, e                                          ; $58fd: $5b
	ld h, h                                          ; $58fe: $64
	ld e, h                                          ; $58ff: $5c
	pop af                                           ; $5900: $f1
	ld e, h                                          ; $5901: $5c
	ld l, h                                          ; $5902: $6c
	ld e, l                                          ; $5903: $5d
	ldh a, [$5d]                                     ; $5904: $f0 $5d
	ld l, e                                          ; $5906: $6b
	ld e, [hl]                                       ; $5907: $5e
	ld [hl], a                                       ; $5908: $77
	ld e, [hl]                                       ; $5909: $5e
	ld [$0373], sp                                   ; $590a: $08 $73 $03
	inc b                                            ; $590d: $04
	rlca                                             ; $590e: $07
	inc b                                            ; $590f: $04
	ld [bc], a                                       ; $5910: $02
	sbc a                                            ; $5911: $9f
	inc b                                            ; $5912: $04
	inc b                                            ; $5913: $04
	scf                                              ; $5914: $37
	dec b                                            ; $5915: $05
	ld [$05cf], sp                                   ; $5916: $08 $cf $05
	inc b                                            ; $5919: $04
	scf                                              ; $591a: $37
	dec b                                            ; $591b: $05
	ld [bc], a                                       ; $591c: $02
	sbc a                                            ; $591d: $9f
	inc b                                            ; $591e: $04
	inc b                                            ; $591f: $04
	rlca                                             ; $5920: $07
	inc b                                            ; $5921: $04
	rst $38                                          ; $5922: $ff
	dec b                                            ; $5923: $05
	add e                                            ; $5924: $83
	inc bc                                           ; $5925: $03
	dec b                                            ; $5926: $05
	and e                                            ; $5927: $a3
	inc bc                                           ; $5928: $03
	dec b                                            ; $5929: $05
	rst JumpTable                                          ; $592a: $c7
	inc bc                                           ; $592b: $03
	dec b                                            ; $592c: $05
	and e                                            ; $592d: $a3
	inc bc                                           ; $592e: $03
	rst $38                                          ; $592f: $ff
	ld [$0383], sp                                   ; $5930: $08 $83 $03
	add hl, bc                                       ; $5933: $09
	and e                                            ; $5934: $a3
	inc bc                                           ; $5935: $03
	add hl, bc                                       ; $5936: $09
	rst JumpTable                                          ; $5937: $c7
	inc bc                                           ; $5938: $03

jr_020_5939:
	inc de                                           ; $5939: $13
	rst SubAFromDE                                          ; $593a: $df
	inc bc                                           ; $593b: $03
	ld [$03f7], sp                                   ; $593c: $08 $f7 $03
	ld [$0413], sp                                   ; $593f: $08 $13 $04
	ld [$042f], sp                                   ; $5942: $08 $2f $04
	nop                                              ; $5945: $00
	cpl                                              ; $5946: $2f

jr_020_5947:
	inc b                                            ; $5947: $04
	inc de                                           ; $5948: $13
	ld c, a                                          ; $5949: $4f
	inc b                                            ; $594a: $04
	inc de                                           ; $594b: $13
	cpl                                              ; $594c: $2f
	inc b                                            ; $594d: $04
	rst $38                                          ; $594e: $ff
	ld a, [bc]                                       ; $594f: $0a
	ld c, a                                          ; $5950: $4f
	inc b                                            ; $5951: $04
	ld a, [bc]                                       ; $5952: $0a
	ld l, e                                          ; $5953: $6b
	inc b                                            ; $5954: $04
	jr nc, @-$77                                     ; $5955: $30 $87

	inc b                                            ; $5957: $04
	nop                                              ; $5958: $00
	add a                                            ; $5959: $87
	inc b                                            ; $595a: $04
	dec b                                            ; $595b: $05
	and e                                            ; $595c: $a3
	inc b                                            ; $595d: $04
	dec b                                            ; $595e: $05
	cp e                                             ; $595f: $bb
	inc b                                            ; $5960: $04
	dec b                                            ; $5961: $05
	db $d3                                           ; $5962: $d3
	inc b                                            ; $5963: $04
	dec b                                            ; $5964: $05
	db $eb                                           ; $5965: $eb
	inc b                                            ; $5966: $04
	dec b                                            ; $5967: $05
	inc bc                                           ; $5968: $03
	dec b                                            ; $5969: $05
	dec b                                            ; $596a: $05
	dec de                                           ; $596b: $1b
	dec b                                            ; $596c: $05
	dec b                                            ; $596d: $05
	inc sp                                           ; $596e: $33
	dec b                                            ; $596f: $05
	dec b                                            ; $5970: $05
	ld c, e                                          ; $5971: $4b
	dec b                                            ; $5972: $05
	dec b                                            ; $5973: $05
	ld h, e                                          ; $5974: $63
	dec b                                            ; $5975: $05
	dec b                                            ; $5976: $05
	ld a, e                                          ; $5977: $7b
	dec b                                            ; $5978: $05
	dec b                                            ; $5979: $05
	sub e                                            ; $597a: $93
	dec b                                            ; $597b: $05
	inc h                                            ; $597c: $24
	xor e                                            ; $597d: $ab
	dec b                                            ; $597e: $05
	dec b                                            ; $597f: $05
	jp $0505                                         ; $5980: $c3 $05 $05


	db $db                                           ; $5983: $db
	dec b                                            ; $5984: $05
	dec b                                            ; $5985: $05
	di                                               ; $5986: $f3
	dec b                                            ; $5987: $05
	dec b                                            ; $5988: $05
	dec bc                                           ; $5989: $0b
	ld b, $05                                        ; $598a: $06 $05
	inc hl                                           ; $598c: $23
	ld b, $05                                        ; $598d: $06 $05
	dec sp                                           ; $598f: $3b
	ld b, $05                                        ; $5990: $06 $05
	ld d, e                                          ; $5992: $53
	ld b, $05                                        ; $5993: $06 $05
	ld l, e                                          ; $5995: $6b
	ld b, $05                                        ; $5996: $06 $05
	add e                                            ; $5998: $83
	ld b, $05                                        ; $5999: $06 $05
	sbc e                                            ; $599b: $9b
	ld b, $05                                        ; $599c: $06 $05
	or e                                             ; $599e: $b3
	ld b, $05                                        ; $599f: $06 $05
	rlc [hl]                                         ; $59a1: $cb $06
	dec b                                            ; $59a3: $05
	db $e3                                           ; $59a4: $e3
	ld b, $05                                        ; $59a5: $06 $05
	ei                                               ; $59a7: $fb
	ld b, $05                                        ; $59a8: $06 $05
	inc de                                           ; $59aa: $13
	rlca                                             ; $59ab: $07
	dec b                                            ; $59ac: $05
	dec hl                                           ; $59ad: $2b
	rlca                                             ; $59ae: $07
	dec b                                            ; $59af: $05
	ld b, e                                          ; $59b0: $43
	rlca                                             ; $59b1: $07
	dec b                                            ; $59b2: $05
	ld e, e                                          ; $59b3: $5b
	rlca                                             ; $59b4: $07
	dec b                                            ; $59b5: $05
	ld [hl], e                                       ; $59b6: $73
	rlca                                             ; $59b7: $07
	dec b                                            ; $59b8: $05
	adc e                                            ; $59b9: $8b
	rlca                                             ; $59ba: $07
	dec b                                            ; $59bb: $05
	and e                                            ; $59bc: $a3
	rlca                                             ; $59bd: $07
	dec b                                            ; $59be: $05
	cp e                                             ; $59bf: $bb
	rlca                                             ; $59c0: $07
	dec b                                            ; $59c1: $05
	db $d3                                           ; $59c2: $d3
	rlca                                             ; $59c3: $07
	dec b                                            ; $59c4: $05
	db $eb                                           ; $59c5: $eb
	rlca                                             ; $59c6: $07
	dec b                                            ; $59c7: $05
	inc bc                                           ; $59c8: $03
	ld [$1b05], sp                                   ; $59c9: $08 $05 $1b
	ld [$3305], sp                                   ; $59cc: $08 $05 $33
	ld [$4b05], sp                                   ; $59cf: $08 $05 $4b
	ld [$6305], sp                                   ; $59d2: $08 $05 $63
	ld [$7b05], sp                                   ; $59d5: $08 $05 $7b
	ld [$9305], sp                                   ; $59d8: $08 $05 $93
	ld [$ab05], sp                                   ; $59db: $08 $05 $ab
	ld [$c324], sp                                   ; $59de: $08 $24 $c3
	ld [$c300], sp                                   ; $59e1: $08 $00 $c3
	ld [$a305], sp                                   ; $59e4: $08 $05 $a3
	inc b                                            ; $59e7: $04
	dec b                                            ; $59e8: $05
	or a                                             ; $59e9: $b7
	inc b                                            ; $59ea: $04
	dec b                                            ; $59eb: $05
	rlc h                                            ; $59ec: $cb $04
	dec b                                            ; $59ee: $05
	rst SubAFromDE                                          ; $59ef: $df
	inc b                                            ; $59f0: $04
	dec b                                            ; $59f1: $05
	di                                               ; $59f2: $f3
	inc b                                            ; $59f3: $04
	dec b                                            ; $59f4: $05
	rlca                                             ; $59f5: $07
	dec b                                            ; $59f6: $05
	dec b                                            ; $59f7: $05
	dec de                                           ; $59f8: $1b
	dec b                                            ; $59f9: $05
	dec b                                            ; $59fa: $05
	cpl                                              ; $59fb: $2f
	dec b                                            ; $59fc: $05
	dec b                                            ; $59fd: $05
	ld b, e                                          ; $59fe: $43
	dec b                                            ; $59ff: $05
	dec b                                            ; $5a00: $05
	ld d, a                                          ; $5a01: $57
	dec b                                            ; $5a02: $05
	dec b                                            ; $5a03: $05
	ld l, e                                          ; $5a04: $6b
	dec b                                            ; $5a05: $05
	dec b                                            ; $5a06: $05
	ld a, a                                          ; $5a07: $7f
	dec b                                            ; $5a08: $05
	dec b                                            ; $5a09: $05
	sub e                                            ; $5a0a: $93
	dec b                                            ; $5a0b: $05
	dec b                                            ; $5a0c: $05
	and a                                            ; $5a0d: $a7
	dec b                                            ; $5a0e: $05
	dec b                                            ; $5a0f: $05
	cp e                                             ; $5a10: $bb
	dec b                                            ; $5a11: $05
	daa                                              ; $5a12: $27
	rst GetHLinHL                                          ; $5a13: $cf
	dec b                                            ; $5a14: $05
	rlca                                             ; $5a15: $07
	db $e3                                           ; $5a16: $e3
	dec b                                            ; $5a17: $05
	rlca                                             ; $5a18: $07
	rst GetHLinHL                                          ; $5a19: $cf
	dec b                                            ; $5a1a: $05
	rla                                              ; $5a1b: $17
	db $e3                                           ; $5a1c: $e3
	dec b                                            ; $5a1d: $05
	ld [$05f7], sp                                   ; $5a1e: $08 $f7 $05
	add hl, bc                                       ; $5a21: $09
	dec bc                                           ; $5a22: $0b
	ld b, $35                                        ; $5a23: $06 $35
	rra                                              ; $5a25: $1f
	ld b, $05                                        ; $5a26: $06 $05
	inc sp                                           ; $5a28: $33
	ld b, $05                                        ; $5a29: $06 $05
	ld b, a                                          ; $5a2b: $47
	ld b, $05                                        ; $5a2c: $06 $05
	ld e, e                                          ; $5a2e: $5b
	ld b, $05                                        ; $5a2f: $06 $05
	ld l, a                                          ; $5a31: $6f
	ld b, $05                                        ; $5a32: $06 $05
	add e                                            ; $5a34: $83
	ld b, $05                                        ; $5a35: $06 $05
	sub a                                            ; $5a37: $97
	ld b, $05                                        ; $5a38: $06 $05
	xor e                                            ; $5a3a: $ab
	ld b, $05                                        ; $5a3b: $06 $05
	cp a                                             ; $5a3d: $bf
	ld b, $05                                        ; $5a3e: $06 $05
	db $d3                                           ; $5a40: $d3
	ld b, $05                                        ; $5a41: $06 $05
	rst SubAFromBC                                          ; $5a43: $e7
	ld b, $05                                        ; $5a44: $06 $05
	ei                                               ; $5a46: $fb
	ld b, $05                                        ; $5a47: $06 $05
	rrca                                             ; $5a49: $0f
	rlca                                             ; $5a4a: $07
	dec b                                            ; $5a4b: $05
	inc hl                                           ; $5a4c: $23
	rlca                                             ; $5a4d: $07
	dec b                                            ; $5a4e: $05
	scf                                              ; $5a4f: $37
	rlca                                             ; $5a50: $07
	dec b                                            ; $5a51: $05
	ld c, e                                          ; $5a52: $4b
	rlca                                             ; $5a53: $07
	dec b                                            ; $5a54: $05
	ld e, a                                          ; $5a55: $5f
	rlca                                             ; $5a56: $07
	dec b                                            ; $5a57: $05
	ld [hl], e                                       ; $5a58: $73
	rlca                                             ; $5a59: $07
	nop                                              ; $5a5a: $00
	ld [hl], e                                       ; $5a5b: $73
	rlca                                             ; $5a5c: $07
	dec b                                            ; $5a5d: $05
	and e                                            ; $5a5e: $a3
	inc b                                            ; $5a5f: $04
	dec b                                            ; $5a60: $05
	cp e                                             ; $5a61: $bb
	inc b                                            ; $5a62: $04
	dec b                                            ; $5a63: $05
	db $d3                                           ; $5a64: $d3
	inc b                                            ; $5a65: $04
	dec b                                            ; $5a66: $05
	db $eb                                           ; $5a67: $eb
	inc b                                            ; $5a68: $04
	dec b                                            ; $5a69: $05
	inc bc                                           ; $5a6a: $03
	dec b                                            ; $5a6b: $05
	dec b                                            ; $5a6c: $05
	dec de                                           ; $5a6d: $1b
	dec b                                            ; $5a6e: $05
	dec b                                            ; $5a6f: $05
	inc sp                                           ; $5a70: $33
	dec b                                            ; $5a71: $05
	dec b                                            ; $5a72: $05
	ld c, e                                          ; $5a73: $4b
	dec b                                            ; $5a74: $05
	dec b                                            ; $5a75: $05
	ld h, e                                          ; $5a76: $63
	dec b                                            ; $5a77: $05
	dec b                                            ; $5a78: $05
	ld a, e                                          ; $5a79: $7b
	dec b                                            ; $5a7a: $05
	dec b                                            ; $5a7b: $05
	sub e                                            ; $5a7c: $93
	dec b                                            ; $5a7d: $05
	dec b                                            ; $5a7e: $05
	xor e                                            ; $5a7f: $ab
	dec b                                            ; $5a80: $05
	dec b                                            ; $5a81: $05
	jp $0505                                         ; $5a82: $c3 $05 $05


	db $db                                           ; $5a85: $db
	dec b                                            ; $5a86: $05
	db $10                                           ; $5a87: $10
	di                                               ; $5a88: $f3
	dec b                                            ; $5a89: $05
	inc b                                            ; $5a8a: $04
	dec bc                                           ; $5a8b: $0b
	ld b, $04                                        ; $5a8c: $06 $04
	inc hl                                           ; $5a8e: $23
	ld b, $04                                        ; $5a8f: $06 $04
	dec sp                                           ; $5a91: $3b
	ld b, $34                                        ; $5a92: $06 $34
	ld d, e                                          ; $5a94: $53
	ld b, $05                                        ; $5a95: $06 $05
	ld l, e                                          ; $5a97: $6b
	ld b, $05                                        ; $5a98: $06 $05
	add e                                            ; $5a9a: $83
	ld b, $05                                        ; $5a9b: $06 $05
	sbc e                                            ; $5a9d: $9b
	ld b, $05                                        ; $5a9e: $06 $05
	or e                                             ; $5aa0: $b3
	ld b, $05                                        ; $5aa1: $06 $05
	rlc [hl]                                         ; $5aa3: $cb $06
	dec b                                            ; $5aa5: $05
	db $e3                                           ; $5aa6: $e3
	ld b, $05                                        ; $5aa7: $06 $05
	ei                                               ; $5aa9: $fb
	ld b, $05                                        ; $5aaa: $06 $05
	inc de                                           ; $5aac: $13
	rlca                                             ; $5aad: $07
	dec b                                            ; $5aae: $05
	dec hl                                           ; $5aaf: $2b
	rlca                                             ; $5ab0: $07
	dec b                                            ; $5ab1: $05
	ld b, e                                          ; $5ab2: $43
	rlca                                             ; $5ab3: $07
	dec b                                            ; $5ab4: $05
	ld e, e                                          ; $5ab5: $5b
	rlca                                             ; $5ab6: $07
	dec b                                            ; $5ab7: $05
	ld [hl], e                                       ; $5ab8: $73
	rlca                                             ; $5ab9: $07
	dec b                                            ; $5aba: $05
	adc e                                            ; $5abb: $8b
	rlca                                             ; $5abc: $07
	dec b                                            ; $5abd: $05
	and e                                            ; $5abe: $a3
	rlca                                             ; $5abf: $07
	dec b                                            ; $5ac0: $05
	cp e                                             ; $5ac1: $bb
	rlca                                             ; $5ac2: $07
	dec b                                            ; $5ac3: $05
	db $d3                                           ; $5ac4: $d3
	rlca                                             ; $5ac5: $07
	dec b                                            ; $5ac6: $05
	db $eb                                           ; $5ac7: $eb
	rlca                                             ; $5ac8: $07
	dec b                                            ; $5ac9: $05
	inc bc                                           ; $5aca: $03
	ld [$1b05], sp                                   ; $5acb: $08 $05 $1b
	ld [$3305], sp                                   ; $5ace: $08 $05 $33
	ld [$4b05], sp                                   ; $5ad1: $08 $05 $4b
	ld [$6305], sp                                   ; $5ad4: $08 $05 $63
	ld [$7b05], sp                                   ; $5ad7: $08 $05 $7b
	ld [$9305], sp                                   ; $5ada: $08 $05 $93
	ld [$ab05], sp                                   ; $5add: $08 $05 $ab
	ld [$ab00], sp                                   ; $5ae0: $08 $00 $ab
	ld [$a305], sp                                   ; $5ae3: $08 $05 $a3
	inc b                                            ; $5ae6: $04
	dec b                                            ; $5ae7: $05
	cp e                                             ; $5ae8: $bb
	inc b                                            ; $5ae9: $04
	dec b                                            ; $5aea: $05
	db $d3                                           ; $5aeb: $d3
	inc b                                            ; $5aec: $04
	dec b                                            ; $5aed: $05
	db $eb                                           ; $5aee: $eb
	inc b                                            ; $5aef: $04
	dec b                                            ; $5af0: $05
	inc bc                                           ; $5af1: $03
	dec b                                            ; $5af2: $05
	dec b                                            ; $5af3: $05
	dec de                                           ; $5af4: $1b
	dec b                                            ; $5af5: $05
	dec b                                            ; $5af6: $05
	inc sp                                           ; $5af7: $33
	dec b                                            ; $5af8: $05
	dec b                                            ; $5af9: $05
	ld c, e                                          ; $5afa: $4b
	dec b                                            ; $5afb: $05
	dec b                                            ; $5afc: $05
	ld h, e                                          ; $5afd: $63
	dec b                                            ; $5afe: $05
	dec b                                            ; $5aff: $05
	ld a, e                                          ; $5b00: $7b
	dec b                                            ; $5b01: $05
	dec b                                            ; $5b02: $05
	sub e                                            ; $5b03: $93
	dec b                                            ; $5b04: $05
	dec b                                            ; $5b05: $05
	xor e                                            ; $5b06: $ab
	dec b                                            ; $5b07: $05
	dec b                                            ; $5b08: $05
	jp $0505                                         ; $5b09: $c3 $05 $05


	db $db                                           ; $5b0c: $db
	dec b                                            ; $5b0d: $05
	dec b                                            ; $5b0e: $05
	di                                               ; $5b0f: $f3

Call_020_5b10:
	dec b                                            ; $5b10: $05
	dec b                                            ; $5b11: $05
	dec bc                                           ; $5b12: $0b
	ld b, $05                                        ; $5b13: $06 $05
	inc hl                                           ; $5b15: $23
	ld b, $05                                        ; $5b16: $06 $05
	dec sp                                           ; $5b18: $3b
	ld b, $05                                        ; $5b19: $06 $05
	ld d, e                                          ; $5b1b: $53
	ld b, $05                                        ; $5b1c: $06 $05
	ld l, e                                          ; $5b1e: $6b
	ld b, $05                                        ; $5b1f: $06 $05
	add e                                            ; $5b21: $83
	ld b, $05                                        ; $5b22: $06 $05
	sbc e                                            ; $5b24: $9b
	ld b, $05                                        ; $5b25: $06 $05
	or e                                             ; $5b27: $b3
	ld b, $05                                        ; $5b28: $06 $05
	rlc [hl]                                         ; $5b2a: $cb $06
	dec b                                            ; $5b2c: $05
	db $e3                                           ; $5b2d: $e3
	ld b, $05                                        ; $5b2e: $06 $05
	ei                                               ; $5b30: $fb
	ld b, $05                                        ; $5b31: $06 $05
	inc de                                           ; $5b33: $13
	rlca                                             ; $5b34: $07
	dec b                                            ; $5b35: $05
	dec hl                                           ; $5b36: $2b
	rlca                                             ; $5b37: $07
	dec b                                            ; $5b38: $05
	ld b, e                                          ; $5b39: $43
	rlca                                             ; $5b3a: $07
	dec b                                            ; $5b3b: $05
	ld e, e                                          ; $5b3c: $5b
	rlca                                             ; $5b3d: $07
	dec b                                            ; $5b3e: $05
	ld [hl], e                                       ; $5b3f: $73
	rlca                                             ; $5b40: $07
	dec b                                            ; $5b41: $05
	adc e                                            ; $5b42: $8b
	rlca                                             ; $5b43: $07
	dec b                                            ; $5b44: $05
	and e                                            ; $5b45: $a3
	rlca                                             ; $5b46: $07
	dec b                                            ; $5b47: $05
	cp e                                             ; $5b48: $bb
	rlca                                             ; $5b49: $07
	dec b                                            ; $5b4a: $05
	db $d3                                           ; $5b4b: $d3
	rlca                                             ; $5b4c: $07
	dec b                                            ; $5b4d: $05
	db $eb                                           ; $5b4e: $eb
	rlca                                             ; $5b4f: $07
	dec a                                            ; $5b50: $3d
	inc bc                                           ; $5b51: $03
	ld [$1b07], sp                                   ; $5b52: $08 $07 $1b
	ld [$3307], sp                                   ; $5b55: $08 $07 $33
	ld [$4b07], sp                                   ; $5b58: $08 $07 $4b
	ld [$4b00], sp                                   ; $5b5b: $08 $00 $4b
	ld [$a304], sp                                   ; $5b5e: $08 $04 $a3
	inc b                                            ; $5b61: $04
	inc b                                            ; $5b62: $04
	cp e                                             ; $5b63: $bb
	inc b                                            ; $5b64: $04
	inc b                                            ; $5b65: $04
	db $d3                                           ; $5b66: $d3
	inc b                                            ; $5b67: $04
	inc b                                            ; $5b68: $04
	db $eb                                           ; $5b69: $eb
	inc b                                            ; $5b6a: $04
	inc b                                            ; $5b6b: $04

jr_020_5b6c:
	inc bc                                           ; $5b6c: $03
	dec b                                            ; $5b6d: $05
	inc b                                            ; $5b6e: $04
	dec de                                           ; $5b6f: $1b
	dec b                                            ; $5b70: $05
	inc b                                            ; $5b71: $04
	inc sp                                           ; $5b72: $33
	dec b                                            ; $5b73: $05
	inc b                                            ; $5b74: $04
	ld c, e                                          ; $5b75: $4b
	dec b                                            ; $5b76: $05
	inc b                                            ; $5b77: $04
	ld h, e                                          ; $5b78: $63
	dec b                                            ; $5b79: $05
	inc b                                            ; $5b7a: $04
	ld a, e                                          ; $5b7b: $7b
	dec b                                            ; $5b7c: $05
	inc b                                            ; $5b7d: $04
	sub e                                            ; $5b7e: $93
	dec b                                            ; $5b7f: $05
	add hl, bc                                       ; $5b80: $09
	xor e                                            ; $5b81: $ab
	dec b                                            ; $5b82: $05
	add hl, bc                                       ; $5b83: $09
	jp $0905                                         ; $5b84: $c3 $05 $09


	xor e                                            ; $5b87: $ab
	dec b                                            ; $5b88: $05
	add hl, bc                                       ; $5b89: $09
	jp $0905                                         ; $5b8a: $c3 $05 $09


	xor e                                            ; $5b8d: $ab
	dec b                                            ; $5b8e: $05
	jr nz, jr_020_5b6c                               ; $5b8f: $20 $db

	dec b                                            ; $5b91: $05
	inc b                                            ; $5b92: $04
	di                                               ; $5b93: $f3
	dec b                                            ; $5b94: $05
	inc b                                            ; $5b95: $04
	dec bc                                           ; $5b96: $0b
	ld b, $04                                        ; $5b97: $06 $04
	inc hl                                           ; $5b99: $23
	ld b, $04                                        ; $5b9a: $06 $04

Call_020_5b9c:
	dec sp                                           ; $5b9c: $3b
	ld b, $04                                        ; $5b9d: $06 $04
	ld d, e                                          ; $5b9f: $53
	ld b, $04                                        ; $5ba0: $06 $04
	ld l, e                                          ; $5ba2: $6b
	ld b, $04                                        ; $5ba3: $06 $04
	add e                                            ; $5ba5: $83
	ld b, $04                                        ; $5ba6: $06 $04
	sbc e                                            ; $5ba8: $9b
	ld b, $04                                        ; $5ba9: $06 $04
	or e                                             ; $5bab: $b3
	ld b, $04                                        ; $5bac: $06 $04
	rlc [hl]                                         ; $5bae: $cb $06
	inc b                                            ; $5bb0: $04
	db $e3                                           ; $5bb1: $e3
	ld b, $04                                        ; $5bb2: $06 $04
	ei                                               ; $5bb4: $fb
	ld b, $04                                        ; $5bb5: $06 $04
	inc de                                           ; $5bb7: $13
	rlca                                             ; $5bb8: $07
	inc b                                            ; $5bb9: $04
	dec hl                                           ; $5bba: $2b
	rlca                                             ; $5bbb: $07
	inc b                                            ; $5bbc: $04
	ld b, e                                          ; $5bbd: $43
	rlca                                             ; $5bbe: $07
	inc b                                            ; $5bbf: $04
	ld e, e                                          ; $5bc0: $5b
	rlca                                             ; $5bc1: $07
	inc b                                            ; $5bc2: $04
	ld [hl], e                                       ; $5bc3: $73
	rlca                                             ; $5bc4: $07
	inc b                                            ; $5bc5: $04
	adc e                                            ; $5bc6: $8b
	rlca                                             ; $5bc7: $07
	inc b                                            ; $5bc8: $04
	and e                                            ; $5bc9: $a3
	rlca                                             ; $5bca: $07
	inc b                                            ; $5bcb: $04
	cp e                                             ; $5bcc: $bb
	rlca                                             ; $5bcd: $07
	inc b                                            ; $5bce: $04
	db $d3                                           ; $5bcf: $d3
	rlca                                             ; $5bd0: $07
	inc b                                            ; $5bd1: $04
	db $eb                                           ; $5bd2: $eb
	rlca                                             ; $5bd3: $07
	inc b                                            ; $5bd4: $04
	inc bc                                           ; $5bd5: $03
	ld [$1b04], sp                                   ; $5bd6: $08 $04 $1b
	ld [$3304], sp                                   ; $5bd9: $08 $04 $33
	ld [$4b04], sp                                   ; $5bdc: $08 $04 $4b
	ld [$4b00], sp                                   ; $5bdf: $08 $00 $4b
	ld [$a304], sp                                   ; $5be2: $08 $04 $a3
	inc b                                            ; $5be5: $04
	inc b                                            ; $5be6: $04
	cp e                                             ; $5be7: $bb
	inc b                                            ; $5be8: $04
	inc b                                            ; $5be9: $04
	db $d3                                           ; $5bea: $d3
	inc b                                            ; $5beb: $04
	inc b                                            ; $5bec: $04
	db $eb                                           ; $5bed: $eb
	inc b                                            ; $5bee: $04
	inc b                                            ; $5bef: $04
	inc bc                                           ; $5bf0: $03
	dec b                                            ; $5bf1: $05
	inc b                                            ; $5bf2: $04
	dec de                                           ; $5bf3: $1b
	dec b                                            ; $5bf4: $05
	inc b                                            ; $5bf5: $04
	inc sp                                           ; $5bf6: $33
	dec b                                            ; $5bf7: $05
	inc b                                            ; $5bf8: $04
	ld c, e                                          ; $5bf9: $4b
	dec b                                            ; $5bfa: $05
	inc b                                            ; $5bfb: $04
	ld h, e                                          ; $5bfc: $63
	dec b                                            ; $5bfd: $05
	inc b                                            ; $5bfe: $04
	ld a, e                                          ; $5bff: $7b
	dec b                                            ; $5c00: $05
	inc b                                            ; $5c01: $04
	sub e                                            ; $5c02: $93
	dec b                                            ; $5c03: $05
	inc b                                            ; $5c04: $04
	xor e                                            ; $5c05: $ab
	dec b                                            ; $5c06: $05
	inc b                                            ; $5c07: $04
	jp $2705                                         ; $5c08: $c3 $05 $27


	db $db                                           ; $5c0b: $db
	dec b                                            ; $5c0c: $05
	ld b, $f3                                        ; $5c0d: $06 $f3
	dec b                                            ; $5c0f: $05
	dec de                                           ; $5c10: $1b
	dec bc                                           ; $5c11: $0b
	ld b, $17                                        ; $5c12: $06 $17
	inc hl                                           ; $5c14: $23
	ld b, $04                                        ; $5c15: $06 $04
	dec sp                                           ; $5c17: $3b
	ld b, $04                                        ; $5c18: $06 $04
	ld d, e                                          ; $5c1a: $53
	ld b, $04                                        ; $5c1b: $06 $04
	ld l, e                                          ; $5c1d: $6b
	ld b, $04                                        ; $5c1e: $06 $04
	add e                                            ; $5c20: $83
	ld b, $04                                        ; $5c21: $06 $04
	sbc e                                            ; $5c23: $9b
	ld b, $04                                        ; $5c24: $06 $04
	or e                                             ; $5c26: $b3
	ld b, $04                                        ; $5c27: $06 $04
	rlc [hl]                                         ; $5c29: $cb $06
	inc b                                            ; $5c2b: $04
	db $e3                                           ; $5c2c: $e3
	ld b, $04                                        ; $5c2d: $06 $04
	ei                                               ; $5c2f: $fb
	ld b, $04                                        ; $5c30: $06 $04
	inc de                                           ; $5c32: $13
	rlca                                             ; $5c33: $07
	inc b                                            ; $5c34: $04
	dec hl                                           ; $5c35: $2b
	rlca                                             ; $5c36: $07
	inc b                                            ; $5c37: $04
	ld b, e                                          ; $5c38: $43
	rlca                                             ; $5c39: $07
	inc b                                            ; $5c3a: $04
	ld e, e                                          ; $5c3b: $5b
	rlca                                             ; $5c3c: $07
	inc b                                            ; $5c3d: $04
	ld [hl], e                                       ; $5c3e: $73
	rlca                                             ; $5c3f: $07
	inc b                                            ; $5c40: $04
	adc e                                            ; $5c41: $8b
	rlca                                             ; $5c42: $07
	inc b                                            ; $5c43: $04
	and e                                            ; $5c44: $a3
	rlca                                             ; $5c45: $07
	inc b                                            ; $5c46: $04
	cp e                                             ; $5c47: $bb
	rlca                                             ; $5c48: $07
	inc b                                            ; $5c49: $04
	db $d3                                           ; $5c4a: $d3
	rlca                                             ; $5c4b: $07
	inc b                                            ; $5c4c: $04
	db $eb                                           ; $5c4d: $eb
	rlca                                             ; $5c4e: $07
	inc b                                            ; $5c4f: $04
	inc bc                                           ; $5c50: $03
	ld [$1b04], sp                                   ; $5c51: $08 $04 $1b
	ld [$3304], sp                                   ; $5c54: $08 $04 $33
	ld [$4b04], sp                                   ; $5c57: $08 $04 $4b
	ld [$6304], sp                                   ; $5c5a: $08 $04 $63
	ld [$7b04], sp                                   ; $5c5d: $08 $04 $7b
	ld [$7b00], sp                                   ; $5c60: $08 $00 $7b
	ld [$a305], sp                                   ; $5c63: $08 $05 $a3
	inc b                                            ; $5c66: $04
	dec b                                            ; $5c67: $05
	cp e                                             ; $5c68: $bb
	inc b                                            ; $5c69: $04
	dec b                                            ; $5c6a: $05
	db $d3                                           ; $5c6b: $d3
	inc b                                            ; $5c6c: $04
	dec b                                            ; $5c6d: $05
	db $eb                                           ; $5c6e: $eb
	inc b                                            ; $5c6f: $04
	dec b                                            ; $5c70: $05
	inc bc                                           ; $5c71: $03
	dec b                                            ; $5c72: $05
	dec b                                            ; $5c73: $05
	dec de                                           ; $5c74: $1b
	dec b                                            ; $5c75: $05
	dec b                                            ; $5c76: $05
	inc sp                                           ; $5c77: $33
	dec b                                            ; $5c78: $05
	dec b                                            ; $5c79: $05
	ld c, e                                          ; $5c7a: $4b
	dec b                                            ; $5c7b: $05
	dec b                                            ; $5c7c: $05
	ld h, e                                          ; $5c7d: $63
	dec b                                            ; $5c7e: $05
	dec b                                            ; $5c7f: $05
	ld a, e                                          ; $5c80: $7b
	dec b                                            ; $5c81: $05
	dec b                                            ; $5c82: $05
	sub e                                            ; $5c83: $93
	dec b                                            ; $5c84: $05
	dec b                                            ; $5c85: $05
	xor e                                            ; $5c86: $ab
	dec b                                            ; $5c87: $05
	dec b                                            ; $5c88: $05
	jp $1605                                         ; $5c89: $c3 $05 $16


	db $db                                           ; $5c8c: $db
	dec b                                            ; $5c8d: $05
	add hl, bc                                       ; $5c8e: $09
	di                                               ; $5c8f: $f3
	dec b                                            ; $5c90: $05
	dec bc                                           ; $5c91: $0b
	dec bc                                           ; $5c92: $0b
	ld b, $1b                                        ; $5c93: $06 $1b
	inc hl                                           ; $5c95: $23
	ld b, $0b                                        ; $5c96: $06 $0b
	dec bc                                           ; $5c98: $0b
	ld b, $05                                        ; $5c99: $06 $05
	di                                               ; $5c9b: $f3
	dec b                                            ; $5c9c: $05
	dec b                                            ; $5c9d: $05
	db $db                                           ; $5c9e: $db
	dec b                                            ; $5c9f: $05
	dec b                                            ; $5ca0: $05
	dec sp                                           ; $5ca1: $3b
	ld b, $05                                        ; $5ca2: $06 $05
	ld d, e                                          ; $5ca4: $53
	ld b, $05                                        ; $5ca5: $06 $05
	ld l, e                                          ; $5ca7: $6b
	ld b, $05                                        ; $5ca8: $06 $05
	add e                                            ; $5caa: $83
	ld b, $05                                        ; $5cab: $06 $05
	sbc e                                            ; $5cad: $9b
	ld b, $05                                        ; $5cae: $06 $05
	or e                                             ; $5cb0: $b3
	ld b, $05                                        ; $5cb1: $06 $05
	rlc [hl]                                         ; $5cb3: $cb $06
	dec b                                            ; $5cb5: $05
	db $e3                                           ; $5cb6: $e3
	ld b, $05                                        ; $5cb7: $06 $05
	ei                                               ; $5cb9: $fb
	ld b, $05                                        ; $5cba: $06 $05
	inc de                                           ; $5cbc: $13
	rlca                                             ; $5cbd: $07
	dec b                                            ; $5cbe: $05
	dec hl                                           ; $5cbf: $2b
	rlca                                             ; $5cc0: $07
	dec b                                            ; $5cc1: $05
	ld b, e                                          ; $5cc2: $43
	rlca                                             ; $5cc3: $07
	dec b                                            ; $5cc4: $05
	ld e, e                                          ; $5cc5: $5b
	rlca                                             ; $5cc6: $07
	dec b                                            ; $5cc7: $05
	ld [hl], e                                       ; $5cc8: $73
	rlca                                             ; $5cc9: $07
	dec b                                            ; $5cca: $05
	adc e                                            ; $5ccb: $8b
	rlca                                             ; $5ccc: $07
	dec b                                            ; $5ccd: $05
	and e                                            ; $5cce: $a3
	rlca                                             ; $5ccf: $07
	dec b                                            ; $5cd0: $05
	cp e                                             ; $5cd1: $bb
	rlca                                             ; $5cd2: $07
	dec b                                            ; $5cd3: $05
	db $d3                                           ; $5cd4: $d3
	rlca                                             ; $5cd5: $07
	dec b                                            ; $5cd6: $05
	db $eb                                           ; $5cd7: $eb
	rlca                                             ; $5cd8: $07
	dec b                                            ; $5cd9: $05
	inc bc                                           ; $5cda: $03
	ld [$1b05], sp                                   ; $5cdb: $08 $05 $1b
	ld [$3305], sp                                   ; $5cde: $08 $05 $33
	ld [$4b05], sp                                   ; $5ce1: $08 $05 $4b
	ld [$6305], sp                                   ; $5ce4: $08 $05 $63
	ld [$7b05], sp                                   ; $5ce7: $08 $05 $7b
	ld [$9305], sp                                   ; $5cea: $08 $05 $93
	ld [$9300], sp                                   ; $5ced: $08 $00 $93
	ld [$a304], sp                                   ; $5cf0: $08 $04 $a3
	inc b                                            ; $5cf3: $04
	inc b                                            ; $5cf4: $04
	cp e                                             ; $5cf5: $bb
	inc b                                            ; $5cf6: $04
	inc b                                            ; $5cf7: $04
	db $d3                                           ; $5cf8: $d3
	inc b                                            ; $5cf9: $04
	inc b                                            ; $5cfa: $04
	db $eb                                           ; $5cfb: $eb
	inc b                                            ; $5cfc: $04
	inc b                                            ; $5cfd: $04
	inc bc                                           ; $5cfe: $03
	dec b                                            ; $5cff: $05
	inc b                                            ; $5d00: $04
	dec de                                           ; $5d01: $1b
	dec b                                            ; $5d02: $05
	inc b                                            ; $5d03: $04
	inc sp                                           ; $5d04: $33
	dec b                                            ; $5d05: $05
	inc b                                            ; $5d06: $04
	ld c, e                                          ; $5d07: $4b
	dec b                                            ; $5d08: $05
	inc b                                            ; $5d09: $04
	ld h, e                                          ; $5d0a: $63
	dec b                                            ; $5d0b: $05
	inc b                                            ; $5d0c: $04
	ld a, e                                          ; $5d0d: $7b
	dec b                                            ; $5d0e: $05
	inc b                                            ; $5d0f: $04
	sub e                                            ; $5d10: $93
	dec b                                            ; $5d11: $05
	inc d                                            ; $5d12: $14
	xor e                                            ; $5d13: $ab
	dec b                                            ; $5d14: $05
	ld a, [de]                                       ; $5d15: $1a
	jp $1405                                         ; $5d16: $c3 $05 $14


	xor e                                            ; $5d19: $ab
	dec b                                            ; $5d1a: $05
	inc b                                            ; $5d1b: $04
	db $db                                           ; $5d1c: $db
	dec b                                            ; $5d1d: $05
	inc b                                            ; $5d1e: $04
	di                                               ; $5d1f: $f3
	dec b                                            ; $5d20: $05
	inc b                                            ; $5d21: $04
	dec bc                                           ; $5d22: $0b
	ld b, $04                                        ; $5d23: $06 $04
	inc hl                                           ; $5d25: $23
	ld b, $04                                        ; $5d26: $06 $04
	dec sp                                           ; $5d28: $3b
	ld b, $04                                        ; $5d29: $06 $04
	ld d, e                                          ; $5d2b: $53
	ld b, $04                                        ; $5d2c: $06 $04
	ld l, e                                          ; $5d2e: $6b
	ld b, $04                                        ; $5d2f: $06 $04
	add e                                            ; $5d31: $83
	ld b, $04                                        ; $5d32: $06 $04
	sbc e                                            ; $5d34: $9b
	ld b, $04                                        ; $5d35: $06 $04
	or e                                             ; $5d37: $b3
	ld b, $04                                        ; $5d38: $06 $04
	rlc [hl]                                         ; $5d3a: $cb $06
	inc b                                            ; $5d3c: $04
	db $e3                                           ; $5d3d: $e3
	ld b, $04                                        ; $5d3e: $06 $04
	ei                                               ; $5d40: $fb
	ld b, $04                                        ; $5d41: $06 $04
	inc de                                           ; $5d43: $13
	rlca                                             ; $5d44: $07
	inc b                                            ; $5d45: $04
	dec hl                                           ; $5d46: $2b
	rlca                                             ; $5d47: $07
	inc b                                            ; $5d48: $04
	ld b, e                                          ; $5d49: $43
	rlca                                             ; $5d4a: $07
	inc b                                            ; $5d4b: $04
	ld e, e                                          ; $5d4c: $5b
	rlca                                             ; $5d4d: $07
	inc b                                            ; $5d4e: $04
	ld [hl], e                                       ; $5d4f: $73
	rlca                                             ; $5d50: $07
	inc b                                            ; $5d51: $04
	adc e                                            ; $5d52: $8b
	rlca                                             ; $5d53: $07
	inc b                                            ; $5d54: $04
	and e                                            ; $5d55: $a3
	rlca                                             ; $5d56: $07
	inc b                                            ; $5d57: $04
	cp e                                             ; $5d58: $bb
	rlca                                             ; $5d59: $07
	inc b                                            ; $5d5a: $04
	db $d3                                           ; $5d5b: $d3
	rlca                                             ; $5d5c: $07
	inc b                                            ; $5d5d: $04
	db $eb                                           ; $5d5e: $eb
	rlca                                             ; $5d5f: $07
	inc b                                            ; $5d60: $04
	inc bc                                           ; $5d61: $03
	ld [$1b04], sp                                   ; $5d62: $08 $04 $1b
	ld [$3304], sp                                   ; $5d65: $08 $04 $33
	ld [$3300], sp                                   ; $5d68: $08 $00 $33
	ld [$a302], sp                                   ; $5d6b: $08 $02 $a3
	inc b                                            ; $5d6e: $04
	ld [bc], a                                       ; $5d6f: $02
	cp e                                             ; $5d70: $bb
	inc b                                            ; $5d71: $04
	ld [bc], a                                       ; $5d72: $02
	db $d3                                           ; $5d73: $d3
	inc b                                            ; $5d74: $04
	ld [bc], a                                       ; $5d75: $02
	db $eb                                           ; $5d76: $eb
	inc b                                            ; $5d77: $04
	ld [bc], a                                       ; $5d78: $02
	inc bc                                           ; $5d79: $03
	dec b                                            ; $5d7a: $05
	ld [bc], a                                       ; $5d7b: $02
	dec de                                           ; $5d7c: $1b
	dec b                                            ; $5d7d: $05
	ld [bc], a                                       ; $5d7e: $02
	inc sp                                           ; $5d7f: $33
	dec b                                            ; $5d80: $05
	ld [bc], a                                       ; $5d81: $02
	ld c, e                                          ; $5d82: $4b
	dec b                                            ; $5d83: $05
	ld [bc], a                                       ; $5d84: $02
	ld h, e                                          ; $5d85: $63
	dec b                                            ; $5d86: $05
	ld [bc], a                                       ; $5d87: $02
	ld a, e                                          ; $5d88: $7b
	dec b                                            ; $5d89: $05
	ld [bc], a                                       ; $5d8a: $02
	sub e                                            ; $5d8b: $93
	dec b                                            ; $5d8c: $05
	ld [bc], a                                       ; $5d8d: $02
	xor e                                            ; $5d8e: $ab
	dec b                                            ; $5d8f: $05
	ld [bc], a                                       ; $5d90: $02
	jp $1105                                         ; $5d91: $c3 $05 $11


	db $db                                           ; $5d94: $db
	dec b                                            ; $5d95: $05
	ld de, $05f3                                     ; $5d96: $11 $f3 $05
	ld de, $05db                                     ; $5d99: $11 $db $05
	ld de, $05f3                                     ; $5d9c: $11 $f3 $05
	ld de, $05db                                     ; $5d9f: $11 $db $05
	ld de, $05f3                                     ; $5da2: $11 $f3 $05
	ld [bc], a                                       ; $5da5: $02
	dec bc                                           ; $5da6: $0b
	ld b, $02                                        ; $5da7: $06 $02
	inc hl                                           ; $5da9: $23
	ld b, $02                                        ; $5daa: $06 $02
	dec sp                                           ; $5dac: $3b
	ld b, $02                                        ; $5dad: $06 $02
	ld d, e                                          ; $5daf: $53
	ld b, $02                                        ; $5db0: $06 $02
	ld l, e                                          ; $5db2: $6b
	ld b, $02                                        ; $5db3: $06 $02
	add e                                            ; $5db5: $83
	ld b, $02                                        ; $5db6: $06 $02
	sbc e                                            ; $5db8: $9b
	ld b, $02                                        ; $5db9: $06 $02
	or e                                             ; $5dbb: $b3
	ld b, $02                                        ; $5dbc: $06 $02
	rlc [hl]                                         ; $5dbe: $cb $06
	ld [bc], a                                       ; $5dc0: $02
	db $e3                                           ; $5dc1: $e3
	ld b, $02                                        ; $5dc2: $06 $02
	ei                                               ; $5dc4: $fb
	ld b, $02                                        ; $5dc5: $06 $02
	inc de                                           ; $5dc7: $13
	rlca                                             ; $5dc8: $07
	ld [bc], a                                       ; $5dc9: $02
	dec hl                                           ; $5dca: $2b
	rlca                                             ; $5dcb: $07
	ld [bc], a                                       ; $5dcc: $02
	ld b, e                                          ; $5dcd: $43
	rlca                                             ; $5dce: $07
	ld [bc], a                                       ; $5dcf: $02
	ld e, e                                          ; $5dd0: $5b
	rlca                                             ; $5dd1: $07
	ld [bc], a                                       ; $5dd2: $02
	ld [hl], e                                       ; $5dd3: $73
	rlca                                             ; $5dd4: $07
	ld [bc], a                                       ; $5dd5: $02
	adc e                                            ; $5dd6: $8b
	rlca                                             ; $5dd7: $07
	ld [bc], a                                       ; $5dd8: $02
	and e                                            ; $5dd9: $a3
	rlca                                             ; $5dda: $07
	ld [bc], a                                       ; $5ddb: $02
	cp e                                             ; $5ddc: $bb
	rlca                                             ; $5ddd: $07
	ld [bc], a                                       ; $5dde: $02
	db $d3                                           ; $5ddf: $d3
	rlca                                             ; $5de0: $07
	ld [bc], a                                       ; $5de1: $02
	db $eb                                           ; $5de2: $eb
	rlca                                             ; $5de3: $07
	ld [bc], a                                       ; $5de4: $02
	inc bc                                           ; $5de5: $03
	ld [$1b02], sp                                   ; $5de6: $08 $02 $1b
	ld [$3302], sp                                   ; $5de9: $08 $02 $33
	ld [$3300], sp                                   ; $5dec: $08 $00 $33
	ld [$a304], sp                                   ; $5def: $08 $04 $a3
	inc b                                            ; $5df2: $04
	inc b                                            ; $5df3: $04
	cp e                                             ; $5df4: $bb
	inc b                                            ; $5df5: $04
	inc b                                            ; $5df6: $04
	db $d3                                           ; $5df7: $d3
	inc b                                            ; $5df8: $04
	inc b                                            ; $5df9: $04
	db $eb                                           ; $5dfa: $eb
	inc b                                            ; $5dfb: $04
	inc b                                            ; $5dfc: $04
	inc bc                                           ; $5dfd: $03
	dec b                                            ; $5dfe: $05
	inc b                                            ; $5dff: $04
	dec de                                           ; $5e00: $1b
	dec b                                            ; $5e01: $05
	inc b                                            ; $5e02: $04
	inc sp                                           ; $5e03: $33
	dec b                                            ; $5e04: $05
	inc b                                            ; $5e05: $04
	ld c, e                                          ; $5e06: $4b
	dec b                                            ; $5e07: $05
	inc b                                            ; $5e08: $04
	ld h, e                                          ; $5e09: $63
	dec b                                            ; $5e0a: $05
	ld b, $7b                                        ; $5e0b: $06 $7b
	dec b                                            ; $5e0d: $05
	ld b, $93                                        ; $5e0e: $06 $93
	dec b                                            ; $5e10: $05
	rra                                              ; $5e11: $1f
	xor e                                            ; $5e12: $ab
	dec b                                            ; $5e13: $05
	ld b, $c3                                        ; $5e14: $06 $c3
	dec b                                            ; $5e16: $05
	inc b                                            ; $5e17: $04
	db $db                                           ; $5e18: $db
	dec b                                            ; $5e19: $05
	inc b                                            ; $5e1a: $04
	di                                               ; $5e1b: $f3
	dec b                                            ; $5e1c: $05
	inc b                                            ; $5e1d: $04
	dec bc                                           ; $5e1e: $0b
	ld b, $04                                        ; $5e1f: $06 $04
	inc hl                                           ; $5e21: $23
	ld b, $04                                        ; $5e22: $06 $04
	dec sp                                           ; $5e24: $3b
	ld b, $04                                        ; $5e25: $06 $04
	ld d, e                                          ; $5e27: $53
	ld b, $04                                        ; $5e28: $06 $04
	ld l, e                                          ; $5e2a: $6b
	ld b, $04                                        ; $5e2b: $06 $04
	add e                                            ; $5e2d: $83
	ld b, $04                                        ; $5e2e: $06 $04
	sbc e                                            ; $5e30: $9b
	ld b, $04                                        ; $5e31: $06 $04
	or e                                             ; $5e33: $b3
	ld b, $04                                        ; $5e34: $06 $04
	rlc [hl]                                         ; $5e36: $cb $06
	inc b                                            ; $5e38: $04
	db $e3                                           ; $5e39: $e3
	ld b, $04                                        ; $5e3a: $06 $04
	ei                                               ; $5e3c: $fb
	ld b, $04                                        ; $5e3d: $06 $04
	inc de                                           ; $5e3f: $13
	rlca                                             ; $5e40: $07
	inc b                                            ; $5e41: $04
	dec hl                                           ; $5e42: $2b
	rlca                                             ; $5e43: $07
	inc b                                            ; $5e44: $04
	ld b, e                                          ; $5e45: $43
	rlca                                             ; $5e46: $07
	inc b                                            ; $5e47: $04
	ld e, e                                          ; $5e48: $5b
	rlca                                             ; $5e49: $07
	inc b                                            ; $5e4a: $04
	ld [hl], e                                       ; $5e4b: $73
	rlca                                             ; $5e4c: $07
	inc b                                            ; $5e4d: $04
	adc e                                            ; $5e4e: $8b
	rlca                                             ; $5e4f: $07
	inc b                                            ; $5e50: $04
	and e                                            ; $5e51: $a3
	rlca                                             ; $5e52: $07
	inc b                                            ; $5e53: $04
	cp e                                             ; $5e54: $bb
	rlca                                             ; $5e55: $07
	inc b                                            ; $5e56: $04
	db $d3                                           ; $5e57: $d3
	rlca                                             ; $5e58: $07
	ld b, $eb                                        ; $5e59: $06 $eb
	rlca                                             ; $5e5b: $07
	ld b, $03                                        ; $5e5c: $06 $03
	ld [$1b1a], sp                                   ; $5e5e: $08 $1a $1b
	ld [$3310], sp                                   ; $5e61: $08 $10 $33
	ld [$4b04], sp                                   ; $5e64: $08 $04 $4b
	ld [$4b00], sp                                   ; $5e67: $08 $00 $4b
	ld [$830c], sp                                   ; $5e6a: $08 $0c $83
	inc bc                                           ; $5e6d: $03
	inc c                                            ; $5e6e: $0c
	and e                                            ; $5e6f: $a3
	inc bc                                           ; $5e70: $03
	inc c                                            ; $5e71: $0c
	jp $0003                                         ; $5e72: $c3 $03 $00


	jp $0c03                                         ; $5e75: $c3 $03 $0c


	db $e3                                           ; $5e78: $e3
	inc bc                                           ; $5e79: $03
	inc c                                            ; $5e7a: $0c
	rlca                                             ; $5e7b: $07
	inc b                                            ; $5e7c: $04
	inc c                                            ; $5e7d: $0c
	dec hl                                           ; $5e7e: $2b
	inc b                                            ; $5e7f: $04
	inc c                                            ; $5e80: $0c
	ld c, e                                          ; $5e81: $4b

jr_020_5e82:
	inc b                                            ; $5e82: $04
	rst $38                                          ; $5e83: $ff
	rst $38                                          ; $5e84: $ff
	ld a, a                                          ; $5e85: $7f
	ld [hl], h                                       ; $5e86: $74
	dec d                                            ; $5e87: $15
	rrca                                             ; $5e88: $0f
	ld de, $0889                                     ; $5e89: $11 $89 $08
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	call z, Call_020_5b10                            ; $5e8e: $cc $10 $5b
	ld [hl+], a                                      ; $5e91: $22
	ld e, l                                          ; $5e92: $5d
	ld de, $4bff                                     ; $5e93: $11 $ff $4b
	ld e, a                                          ; $5e96: $5f
	ccf                                              ; $5e97: $3f
	ld e, a                                          ; $5e98: $5f
	ld b, $1f                                        ; $5e99: $06 $1f
	ld b, $ff                                        ; $5e9b: $06 $ff
	dec b                                            ; $5e9d: $05
	rst SubAFromDE                                          ; $5e9e: $df
	dec b                                            ; $5e9f: $05
	cp a                                             ; $5ea0: $bf
	add hl, bc                                       ; $5ea1: $09
	ld e, a                                          ; $5ea2: $5f
	ccf                                              ; $5ea3: $3f
	rst $38                                          ; $5ea4: $ff
	ld a, a                                          ; $5ea5: $7f
	ld [hl], h                                       ; $5ea6: $74
	dec d                                            ; $5ea7: $15
	db $10                                           ; $5ea8: $10
	dec c                                            ; $5ea9: $0d
	adc c                                            ; $5eaa: $89
	ld [rRAMG], sp                                   ; $5eab: $08 $00 $00
	call z, Call_020_5b10                            ; $5eae: $cc $10 $5b
	ld [hl+], a                                      ; $5eb1: $22
	ret nz                                           ; $5eb2: $c0

	add hl, hl                                       ; $5eb3: $29
	push af                                          ; $5eb4: $f5
	ld h, a                                          ; $5eb5: $67
	db $eb                                           ; $5eb6: $eb
	ccf                                              ; $5eb7: $3f
	ret nz                                           ; $5eb8: $c0

	ld [hl-], a                                      ; $5eb9: $32
	add b                                            ; $5eba: $80
	ld [hl-], a                                      ; $5ebb: $32
	ld h, b                                          ; $5ebc: $60
	ld [hl-], a                                      ; $5ebd: $32
	ld b, b                                          ; $5ebe: $40
	ld [hl-], a                                      ; $5ebf: $32
	jr nz, jr_020_5ef4                               ; $5ec0: $20 $32

	db $eb                                           ; $5ec2: $eb
	ccf                                              ; $5ec3: $3f
	rst $38                                          ; $5ec4: $ff
	ld a, a                                          ; $5ec5: $7f
	ld [hl], h                                       ; $5ec6: $74
	dec d                                            ; $5ec7: $15
	rrca                                             ; $5ec8: $0f
	ld de, $0889                                     ; $5ec9: $11 $89 $08
	nop                                              ; $5ecc: $00
	nop                                              ; $5ecd: $00
	call z, Call_020_5b10                            ; $5ece: $cc $10 $5b
	ld [hl+], a                                      ; $5ed1: $22
	rst $38                                          ; $5ed2: $ff
	ld b, b                                          ; $5ed3: $40
	ld a, $73                                        ; $5ed4: $3e $73
	sbc a                                            ; $5ed6: $9f
	ld h, [hl]                                       ; $5ed7: $66
	sbc a                                            ; $5ed8: $9f
	ld d, c                                          ; $5ed9: $51
	ld e, a                                          ; $5eda: $5f
	ld c, c                                          ; $5edb: $49
	ccf                                              ; $5edc: $3f
	ld b, c                                          ; $5edd: $41
	rra                                              ; $5ede: $1f
	add hl, sp                                       ; $5edf: $39
	rst $38                                          ; $5ee0: $ff
	jr nc, jr_020_5e82                               ; $5ee1: $30 $9f

	ld h, [hl]                                       ; $5ee3: $66
	sbc c                                            ; $5ee4: $99
	inc bc                                           ; $5ee5: $03
	ldh [$df], a                                     ; $5ee6: $e0 $df
	sub l                                            ; $5ee8: $95
	rst $38                                          ; $5ee9: $ff
	ldh a, [rIE]                                     ; $5eea: $f0 $ff
	ldh [rIE], a                                     ; $5eec: $e0 $ff
	ret nz                                           ; $5eee: $c0

	rst $38                                          ; $5eef: $ff
	add b                                            ; $5ef0: $80
	rst $38                                          ; $5ef1: $ff
	nop                                              ; $5ef2: $00
	ld [hl], a                                       ; $5ef3: $77

jr_020_5ef4:
	cp $4b                                           ; $5ef4: $fe $4b
	pop af                                           ; $5ef6: $f1
	add l                                            ; $5ef7: $85
	rst $38                                          ; $5ef8: $ff
	rst SubAFromDE                                          ; $5ef9: $df
	ld sp, $7d93                                     ; $5efa: $31 $93 $7d
	scf                                              ; $5efd: $37
	jp hl                                            ; $5efe: $e9


	db $eb                                           ; $5eff: $eb
	push de                                          ; $5f00: $d5
	rst JumpTable                                          ; $5f01: $c7
	add hl, sp                                       ; $5f02: $39
	xor e                                            ; $5f03: $ab
	ld d, l                                          ; $5f04: $55
	rst $38                                          ; $5f05: $ff
	ld bc, rIE                                     ; $5f06: $01 $ff $ff
	ld a, [bc]                                       ; $5f09: $0a
	nop                                              ; $5f0a: $00
	ld [bc], a                                       ; $5f0b: $02
	nop                                              ; $5f0c: $00
	ld [de], a                                       ; $5f0d: $12
	nop                                              ; $5f0e: $00
	ld [hl+], a                                      ; $5f0f: $22
	nop                                              ; $5f10: $00
	jp nz, $f87b                                     ; $5f11: $c2 $7b $f8

Jump_020_5f14:
	sbc [hl]                                         ; $5f14: $9e
	cp $fe                                           ; $5f15: $fe $fe
	sbc e                                            ; $5f17: $9b
	cp a                                             ; $5f18: $bf
	ret nz                                           ; $5f19: $c0

	ccf                                              ; $5f1a: $3f
	ret nz                                           ; $5f1b: $c0

	ld [hl], a                                       ; $5f1c: $77
	jp z, $ffdf                                      ; $5f1d: $ca $df $ff

	ld a, e                                          ; $5f20: $7b
	db $fc                                           ; $5f21: $fc
	ld a, e                                          ; $5f22: $7b
	db $fd                                           ; $5f23: $fd
	sbc h                                            ; $5f24: $9c
	ld b, b                                          ; $5f25: $40
	nop                                              ; $5f26: $00
	ret nz                                           ; $5f27: $c0

	ld e, a                                          ; $5f28: $5f
	and [hl]                                         ; $5f29: $a6
	ld [hl], a                                       ; $5f2a: $77
	db $fc                                           ; $5f2b: $fc
	ld [hl], e                                       ; $5f2c: $73
	add sp, $5f                                      ; $5f2d: $e8 $5f
	ldh [$6f], a                                     ; $5f2f: $e0 $6f
	ld [$e05f], a                                    ; $5f31: $ea $5f $e0
	sbc l                                            ; $5f34: $9d
	cp $01                                           ; $5f35: $fe $01
	ld [hl], a                                       ; $5f37: $77
	sbc c                                            ; $5f38: $99
	sbc l                                            ; $5f39: $9d
	add b                                            ; $5f3a: $80
	ld a, a                                          ; $5f3b: $7f
	ld e, a                                          ; $5f3c: $5f
	ldh [$fd], a                                     ; $5f3d: $e0 $fd
	sbc [hl]                                         ; $5f3f: $9e
	add b                                            ; $5f40: $80
	ld h, e                                          ; $5f41: $63
	ldh [hDisp0_LCDC], a                                     ; $5f42: $e0 $82
	cp e                                             ; $5f44: $bb
	call z, $c8bf                                    ; $5f45: $cc $bf $c8
	xor [hl]                                         ; $5f48: $ae
	pop de                                           ; $5f49: $d1
	or a                                             ; $5f4a: $b7
	res 7, e                                         ; $5f4b: $cb $bb
	call nz, $c3bc                                   ; $5f4d: $c4 $bc $c3
	cp a                                             ; $5f50: $bf
	ret nz                                           ; $5f51: $c0

	rst $38                                          ; $5f52: $ff
	rst $38                                          ; $5f53: $ff
	ld d, b                                          ; $5f54: $50
	nop                                              ; $5f55: $00
	ld d, h                                          ; $5f56: $54
	nop                                              ; $5f57: $00
	ld c, [hl]                                       ; $5f58: $4e
	nop                                              ; $5f59: $00
	ld b, h                                          ; $5f5a: $44
	nop                                              ; $5f5b: $00
	ld b, e                                          ; $5f5c: $43
	nop                                              ; $5f5d: $00
	ld b, b                                          ; $5f5e: $40
	nop                                              ; $5f5f: $00
	ccf                                              ; $5f60: $3f
	cp $99                                           ; $5f61: $fe $99
	db $eb                                           ; $5f63: $eb
	dec e                                            ; $5f64: $1d
	ld l, e                                          ; $5f65: $6b
	sbc l                                            ; $5f66: $9d
	xor e                                            ; $5f67: $ab
	db $dd                                           ; $5f68: $dd
	ld l, a                                          ; $5f69: $6f
	cp $7f                                           ; $5f6a: $fe $7f
	or $7f                                           ; $5f6c: $f6 $7f
	ldh a, [c]                                       ; $5f6e: $f2
	ld a, a                                          ; $5f6f: $7f
	ld l, d                                          ; $5f70: $6a
	ld a, a                                          ; $5f71: $7f
	cp $9e                                           ; $5f72: $fe $9e
	ld b, d                                          ; $5f74: $42
	ld l, e                                          ; $5f75: $6b
	cp $9e                                           ; $5f76: $fe $9e
	add d                                            ; $5f78: $82
	ld a, e                                          ; $5f79: $7b
	db $f4                                           ; $5f7a: $f4
	ld a, a                                          ; $5f7b: $7f
	call z, $af99                                    ; $5f7c: $cc $99 $af
	rst SubAFromDE                                          ; $5f7f: $df
	cp c                                             ; $5f80: $b9
	sub $b7                                          ; $5f81: $d6 $b7
	ret c                                            ; $5f83: $d8

	ld [hl], a                                       ; $5f84: $77
	cp $9a                                           ; $5f85: $fe $9a
	cp a                                             ; $5f87: $bf
	rst GetHLinHL                                          ; $5f88: $cf
	or b                                             ; $5f89: $b0
	rst GetHLinHL                                          ; $5f8a: $cf
	ld b, b                                          ; $5f8b: $40
	ld a, e                                          ; $5f8c: $7b
	ret z                                            ; $5f8d: $c8

	sbc [hl]                                         ; $5f8e: $9e
	ld c, c                                          ; $5f8f: $49
	ld a, e                                          ; $5f90: $7b
	db $fc                                           ; $5f91: $fc
	ld l, a                                          ; $5f92: $6f
	cp $95                                           ; $5f93: $fe $95
	ld c, a                                          ; $5f95: $4f
	nop                                              ; $5f96: $00
	db $fd                                           ; $5f97: $fd
	inc bc                                           ; $5f98: $03
	push af                                          ; $5f99: $f5
	ei                                               ; $5f9a: $fb
	sbc c                                            ; $5f9b: $99
	ld l, a                                          ; $5f9c: $6f
	ld a, c                                          ; $5f9d: $79
	adc a                                            ; $5f9e: $8f
	ld [hl], a                                       ; $5f9f: $77
	cp $7f                                           ; $5fa0: $fe $7f
	or $9d                                           ; $5fa2: $f6 $9d
	dec c                                            ; $5fa4: $0d
	di                                               ; $5fa5: $f3
	db $fd                                           ; $5fa6: $fd
	sbc h                                            ; $5fa7: $9c
	sub h                                            ; $5fa8: $94
	nop                                              ; $5fa9: $00
	inc b                                            ; $5faa: $04
	ld [hl], e                                       ; $5fab: $73
	cp $96                                           ; $5fac: $fe $96
	ld [$f000], sp                                   ; $5fae: $08 $00 $f0
	nop                                              ; $5fb1: $00
	or a                                             ; $5fb2: $b7
	ret c                                            ; $5fb3: $d8

	or [hl]                                          ; $5fb4: $b6
	reti                                             ; $5fb5: $d9


	or a                                             ; $5fb6: $b7
	ld l, e                                          ; $5fb7: $6b
	cp $7b                                           ; $5fb8: $fe $7b
	or $9c                                           ; $5fba: $f6 $9c
	ret c                                            ; $5fbc: $d8

	ld c, b                                          ; $5fbd: $48
	nop                                              ; $5fbe: $00
	ld e, a                                          ; $5fbf: $5f
	cp $77                                           ; $5fc0: $fe $77
	cp [hl]                                          ; $5fc2: $be
	sbc [hl]                                         ; $5fc3: $9e
	dec hl                                           ; $5fc4: $2b
	ld [hl], e                                       ; $5fc5: $73
	adc d                                            ; $5fc6: $8a
	ld e, a                                          ; $5fc7: $5f
	cp $7e                                           ; $5fc8: $fe $7e
	add sp, $77                                      ; $5fca: $e8 $77
	adc d                                            ; $5fcc: $8a
	ld e, a                                          ; $5fcd: $5f
	cp $7f                                           ; $5fce: $fe $7f
	adc [hl]                                         ; $5fd0: $8e
	ld a, a                                          ; $5fd1: $7f
	cp $7f                                           ; $5fd2: $fe $7f
	ld a, h                                          ; $5fd4: $7c
	ld e, a                                          ; $5fd5: $5f
	cp $7f                                           ; $5fd6: $fe $7f
	jp z, $8c7f                                      ; $5fd8: $ca $7f $8c

	ld h, a                                          ; $5fdb: $67
	add d                                            ; $5fdc: $82
	ld [hl], a                                       ; $5fdd: $77
	cp $9e                                           ; $5fde: $fe $9e
	dec b                                            ; $5fe0: $05
	ld a, e                                          ; $5fe1: $7b
	adc h                                            ; $5fe2: $8c
	ld a, a                                          ; $5fe3: $7f
	ld a, h                                          ; $5fe4: $7c
	ld e, a                                          ; $5fe5: $5f
	cp $9e                                           ; $5fe6: $fe $9e
	jr jr_020_6065                                   ; $5fe8: $18 $7b

	adc h                                            ; $5fea: $8c
	push af                                          ; $5feb: $f5
	ld a, a                                          ; $5fec: $7f
	adc h                                            ; $5fed: $8c
	ld [hl], a                                       ; $5fee: $77
	adc d                                            ; $5fef: $8a
	ld e, a                                          ; $5ff0: $5f
	cp $7f                                           ; $5ff1: $fe $7f
	ld b, h                                          ; $5ff3: $44
	ld a, a                                          ; $5ff4: $7f
	cp $57                                           ; $5ff5: $fe $57
	ld a, h                                          ; $5ff7: $7c
	ld e, a                                          ; $5ff8: $5f
	add b                                            ; $5ff9: $80
	ld a, a                                          ; $5ffa: $7f
	ld hl, sp+$7f                                    ; $5ffb: $f8 $7f
	db $f4                                           ; $5ffd: $f4
	ld a, a                                          ; $5ffe: $7f
	cp $5f                                           ; $5fff: $fe $5f
	add b                                            ; $6001: $80
	ld a, a                                          ; $6002: $7f
	ld hl, sp+$76                                    ; $6003: $f8 $76
	db $fc                                           ; $6005: $fc
	ld e, a                                          ; $6006: $5f
	add b                                            ; $6007: $80
	sbc c                                            ; $6008: $99
	or a                                             ; $6009: $b7
	ret z                                            ; $600a: $c8

	cp h                                             ; $600b: $bc
	jp $c7b8                                         ; $600c: $c3 $b8 $c7


	ld e, a                                          ; $600f: $5f
	add b                                            ; $6010: $80
	sbc h                                            ; $6011: $9c
	ld b, a                                          ; $6012: $47
	nop                                              ; $6013: $00
	ld c, h                                          ; $6014: $4c
	ld a, e                                          ; $6015: $7b
	ret nz                                           ; $6016: $c0

	ld e, a                                          ; $6017: $5f
	add b                                            ; $6018: $80
	sbc c                                            ; $6019: $99
	db $ed                                           ; $601a: $ed
	inc de                                           ; $601b: $13
	add l                                            ; $601c: $85
	ld a, e                                          ; $601d: $7b
	dec b                                            ; $601e: $05
	ei                                               ; $601f: $fb
	ld e, a                                          ; $6020: $5f
	add b                                            ; $6021: $80
	ld a, a                                          ; $6022: $7f
	ld hl, sp-$62                                    ; $6023: $f8 $9e
	adc b                                            ; $6025: $88
	ld a, d                                          ; $6026: $7a
	cp $5f                                           ; $6027: $fe $5f
	add b                                            ; $6029: $80
	ld l, a                                          ; $602a: $6f
	ld hl, sp+$57                                    ; $602b: $f8 $57
	add b                                            ; $602d: $80
	ld [hl], a                                       ; $602e: $77
	db $f4                                           ; $602f: $f4
	ld e, a                                          ; $6030: $5f
	ld b, $6f                                        ; $6031: $06 $6f
	add b                                            ; $6033: $80
	ld e, a                                          ; $6034: $5f
	ld b, $6f                                        ; $6035: $06 $6f
	add b                                            ; $6037: $80
	ld a, a                                          ; $6038: $7f
	adc [hl]                                         ; $6039: $8e
	ld h, a                                          ; $603a: $67
	ld b, $6f                                        ; $603b: $06 $6f
	add b                                            ; $603d: $80
	ld a, a                                          ; $603e: $7f
	adc d                                            ; $603f: $8a
	ld h, a                                          ; $6040: $67
	ld b, $6f                                        ; $6041: $06 $6f
	add b                                            ; $6043: $80
	sbc l                                            ; $6044: $9d
	push hl                                          ; $6045: $e5
	ei                                               ; $6046: $fb
	ld h, a                                          ; $6047: $67
	ld b, $6f                                        ; $6048: $06 $6f
	add b                                            ; $604a: $80
	ld a, a                                          ; $604b: $7f
	adc [hl]                                         ; $604c: $8e
	ld sp, hl                                        ; $604d: $f9
	ld h, a                                          ; $604e: $67
	add b                                            ; $604f: $80
	ld h, a                                          ; $6050: $67
	ld b, $6f                                        ; $6051: $06 $6f
	or $57                                           ; $6053: $f6 $57
	inc b                                            ; $6055: $04
	ld [hl], a                                       ; $6056: $77
	add b                                            ; $6057: $80
	sbc l                                            ; $6058: $9d
	cp e                                             ; $6059: $bb
	call $fe57                                       ; $605a: $cd $57 $fe
	sbc [hl]                                         ; $605d: $9e
	or a                                             ; $605e: $b7
	ld [hl], d                                       ; $605f: $72
	jr nz, @+$59                                     ; $6060: $20 $57

	cp $6f                                           ; $6062: $fe $6f
	ld h, [hl]                                       ; $6064: $66

jr_020_6065:
	ld e, a                                          ; $6065: $5f
	cp $6f                                           ; $6066: $fe $6f
	ld h, [hl]                                       ; $6068: $66
	ld e, a                                          ; $6069: $5f
	cp $7f                                           ; $606a: $fe $7f
	ld l, b                                          ; $606c: $68
	sbc e                                            ; $606d: $9b
	or [hl]                                          ; $606e: $b6
	rst GetHLinHL                                          ; $606f: $cf
	cp l                                             ; $6070: $bd
	bit 3, a                                         ; $6071: $cb $5f
	cp [hl]                                          ; $6073: $be
	ld [hl], a                                       ; $6074: $77
	call z, $a27d                                    ; $6075: $cc $7d $a2
	ld e, a                                          ; $6078: $5f
	ret nz                                           ; $6079: $c0

	ld a, e                                          ; $607a: $7b
	ld h, [hl]                                       ; $607b: $66
	sbc d                                            ; $607c: $9a
	di                                               ; $607d: $f3
	or l                                             ; $607e: $b5
	ld e, e                                          ; $607f: $5b
	ld [hl], l                                       ; $6080: $75
	sbc e                                            ; $6081: $9b
	ld h, a                                          ; $6082: $67
	cp $fd                                           ; $6083: $fe $fd
	sbc [hl]                                         ; $6085: $9e
	xor b                                            ; $6086: $a8
	ld a, e                                          ; $6087: $7b
	ld l, b                                          ; $6088: $68
	ld h, a                                          ; $6089: $67
	cp $4f                                           ; $608a: $fe $4f
	add d                                            ; $608c: $82
	ld l, l                                          ; $608d: $6d
	and b                                            ; $608e: $a0
	ld e, a                                          ; $608f: $5f
	cp $7e                                           ; $6090: $fe $7e
	sub h                                            ; $6092: $94
	ld e, a                                          ; $6093: $5f
	add $7f                                          ; $6094: $c6 $7f
	cp $7f                                           ; $6096: $fe $7f
	inc d                                            ; $6098: $14
	ld a, [hl]                                       ; $6099: $7e
	sub h                                            ; $609a: $94
	ld e, a                                          ; $609b: $5f
	add $77                                          ; $609c: $c6 $77
	cp $79                                           ; $609e: $fe $79
	and b                                            ; $60a0: $a0
	ld h, c                                          ; $60a1: $61
	and d                                            ; $60a2: $a2
	dec a                                            ; $60a3: $3d
	and b                                            ; $60a4: $a0
	ld [hl], a                                       ; $60a5: $77
	cp $57                                           ; $60a6: $fe $57
	ld b, h                                          ; $60a8: $44
	ld [hl], a                                       ; $60a9: $77
	cp $57                                           ; $60aa: $fe $57
	ld b, h                                          ; $60ac: $44
	ld [hl], a                                       ; $60ad: $77
	cp $4f                                           ; $60ae: $fe $4f
	nop                                              ; $60b0: $00
	ld l, a                                          ; $60b1: $6f
	ld b, b                                          ; $60b2: $40
	ld d, a                                          ; $60b3: $57
	cp $57                                           ; $60b4: $fe $57
	add b                                            ; $60b6: $80
	ld [hl], a                                       ; $60b7: $77
	cp $4f                                           ; $60b8: $fe $4f
	add b                                            ; $60ba: $80
	ld a, a                                          ; $60bb: $7f
	cp $57                                           ; $60bc: $fe $57
	add b                                            ; $60be: $80
	ld [hl], a                                       ; $60bf: $77
	cp $47                                           ; $60c0: $fe $47
	add b                                            ; $60c2: $80
	ld c, [hl]                                       ; $60c3: $4e
	jp nz, $c076                                     ; $60c4: $c2 $76 $c0

	ld c, a                                          ; $60c7: $4f
	add b                                            ; $60c8: $80
	ld c, [hl]                                       ; $60c9: $4e
	jp nz, $8077                                     ; $60ca: $c2 $77 $80

	ld d, [hl]                                       ; $60cd: $56
	jp nz, $fe7f                                     ; $60ce: $c2 $7f $fe

	sbc e                                            ; $60d1: $9b
	db $ed                                           ; $60d2: $ed
	di                                               ; $60d3: $f3
	sub l                                            ; $60d4: $95
	ld a, e                                          ; $60d5: $7b
	ld d, a                                          ; $60d6: $57
	add b                                            ; $60d7: $80
	rst $38                                          ; $60d8: $ff
	halt                                             ; $60d9: $76
	ld a, [hl+]                                      ; $60da: $2a
	ld e, a                                          ; $60db: $5f
	cp $5c                                           ; $60dc: $fe $5c
	and d                                            ; $60de: $a2
	cpl                                              ; $60df: $2f
	add b                                            ; $60e0: $80
	ld [hl], l                                       ; $60e1: $75
	xor h                                            ; $60e2: $ac
	ld d, h                                          ; $60e3: $54
	sbc [hl]                                         ; $60e4: $9e
	ld a, l                                          ; $60e5: $7d
	xor [hl]                                         ; $60e6: $ae
	ld c, h                                          ; $60e7: $4c
	sbc [hl]                                         ; $60e8: $9e
	ld a, l                                          ; $60e9: $7d
	xor [hl]                                         ; $60ea: $ae
	ld c, h                                          ; $60eb: $4c
	sbc [hl]                                         ; $60ec: $9e
	ld [hl], a                                       ; $60ed: $77
	call z, $9e54                                    ; $60ee: $cc $54 $9e
	ld a, l                                          ; $60f1: $7d
	xor [hl]                                         ; $60f2: $ae
	ld c, h                                          ; $60f3: $4c
	sbc [hl]                                         ; $60f4: $9e
	ld a, a                                          ; $60f5: $7f
	adc [hl]                                         ; $60f6: $8e
	ld c, h                                          ; $60f7: $4c
	sbc [hl]                                         ; $60f8: $9e
	ld [hl], l                                       ; $60f9: $75
	xor b                                            ; $60fa: $a8
	ld d, h                                          ; $60fb: $54
	sbc [hl]                                         ; $60fc: $9e
	ld [hl], l                                       ; $60fd: $75
	xor h                                            ; $60fe: $ac
	ld d, h                                          ; $60ff: $54
	sbc [hl]                                         ; $6100: $9e
	ld d, a                                          ; $6101: $57
	add b                                            ; $6102: $80
	ld [hl], l                                       ; $6103: $75
	ld e, $57                                        ; $6104: $1e $57
	add b                                            ; $6106: $80
	ld [hl], l                                       ; $6107: $75
	ld e, $57                                        ; $6108: $1e $57
	add b                                            ; $610a: $80
	ld [hl], l                                       ; $610b: $75
	ld e, $57                                        ; $610c: $1e $57
	add b                                            ; $610e: $80
	ld a, a                                          ; $610f: $7f
	ld hl, sp+$7d                                    ; $6110: $f8 $7d
	ld e, $57                                        ; $6112: $1e $57
	add b                                            ; $6114: $80
	ld [hl], l                                       ; $6115: $75
	ld e, $57                                        ; $6116: $1e $57
	add b                                            ; $6118: $80
	ld [hl], l                                       ; $6119: $75
	ld e, $57                                        ; $611a: $1e $57
	add b                                            ; $611c: $80
	ld [hl], a                                       ; $611d: $77
	ld hl, sp+$4f                                    ; $611e: $f8 $4f
	add b                                            ; $6120: $80
	ld d, h                                          ; $6121: $54
	and b                                            ; $6122: $a0
	ld l, a                                          ; $6123: $6f
	add b                                            ; $6124: $80
	ld e, a                                          ; $6125: $5f
	ld b, $6f                                        ; $6126: $06 $6f
	add b                                            ; $6128: $80
	ld e, a                                          ; $6129: $5f
	ld b, $6f                                        ; $612a: $06 $6f
	add b                                            ; $612c: $80
	ld c, l                                          ; $612d: $4d
	add d                                            ; $612e: $82
	ld a, a                                          ; $612f: $7f
	add b                                            ; $6130: $80
	ld e, a                                          ; $6131: $5f
	ld b, $6f                                        ; $6132: $06 $6f
	add b                                            ; $6134: $80
	push af                                          ; $6135: $f5
	ld l, a                                          ; $6136: $6f
	add b                                            ; $6137: $80
	ld e, a                                          ; $6138: $5f
	cp $3d                                           ; $6139: $fe $3d
	add b                                            ; $613b: $80
	ld a, a                                          ; $613c: $7f
	add b                                            ; $613d: $80
	sbc c                                            ; $613e: $99
	srl l                                            ; $613f: $cb $3d
	ld l, e                                          ; $6141: $6b
	sbc l                                            ; $6142: $9d
	xor e                                            ; $6143: $ab
	db $dd                                           ; $6144: $dd
	ld l, a                                          ; $6145: $6f
	cp $76                                           ; $6146: $fe $76
	ld hl, sp+$77                                    ; $6148: $f8 $77
	adc b                                            ; $614a: $88
	ld [hl], h                                       ; $614b: $74
	jr z, jr_020_61c5                                ; $614c: $28 $77

	cp $77                                           ; $614e: $fe $77
	db $f4                                           ; $6150: $f4
	ld a, a                                          ; $6151: $7f
	adc d                                            ; $6152: $8a
	sbc e                                            ; $6153: $9b
	xor a                                            ; $6154: $af
	rst SubAFromDE                                          ; $6155: $df
	or b                                             ; $6156: $b0
	rst SubAFromDE                                          ; $6157: $df
	ld l, a                                          ; $6158: $6f
	ret nz                                           ; $6159: $c0

	sbc [hl]                                         ; $615a: $9e
	cp a                                             ; $615b: $bf
	ld a, d                                          ; $615c: $7a
	ld hl, sp+$45                                    ; $615d: $f8 $45
	add b                                            ; $615f: $80
	ld a, a                                          ; $6160: $7f
	adc d                                            ; $6161: $8a
	sub h                                            ; $6162: $94
	push af                                          ; $6163: $f5
	ei                                               ; $6164: $fb
	adc c                                            ; $6165: $89
	ld a, a                                          ; $6166: $7f
	ld a, c                                          ; $6167: $79
	adc a                                            ; $6168: $8f
	ld a, c                                          ; $6169: $79
	adc a                                            ; $616a: $8f
	ld sp, hl                                        ; $616b: $f9
	rrca                                             ; $616c: $0f
	push af                                          ; $616d: $f5
	ld a, d                                          ; $616e: $7a
	or $ff                                           ; $616f: $f6 $ff
	ld a, [hl]                                       ; $6171: $7e
	cp $9c                                           ; $6172: $fe $9c
	add h                                            ; $6174: $84
	nop                                              ; $6175: $00
	inc b                                            ; $6176: $04
	ld a, e                                          ; $6177: $7b
	cp $7f                                           ; $6178: $fe $7f
	ld a, [$0075]                                    ; $617a: $fa $75 $00
	sbc l                                            ; $617d: $9d
	cp e                                             ; $617e: $bb
	call nc, $fe5d                                   ; $617f: $d4 $5d $fe
	ld [hl], a                                       ; $6182: $77
	add b                                            ; $6183: $80
	ld a, l                                          ; $6184: $7d
	jp nz, $8257                                     ; $6185: $c2 $57 $82

	ld a, a                                          ; $6188: $7f
	db $fc                                           ; $6189: $fc
	rst SubAFromDE                                          ; $618a: $df
	rst $38                                          ; $618b: $ff
	sbc [hl]                                         ; $618c: $9e
	ld bc, $fd7b                                     ; $618d: $01 $7b $fd
	sub d                                            ; $6190: $92
	ld a, a                                          ; $6191: $7f
	add c                                            ; $6192: $81
	rst SubAFromDE                                          ; $6193: $df
	pop hl                                           ; $6194: $e1
	ld l, a                                          ; $6195: $6f
	or c                                             ; $6196: $b1
	or a                                             ; $6197: $b7
	ld e, c                                          ; $6198: $59
	rst SubAFromHL                                          ; $6199: $d7
	add hl, sp                                       ; $619a: $39
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	db $fc                                           ; $619d: $fc
	ld l, e                                          ; $619e: $6b
	ld [bc], a                                       ; $619f: $02
	ld a, a                                          ; $61a0: $7f
	add b                                            ; $61a1: $80
	sbc [hl]                                         ; $61a2: $9e
	ld [hl+], a                                      ; $61a3: $22
	ld a, e                                          ; $61a4: $7b
	ld a, [$ffdf]                                    ; $61a5: $fa $df $ff
	ld e, a                                          ; $61a8: $5f
	db $fd                                           ; $61a9: $fd
	sbc [hl]                                         ; $61aa: $9e
	ccf                                              ; $61ab: $3f
	ld a, d                                          ; $61ac: $7a
	db $fc                                           ; $61ad: $fc
	rst $38                                          ; $61ae: $ff
	ld a, a                                          ; $61af: $7f
	ld hl, sp-$03                                    ; $61b0: $f8 $fd
	ld l, a                                          ; $61b2: $6f
	ld a, [$807f]                                    ; $61b3: $fa $7f $80
	ld d, a                                          ; $61b6: $57
	ldh [$7b], a                                     ; $61b7: $e0 $7b
	db $fc                                           ; $61b9: $fc
	ld [hl], a                                       ; $61ba: $77
	ei                                               ; $61bb: $fb
	ld e, e                                          ; $61bc: $5b
	ldh [rPCM34], a                                  ; $61bd: $e0 $77
	db $ed                                           ; $61bf: $ed
	ld l, a                                          ; $61c0: $6f
	db $fd                                           ; $61c1: $fd
	sbc d                                            ; $61c2: $9a
	add b                                            ; $61c3: $80
	ld a, a                                          ; $61c4: $7f

jr_020_61c5:
	ld a, a                                          ; $61c5: $7f
	add b                                            ; $61c6: $80
	db $fc                                           ; $61c7: $fc
	ld a, d                                          ; $61c8: $7a
	call c, $e667                                    ; $61c9: $dc $67 $e6
	sbc h                                            ; $61cc: $9c
	ld a, a                                          ; $61cd: $7f
	nop                                              ; $61ce: $00
	add b                                            ; $61cf: $80
	ld l, e                                          ; $61d0: $6b
	ldh [hDisp1_SCX], a                                     ; $61d1: $e0 $91
	add b                                            ; $61d3: $80
	rst $38                                          ; $61d4: $ff
	cp a                                             ; $61d5: $bf
	ret nz                                           ; $61d6: $c0

	cp [hl]                                          ; $61d7: $be
	pop bc                                           ; $61d8: $c1
	cp e                                             ; $61d9: $bb
	rst JumpTable                                          ; $61da: $c7
	or [hl]                                          ; $61db: $b6
	call $cabd                                       ; $61dc: $cd $bd $ca
	xor e                                            ; $61df: $ab
	call c, $e677                                    ; $61e0: $dc $77 $e6
	ld l, a                                          ; $61e3: $6f
	ld h, $9e                                        ; $61e4: $26 $9e
	ld b, c                                          ; $61e6: $41
	ld a, e                                          ; $61e7: $7b
	ld a, [hl]                                       ; $61e8: $7e
	ld a, a                                          ; $61e9: $7f
	ld d, d                                          ; $61ea: $52
	sub [hl]                                         ; $61eb: $96
	ld a, a                                          ; $61ec: $7f
	ld a, b                                          ; $61ed: $78
	ld a, a                                          ; $61ee: $7f
	ld [hl], b                                       ; $61ef: $70
	ld a, a                                          ; $61f0: $7f
	ld h, b                                          ; $61f1: $60
	ld a, a                                          ; $61f2: $7f
	ld b, b                                          ; $61f3: $40
	ld a, a                                          ; $61f4: $7f
	ld a, e                                          ; $61f5: $7b
	add sp, $7f                                      ; $61f6: $e8 $7f
	cp $7f                                           ; $61f8: $fe $7f
	call nz, Call_020_7898                           ; $61fa: $c4 $98 $78
	rst $38                                          ; $61fd: $ff
	ld [hl], b                                       ; $61fe: $70
	rst $38                                          ; $61ff: $ff
	ld h, b                                          ; $6200: $60
	rst $38                                          ; $6201: $ff
	ld b, b                                          ; $6202: $40
	ld a, e                                          ; $6203: $7b
	xor l                                            ; $6204: $ad
	ld l, a                                          ; $6205: $6f
	cp $97                                           ; $6206: $fe $97
	ld bc, $ff00                                     ; $6208: $01 $00 $ff
	ldh a, [rIE]                                     ; $620b: $f0 $ff
	ldh [rIE], a                                     ; $620d: $e0 $ff
	ret nz                                           ; $620f: $c0

	ld a, e                                          ; $6210: $7b
	cp c                                             ; $6211: $b9
	ld [hl], e                                       ; $6212: $73
	rst AddAOntoHL                                          ; $6213: $ef
	ld c, e                                          ; $6214: $4b
	pop af                                           ; $6215: $f1
	ld a, e                                          ; $6216: $7b
	rst AddAOntoHL                                          ; $6217: $ef
	sub $7f                                          ; $6218: $d6 $7f
	sbc c                                            ; $621a: $99
	ld a, [hl]                                       ; $621b: $7e
	ld a, a                                          ; $621c: $7f
	ld a, h                                          ; $621d: $7c
	nop                                              ; $621e: $00
	rst $38                                          ; $621f: $ff
	ld a, a                                          ; $6220: $7f
	ld h, e                                          ; $6221: $63
	cp $88                                           ; $6222: $fe $88
	ld a, [hl]                                       ; $6224: $7e
	rst $38                                          ; $6225: $ff
	ld a, h                                          ; $6226: $7c
	rst $38                                          ; $6227: $ff
	ldh [$e0], a                                     ; $6228: $e0 $e0
	ret nz                                           ; $622a: $c0

	ret nz                                           ; $622b: $c0

	add b                                            ; $622c: $80
	add b                                            ; $622d: $80
	ld bc, $0300                                     ; $622e: $01 $00 $03
	nop                                              ; $6231: $00
	rlca                                             ; $6232: $07
	nop                                              ; $6233: $00
	rrca                                             ; $6234: $0f
	nop                                              ; $6235: $00
	rra                                              ; $6236: $1f
	nop                                              ; $6237: $00
	rra                                              ; $6238: $1f
	rst $38                                          ; $6239: $ff
	ccf                                              ; $623a: $3f
	ld a, e                                          ; $623b: $7b
	and $d7                                          ; $623c: $e6 $d7
	rst $38                                          ; $623e: $ff
	sbc e                                            ; $623f: $9b
	rlca                                             ; $6240: $07
	rst $38                                          ; $6241: $ff
	rrca                                             ; $6242: $0f
	rst $38                                          ; $6243: $ff
	ld [hl], a                                       ; $6244: $77
	db $ec                                           ; $6245: $ec
	sub a                                            ; $6246: $97
	ld a, [hl]                                       ; $6247: $7e
	cp $fc                                           ; $6248: $fe $fc
	db $fc                                           ; $624a: $fc
	ld hl, sp-$08                                    ; $624b: $f8 $f8
	ldh a, [$f0]                                     ; $624d: $f0 $f0
	ld h, e                                          ; $624f: $63
	adc b                                            ; $6250: $88
	sbc l                                            ; $6251: $9d
	rst $38                                          ; $6252: $ff
	inc bc                                           ; $6253: $03
	ld [hl], e                                       ; $6254: $73
	db $e4                                           ; $6255: $e4
	sbc [hl]                                         ; $6256: $9e
	ccf                                              ; $6257: $3f
	ld a, e                                          ; $6258: $7b
	ld l, d                                          ; $6259: $6a
	sub e                                            ; $625a: $93
	cp $01                                           ; $625b: $fe $01
	db $fc                                           ; $625d: $fc
	inc bc                                           ; $625e: $03
	ld hl, sp+$07                                    ; $625f: $f8 $07
	ldh a, [rIF]                                     ; $6261: $f0 $0f
	ldh [$1f], a                                     ; $6263: $e0 $1f
	ret nz                                           ; $6265: $c0

	ccf                                              ; $6266: $3f
	pop de                                           ; $6267: $d1
	rst $38                                          ; $6268: $ff
	ld c, a                                          ; $6269: $4f
	and b                                            ; $626a: $a0
	sbc [hl]                                         ; $626b: $9e
	sbc a                                            ; $626c: $9f
	ld b, e                                          ; $626d: $43
	and b                                            ; $626e: $a0
	ld h, e                                          ; $626f: $63
	scf                                              ; $6270: $37
	ld h, a                                          ; $6271: $67
	ld d, c                                          ; $6272: $51
	ld c, e                                          ; $6273: $4b
	rst AddAOntoHL                                          ; $6274: $ef
	ld l, a                                          ; $6275: $6f
	ld [$fe67], sp                                   ; $6276: $08 $67 $fe
	ccf                                              ; $6279: $3f
	ldh [$e0], a                                     ; $627a: $e0 $e0
	and c                                            ; $627c: $a1
	ld c, d                                          ; $627d: $4a
	ld bc, $4397                                     ; $627e: $01 $97 $43
	jr jr_020_62c5                                   ; $6281: $18 $42

	jr jr_020_62c6                                   ; $6283: $18 $41

jr_020_6285:
	jr @+$42                                         ; $6285: $18 $40

	jr @+$05                                         ; $6287: $18 $03

	ld hl, sp+$2b                                    ; $6289: $f8 $2b
	ld hl, sp-$68                                    ; $628b: $f8 $98
	ccf                                              ; $628d: $3f
	jr jr_020_62ce                                   ; $628e: $18 $3e

	jr jr_020_62cf                                   ; $6290: $18 $3d

	jr jr_020_62d0                                   ; $6292: $18 $3c

	inc bc                                           ; $6294: $03

jr_020_6295:
	ld hl, sp+$27                                    ; $6295: $f8 $27
	ld hl, sp+$77                                    ; $6297: $f8 $77
	cp h                                             ; $6299: $bc
	sbc [hl]                                         ; $629a: $9e
	dec sp                                           ; $629b: $3b
	ld l, e                                          ; $629c: $6b
	or h                                             ; $629d: $b4
	inc bc                                           ; $629e: $03
	ld hl, sp+$4b                                    ; $629f: $f8 $4b
	ld hl, sp+$77                                    ; $62a1: $f8 $77
	ld a, h                                          ; $62a3: $7c
	inc bc                                           ; $62a4: $03
	sbc h                                            ; $62a5: $9c
	dec bc                                           ; $62a6: $0b
	ld hl, sp+$67                                    ; $62a7: $f8 $67
	or h                                             ; $62a9: $b4
	sbc d                                            ; $62aa: $9a
	ld a, [hl-]                                      ; $62ab: $3a
	jr jr_020_62e7                                   ; $62ac: $18 $39

	jr @+$3a                                         ; $62ae: $18 $38

	inc bc                                           ; $62b0: $03
	cp $6f                                           ; $62b1: $fe $6f
	cp $9c                                           ; $62b3: $fe $9c
	scf                                              ; $62b5: $37
	jr jr_020_62ee                                   ; $62b6: $18 $36

	ld b, e                                          ; $62b8: $43
	nop                                              ; $62b9: $00
	sbc d                                            ; $62ba: $9a
	dec [hl]                                         ; $62bb: $35
	jr jr_020_62f2                                   ; $62bc: $18 $34

	jr jr_020_62c0                                   ; $62be: $18 $00

jr_020_62c0:
	inc bc                                           ; $62c0: $03
	cp $6f                                           ; $62c1: $fe $6f
	cp $9c                                           ; $62c3: $fe $9c

jr_020_62c5:
	inc sp                                           ; $62c5: $33

jr_020_62c6:
	jr jr_020_62fa                                   ; $62c6: $18 $32

	ld b, e                                          ; $62c8: $43
	nop                                              ; $62c9: $00
	sbc h                                            ; $62ca: $9c
	ld sp, $3018                                     ; $62cb: $31 $18 $30

jr_020_62ce:
	inc bc                                           ; $62ce: $03

jr_020_62cf:
	ret z                                            ; $62cf: $c8

jr_020_62d0:
	ld h, a                                          ; $62d0: $67
	cp $9c                                           ; $62d1: $fe $9c
	cpl                                              ; $62d3: $2f
	jr jr_020_6304                                   ; $62d4: $18 $2e

	ld b, e                                          ; $62d6: $43
	nop                                              ; $62d7: $00
	sbc h                                            ; $62d8: $9c
	dec l                                            ; $62d9: $2d
	jr @+$2e                                         ; $62da: $18 $2c

	inc bc                                           ; $62dc: $03
	ret z                                            ; $62dd: $c8

	ld h, a                                          ; $62de: $67
	cp $9c                                           ; $62df: $fe $9c
	dec hl                                           ; $62e1: $2b
	jr @+$2c                                         ; $62e2: $18 $2a

	ld h, e                                          ; $62e4: $63
	ret z                                            ; $62e5: $c8

	ld h, a                                          ; $62e6: $67

jr_020_62e7:
	jr c, jr_020_6285                                ; $62e7: $38 $9c

	add hl, hl                                       ; $62e9: $29
	jr jr_020_6314                                   ; $62ea: $18 $28

	inc bc                                           ; $62ec: $03
	ret z                                            ; $62ed: $c8

jr_020_62ee:
	ld h, a                                          ; $62ee: $67
	cp $9c                                           ; $62ef: $fe $9c
	daa                                              ; $62f1: $27

jr_020_62f2:
	jr jr_020_631a                                   ; $62f2: $18 $26

	ld h, d                                          ; $62f4: $62
	ret z                                            ; $62f5: $c8

	ld h, a                                          ; $62f6: $67
	jr c, jr_020_6295                                ; $62f7: $38 $9c

	dec h                                            ; $62f9: $25

jr_020_62fa:
	jr jr_020_6320                                   ; $62fa: $18 $24

	inc bc                                           ; $62fc: $03
	ret z                                            ; $62fd: $c8

	ld h, a                                          ; $62fe: $67
	cp $9c                                           ; $62ff: $fe $9c
	inc hl                                           ; $6301: $23
	jr jr_020_6326                                   ; $6302: $18 $22

jr_020_6304:
	ld b, e                                          ; $6304: $43
	nop                                              ; $6305: $00
	sbc h                                            ; $6306: $9c
	ld hl, $2018                                     ; $6307: $21 $18 $20
	inc bc                                           ; $630a: $03
	ret z                                            ; $630b: $c8

	ld h, a                                          ; $630c: $67
	cp $9c                                           ; $630d: $fe $9c
	rra                                              ; $630f: $1f
	jr jr_020_6330                                   ; $6310: $18 $1e

	ld h, e                                          ; $6312: $63
	ret z                                            ; $6313: $c8

jr_020_6314:
	ld h, a                                          ; $6314: $67
	jr c, jr_020_631a                                ; $6315: $38 $03

	ret nz                                           ; $6317: $c0

	ld c, e                                          ; $6318: $4b
	ret nz                                           ; $6319: $c0

jr_020_631a:
	ld b, a                                          ; $631a: $47
	nop                                              ; $631b: $00
	inc bc                                           ; $631c: $03
	ret nz                                           ; $631d: $c0

	ld c, e                                          ; $631e: $4b
	ret nz                                           ; $631f: $c0

jr_020_6320:
	ld b, [hl]                                       ; $6320: $46
	nop                                              ; $6321: $00
	sbc h                                            ; $6322: $9c
	dec e                                            ; $6323: $1d
	jr jr_020_6342                                   ; $6324: $18 $1c

jr_020_6326:
	inc bc                                           ; $6326: $03
	ret z                                            ; $6327: $c8

	ld h, a                                          ; $6328: $67
	cp $9b                                           ; $6329: $fe $9b
	dec de                                           ; $632b: $1b
	jr jr_020_6350                                   ; $632c: $18 $22

	sbc b                                            ; $632e: $98
	ld b, a                                          ; $632f: $47

jr_020_6330:
	nop                                              ; $6330: $00
	sbc h                                            ; $6331: $9c
	dec e                                            ; $6332: $1d
	sbc b                                            ; $6333: $98
	ld a, [de]                                       ; $6334: $1a
	inc bc                                           ; $6335: $03
	ret z                                            ; $6336: $c8

	ld h, a                                          ; $6337: $67
	cp $9e                                           ; $6338: $fe $9e
	add hl, de                                       ; $633a: $19
	sbc $18                                          ; $633b: $de $18
	inc bc                                           ; $633d: $03
	nop                                              ; $633e: $00
	inc bc                                           ; $633f: $03
	nop                                              ; $6340: $00
	inc bc                                           ; $6341: $03

jr_020_6342:
	nop                                              ; $6342: $00
	inc bc                                           ; $6343: $03

jr_020_6344:
	nop                                              ; $6344: $00
	ld d, a                                          ; $6345: $57
	nop                                              ; $6346: $00
	inc bc                                           ; $6347: $03
	ret nz                                           ; $6348: $c0

	ld c, e                                          ; $6349: $4b
	ret nz                                           ; $634a: $c0

	ld [bc], a                                       ; $634b: $02
	nop                                              ; $634c: $00
	dec de                                           ; $634d: $1b
	cp $9e                                           ; $634e: $fe $9e

jr_020_6350:
	rla                                              ; $6350: $17
	ld a, [hl-]                                      ; $6351: $3a
	nop                                              ; $6352: $00
	sbc h                                            ; $6353: $9c
	ld d, $18                                        ; $6354: $16 $18
	dec d                                            ; $6356: $15
	inc bc                                           ; $6357: $03
	ret z                                            ; $6358: $c8

	ld h, a                                          ; $6359: $67
	cp $9c                                           ; $635a: $fe $9c
	inc d                                            ; $635c: $14
	jr jr_020_6372                                   ; $635d: $18 $13

	ld h, e                                          ; $635f: $63
	ret z                                            ; $6360: $c8

	ld h, l                                          ; $6361: $65
	jr c, @-$62                                      ; $6362: $38 $9c

	ld [de], a                                       ; $6364: $12
	jr jr_020_6378                                   ; $6365: $18 $11

	inc bc                                           ; $6367: $03
	ret z                                            ; $6368: $c8

	ld h, a                                          ; $6369: $67
	cp $9c                                           ; $636a: $fe $9c
	db $10                                           ; $636c: $10
	jr jr_020_637e                                   ; $636d: $18 $0f

	ld b, e                                          ; $636f: $43
	nop                                              ; $6370: $00
	sbc h                                            ; $6371: $9c

jr_020_6372:
	ld c, $18                                        ; $6372: $0e $18
	dec c                                            ; $6374: $0d
	inc bc                                           ; $6375: $03
	ret z                                            ; $6376: $c8

	ld h, a                                          ; $6377: $67

jr_020_6378:
	cp $9c                                           ; $6378: $fe $9c
	inc c                                            ; $637a: $0c
	jr jr_020_6388                                   ; $637b: $18 $0b

	ld b, e                                          ; $637d: $43

jr_020_637e:
	nop                                              ; $637e: $00
	sbc h                                            ; $637f: $9c
	ld a, [bc]                                       ; $6380: $0a
	jr jr_020_638c                                   ; $6381: $18 $09

	inc bc                                           ; $6383: $03
	ret z                                            ; $6384: $c8

	ld h, a                                          ; $6385: $67
	cp $9c                                           ; $6386: $fe $9c

jr_020_6388:
	ld [$0718], sp                                   ; $6388: $08 $18 $07
	ld b, e                                          ; $638b: $43

jr_020_638c:
	nop                                              ; $638c: $00
	sbc d                                            ; $638d: $9a
	ld b, $18                                        ; $638e: $06 $18
	dec b                                            ; $6390: $05
	jr @+$06                                         ; $6391: $18 $04

	inc bc                                           ; $6393: $03
	cp $6f                                           ; $6394: $fe $6f
	cp $9c                                           ; $6396: $fe $9c
	inc bc                                           ; $6398: $03
	jr jr_020_639d                                   ; $6399: $18 $02

	ld b, e                                          ; $639b: $43
	nop                                              ; $639c: $00

jr_020_639d:
	ld h, a                                          ; $639d: $67
	jr nc, @+$05                                     ; $639e: $30 $03

	ld hl, sp+$4b                                    ; $63a0: $f8 $4b
	ld hl, sp+$6f                                    ; $63a2: $f8 $6f
	jr c, jr_020_6344                                ; $63a4: $38 $9e

	ld bc, $3063                                     ; $63a6: $01 $63 $30
	inc bc                                           ; $63a9: $03
	ld hl, sp+$4b                                    ; $63aa: $f8 $4b
	ld hl, sp+$67                                    ; $63ac: $f8 $67
	jr c, @+$05                                      ; $63ae: $38 $03

	ld hl, sp+$2b                                    ; $63b0: $f8 $2b
	ld hl, sp+$03                                    ; $63b2: $f8 $03
	sbc h                                            ; $63b4: $9c
	dec bc                                           ; $63b5: $0b
	ld hl, sp+$02                                    ; $63b6: $f8 $02
	sub d                                            ; $63b8: $92
	inc bc                                           ; $63b9: $03
	cp $03                                           ; $63ba: $fe $03
	cp $03                                           ; $63bc: $fe $03
	cp $03                                           ; $63be: $fe $03
	cp $03                                           ; $63c0: $fe $03
	cp $03                                           ; $63c2: $fe $03
	cp $23                                           ; $63c4: $fe $23
	cp $ff                                           ; $63c6: $fe $ff
	ld a, a                                          ; $63c8: $7f
	ld [hl], h                                       ; $63c9: $74
	dec d                                            ; $63ca: $15
	db $10                                           ; $63cb: $10
	dec c                                            ; $63cc: $0d
	adc c                                            ; $63cd: $89
	ld [rRAMG], sp                                   ; $63ce: $08 $00 $00
	call z, $b610                                    ; $63d1: $cc $10 $b6
	ld hl, $7c3f                                     ; $63d4: $21 $3f $7c
	ld a, e                                          ; $63d7: $7b
	ld a, [hl-]                                      ; $63d8: $3a
	db $eb                                           ; $63d9: $eb
	ccf                                              ; $63da: $3f
	ret nz                                           ; $63db: $c0

	ld [hl-], a                                      ; $63dc: $32
	add b                                            ; $63dd: $80
	ld [hl-], a                                      ; $63de: $32
	ld h, b                                          ; $63df: $60
	ld [hl-], a                                      ; $63e0: $32
	ld b, b                                          ; $63e1: $40
	ld [hl-], a                                      ; $63e2: $32
	jr nz, jr_020_6417                               ; $63e3: $20 $32

	pop af                                           ; $63e5: $f1
	ld d, a                                          ; $63e6: $57
	rst $38                                          ; $63e7: $ff
	ld a, a                                          ; $63e8: $7f
	jr jr_020_641d                                   ; $63e9: $18 $32

	push de                                          ; $63eb: $d5
	add hl, hl                                       ; $63ec: $29
	ld [hl], d                                       ; $63ed: $72
	ld hl, $192f                                     ; $63ee: $21 $2f $19
	call z, $8910                                    ; $63f1: $cc $10 $89
	ld [$0025], sp                                   ; $63f4: $08 $25 $00
	ld a, e                                          ; $63f7: $7b
	ld a, [hl-]                                      ; $63f8: $3a
	ld l, $77                                        ; $63f9: $2e $77
	ld h, a                                          ; $63fb: $67
	ld l, [hl]                                       ; $63fc: $6e
	ld b, h                                          ; $63fd: $44
	ld e, [hl]                                       ; $63fe: $5e
	scf                                              ; $63ff: $37
	ld [hl], a                                       ; $6400: $77
	ld b, a                                          ; $6401: $47
	ld a, [hl-]                                      ; $6402: $3a
	add sp, $25                                      ; $6403: $e8 $25
	ld hl, $ff00                                     ; $6405: $21 $00 $ff
	ld a, a                                          ; $6408: $7f
	ld c, a                                          ; $6409: $4f
	ld b, e                                          ; $640a: $43
	call z, Call_020_4a36                            ; $640b: $cc $36 $4a
	ld l, $e8                                        ; $640e: $2e $e8
	dec h                                            ; $6410: $25
	ld h, [hl]                                       ; $6411: $66
	dec e                                            ; $6412: $1d
	inc b                                            ; $6413: $04
	dec d                                            ; $6414: $15
	add c                                            ; $6415: $81
	nop                                              ; $6416: $00

jr_020_6417:
	ld h, a                                          ; $6417: $67
	ld l, [hl]                                       ; $6418: $6e
	ld b, h                                          ; $6419: $44
	ld e, [hl]                                       ; $641a: $5e
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00

jr_020_641d:
	call z, Call_020_5710                            ; $641d: $cc $10 $57
	add hl, bc                                       ; $6420: $09
	push de                                          ; $6421: $d5
	add hl, hl                                       ; $6422: $29
	dec h                                            ; $6423: $25
	nop                                              ; $6424: $00
	sbc a                                            ; $6425: $9f
	ld h, a                                          ; $6426: $67
	pop hl                                           ; $6427: $e1
	adc b                                            ; $6428: $88
	pop hl                                           ; $6429: $e1
	rst SubAFromDE                                          ; $642a: $df
	rst $38                                          ; $642b: $ff
	sbc c                                            ; $642c: $99
	cp e                                             ; $642d: $bb
	rst $38                                          ; $642e: $ff
	ld d, l                                          ; $642f: $55
	rst $38                                          ; $6430: $ff
	ld d, l                                          ; $6431: $55
	cp e                                             ; $6432: $bb
	reti                                             ; $6433: $d9


	rst $38                                          ; $6434: $ff
	ccf                                              ; $6435: $3f
	ldh [$d3], a                                     ; $6436: $e0 $d3
	rst $38                                          ; $6438: $ff
	pop af                                           ; $6439: $f1
	sbc b                                            ; $643a: $98
	xor d                                            ; $643b: $aa
	ld d, l                                          ; $643c: $55
	xor d                                            ; $643d: $aa
	ld d, l                                          ; $643e: $55
	xor $55                                          ; $643f: $ee $55
	cp e                                             ; $6441: $bb
	ld a, e                                          ; $6442: $7b
	ld a, [$f86f]                                    ; $6443: $fa $6f $f8
	ld [hl], a                                       ; $6446: $77
	rst FarCall                                          ; $6447: $f7
	sbc e                                            ; $6448: $9b
	ld de, $44aa                                     ; $6449: $11 $aa $44
	xor d                                            ; $644c: $aa
	rst FarCall                                          ; $644d: $f7
	sbc c                                            ; $644e: $99
	ld b, h                                          ; $644f: $44
	nop                                              ; $6450: $00
	xor d                                            ; $6451: $aa
	nop                                              ; $6452: $00
	xor d                                            ; $6453: $aa
	ld b, h                                          ; $6454: $44
	ld h, a                                          ; $6455: $67
	ld hl, sp+$67                                    ; $6456: $f8 $67
	sub b                                            ; $6458: $90
	ld sp, hl                                        ; $6459: $f9
	rst SubAFromDE                                          ; $645a: $df
	jp $03dd                                         ; $645b: $c3 $dd $03


	rst SubAFromDE                                          ; $645e: $df
	rst $38                                          ; $645f: $ff
	sbc [hl]                                         ; $6460: $9e
	add e                                            ; $6461: $83
	call c, $df03                                    ; $6462: $dc $03 $df
	rst $38                                          ; $6465: $ff
	db $db                                           ; $6466: $db
	db $fd                                           ; $6467: $fd
	sbc h                                            ; $6468: $9c
	ld bc, $7eff                                     ; $6469: $01 $ff $7e
	db $db                                           ; $646c: $db
	cp $7b                                           ; $646d: $fe $7b
	ldh [$dd], a                                     ; $646f: $e0 $dd
	ret nz                                           ; $6471: $c0

	ld a, e                                          ; $6472: $7b
	ldh [$dc], a                                     ; $6473: $e0 $dc
	add b                                            ; $6475: $80
	ld a, e                                          ; $6476: $7b
	ldh [$dc], a                                     ; $6477: $e0 $dc
	rst $38                                          ; $6479: $ff
	ld a, a                                          ; $647a: $7f
	rst FarCall                                          ; $647b: $f7
	sbc [hl]                                         ; $647c: $9e
	ld a, [hl]                                       ; $647d: $7e
	db $db                                           ; $647e: $db
	ld a, a                                          ; $647f: $7f
	ld h, e                                          ; $6480: $63
	ld h, b                                          ; $6481: $60
	daa                                              ; $6482: $27
	and b                                            ; $6483: $a0
	sbc l                                            ; $6484: $9d
	nop                                              ; $6485: $00
	adc d                                            ; $6486: $8a
	ld l, a                                          ; $6487: $6f
	ld [hl], b                                       ; $6488: $70
	sbc l                                            ; $6489: $9d
	rst $38                                          ; $648a: $ff
	ld [hl], l                                       ; $648b: $75
	ld l, a                                          ; $648c: $6f
	ld h, b                                          ; $648d: $60
	ld b, a                                          ; $648e: $47
	jr c, @+$69                                      ; $648f: $38 $67

	ld d, b                                          ; $6491: $50
	ld h, a                                          ; $6492: $67
	ld b, b                                          ; $6493: $40
	ld b, a                                          ; $6494: $47
	ldh [$9e], a                                     ; $6495: $e0 $9e
	ld a, a                                          ; $6497: $7f
	ld c, e                                          ; $6498: $4b
	ldh a, [rBGP]                                    ; $6499: $f0 $47
	ldh [$9c], a                                     ; $649b: $e0 $9c
	dec b                                            ; $649d: $05
	dec hl                                           ; $649e: $2b
	ld e, a                                          ; $649f: $5f
	inc de                                           ; $64a0: $13
	ldh [rIE], a                                     ; $64a1: $e0 $ff
	sbc l                                            ; $64a3: $9d
	dec d                                            ; $64a4: $15
	cp a                                             ; $64a5: $bf
	rrca                                             ; $64a6: $0f
	ldh [$7f], a                                     ; $64a7: $e0 $7f
	ld c, e                                          ; $64a9: $4b
	ld [hl], a                                       ; $64aa: $77
	sbc h                                            ; $64ab: $9c
	dec de                                           ; $64ac: $1b
	ldh [$7f], a                                     ; $64ad: $e0 $7f
	ld e, h                                          ; $64af: $5c
	sbc [hl]                                         ; $64b0: $9e
	xor a                                            ; $64b1: $af
	rra                                              ; $64b2: $1f
	ldh [$99], a                                     ; $64b3: $e0 $99
	ldh a, [$5c]                                     ; $64b5: $f0 $5c
	ld l, $00                                        ; $64b7: $2e $00
	inc b                                            ; $64b9: $04
	inc b                                            ; $64ba: $04
	ld l, a                                          ; $64bb: $6f
	add sp, -$68                                     ; $64bc: $e8 $98
	ei                                               ; $64be: $fb
	db $db                                           ; $64bf: $db
	rst $38                                          ; $64c0: $ff
	rst $38                                          ; $64c1: $ff
	rrca                                             ; $64c2: $0f
	and e                                            ; $64c3: $a3
	db $d3                                           ; $64c4: $d3
	call c, $9cff                                    ; $64c5: $dc $ff $9c
	ldh a, [c]                                       ; $64c8: $f2
	ld a, h                                          ; $64c9: $7c
	inc a                                            ; $64ca: $3c
	db $fc                                           ; $64cb: $fc
	sub b                                            ; $64cc: $90
	sub b                                            ; $64cd: $90
	inc d                                            ; $64ce: $14
	ld de, $a820                                     ; $64cf: $11 $20 $a8
	adc d                                            ; $64d2: $8a
	and d                                            ; $64d3: $a2
	and b                                            ; $64d4: $a0
	rst AddAOntoHL                                          ; $64d5: $ef
	ld l, e                                          ; $64d6: $6b
	ld l, [hl]                                       ; $64d7: $6e
	db $db                                           ; $64d8: $db
	ld d, h                                          ; $64d9: $54
	ld d, l                                          ; $64da: $55
	ld e, l                                          ; $64db: $5d
	ld l, a                                          ; $64dc: $6f
	ld d, e                                          ; $64dd: $53
	ld e, e                                          ; $64de: $5b
	ret nz                                           ; $64df: $c0

	adc h                                            ; $64e0: $8c
	call nc, $1882                                   ; $64e1: $d4 $82 $18
	inc h                                            ; $64e4: $24
	inc bc                                           ; $64e5: $03
	ld b, a                                          ; $64e6: $47
	ld a, [bc]                                       ; $64e7: $0a
	ld [hl+], a                                      ; $64e8: $22
	dec hl                                           ; $64e9: $2b
	ld a, a                                          ; $64ea: $7f
	xor $d1                                          ; $64eb: $ee $d1
	ret nz                                           ; $64ed: $c0

	db $10                                           ; $64ee: $10
	push af                                          ; $64ef: $f5
	db $dd                                           ; $64f0: $dd
	rst $38                                          ; $64f1: $ff
	db $fd                                           ; $64f2: $fd
	rst FarCall                                          ; $64f3: $f7
	call c, $9cff                                    ; $64f4: $dc $ff $9c
	res 3, [hl]                                      ; $64f7: $cb $9e
	ld [$8efc], sp                                   ; $64f9: $08 $fc $8e
	ld hl, sp+$03                                    ; $64fc: $f8 $03
	cp $bb                                           ; $64fe: $fe $bb
	ld a, c                                          ; $6500: $79
	ld bc, $e013                                     ; $6501: $01 $13 $e0
	rst SubAFromBC                                          ; $6504: $e7
	db $fc                                           ; $6505: $fc
	ld bc, $8000                                     ; $6506: $01 $00 $80
	ret z                                            ; $6509: $c8

	call z, $1f1f                                    ; $650a: $cc $1f $1f
	jp c, $9cff                                      ; $650d: $da $ff $9c

	ldh [hDisp0_SCY], a                                     ; $6510: $e0 $83
	dec b                                            ; $6512: $05
	db $fc                                           ; $6513: $fc
	adc l                                            ; $6514: $8d
	rlca                                             ; $6515: $07
	rrca                                             ; $6516: $0f
	cp h                                             ; $6517: $bc
	dec de                                           ; $6518: $1b
	db $10                                           ; $6519: $10
	ld b, h                                          ; $651a: $44
	or a                                             ; $651b: $b7
	ld [$f7f9], a                                    ; $651c: $ea $f9 $f7
	ld bc, $8420                                     ; $651f: $01 $20 $84
	dec hl                                           ; $6522: $2b
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	cp $f8                                           ; $6525: $fe $f8
	db $db                                           ; $6527: $db
	rst $38                                          ; $6528: $ff
	sbc l                                            ; $6529: $9d
	ld bc, $2f07                                     ; $652a: $01 $07 $2f
	ld d, b                                          ; $652d: $50
	ld a, a                                          ; $652e: $7f
	ld a, a                                          ; $652f: $7f
	sbc d                                            ; $6530: $9a
	db $fd                                           ; $6531: $fd
	cp $f4                                           ; $6532: $fe $f4
	ld [$7aa0], a                                    ; $6534: $ea $a0 $7a
	ld l, $db                                        ; $6537: $2e $db
	rst $38                                          ; $6539: $ff
	adc a                                            ; $653a: $8f
	rst AddAOntoHL                                          ; $653b: $ef
	ld d, a                                          ; $653c: $57
	xor e                                            ; $653d: $ab
	rla                                              ; $653e: $17
	rrca                                             ; $653f: $0f
	rrca                                             ; $6540: $0f
	rlca                                             ; $6541: $07
	inc bc                                           ; $6542: $03
	db $10                                           ; $6543: $10
	xor b                                            ; $6544: $a8
	ld d, h                                          ; $6545: $54
	add sp, -$10                                     ; $6546: $e8 $f0
	ldh a, [$f8]                                     ; $6548: $f0 $f8
	db $fc                                           ; $654a: $fc
	pop de                                           ; $654b: $d1
	rst $38                                          ; $654c: $ff
	sbc e                                            ; $654d: $9b
	add a                                            ; $654e: $87
	ld d, l                                          ; $654f: $55
	xor d                                            ; $6550: $aa
	ld d, b                                          ; $6551: $50
	db $fd                                           ; $6552: $fd
	sbc l                                            ; $6553: $9d
	ld a, b                                          ; $6554: $78
	xor d                                            ; $6555: $aa
	halt                                             ; $6556: $76
	ld a, [$ffcf]                                    ; $6557: $fa $cf $ff
	sbc l                                            ; $655a: $9d
	ld a, [bc]                                       ; $655b: $0a
	dec d                                            ; $655c: $15
	ei                                               ; $655d: $fb
	sbc l                                            ; $655e: $9d
	push af                                          ; $655f: $f5
	ld [$ffcb], a                                    ; $6560: $ea $cb $ff
	adc b                                            ; $6563: $88
	dec de                                           ; $6564: $1b
	rra                                              ; $6565: $1f
	scf                                              ; $6566: $37
	ld a, a                                          ; $6567: $7f
	rra                                              ; $6568: $1f
	dec sp                                           ; $6569: $3b
	add hl, bc                                       ; $656a: $09
	dec b                                            ; $656b: $05
	inc b                                            ; $656c: $04
	db $10                                           ; $656d: $10
	ld [bc], a                                       ; $656e: $02
	scf                                              ; $656f: $37
	add hl, sp                                       ; $6570: $39
	sbc h                                            ; $6571: $9c
	sbc [hl]                                         ; $6572: $9e
	ld c, $fb                                        ; $6573: $0e $fb
	rst AddAOntoHL                                          ; $6575: $ef
	db $fd                                           ; $6576: $fd
	ld hl, sp-$02                                    ; $6577: $f8 $fe
	ld a, a                                          ; $6579: $7f
	ld a, a                                          ; $657a: $7f
	ld h, e                                          ; $657b: $63
	ld [hl], b                                       ; $657c: $70
	adc [hl]                                         ; $657d: $8e
	ld hl, $080c                                     ; $657e: $21 $0c $08
	ld e, $7e                                        ; $6581: $1e $7e
	db $f4                                           ; $6583: $f4
	ld a, [$d3fc]                                    ; $6584: $fa $fc $d3
	ldh [rLCDC], a                                   ; $6587: $e0 $40
	ld [bc], a                                       ; $6589: $02
	nop                                              ; $658a: $00
	dec a                                            ; $658b: $3d
	ld a, [hl]                                       ; $658c: $7e
	ld a, [hl]                                       ; $658d: $7e
	cp $75                                           ; $658e: $fe $75
	sbc l                                            ; $6590: $9d
	ld a, e                                          ; $6591: $7b
	ei                                               ; $6592: $fb
	ld sp, hl                                        ; $6593: $f9
	adc h                                            ; $6594: $8c
	xor [hl]                                         ; $6595: $ae
	ld c, h                                          ; $6596: $4c
	xor d                                            ; $6597: $aa
	db $fc                                           ; $6598: $fc
	ld e, h                                          ; $6599: $5c
	call c, $e3f9                                    ; $659a: $dc $f9 $e3
	adc b                                            ; $659d: $88
	add hl, sp                                       ; $659e: $39
	ld h, e                                          ; $659f: $63
	halt                                             ; $65a0: $76
	add $cc                                          ; $65a1: $c6 $cc
	ret z                                            ; $65a3: $c8

	sub b                                            ; $65a4: $90
	ld [hl], c                                       ; $65a5: $71
	di                                               ; $65a6: $f3
	push af                                          ; $65a7: $f5
	sbc $e3                                          ; $65a8: $de $e3
	sbc l                                            ; $65aa: $9d
	rst JumpTable                                          ; $65ab: $c7
	sbc a                                            ; $65ac: $9f
	ld sp, hl                                        ; $65ad: $f9
	adc d                                            ; $65ae: $8a
	scf                                              ; $65af: $37
	ld h, a                                          ; $65b0: $67
	sbc $7d                                          ; $65b1: $de $7d
	rst FarCall                                          ; $65b3: $f7
	xor $00                                          ; $65b4: $ee $00
	dec sp                                           ; $65b6: $3b
	ld sp, hl                                        ; $65b7: $f9
	rst $38                                          ; $65b8: $ff
	or $9c                                           ; $65b9: $f6 $9c
	jr nc, jr_020_661e                               ; $65bb: $30 $61

	rrca                                             ; $65bd: $0f
	rlca                                             ; $65be: $07
	ld hl, sp-$08                                    ; $65bf: $f8 $f8
	pop hl                                           ; $65c1: $e1
	jp Jump_020_7a0f                                 ; $65c2: $c3 $0f $7a


	db $db                                           ; $65c5: $db
	sbc l                                            ; $65c6: $9d
	ret nz                                           ; $65c7: $c0

	add b                                            ; $65c8: $80
	ei                                               ; $65c9: $fb
	ld a, a                                          ; $65ca: $7f
	ld sp, hl                                        ; $65cb: $f9
	sbc c                                            ; $65cc: $99
	ld bc, $0703                                     ; $65cd: $01 $03 $07
	ccf                                              ; $65d0: $3f
	rst $38                                          ; $65d1: $ff
	ld hl, sp+$76                                    ; $65d2: $f8 $76
	inc e                                            ; $65d4: $1c
	sbc h                                            ; $65d5: $9c
	cp $fc                                           ; $65d6: $fe $fc
	ldh [$79], a                                     ; $65d8: $e0 $79
	ld a, $77                                        ; $65da: $3e $77
	ld hl, sp-$63                                    ; $65dc: $f8 $9d
	pop hl                                           ; $65de: $e1
	sbc a                                            ; $65df: $9f
	ld [hl], a                                       ; $65e0: $77
	ld a, [$f096]                                    ; $65e1: $fa $96 $f0
	ret nz                                           ; $65e4: $c0

	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	ld d, a                                          ; $65e7: $57
	dec hl                                           ; $65e8: $2b
	ld d, e                                          ; $65e9: $53
	daa                                              ; $65ea: $27
	rrca                                             ; $65eb: $0f
	sbc $ff                                          ; $65ec: $de $ff
	sbc d                                            ; $65ee: $9a
	xor b                                            ; $65ef: $a8
	call nc, $d8ac                                   ; $65f0: $d4 $ac $d8
	ldh a, [$62]                                     ; $65f3: $f0 $62
	ret nc                                           ; $65f5: $d0

	sbc [hl]                                         ; $65f6: $9e
	ld a, a                                          ; $65f7: $7f
	ld h, e                                          ; $65f8: $63
	inc d                                            ; $65f9: $14
	sbc h                                            ; $65fa: $9c
	db $f4                                           ; $65fb: $f4
	xor d                                            ; $65fc: $aa
	sub $7b                                          ; $65fd: $d6 $7b
	ld [hl], d                                       ; $65ff: $72
	rst SubAFromDE                                          ; $6600: $df
	rst $38                                          ; $6601: $ff
	sbc e                                            ; $6602: $9b
	dec bc                                           ; $6603: $0b
	ld d, l                                          ; $6604: $55
	add hl, hl                                       ; $6605: $29
	ld bc, $b05e                                     ; $6606: $01 $5e $b0
	ld a, [hl]                                       ; $6609: $7e
	cp h                                             ; $660a: $bc
	reti                                             ; $660b: $d9


	rst $38                                          ; $660c: $ff
	sub c                                            ; $660d: $91
	inc b                                            ; $660e: $04
	ld a, [hl+]                                      ; $660f: $2a
	ld d, l                                          ; $6610: $55
	cpl                                              ; $6611: $2f
	rla                                              ; $6612: $17
	cpl                                              ; $6613: $2f
	rlca                                             ; $6614: $07
	inc bc                                           ; $6615: $03
	ei                                               ; $6616: $fb
	push de                                          ; $6617: $d5
	xor d                                            ; $6618: $aa
	ret nc                                           ; $6619: $d0

	add sp, -$30                                     ; $661a: $e8 $d0
	ld a, $c0                                        ; $661c: $3e $c0

jr_020_661e:
	ld h, l                                          ; $661e: $65
	ld e, c                                          ; $661f: $59
	jp c, $9eff                                      ; $6620: $da $ff $9e

	ld a, [$3024]                                    ; $6623: $fa $24 $30
	ret                                              ; $6626: $c9


	rst $38                                          ; $6627: $ff
	rst SubAFromDE                                          ; $6628: $df
	add [hl]                                         ; $6629: $86
	rst SubAFromDE                                          ; $662a: $df
	jp nz, $e68b                                     ; $662b: $c2 $8b $e6

	ccf                                              ; $662e: $3f
	cp [hl]                                          ; $662f: $be
	sbc [hl]                                         ; $6630: $9e
	ld c, c                                          ; $6631: $49
	ld c, c                                          ; $6632: $49
	add hl, hl                                       ; $6633: $29
	ld sp, $e41d                                     ; $6634: $31 $1d $e4
	adc b                                            ; $6637: $88
	add b                                            ; $6638: $80
	ld a, a                                          ; $6639: $7f
	ld a, a                                          ; $663a: $7f
	ccf                                              ; $663b: $3f
	ccf                                              ; $663c: $3f
	dec de                                           ; $663d: $1b
	bit 4, a                                         ; $663e: $cb $67
	ld a, a                                          ; $6640: $7f
	ld h, b                                          ; $6641: $60
	ldh [hDisp0_WX], a                                     ; $6642: $e0 $89
	ccf                                              ; $6644: $3f
	sbc a                                            ; $6645: $9f
	sbc a                                            ; $6646: $9f
	cp d                                             ; $6647: $ba
	inc [hl]                                         ; $6648: $34
	ld d, h                                          ; $6649: $54
	or b                                             ; $664a: $b0
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	adc b                                            ; $664d: $88
	sbc b                                            ; $664e: $98
	or c                                             ; $664f: $b1
	inc sp                                           ; $6650: $33
	ld h, a                                          ; $6651: $67
	jp $c080                                         ; $6652: $c3 $80 $c0


	ld h, h                                          ; $6655: $64
	ld h, [hl]                                       ; $6656: $66
	ld c, a                                          ; $6657: $4f
	rst GetHLinHL                                          ; $6658: $cf
	cp e                                             ; $6659: $bb
	ld h, e                                          ; $665a: $63
	ldh [$8e], a                                     ; $665b: $e0 $8e
	add sp, -$16                                     ; $665d: $e8 $ea
	ld [hl], d                                       ; $665f: $72
	ldh a, [c]                                       ; $6660: $f2
	ld a, [$fe6e]                                    ; $6661: $fa $6e $fe
	cp [hl]                                          ; $6664: $be
	ret c                                            ; $6665: $d8

	cp d                                             ; $6666: $ba
	or d                                             ; $6667: $b2

Jump_020_6668:
	ld [hl-], a                                      ; $6668: $32
	ld [hl-], a                                      ; $6669: $32
	and $66                                          ; $666a: $e6 $66
	adc h                                            ; $666c: $8c
	rst $38                                          ; $666d: $ff
	sbc $dd                                          ; $666e: $de $dd
	sbc e                                            ; $6670: $9b
	sbc l                                            ; $6671: $9d
	sbc c                                            ; $6672: $99
	add hl, sp                                       ; $6673: $39
	ld [hl], c                                       ; $6674: $71
	ld sp, hl                                        ; $6675: $f9
	sub [hl]                                         ; $6676: $96
	add b                                            ; $6677: $80
	ld b, b                                          ; $6678: $40
	ld bc, $0201                                     ; $6679: $01 $01 $02
	ld b, $0d                                        ; $667c: $06 $0d
	add hl, de                                       ; $667e: $19
	ld a, a                                          ; $667f: $7f
	ld [hl], b                                       ; $6680: $70
	jp c, $fedf                                      ; $6681: $da $df $fe

	db $db                                           ; $6684: $db
	rst $38                                          ; $6685: $ff
	ld a, e                                          ; $6686: $7b
	ld hl, sp-$21                                    ; $6687: $f8 $df
	cp $df                                           ; $6689: $fe $df
	db $fc                                           ; $668b: $fc
	adc [hl]                                         ; $668c: $8e
	ld hl, sp-$10                                    ; $668d: $f8 $f0
	ldh [$fa], a                                     ; $668f: $e0 $fa
	ld e, l                                          ; $6691: $5d
	xor d                                            ; $6692: $aa
	ld d, h                                          ; $6693: $54
	xor d                                            ; $6694: $aa
	ld b, b                                          ; $6695: $40
	add b                                            ; $6696: $80
	ld b, b                                          ; $6697: $40
	dec b                                            ; $6698: $05
	and d                                            ; $6699: $a2
	ld d, l                                          ; $669a: $55
	xor e                                            ; $669b: $ab
	ld d, l                                          ; $669c: $55
	cp a                                             ; $669d: $bf
	ld l, a                                          ; $669e: $6f
	jp c, $ffce                                      ; $669f: $da $ce $ff

	sbc [hl]                                         ; $66a2: $9e
	rst AddAOntoHL                                          ; $66a3: $ef
	ld a, [$109d]                                    ; $66a4: $fa $9d $10
	xor $d1                                          ; $66a7: $ee $d1
	rst $38                                          ; $66a9: $ff
	sub b                                            ; $66aa: $90
	ld l, a                                          ; $66ab: $6f
	cp d                                             ; $66ac: $ba
	ld d, l                                          ; $66ad: $55
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	cp c                                             ; $66b0: $b9
	ld e, l                                          ; $66b1: $5d
	nop                                              ; $66b2: $00
	sub b                                            ; $66b3: $90
	ld b, l                                          ; $66b4: $45
	xor d                                            ; $66b5: $aa
	rst $38                                          ; $66b6: $ff
	rst $38                                          ; $66b7: $ff
	ld b, [hl]                                       ; $66b8: $46
	and d                                            ; $66b9: $a2
	pop de                                           ; $66ba: $d1
	rst $38                                          ; $66bb: $ff
	sbc h                                            ; $66bc: $9c
	xor d                                            ; $66bd: $aa
	dec d                                            ; $66be: $15
	ld a, [bc]                                       ; $66bf: $0a
	db $fd                                           ; $66c0: $fd
	sbc e                                            ; $66c1: $9b
	add hl, bc                                       ; $66c2: $09
	ld d, l                                          ; $66c3: $55
	ld [$ddf5], a                                    ; $66c4: $ea $f5 $dd
	rst $38                                          ; $66c7: $ff
	sbc [hl]                                         ; $66c8: $9e
	or $43                                           ; $66c9: $f6 $43
	ldh [$9a], a                                     ; $66cb: $e0 $9a
	ld d, h                                          ; $66cd: $54
	xor b                                            ; $66ce: $a8
	ld d, b                                          ; $66cf: $50
	xor b                                            ; $66d0: $a8
	db $10                                           ; $66d1: $10
	ld a, b                                          ; $66d2: $78
	ld a, h                                          ; $66d3: $7c
	sbc d                                            ; $66d4: $9a
	xor e                                            ; $66d5: $ab
	ld d, a                                          ; $66d6: $57
	xor a                                            ; $66d7: $af
	ld d, a                                          ; $66d8: $57
	rst AddAOntoHL                                          ; $66d9: $ef
	rst GetHLinHL                                          ; $66da: $cf
	rst $38                                          ; $66db: $ff
	sub b                                            ; $66dc: $90
	ld [$2a05], sp                                   ; $66dd: $08 $05 $2a
	ld de, $0522                                     ; $66e0: $11 $22 $05
	ld [bc], a                                       ; $66e3: $02

Call_020_66e4:
	nop                                              ; $66e4: $00
	rst FarCall                                          ; $66e5: $f7
	ld a, [$eed5]                                    ; $66e6: $fa $d5 $ee
	db $dd                                           ; $66e9: $dd
	ld a, [$d0fd]                                    ; $66ea: $fa $fd $d0
	rst $38                                          ; $66ed: $ff
	adc a                                            ; $66ee: $8f
	nop                                              ; $66ef: $00
	ld b, b                                          ; $66f0: $40
	ld [hl], b                                       ; $66f1: $70
	or b                                             ; $66f2: $b0
	cp e                                             ; $66f3: $bb
	cp [hl]                                          ; $66f4: $be
	sbc [hl]                                         ; $66f5: $9e
	ld d, $79                                        ; $66f6: $16 $79
	rra                                              ; $66f8: $1f
	rrca                                             ; $66f9: $0f
	rrca                                             ; $66fa: $0f
	inc b                                            ; $66fb: $04
	ld bc, $8101                                     ; $66fc: $01 $01 $81
	ld b, [hl]                                       ; $66ff: $46
	adc b                                            ; $6700: $88
	sbc e                                            ; $6701: $9b
	ld hl, $f1e1                                     ; $6702: $21 $e1 $f1
	ld sp, hl                                        ; $6705: $f9
	ld [hl], a                                       ; $6706: $77
	jp z, $2095                                      ; $6707: $ca $95 $20

	ldh [$b0], a                                     ; $670a: $e0 $b0
	jr jr_020_672a                                   ; $670c: $18 $1c

	inc e                                            ; $670e: $1c
	inc d                                            ; $670f: $14
	nop                                              ; $6710: $00
	rst SubAFromDE                                          ; $6711: $df
	rra                                              ; $6712: $1f
	ld a, b                                          ; $6713: $78
	di                                               ; $6714: $f3
	rst SubAFromDE                                          ; $6715: $df
	inc bc                                           ; $6716: $03
	ld [hl], d                                       ; $6717: $72
	inc d                                            ; $6718: $14
	ld [hl], d                                       ; $6719: $72
	and b                                            ; $671a: $a0
	sub a                                            ; $671b: $97
	ld a, a                                          ; $671c: $7f
	ld e, a                                          ; $671d: $5f
	ld e, a                                          ; $671e: $5f
	ld c, a                                          ; $671f: $4f

Call_020_6720:
	ld h, a                                          ; $6720: $67
	ld h, c                                          ; $6721: $61
	ldh [$e1], a                                     ; $6722: $e0 $e1
	sbc $e0                                          ; $6724: $de $e0
	sbc e                                            ; $6726: $9b
	ldh a, [$dc]                                     ; $6727: $f0 $dc
	ret c                                            ; $6729: $d8

jr_020_672a:
	ret c                                            ; $672a: $d8

	db $dd                                           ; $672b: $dd
	ldh [$7c], a                                     ; $672c: $e0 $7c
	reti                                             ; $672e: $d9


	ld a, [hl]                                       ; $672f: $7e
	pop hl                                           ; $6730: $e1
	jp c, $8f80                                      ; $6731: $da $80 $8f

	nop                                              ; $6734: $00
	ld e, [hl]                                       ; $6735: $5e
	cp h                                             ; $6736: $bc
	ld [$a8d4], a                                    ; $6737: $ea $d4 $a8
	ret nz                                           ; $673a: $c0

	and b                                            ; $673b: $a0
	ld b, b                                          ; $673c: $40
	and c                                            ; $673d: $a1
	ld b, e                                          ; $673e: $43
	dec d                                            ; $673f: $15
	dec hl                                           ; $6740: $2b
	ld d, a                                          ; $6741: $57
	ccf                                              ; $6742: $3f
	ld e, a                                          ; $6743: $5f
	ld a, $e0                                        ; $6744: $3e $e0
	sub b                                            ; $6746: $90
	or [hl]                                          ; $6747: $b6
	ld c, b                                          ; $6748: $48
	and c                                            ; $6749: $a1
	ld b, e                                          ; $674a: $43
	sub l                                            ; $674b: $95
	dec hl                                           ; $674c: $2b
	ld a, l                                          ; $674d: $7d
	nop                                              ; $674e: $00
	ld c, c                                          ; $674f: $49
	or a                                             ; $6750: $b7
	ld e, [hl]                                       ; $6751: $5e
	cp h                                             ; $6752: $bc
	ld l, d                                          ; $6753: $6a
	call nc, $c982                                   ; $6754: $d4 $82 $c9
	rst $38                                          ; $6757: $ff
	ld hl, sp+$75                                    ; $6758: $f8 $75
	ld c, b                                          ; $675a: $48
	sbc h                                            ; $675b: $9c
	add b                                            ; $675c: $80
	ld c, d                                          ; $675d: $4a
	or l                                             ; $675e: $b5
	sub $ff                                          ; $675f: $d6 $ff
	sbc e                                            ; $6761: $9b
	cp a                                             ; $6762: $bf
	ld d, a                                          ; $6763: $57
	xor e                                            ; $6764: $ab
	rst SubAFromHL                                          ; $6765: $d7
	halt                                             ; $6766: $76
	and b                                            ; $6767: $a0
	sbc b                                            ; $6768: $98
	ld b, b                                          ; $6769: $40
	xor b                                            ; $676a: $a8
	ld d, h                                          ; $676b: $54
	jr z, jr_020_677e                                ; $676c: $28 $10

	db $fd                                           ; $676e: $fd
	cp $5d                                           ; $676f: $fe $5d
	add h                                            ; $6771: $84
	call c, $7eff                                    ; $6772: $dc $ff $7e
	ld [$ae92], a                                    ; $6775: $ea $92 $ae
	ld a, l                                          ; $6778: $7d
	cp $ff                                           ; $6779: $fe $ff
	ld d, a                                          ; $677b: $57
	nop                                              ; $677c: $00
	ld d, b                                          ; $677d: $50

jr_020_677e:
	xor b                                            ; $677e: $a8
	ld d, c                                          ; $677f: $51
	add d                                            ; $6780: $82
	ld bc, $a800                                     ; $6781: $01 $00 $a8
	pop de                                           ; $6784: $d1
	rst $38                                          ; $6785: $ff
	sub b                                            ; $6786: $90
	ld b, b                                          ; $6787: $40
	add c                                            ; $6788: $81
	ld bc, $a804                                     ; $6789: $01 $04 $a8
	dec d                                            ; $678c: $15
	ld a, [bc]                                       ; $678d: $0a
	ld d, l                                          ; $678e: $55
	cp a                                             ; $678f: $bf
	ld a, [hl]                                       ; $6790: $7e
	cp $fb                                           ; $6791: $fe $fb
	ld d, a                                          ; $6793: $57
	ld [$7af5], a                                    ; $6794: $ea $f5 $7a
	ld a, h                                          ; $6797: $7c
	db $d3                                           ; $6798: $d3
	rst $38                                          ; $6799: $ff
	ld l, e                                          ; $679a: $6b
	rla                                              ; $679b: $17
	sbc [hl]                                         ; $679c: $9e
	ld bc, $0766                                     ; $679d: $01 $66 $07
	pop de                                           ; $67a0: $d1
	rst $38                                          ; $67a1: $ff
	sbc d                                            ; $67a2: $9a
	call nz, Call_020_66e4                           ; $67a3: $c4 $e4 $66
	ld b, e                                          ; $67a6: $43
	ld h, e                                          ; $67a7: $63
	sbc $01                                          ; $67a8: $de $01
	sub e                                            ; $67aa: $93
	rst SubAFromDE                                          ; $67ab: $df
	rst AddAOntoHL                                          ; $67ac: $ef
	ld h, l                                          ; $67ad: $65
	ld b, h                                          ; $67ae: $44
	pop hl                                           ; $67af: $e1
	pop bc                                           ; $67b0: $c1
	db $e3                                           ; $67b1: $e3
	pop af                                           ; $67b2: $f1
	ccf                                              ; $67b3: $3f
	rra                                              ; $67b4: $1f
	sbc a                                            ; $67b5: $9f
	cp a                                             ; $67b6: $bf
	ld a, b                                          ; $67b7: $78
	jp Jump_020_5063                                 ; $67b8: $c3 $63 $50


	adc [hl]                                         ; $67bb: $8e
	sub c                                            ; $67bc: $91
	sbc b                                            ; $67bd: $98
	sub d                                            ; $67be: $92
	sbc e                                            ; $67bf: $9b

jr_020_67c0:
	sbc e                                            ; $67c0: $9b
	ret                                              ; $67c1: $c9


	call $84c2                                       ; $67c2: $cd $c2 $84
	add h                                            ; $67c5: $84
	adc h                                            ; $67c6: $8c
	add h                                            ; $67c7: $84
	add h                                            ; $67c8: $84
	add $c2                                          ; $67c9: $c6 $c2
	push bc                                          ; $67cb: $c5
	ld a, [hl]                                       ; $67cc: $7e
	db $dd                                           ; $67cd: $dd
	ld a, a                                          ; $67ce: $7f
	sbc $3f                                          ; $67cf: $de $3f
	ld sp, hl                                        ; $67d1: $f9
	adc h                                            ; $67d2: $8c
	ret c                                            ; $67d3: $d8

	ld hl, sp-$4c                                    ; $67d4: $f8 $b4
	cp l                                             ; $67d6: $bd
	cp l                                             ; $67d7: $bd
	inc a                                            ; $67d8: $3c
	ld a, $3e                                        ; $67d9: $3e $3e
	ld h, b                                          ; $67db: $60
	ld h, b                                          ; $67dc: $60
	ld l, h                                          ; $67dd: $6c
	ld l, h                                          ; $67de: $6c
	ld h, h                                          ; $67df: $64
	db $e4                                           ; $67e0: $e4
	xor $e6                                          ; $67e1: $ee $e6
	rst SubAFromBC                                          ; $67e3: $e7
	rst SubAFromBC                                          ; $67e4: $e7
	db $eb                                           ; $67e5: $eb
	sbc $e3                                          ; $67e6: $de $e3
	rst SubAFromDE                                          ; $67e8: $df
	pop hl                                           ; $67e9: $e1
	reti                                             ; $67ea: $d9


	add b                                            ; $67eb: $80
	ld [hl], h                                       ; $67ec: $74
	db $ec                                           ; $67ed: $ec
	sbc e                                            ; $67ee: $9b
	db $f4                                           ; $67ef: $f4
	jp z, $96a5                                      ; $67f0: $ca $a5 $96

	ld [hl], h                                       ; $67f3: $74
	call c, $0b9a                                    ; $67f4: $dc $9a $0b
	dec [hl]                                         ; $67f7: $35
	ld e, d                                          ; $67f8: $5a
	ld l, c                                          ; $67f9: $69
	ld d, a                                          ; $67fa: $57
	ld a, d                                          ; $67fb: $7a
	cp [hl]                                          ; $67fc: $be
	ld [hl], h                                       ; $67fd: $74
	ld d, h                                          ; $67fe: $54
	jp nc, $9eff                                     ; $67ff: $d2 $ff $9e

	db $fc                                           ; $6802: $fc
	ld a, [$0398]                                    ; $6803: $fa $98 $03
	nop                                              ; $6806: $00
	ld [bc], a                                       ; $6807: $02
	ld bc, $a942                                     ; $6808: $01 $42 $a9
	db $dd                                           ; $680b: $dd
	ld a, [de]                                       ; $680c: $1a
	ret nz                                           ; $680d: $c0

	jr z, jr_020_67c0                                ; $680e: $28 $b0

	ld h, b                                          ; $6810: $60
	ldh a, [$98]                                     ; $6811: $f0 $98
	ret nc                                           ; $6813: $d0

	ret nz                                           ; $6814: $c0

	add b                                            ; $6815: $80
	ret nc                                           ; $6816: $d0

	add sp, -$10                                     ; $6817: $e8 $f0
	ld [$ffd7], a                                    ; $6819: $ea $d7 $ff
	sbc c                                            ; $681c: $99
	ld a, a                                          ; $681d: $7f
	xor a                                            ; $681e: $af
	ld d, a                                          ; $681f: $57
	cp a                                             ; $6820: $bf
	ld l, a                                          ; $6821: $6f
	cp a                                             ; $6822: $bf
	ld a, d                                          ; $6823: $7a
	adc e                                            ; $6824: $8b
	ld a, [hl]                                       ; $6825: $7e
	cp [hl]                                          ; $6826: $be
	sbc h                                            ; $6827: $9c
	ld b, b                                          ; $6828: $40
	sub b                                            ; $6829: $90
	ld b, b                                          ; $682a: $40
	ld b, d                                          ; $682b: $42
	rst $38                                          ; $682c: $ff
	sub b                                            ; $682d: $90
	ld a, a                                          ; $682e: $7f
	cp l                                             ; $682f: $bd
	ld [hl], d                                       ; $6830: $72
	ld b, c                                          ; $6831: $41
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	jr nz, jr_020_6836                               ; $6834: $20 $00

jr_020_6836:
	add b                                            ; $6836: $80
	ld b, d                                          ; $6837: $42
	adc l                                            ; $6838: $8d
	cp [hl]                                          ; $6839: $be
	rst $38                                          ; $683a: $ff
	rst $38                                          ; $683b: $ff
	rst SubAFromDE                                          ; $683c: $df
	pop de                                           ; $683d: $d1
	rst $38                                          ; $683e: $ff
	sbc e                                            ; $683f: $9b
	dec bc                                           ; $6840: $0b
	dec b                                            ; $6841: $05
	ld [bc], a                                       ; $6842: $02
	dec b                                            ; $6843: $05
	db $fd                                           ; $6844: $fd
	sbc h                                            ; $6845: $9c
	db $f4                                           ; $6846: $f4
	ld a, [$40fd]                                    ; $6847: $fa $fd $40
	inc h                                            ; $684a: $24
	db $dd                                           ; $684b: $dd
	rst $38                                          ; $684c: $ff
	sbc h                                            ; $684d: $9c
	call Call_020_4d4d                               ; $684e: $cd $4d $4d
	sbc $8b                                          ; $6851: $de $8b
	sbc d                                            ; $6853: $9a
	adc d                                            ; $6854: $8a
	add $32                                          ; $6855: $c6 $32
	or d                                             ; $6857: $b2
	or d                                             ; $6858: $b2
	sbc $f4                                          ; $6859: $de $f4
	sbc [hl]                                         ; $685b: $9e
	or l                                             ; $685c: $b5
	ld [hl], l                                       ; $685d: $75
	sub l                                            ; $685e: $95
	ld [hl], d                                       ; $685f: $72
	sbc $f9                                          ; $6860: $de $f9
	sub a                                            ; $6862: $97
	db $fc                                           ; $6863: $fc
	ld a, h                                          ; $6864: $7c
	ld a, [hl]                                       ; $6865: $7e
	ccf                                              ; $6866: $3f
	rra                                              ; $6867: $1f
	cpl                                              ; $6868: $2f
	ccf                                              ; $6869: $3f
	scf                                              ; $686a: $37
	halt                                             ; $686b: $76
	ld a, h                                          ; $686c: $7c
	ld a, l                                          ; $686d: $7d
	ld [hl], e                                       ; $686e: $73
	sub l                                            ; $686f: $95
	jr nz, jr_020_6893                               ; $6870: $20 $21

	inc bc                                           ; $6872: $03
	add e                                            ; $6873: $83
	add c                                            ; $6874: $81
	ret nz                                           ; $6875: $c0

	ldh [$d0], a                                     ; $6876: $e0 $d0
	ret nc                                           ; $6878: $d0

	ret c                                            ; $6879: $d8

	ld sp, hl                                        ; $687a: $f9
	adc h                                            ; $687b: $8c
	ld d, b                                          ; $687c: $50
	ld [hl], b                                       ; $687d: $70
	inc [hl]                                         ; $687e: $34
	cp l                                             ; $687f: $bd
	cp l                                             ; $6880: $bd
	cp h                                             ; $6881: $bc
	cp [hl]                                          ; $6882: $be
	cp [hl]                                          ; $6883: $be
	ldh [$e8], a                                     ; $6884: $e0 $e8
	db $fc                                           ; $6886: $fc
	ld a, h                                          ; $6887: $7c
	ld l, h                                          ; $6888: $6c
	ld l, h                                          ; $6889: $6c
	ld l, [hl]                                       ; $688a: $6e
	ld h, [hl]                                       ; $688b: $66
	ld l, a                                          ; $688c: $6f
	ld l, a                                          ; $688d: $6f
	ld l, e                                          ; $688e: $6b
	sbc $63                                          ; $688f: $de $63
	sbc [hl]                                         ; $6891: $9e
	ld h, c                                          ; $6892: $61

jr_020_6893:
	ld h, d                                          ; $6893: $62
	ret nz                                           ; $6894: $c0

	sbc d                                            ; $6895: $9a
	xor d                                            ; $6896: $aa
	ld [hl], l                                       ; $6897: $75
	db $db                                           ; $6898: $db
	rst $38                                          ; $6899: $ff
	rst FarCall                                          ; $689a: $f7
	sbc $ff                                          ; $689b: $de $ff
	sbc d                                            ; $689d: $9a
	ld d, l                                          ; $689e: $55
	adc d                                            ; $689f: $8a
	inc h                                            ; $68a0: $24
	nop                                              ; $68a1: $00
	ld [$9ef7], sp                                   ; $68a2: $08 $f7 $9e
	add hl, bc                                       ; $68a5: $09
	ret c                                            ; $68a6: $d8

	rst $38                                          ; $68a7: $ff
	sbc l                                            ; $68a8: $9d
	or a                                             ; $68a9: $b7
	rst $38                                          ; $68aa: $ff
	ld [hl], d                                       ; $68ab: $72
	jp nc, $009b                                     ; $68ac: $d2 $9b $00

	ld c, b                                          ; $68af: $48
	nop                                              ; $68b0: $00
	ld [hl+], a                                      ; $68b1: $22
	ld [hl], $e0                                     ; $68b2: $36 $e0
	sbc e                                            ; $68b4: $9b
	rst AddAOntoHL                                          ; $68b5: $ef
	db $fd                                           ; $68b6: $fd
	cp e                                             ; $68b7: $bb
	rst $38                                          ; $68b8: $ff
	ld [hl], h                                       ; $68b9: $74

jr_020_68ba:
	xor c                                            ; $68ba: $a9
	sbc e                                            ; $68bb: $9b
	db $10                                           ; $68bc: $10
	ld [bc], a                                       ; $68bd: $02
	ld b, h                                          ; $68be: $44
	nop                                              ; $68bf: $00
	ld a, b                                          ; $68c0: $78
	sbc c                                            ; $68c1: $99
	ld b, e                                          ; $68c2: $43
	ldh [$7c], a                                     ; $68c3: $e0 $7c
	jr nc, jr_020_6946                               ; $68c5: $30 $7f

	ldh [$74], a                                     ; $68c7: $e0 $74
	inc l                                            ; $68c9: $2c
	sbc d                                            ; $68ca: $9a
	ld de, $4400                                     ; $68cb: $11 $00 $44
	nop                                              ; $68ce: $00
	ld de, $9ef7                                     ; $68cf: $11 $f7 $9e
	and b                                            ; $68d2: $a0
	ret c                                            ; $68d3: $d8

	rst $38                                          ; $68d4: $ff
	ld a, a                                          ; $68d5: $7f
	and d                                            ; $68d6: $a2
	ld [hl], a                                       ; $68d7: $77
	add c                                            ; $68d8: $81
	ld a, a                                          ; $68d9: $7f
	and b                                            ; $68da: $a0
	ld a, a                                          ; $68db: $7f
	and d                                            ; $68dc: $a2
	ld [hl], e                                       ; $68dd: $73
	add c                                            ; $68de: $81
	ld a, c                                          ; $68df: $79
	ld b, c                                          ; $68e0: $41
	ld a, a                                          ; $68e1: $7f
	ld b, b                                          ; $68e2: $40
	sbc l                                            ; $68e3: $9d
	db $fc                                           ; $68e4: $fc
	ld a, [$3370]                                    ; $68e5: $fa $70 $33
	db $dd                                           ; $68e8: $dd
	rst $38                                          ; $68e9: $ff
	adc a                                            ; $68ea: $8f
	rla                                              ; $68eb: $17
	rrca                                             ; $68ec: $0f
	rla                                              ; $68ed: $17
	dec bc                                           ; $68ee: $0b
	dec b                                            ; $68ef: $05
	ld bc, $d5a2                                     ; $68f0: $01 $a2 $d5
	add sp, -$10                                     ; $68f3: $e8 $f0
	add sp, -$0c                                     ; $68f5: $e8 $f4
	ld a, [$5dfe]                                    ; $68f7: $fa $fe $5d
	ld a, [hl+]                                      ; $68fa: $2a
	ld b, [hl]                                       ; $68fb: $46
	and b                                            ; $68fc: $a0
	ld a, a                                          ; $68fd: $7f
	rst GetHLinHL                                          ; $68fe: $cf
	sub d                                            ; $68ff: $92
	ld b, b                                          ; $6900: $40
	or h                                             ; $6901: $b4
	ld a, [$8f5d]                                    ; $6902: $fa $5d $8f
	dec d                                            ; $6905: $15
	rst $38                                          ; $6906: $ff
	ld a, a                                          ; $6907: $7f
	cp a                                             ; $6908: $bf
	ld c, e                                          ; $6909: $4b
	dec b                                            ; $690a: $05
	and d                                            ; $690b: $a2
	ld [hl], b                                       ; $690c: $70
	ld e, d                                          ; $690d: $5a
	ld l, b                                          ; $690e: $68
	ld l, d                                          ; $690f: $6a
	ret nz                                           ; $6910: $c0

	rst SubAFromDE                                          ; $6911: $df
	ld c, c                                          ; $6912: $49
	sub e                                            ; $6913: $93
	dec bc                                           ; $6914: $0b
	ld a, [bc]                                       ; $6915: $0a
	dec bc                                           ; $6916: $0b
	ld a, [bc]                                       ; $6917: $0a
	ld b, $32                                        ; $6918: $06 $32
	or [hl]                                          ; $691a: $b6
	or [hl]                                          ; $691b: $b6
	db $f4                                           ; $691c: $f4
	push af                                          ; $691d: $f5
	db $f4                                           ; $691e: $f4
	push af                                          ; $691f: $f5
	halt                                             ; $6920: $76
	ret nz                                           ; $6921: $c0

	ld d, d                                          ; $6922: $52
	jr nc, jr_020_68ba                               ; $6923: $30 $95

	ldh [c], a                                       ; $6925: $e2
	and e                                            ; $6926: $a3
	ld a, [de]                                       ; $6927: $1a
	ld a, [de]                                       ; $6928: $1a
	ld a, [bc]                                       ; $6929: $0a
	ret z                                            ; $692a: $c8

	ld hl, sp-$08                                    ; $692b: $f8 $f8
	pop hl                                           ; $692d: $e1
	ldh [$de], a                                     ; $692e: $e0 $de
	ld sp, hl                                        ; $6930: $f9
	sbc d                                            ; $6931: $9a
	add hl, sp                                       ; $6932: $39
	add hl, bc                                       ; $6933: $09
	ld bc, $1f1f                                     ; $6934: $01 $1f $1f
	db $db                                           ; $6937: $db
	rlca                                             ; $6938: $07
	ld sp, hl                                        ; $6939: $f9
	adc a                                            ; $693a: $8f
	ld a, c                                          ; $693b: $79
	ld a, h                                          ; $693c: $7c
	ld a, h                                          ; $693d: $7c
	ld a, [hl]                                       ; $693e: $7e
	ld l, a                                          ; $693f: $6f
	ld l, a                                          ; $6940: $6f
	ld [hl], a                                       ; $6941: $77
	ld h, e                                          ; $6942: $63
	rst JumpTable                                          ; $6943: $c7
	db $e3                                           ; $6944: $e3
	db $e3                                           ; $6945: $e3

jr_020_6946:
	pop bc                                           ; $6946: $c1
	ret nc                                           ; $6947: $d0

	ret nc                                           ; $6948: $d0

	ret nz                                           ; $6949: $c0

	ret nc                                           ; $694a: $d0

	sbc $60                                          ; $694b: $de $60
	sbc $70                                          ; $694d: $de $70
	sbc l                                            ; $694f: $9d
	ld a, b                                          ; $6950: $78
	ld a, h                                          ; $6951: $7c
	reti                                             ; $6952: $d9


	add b                                            ; $6953: $80
	ld l, [hl]                                       ; $6954: $6e
	sbc e                                            ; $6955: $9b
	sbc l                                            ; $6956: $9d
	xor b                                            ; $6957: $a8
	ld d, l                                          ; $6958: $55
	ld l, b                                          ; $6959: $68
	or h                                             ; $695a: $b4
	sbc [hl]                                         ; $695b: $9e
	xor d                                            ; $695c: $aa
	ld b, a                                          ; $695d: $47
	nop                                              ; $695e: $00
	ld a, h                                          ; $695f: $7c
	adc d                                            ; $6960: $8a
	sub d                                            ; $6961: $92
	adc b                                            ; $6962: $88
	ld d, c                                          ; $6963: $51
	xor d                                            ; $6964: $aa
	ld d, l                                          ; $6965: $55
	xor d                                            ; $6966: $aa
	db $dd                                           ; $6967: $dd
	rst $38                                          ; $6968: $ff
	cp a                                             ; $6969: $bf
	ld [hl], a                                       ; $696a: $77
	xor [hl]                                         ; $696b: $ae
	ld d, l                                          ; $696c: $55
	xor d                                            ; $696d: $aa
	ld d, l                                          ; $696e: $55
	ld h, d                                          ; $696f: $62
	cp h                                             ; $6970: $bc
	ld d, a                                          ; $6971: $57
	ld a, b                                          ; $6972: $78
	sbc e                                            ; $6973: $9b
	ld b, h                                          ; $6974: $44
	xor d                                            ; $6975: $aa
	ld d, l                                          ; $6976: $55
	cp d                                             ; $6977: $ba
	db $dd                                           ; $6978: $dd
	rst $38                                          ; $6979: $ff
	sbc e                                            ; $697a: $9b
	cp e                                             ; $697b: $bb
	ld d, l                                          ; $697c: $55
	xor d                                            ; $697d: $aa
	ld b, l                                          ; $697e: $45
	ccf                                              ; $697f: $3f
	ldh [$9e], a                                     ; $6980: $e0 $9e
	db $10                                           ; $6982: $10
	ld a, e                                          ; $6983: $7b
	pop bc                                           ; $6984: $c1
	sbc l                                            ; $6985: $9d
	push de                                          ; $6986: $d5
	ld a, e                                          ; $6987: $7b
	ld a, d                                          ; $6988: $7a
	sub [hl]                                         ; $6989: $96
	ld a, e                                          ; $698a: $7b
	pop bc                                           ; $698b: $c1
	sbc l                                            ; $698c: $9d
	ld a, [hl+]                                      ; $698d: $2a
	add h                                            ; $698e: $84
	ld b, a                                          ; $698f: $47
	ldh [$9b], a                                     ; $6990: $e0 $9b
	ld hl, sp-$10                                    ; $6992: $f8 $f0
	db $f4                                           ; $6994: $f4
	cp d                                             ; $6995: $ba
	ld a, e                                          ; $6996: $7b
	and c                                            ; $6997: $a1
	sbc d                                            ; $6998: $9a
	rst FarCall                                          ; $6999: $f7
	rlca                                             ; $699a: $07
	rrca                                             ; $699b: $0f
	dec bc                                           ; $699c: $0b
	ld b, l                                          ; $699d: $45
	ld a, e                                          ; $699e: $7b
	and c                                            ; $699f: $a1
	sbc d                                            ; $69a0: $9a
	ld [$f0f8], sp                                   ; $69a1: $08 $f8 $f0
	ldh [$30], a                                     ; $69a4: $e0 $30
	ld a, d                                          ; $69a6: $7a
	cp d                                             ; $69a7: $ba
	sbc [hl]                                         ; $69a8: $9e
	ret nz                                           ; $69a9: $c0

	reti                                             ; $69aa: $d9


	rst $38                                          ; $69ab: $ff
	adc a                                            ; $69ac: $8f
	rst SubAFromDE                                          ; $69ad: $df
	cp $ff                                           ; $69ae: $fe $ff
	ld [$fd70], a                                    ; $69b0: $ea $70 $fd
	ld e, a                                          ; $69b3: $5f
	xor l                                            ; $69b4: $ad
	jr nz, jr_020_69b8                               ; $69b5: $20 $01

	nop                                              ; $69b7: $00

jr_020_69b8:
	dec d                                            ; $69b8: $15
	adc a                                            ; $69b9: $8f
	ld [bc], a                                       ; $69ba: $02
	and b                                            ; $69bb: $a0
	ld d, d                                          ; $69bc: $52
	ld [hl], a                                       ; $69bd: $77
	ldh a, [$9c]                                     ; $69be: $f0 $9c
	ldh a, [$fd]                                     ; $69c0: $f0 $fd
	rst $38                                          ; $69c2: $ff
	ld h, d                                          ; $69c3: $62
	ld hl, sp-$66                                    ; $69c4: $f8 $9a
	ld a, a                                          ; $69c6: $7f
	cpl                                              ; $69c7: $2f
	dec d                                            ; $69c8: $15
	ld [bc], a                                       ; $69c9: $02
	ld bc, $c579                                     ; $69ca: $01 $79 $c5
	ld a, l                                          ; $69cd: $7d
	dec hl                                           ; $69ce: $2b
	sbc h                                            ; $69cf: $9c
	ld [$fefd], a                                    ; $69d0: $ea $fd $fe
	inc a                                            ; $69d3: $3c
	ld b, c                                          ; $69d4: $41
	sbc e                                            ; $69d5: $9b
	rst $38                                          ; $69d6: $ff
	ld a, [bc]                                       ; $69d7: $0a
	adc d                                            ; $69d8: $8a
	adc a                                            ; $69d9: $8f
	db $dd                                           ; $69da: $dd
	adc l                                            ; $69db: $8d
	sbc e                                            ; $69dc: $9b
	adc h                                            ; $69dd: $8c
	db $fd                                           ; $69de: $fd
	ld a, l                                          ; $69df: $7d
	ld a, d                                          ; $69e0: $7a
	db $dd                                           ; $69e1: $dd
	ld [hl], d                                       ; $69e2: $72
	sbc [hl]                                         ; $69e3: $9e
	ld [hl], e                                       ; $69e4: $73
	ld b, [hl]                                       ; $69e5: $46
	ret nz                                           ; $69e6: $c0

	sbc h                                            ; $69e7: $9c
	sub e                                            ; $69e8: $93
	sbc e                                            ; $69e9: $9b
	sub e                                            ; $69ea: $93
	ld [hl], b                                       ; $69eb: $70
	ld b, b                                          ; $69ec: $40
	ld a, h                                          ; $69ed: $7c
	ld b, d                                          ; $69ee: $42
	ld l, h                                          ; $69ef: $6c
	ld b, b                                          ; $69f0: $40
	call c, Call_020_587f                            ; $69f1: $dc $7f $58
	ld b, b                                          ; $69f4: $40
	add a                                            ; $69f5: $87
	dec e                                            ; $69f6: $1d
	add b                                            ; $69f7: $80

jr_020_69f8:
	sub b                                            ; $69f8: $90
	adc b                                            ; $69f9: $88
	adc b                                            ; $69fa: $88
	and h                                            ; $69fb: $a4
	rst SubAFromBC                                          ; $69fc: $e7
	ld a, e                                          ; $69fd: $7b
	cp l                                             ; $69fe: $bd
	sbc b                                            ; $69ff: $98
	ret c                                            ; $6a00: $d8

	ret z                                            ; $6a01: $c8

	ret z                                            ; $6a02: $c8

	call z, $c78f                                    ; $6a03: $cc $8f $c7
	ldh [c], a                                       ; $6a06: $e2
	rst $38                                          ; $6a07: $ff
	rst AddAOntoHL                                          ; $6a08: $ef
	rst FarCall                                          ; $6a09: $f7
	rst FarCall                                          ; $6a0a: $f7
	ei                                               ; $6a0b: $fb
	ld hl, sp+$60                                    ; $6a0c: $f8 $60
	ld a, [$407c]                                    ; $6a0e: $fa $7c $40
	sbc e                                            ; $6a11: $9b
	sbc $af                                          ; $6a12: $de $af
	ld d, a                                          ; $6a14: $57
	and b                                            ; $6a15: $a0
	ld e, e                                          ; $6a16: $5b
	jr nc, jr_020_69f8                               ; $6a17: $30 $df

	ld bc, $dffb                                     ; $6a19: $01 $fb $df
	cp $db                                           ; $6a1c: $fe $db
	rst $38                                          ; $6a1e: $ff
	sbc d                                            ; $6a1f: $9a
	cp a                                             ; $6a20: $bf
	ld e, l                                          ; $6a21: $5d
	xor d                                            ; $6a22: $aa
	dec d                                            ; $6a23: $15
	ld a, [bc]                                       ; $6a24: $0a
	ld c, d                                          ; $6a25: $4a

jr_020_6a26:
	ret nc                                           ; $6a26: $d0

	ld b, [hl]                                       ; $6a27: $46
	ret nz                                           ; $6a28: $c0

	cp $9e                                           ; $6a29: $fe $9e
	ld b, b                                          ; $6a2b: $40
	jp c, Jump_020_78ff                              ; $6a2c: $da $ff $78

	ld a, b                                          ; $6a2f: $78
	ld d, e                                          ; $6a30: $53
	ldh a, [$6f]                                     ; $6a31: $f0 $6f
	ldh [$9d], a                                     ; $6a33: $e0 $9d
	ld b, b                                          ; $6a35: $40
	and b                                            ; $6a36: $a0
	ld l, l                                          ; $6a37: $6d
	or b                                             ; $6a38: $b0
	sbc l                                            ; $6a39: $9d
	cp a                                             ; $6a3a: $bf
	ld e, a                                          ; $6a3b: $5f
	ld [hl], a                                       ; $6a3c: $77
	or l                                             ; $6a3d: $b5
	ld e, a                                          ; $6a3e: $5f
	ldh a, [$67]                                     ; $6a3f: $f0 $67
	ldh [$9d], a                                     ; $6a41: $e0 $9d
	jr nz, jr_020_6a26                               ; $6a43: $20 $e1

	ld l, d                                          ; $6a45: $6a
	db $d3                                           ; $6a46: $d3
	sbc [hl]                                         ; $6a47: $9e
	ld e, $6f                                        ; $6a48: $1e $6f
	ld l, e                                          ; $6a4a: $6b
	ld a, l                                          ; $6a4b: $7d
	db $f4                                           ; $6a4c: $f4
	ret c                                            ; $6a4d: $d8

	rst $38                                          ; $6a4e: $ff
	sub d                                            ; $6a4f: $92
	ret z                                            ; $6a50: $c8

	adc b                                            ; $6a51: $88
	sbc c                                            ; $6a52: $99
	ld de, $0301                                     ; $6a53: $11 $01 $03
	ld [bc], a                                       ; $6a56: $02
	ld [bc], a                                       ; $6a57: $02
	rst FarCall                                          ; $6a58: $f7
	rst FarCall                                          ; $6a59: $f7
	rst SubAFromBC                                          ; $6a5a: $e7
	rst AddAOntoHL                                          ; $6a5b: $ef
	rst $38                                          ; $6a5c: $ff
	sbc $fd                                          ; $6a5d: $de $fd
	sbc h                                            ; $6a5f: $9c
	ccf                                              ; $6a60: $3f
	ld a, a                                          ; $6a61: $7f
	ld a, a                                          ; $6a62: $7f
	ld d, e                                          ; $6a63: $53
	ld a, b                                          ; $6a64: $78
	adc l                                            ; $6a65: $8d
	call $c4cc                                       ; $6a66: $cd $cc $c4
	adc h                                            ; $6a69: $8c
	sbc b                                            ; $6a6a: $98
	sbc b                                            ; $6a6b: $98
	or d                                             ; $6a6c: $b2
	and d                                            ; $6a6d: $a2
	ld c, e                                          ; $6a6e: $4b
	ld c, e                                          ; $6a6f: $4b
	jp $8783                                         ; $6a70: $c3 $83 $87


	add a                                            ; $6a73: $87
	adc l                                            ; $6a74: $8d
	sbc l                                            ; $6a75: $9d
	or a                                             ; $6a76: $b7
	or a                                             ; $6a77: $b7
	ld a, e                                          ; $6a78: $7b
	sbc $de                                          ; $6a79: $de $de
	ld a, a                                          ; $6a7b: $7f
	ld sp, hl                                        ; $6a7c: $f9
	add a                                            ; $6a7d: $87
	rst JumpTable                                          ; $6a7e: $c7
	ld b, e                                          ; $6a7f: $43
	xor e                                            ; $6a80: $ab
	daa                                              ; $6a81: $27
	daa                                              ; $6a82: $27
	dec sp                                           ; $6a83: $3b
	dec de                                           ; $6a84: $1b
	dec de                                           ; $6a85: $1b
	add h                                            ; $6a86: $84
	nop                                              ; $6a87: $00
	db $eb                                           ; $6a88: $eb
	rst SubAFromBC                                          ; $6a89: $e7
	rst SubAFromBC                                          ; $6a8a: $e7
	db $eb                                           ; $6a8b: $eb
	ld a, e                                          ; $6a8c: $7b
	dec sp                                           ; $6a8d: $3b
	rst $38                                          ; $6a8e: $ff
	rst $38                                          ; $6a8f: $ff
	ld e, h                                          ; $6a90: $5c
	ret c                                            ; $6a91: $d8

	ret c                                            ; $6a92: $d8

	call nz, $e4e4                                   ; $6a93: $c4 $e4 $e4
	ld sp, hl                                        ; $6a96: $f9
	sub d                                            ; $6a97: $92
	ld a, h                                          ; $6a98: $7c
	ld [hl], $c9                                     ; $6a99: $36 $c9
	and $f0                                          ; $6a9b: $e6 $f0
	cp $fe                                           ; $6a9d: $fe $fe
	db $fd                                           ; $6a9f: $fd
	ld l, h                                          ; $6aa0: $6c
	ld a, $cf                                        ; $6aa1: $3e $cf
	rst SubAFromBC                                          ; $6aa3: $e7
	di                                               ; $6aa4: $f3
	sbc $ff                                          ; $6aa5: $de $ff
	sub a                                            ; $6aa7: $97
	di                                               ; $6aa8: $f3
	ld sp, hl                                        ; $6aa9: $f9

jr_020_6aaa:
	cp $3d                                           ; $6aaa: $fe $3d
	rra                                              ; $6aac: $1f
	rrca                                             ; $6aad: $0f
	rlca                                             ; $6aae: $07
	inc bc                                           ; $6aaf: $03
	cp $7c                                           ; $6ab0: $fe $7c
	ld hl, sp-$66                                    ; $6ab2: $f8 $9a
	ldh a, [$f8]                                     ; $6ab4: $f0 $f8
	db $fc                                           ; $6ab6: $fc
	call nc, $73bf                                   ; $6ab7: $d4 $bf $73
	ld h, a                                          ; $6aba: $67
	ld a, a                                          ; $6abb: $7f
	add h                                            ; $6abc: $84
	sbc l                                            ; $6abd: $9d
	ei                                               ; $6abe: $fb
	pop bc                                           ; $6abf: $c1
	ld l, a                                          ; $6ac0: $6f
	ld [$fb9d], sp                                   ; $6ac1: $08 $9d $fb
	ret nz                                           ; $6ac4: $c0

	db $fc                                           ; $6ac5: $fc
	sbc h                                            ; $6ac6: $9c
	ld bc, $3f04                                     ; $6ac7: $01 $04 $3f
	call c, $9bff                                    ; $6aca: $dc $ff $9b

jr_020_6acd:
	and h                                            ; $6acd: $a4
	ld a, e                                          ; $6ace: $7b
	rst SubAFromHL                                          ; $6acf: $d7
	ld a, [hl+]                                      ; $6ad0: $2a
	ei                                               ; $6ad1: $fb
	sbc l                                            ; $6ad2: $9d
	jr z, jr_020_6aaa                                ; $6ad3: $28 $d5

	ld d, a                                          ; $6ad5: $57
	ld l, b                                          ; $6ad6: $68
	ld a, a                                          ; $6ad7: $7f
	add sp, -$25                                     ; $6ad8: $e8 $db
	rst $38                                          ; $6ada: $ff
	sbc l                                            ; $6adb: $9d
	ld d, $25                                        ; $6adc: $16 $25
	ei                                               ; $6ade: $fb
	sbc l                                            ; $6adf: $9d
	add sp, -$26                                     ; $6ae0: $e8 $da
	ld c, [hl]                                       ; $6ae2: $4e
	ret nz                                           ; $6ae3: $c0

	ld h, [hl]                                       ; $6ae4: $66
	ld d, $64                                        ; $6ae5: $16 $64
	ld a, [hl+]                                      ; $6ae7: $2a
	ld a, b                                          ; $6ae8: $78
	ld a, b                                          ; $6ae9: $78
	ld [hl-], a                                      ; $6aea: $32
	and b                                            ; $6aeb: $a0
	sub b                                            ; $6aec: $90
	rst JumpTable                                          ; $6aed: $c7
	add a                                            ; $6aee: $87
	sub e                                            ; $6aef: $93
	ld sp, $4747                                     ; $6af0: $31 $47 $47
	ld c, l                                          ; $6af3: $4d
	call z, $e0f1                                    ; $6af4: $cc $f1 $e0
	call z, $f9ef                                    ; $6af7: $cc $ef $f9
	ld sp, hl                                        ; $6afa: $f9
	di                                               ; $6afb: $f3
	ld [hl], a                                       ; $6afc: $77
	ld e, l                                          ; $6afd: $5d
	sbc [hl]                                         ; $6afe: $9e
	sbc $de                                          ; $6aff: $de $de
	cp [hl]                                          ; $6b01: $be
	ld h, d                                          ; $6b02: $62
	jr nz, @+$7d                                     ; $6b03: $20 $7b

	ld h, [hl]                                       ; $6b05: $66
	sub [hl]                                         ; $6b06: $96
	ld a, l                                          ; $6b07: $7d
	cp l                                             ; $6b08: $bd
	sbc l                                            ; $6b09: $9d
	adc l                                            ; $6b0a: $8d
	adc h                                            ; $6b0b: $8c
	ld a, a                                          ; $6b0c: $7f
	ccf                                              ; $6b0d: $3f
	dec de                                           ; $6b0e: $1b
	dec bc                                           ; $6b0f: $0b
	sbc $03                                          ; $6b10: $de $03
	sbc [hl]                                         ; $6b12: $9e
	add e                                            ; $6b13: $83
	ld h, l                                          ; $6b14: $65
	xor c                                            ; $6b15: $a9
	rst SubAFromDE                                          ; $6b16: $df
	rrca                                             ; $6b17: $0f
	ld [hl], a                                       ; $6b18: $77
	dec a                                            ; $6b19: $3d
	ld [hl], a                                       ; $6b1a: $77
	cp b                                             ; $6b1b: $b8
	sub c                                            ; $6b1c: $91
	cp a                                             ; $6b1d: $bf
	sbc a                                            ; $6b1e: $9f
	ccf                                              ; $6b1f: $3f
	ccf                                              ; $6b20: $3f
	rrca                                             ; $6b21: $0f
	adc a                                            ; $6b22: $8f
	ld sp, hl                                        ; $6b23: $f9
	db $fd                                           ; $6b24: $fd
	ld a, h                                          ; $6b25: $7c
	ld a, [hl]                                       ; $6b26: $7e
	ld c, [hl]                                       ; $6b27: $4e
	ld c, $03                                        ; $6b28: $0e $03
	inc bc                                           ; $6b2a: $03
	reti                                             ; $6b2b: $d9


	rst $38                                          ; $6b2c: $ff
	rst SubAFromDE                                          ; $6b2d: $df
	jr c, jr_020_6acd                                ; $6b2e: $38 $9d

	inc e                                            ; $6b30: $1c
	inc b                                            ; $6b31: $04
	db $fd                                           ; $6b32: $fd
	adc a                                            ; $6b33: $8f
	rst SubAFromBC                                          ; $6b34: $e7
	jp $fcfb                                         ; $6b35: $c3 $fb $fc


	db $fc                                           ; $6b38: $fc
	rst FarCall                                          ; $6b39: $f7
	pop af                                           ; $6b3a: $f1
	ld sp, hl                                        ; $6b3b: $f9
	rst SubAFromBC                                          ; $6b3c: $e7
	pop hl                                           ; $6b3d: $e1
	ld [hl], b                                       ; $6b3e: $70
	jr c, @-$62                                      ; $6b3f: $38 $9c

	ld c, $b3                                        ; $6b41: $0e $b3
	pop bc                                           ; $6b43: $c1
	ld [hl], e                                       ; $6b44: $73
	jp $d07f                                         ; $6b45: $c3 $7f $d0


	sbc [hl]                                         ; $6b48: $9e
	and a                                            ; $6b49: $a7
	ld sp, hl                                        ; $6b4a: $f9
	ld a, a                                          ; $6b4b: $7f
	jp nz, $e87e                                     ; $6b4c: $c2 $7e $e8

	sub [hl]                                         ; $6b4f: $96
	db $d3                                           ; $6b50: $d3
	xor e                                            ; $6b51: $ab
	rst SubAFromHL                                          ; $6b52: $d7
	xor b                                            ; $6b53: $a8
	rst $38                                          ; $6b54: $ff
	rst AddAOntoHL                                          ; $6b55: $ef
	di                                               ; $6b56: $f3
	ld sp, hl                                        ; $6b57: $f9
	db $fc                                           ; $6b58: $fc
	ld a, e                                          ; $6b59: $7b
	ld c, e                                          ; $6b5a: $4b
	sbc l                                            ; $6b5b: $9d
	add c                                            ; $6b5c: $81
	ldh a, [rPCM34]                                  ; $6b5d: $f0 $77
	ld a, [$ffdf]                                    ; $6b5f: $fa $df $ff
	sbc b                                            ; $6b62: $98
	ld a, [hl]                                       ; $6b63: $7e
	ld a, a                                          ; $6b64: $7f
	ccf                                              ; $6b65: $3f
	rra                                              ; $6b66: $1f
	rrca                                             ; $6b67: $0f
	dec b                                            ; $6b68: $05
	nop                                              ; $6b69: $00
	ld [hl], a                                       ; $6b6a: $77
	sbc e                                            ; $6b6b: $9b
	sbc d                                            ; $6b6c: $9a
	add b                                            ; $6b6d: $80
	ld d, b                                          ; $6b6e: $50
	xor b                                            ; $6b6f: $a8
	ld d, h                                          ; $6b70: $54
	xor l                                            ; $6b71: $ad
	ld l, c                                          ; $6b72: $69
	or c                                             ; $6b73: $b1
	sbc [hl]                                         ; $6b74: $9e
	ld d, b                                          ; $6b75: $50
	or $7b                                           ; $6b76: $f6 $7b
	add sp, -$6b                                     ; $6b78: $e8 $95
	call nc, $00fd                                   ; $6b7a: $d4 $fd $00
	xor b                                            ; $6b7d: $a8
	push de                                          ; $6b7e: $d5
	ld a, [$2a57]                                    ; $6b7f: $fa $57 $2a
	ld bc, $fd54                                     ; $6b82: $01 $54 $fd
	ld a, a                                          ; $6b85: $7f
	push af                                          ; $6b86: $f5
	sbc l                                            ; $6b87: $9d
	cp $ab                                           ; $6b88: $fe $ab
	ld hl, sp+$7b                                    ; $6b8a: $f8 $7b
	add sp, $73                                      ; $6b8c: $e8 $73
	db $10                                           ; $6b8e: $10
	sbc l                                            ; $6b8f: $9d
	and b                                            ; $6b90: $a0
	rrca                                             ; $6b91: $0f
	db $dd                                           ; $6b92: $dd
	ccf                                              ; $6b93: $3f
	sbc h                                            ; $6b94: $9c
	ld [hl], a                                       ; $6b95: $77
	rst SubAFromBC                                          ; $6b96: $e7
	rst SubAFromDE                                          ; $6b97: $df
	ret c                                            ; $6b98: $d8

	rst $38                                          ; $6b99: $ff
	sbc d                                            ; $6b9a: $9a
	cp a                                             ; $6b9b: $bf
	ccf                                              ; $6b9c: $3f
	ccf                                              ; $6b9d: $3f
	ld [hl], $6b                                     ; $6b9e: $36 $6b
	ld [hl], l                                       ; $6ba0: $75
	jp c, $c0df                                      ; $6ba1: $da $df $c0

	sub h                                            ; $6ba4: $94
	ret                                              ; $6ba5: $c9


	sbc h                                            ; $6ba6: $9c
	ld bc, $1d67                                     ; $6ba7: $01 $67 $1d
	ld a, h                                          ; $6baa: $7c

jr_020_6bab:
	and b                                            ; $6bab: $a0
	db $eb                                           ; $6bac: $eb
	nop                                              ; $6bad: $00
	add b                                            ; $6bae: $80
	rra                                              ; $6baf: $1f
	ld l, [hl]                                       ; $6bb0: $6e
	add hl, bc                                       ; $6bb1: $09
	db $db                                           ; $6bb2: $db
	rst $38                                          ; $6bb3: $ff
	sbc h                                            ; $6bb4: $9c
	ei                                               ; $6bb5: $fb
	nop                                              ; $6bb6: $00
	add b                                            ; $6bb7: $80
	db $fc                                           ; $6bb8: $fc
	sub d                                            ; $6bb9: $92
	inc b                                            ; $6bba: $04
	rst $38                                          ; $6bbb: $ff
	ld a, a                                          ; $6bbc: $7f
	ldh [rSVBK], a                                   ; $6bbd: $e0 $70
	ldh [$f0], a                                     ; $6bbf: $e0 $f0
	ld a, h                                          ; $6bc1: $7c
	rra                                              ; $6bc2: $1f
	ccf                                              ; $6bc3: $3f
	sbc a                                            ; $6bc4: $9f
	nop                                              ; $6bc5: $00
	jp z, $ffd7                                      ; $6bc6: $ca $d7 $ff

	sbc [hl]                                         ; $6bc9: $9e
	ld a, a                                          ; $6bca: $7f
	ld [hl], a                                       ; $6bcb: $77
	ldh a, [$71]                                     ; $6bcc: $f0 $71
	cp b                                             ; $6bce: $b8

jr_020_6bcf:
	sub h                                            ; $6bcf: $94
	ret nz                                           ; $6bd0: $c0

	ld h, b                                          ; $6bd1: $60
	rst SubAFromBC                                          ; $6bd2: $e7
	pop bc                                           ; $6bd3: $c1
	and [hl]                                         ; $6bd4: $a6
	ld a, a                                          ; $6bd5: $7f
	cp $9c                                           ; $6bd6: $fe $9c
	ld b, b                                          ; $6bd8: $40
	pop af                                           ; $6bd9: $f1
	jr jr_020_6c37                                   ; $6bda: $18 $5b

	ret nz                                           ; $6bdc: $c0

	sbc e                                            ; $6bdd: $9b
	cp $fc                                           ; $6bde: $fe $fc
	jr nc, jr_020_6bab                               ; $6be0: $30 $c9

	ld [hl], d                                       ; $6be2: $72
	inc a                                            ; $6be3: $3c
	sbc d                                            ; $6be4: $9a
	ld h, e                                          ; $6be5: $63
	rst $38                                          ; $6be6: $ff
	ld a, $3f                                        ; $6be7: $3e $3f
	add hl, bc                                       ; $6be9: $09
	ld a, c                                          ; $6bea: $79
	ld [hl], h                                       ; $6beb: $74
	sbc d                                            ; $6bec: $9a
	ld a, a                                          ; $6bed: $7f
	add hl, hl                                       ; $6bee: $29
	ret z                                            ; $6bef: $c8

	ret nz                                           ; $6bf0: $c0

	or $72                                           ; $6bf1: $f6 $72
	jr jr_020_6bcf                                   ; $6bf3: $18 $da

	rst $38                                          ; $6bf5: $ff
	sbc l                                            ; $6bf6: $9d
	jp hl                                            ; $6bf7: $e9


	rst FarCall                                          ; $6bf8: $f7
	ei                                               ; $6bf9: $fb
	sbc l                                            ; $6bfa: $9d
	ld d, $08                                        ; $6bfb: $16 $08
	halt                                             ; $6bfd: $76
	daa                                              ; $6bfe: $27
	sbc e                                            ; $6bff: $9b
	call nc, Call_020_55fa                           ; $6c00: $d4 $fa $55
	cpl                                              ; $6c03: $2f
	sbc $ff                                          ; $6c04: $de $ff
	sbc e                                            ; $6c06: $9b
	rst SubAFromHL                                          ; $6c07: $d7
	dec hl                                           ; $6c08: $2b
	dec b                                            ; $6c09: $05
	ld [bc], a                                       ; $6c0a: $02
	ld hl, sp-$25                                    ; $6c0b: $f8 $db
	rst $38                                          ; $6c0d: $ff
	sbc c                                            ; $6c0e: $99
	ld d, a                                          ; $6c0f: $57
	cpl                                              ; $6c10: $2f
	ld [hl], b                                       ; $6c11: $70
	ld d, h                                          ; $6c12: $54
	cp d                                             ; $6c13: $ba
	rrca                                             ; $6c14: $0f
	ld [hl], a                                       ; $6c15: $77
	jp hl                                            ; $6c16: $e9


	sbc h                                            ; $6c17: $9c
	rrca                                             ; $6c18: $0f
	dec bc                                           ; $6c19: $0b
	dec b                                            ; $6c1a: $05
	db $f4                                           ; $6c1b: $f4
	sbc h                                            ; $6c1c: $9c
	ld a, a                                          ; $6c1d: $7f
	ld e, a                                          ; $6c1e: $5f
	cp a                                             ; $6c1f: $bf
	ld [hl], e                                       ; $6c20: $73
	add sp, -$6d                                     ; $6c21: $e8 $93
	cp [hl]                                          ; $6c23: $be
	ld a, a                                          ; $6c24: $7f
	rst $38                                          ; $6c25: $ff
	dec bc                                           ; $6c26: $0b
	ld bc, $4101                                     ; $6c27: $01 $01 $41
	ld bc, $9041                                     ; $6c2a: $01 $41 $90
	ld hl, sp+$08                                    ; $6c2d: $f8 $08
	ld a, b                                          ; $6c2f: $78
	and l                                            ; $6c30: $a5
	sbc d                                            ; $6c31: $9a
	jp nz, Jump_020_6fbf                             ; $6c32: $c2 $bf $6f

	rlca                                             ; $6c35: $07
	rst FarCall                                          ; $6c36: $f7

jr_020_6c37:
	halt                                             ; $6c37: $76
	cp a                                             ; $6c38: $bf
	ld sp, hl                                        ; $6c39: $f9
	sbc d                                            ; $6c3a: $9a
	db $fc                                           ; $6c3b: $fc
	ld hl, sp-$20                                    ; $6c3c: $f8 $e0
	db $e3                                           ; $6c3e: $e3
	rst $38                                          ; $6c3f: $ff
	ld a, e                                          ; $6c40: $7b
	rst AddAOntoHL                                          ; $6c41: $ef
	sbc b                                            ; $6c42: $98
	inc bc                                           ; $6c43: $03
	rlca                                             ; $6c44: $07
	rra                                              ; $6c45: $1f
	cp a                                             ; $6c46: $bf
	rst $38                                          ; $6c47: $ff
	ld a, [$fb31]                                    ; $6c48: $fa $31 $fb
	sbc l                                            ; $6c4b: $9d
	dec b                                            ; $6c4c: $05
	adc $63                                          ; $6c4d: $ce $63
	ldh [$9c], a                                     ; $6c4f: $e0 $9c
	or b                                             ; $6c51: $b0
	sub c                                            ; $6c52: $91
	ld hl, sp+$6b                                    ; $6c53: $f8 $6b
	ld c, e                                          ; $6c55: $4b
	db $dd                                           ; $6c56: $dd
	rst $38                                          ; $6c57: $ff
	sbc h                                            ; $6c58: $9c
	ld hl, sp+$00                                    ; $6c59: $f8 $00
	nop                                              ; $6c5b: $00
	ld [hl], b                                       ; $6c5c: $70
	ld b, [hl]                                       ; $6c5d: $46
	sbc [hl]                                         ; $6c5e: $9e
	rlca                                             ; $6c5f: $07
	ld h, e                                          ; $6c60: $63
	ldh [$28], a                                     ; $6c61: $e0 $28
	ld [hl], b                                       ; $6c63: $70
	ld c, e                                          ; $6c64: $4b
	ldh a, [$7d]                                     ; $6c65: $f0 $7d
	dec [hl]                                         ; $6c67: $35
	db $db                                           ; $6c68: $db
	rst $38                                          ; $6c69: $ff
	ld a, [hl]                                       ; $6c6a: $7e
	ld c, h                                          ; $6c6b: $4c
	ld b, a                                          ; $6c6c: $47
	ldh [hDisp1_OBP1], a                                     ; $6c6d: $e0 $94
	ldh [rHDMA4], a                                  ; $6c6f: $e0 $54
	inc l                                            ; $6c71: $2c
	ld b, $0b                                        ; $6c72: $06 $0b
	rlca                                             ; $6c74: $07
	ld a, [bc]                                       ; $6c75: $0a
	ld bc, $0b1f                                     ; $6c76: $01 $1f $0b
	inc bc                                           ; $6c79: $03
	ld a, e                                          ; $6c7a: $7b
	ld h, c                                          ; $6c7b: $61
	ld e, e                                          ; $6c7c: $5b
	or b                                             ; $6c7d: $b0
	sbc h                                            ; $6c7e: $9c
	ld e, a                                          ; $6c7f: $5f
	cpl                                              ; $6c80: $2f
	rlca                                             ; $6c81: $07
	ld [hl], a                                       ; $6c82: $77
	add sp, $4f                                      ; $6c83: $e8 $4f
	ld [$5bf7], a                                    ; $6c85: $ea $f7 $5b
	add sp, -$62                                     ; $6c88: $e8 $9e
	ld [bc], a                                       ; $6c8a: $02
	halt                                             ; $6c8b: $76
	ld a, $27                                        ; $6c8c: $3e $27
	ld a, b                                          ; $6c8e: $78
	rst $38                                          ; $6c8f: $ff
	sbc l                                            ; $6c90: $9d
	ld a, b                                          ; $6c91: $78
	ldh a, [$74]                                     ; $6c92: $f0 $74
	adc $9a                                          ; $6c94: $ce $9a
	db $ec                                           ; $6c96: $ec
	sbc $87                                          ; $6c97: $de $87
	rrca                                             ; $6c99: $0f
	ld [hl-], a                                      ; $6c9a: $32
	ld a, d                                          ; $6c9b: $7a
	ld l, l                                          ; $6c9c: $6d
	sbc d                                            ; $6c9d: $9a
	inc de                                           ; $6c9e: $13
	ld hl, $0000                                     ; $6c9f: $21 $00 $00
	dec c                                            ; $6ca2: $0d
	ld d, a                                          ; $6ca3: $57
	ldh [hDisp1_SCX], a                                     ; $6ca4: $e0 $91
	add b                                            ; $6ca6: $80
	ld h, c                                          ; $6ca7: $61
	ccf                                              ; $6ca8: $3f
	sbc a                                            ; $6ca9: $9f
	ld h, a                                          ; $6caa: $67
	db $10                                           ; $6cab: $10
	ret nz                                           ; $6cac: $c0

	rst $38                                          ; $6cad: $ff
	ld a, a                                          ; $6cae: $7f
	ld e, $80                                        ; $6caf: $1e $80
	ldh [$e0], a                                     ; $6cb1: $e0 $e0
	rra                                              ; $6cb3: $1f
	ld a, e                                          ; $6cb4: $7b
	add sp, -$66                                     ; $6cb5: $e8 $9a
	add b                                            ; $6cb7: $80
	ret nz                                           ; $6cb8: $c0

	ldh [$f8], a                                     ; $6cb9: $e0 $f8
	ldh [$59], a                                     ; $6cbb: $e0 $59
	cp d                                             ; $6cbd: $ba
	sub c                                            ; $6cbe: $91
	ldh a, [c]                                       ; $6cbf: $f2
	rst SubAFromDE                                          ; $6cc0: $df
	ld hl, $5efc                                     ; $6cc1: $21 $fc $5e
	ld a, a                                          ; $6cc4: $7f
	pop bc                                           ; $6cc5: $c1
	ldh a, [$fc]                                     ; $6cc6: $f0 $fc
	rst $38                                          ; $6cc8: $ff
	rst SubAFromDE                                          ; $6cc9: $df
	ld b, a                                          ; $6cca: $47
	cp $87                                           ; $6ccb: $fe $87
	ld [hl], d                                       ; $6ccd: $72
	ld sp, hl                                        ; $6cce: $f9
	sbc [hl]                                         ; $6ccf: $9e
	cp e                                             ; $6cd0: $bb
	ld e, a                                          ; $6cd1: $5f
	add e                                            ; $6cd2: $83
	sbc l                                            ; $6cd3: $9d
	add b                                            ; $6cd4: $80
	xor a                                            ; $6cd5: $af
	ld a, d                                          ; $6cd6: $7a
	push hl                                          ; $6cd7: $e5
	sub e                                            ; $6cd8: $93
	db $e3                                           ; $6cd9: $e3
	adc a                                            ; $6cda: $8f
	or $83                                           ; $6cdb: $f6 $83
	add e                                            ; $6cdd: $83
	rrca                                             ; $6cde: $0f
	ccf                                              ; $6cdf: $3f
	rst $38                                          ; $6ce0: $ff
	db $fc                                           ; $6ce1: $fc
	ld [hl], c                                       ; $6ce2: $71
	ccf                                              ; $6ce3: $3f
	ld a, a                                          ; $6ce4: $7f
	ld [hl], d                                       ; $6ce5: $72
	jr @-$60                                         ; $6ce6: $18 $9e

	cp $6c                                           ; $6ce8: $fe $6c
	ld e, e                                          ; $6cea: $5b
	ld l, h                                          ; $6ceb: $6c

jr_020_6cec:
	ld l, c                                          ; $6cec: $69
	sbc h                                            ; $6ced: $9c
	cp [hl]                                          ; $6cee: $be
	ld e, e                                          ; $6cef: $5b
	inc h                                            ; $6cf0: $24
	db $fc                                           ; $6cf1: $fc
	sbc h                                            ; $6cf2: $9c
	ld b, b                                          ; $6cf3: $40
	and h                                            ; $6cf4: $a4
	db $db                                           ; $6cf5: $db
	ld e, e                                          ; $6cf6: $5b
	adc b                                            ; $6cf7: $88
	ld a, a                                          ; $6cf8: $7f
	add sp, $73                                      ; $6cf9: $e8 $73
	or l                                             ; $6cfb: $b5
	ld a, e                                          ; $6cfc: $7b
	ld hl, sp-$63                                    ; $6cfd: $f8 $9d
	ld a, $8b                                        ; $6cff: $3e $8b
	ld l, a                                          ; $6d01: $6f
	ldh [$9d], a                                     ; $6d02: $e0 $9d
	ret nz                                           ; $6d04: $c0

	ld [hl], h                                       ; $6d05: $74
	dec sp                                           ; $6d06: $3b
	ldh [$5a], a                                     ; $6d07: $e0 $5a
	add [hl]                                         ; $6d09: $86
	sbc d                                            ; $6d0a: $9a
	add b                                            ; $6d0b: $80
	jr z, jr_020_6cec                                ; $6d0c: $28 $de

	ld [hl], a                                       ; $6d0e: $77
	and h                                            ; $6d0f: $a4
	ei                                               ; $6d10: $fb
	sbc l                                            ; $6d11: $9d
	adc b                                            ; $6d12: $88
	ld e, e                                          ; $6d13: $5b
	sbc $ff                                          ; $6d14: $de $ff
	ld sp, hl                                        ; $6d16: $f9
	ld a, e                                          ; $6d17: $7b
	add sp, -$24                                     ; $6d18: $e8 $dc
	rst $38                                          ; $6d1a: $ff
	sub b                                            ; $6d1b: $90
	and h                                            ; $6d1c: $a4
	ei                                               ; $6d1d: $fb
	ld d, a                                          ; $6d1e: $57
	xor d                                            ; $6d1f: $aa
	add b                                            ; $6d20: $80
	ret nc                                           ; $6d21: $d0

	inc a                                            ; $6d22: $3c
	rlca                                             ; $6d23: $07
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	xor b                                            ; $6d26: $a8
	ld d, l                                          ; $6d27: $55
	ld a, a                                          ; $6d28: $7f
	cpl                                              ; $6d29: $2f
	inc bc                                           ; $6d2a: $03
	ld hl, sp+$7f                                    ; $6d2b: $f8 $7f
	add sp, -$23                                     ; $6d2d: $e8 $dd
	rst $38                                          ; $6d2f: $ff
	sbc b                                            ; $6d30: $98
	ccf                                              ; $6d31: $3f
	rlca                                             ; $6d32: $07
	rrca                                             ; $6d33: $0f
	ld b, $07                                        ; $6d34: $06 $07
	inc bc                                           ; $6d36: $03
	ld bc, $73fd                                     ; $6d37: $01 $fd $73
	ei                                               ; $6d3a: $fb
	rst FarCall                                          ; $6d3b: $f7
	sbc l                                            ; $6d3c: $9d
	rrca                                             ; $6d3d: $0f
	rlca                                             ; $6d3e: $07
	ld l, a                                          ; $6d3f: $6f
	add sp, -$21                                     ; $6d40: $e8 $df
	rst $38                                          ; $6d42: $ff
	sbc h                                            ; $6d43: $9c
	ld a, a                                          ; $6d44: $7f
	sbc a                                            ; $6d45: $9f
	add b                                            ; $6d46: $80
	ei                                               ; $6d47: $fb
	sbc d                                            ; $6d48: $9a
	ld h, b                                          ; $6d49: $60
	ld a, a                                          ; $6d4a: $7f
	rst $38                                          ; $6d4b: $ff
	rst $38                                          ; $6d4c: $ff
	inc sp                                           ; $6d4d: $33
	sbc $ff                                          ; $6d4e: $de $ff
	sbc [hl]                                         ; $6d50: $9e
	rra                                              ; $6d51: $1f
	cp $9e                                           ; $6d52: $fe $9e
	call z, $9cf9                                    ; $6d54: $cc $f9 $9c
	dec de                                           ; $6d57: $1b
	ret nz                                           ; $6d58: $c0

	pop hl                                           ; $6d59: $e1
	ld [hl], e                                       ; $6d5a: $73
	xor $95                                          ; $6d5b: $ee $95
	inc b                                            ; $6d5d: $04
	ld a, $1e                                        ; $6d5e: $3e $1e
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	ldh [rIE], a                                     ; $6d62: $e0 $ff
	rst $38                                          ; $6d64: $ff
	ei                                               ; $6d65: $fb
	ld b, c                                          ; $6d66: $41
	ldh a, [$9a]                                     ; $6d67: $f0 $9a
	and b                                            ; $6d69: $a0
	ld d, b                                          ; $6d6a: $50
	jr c, jr_020_6d89                                ; $6d6b: $38 $1c

	rrca                                             ; $6d6d: $0f
	xor $73                                          ; $6d6e: $ee $73
	add sp, -$69                                     ; $6d70: $e8 $97
	inc c                                            ; $6d72: $0c
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	pop af                                           ; $6d75: $f1
	ccf                                              ; $6d76: $3f
	rra                                              ; $6d77: $1f
	rrca                                             ; $6d78: $0f
	add b                                            ; $6d79: $80
	ld [hl], e                                       ; $6d7a: $73
	ld [hl], d                                       ; $6d7b: $72
	ld a, e                                          ; $6d7c: $7b
	ld hl, sp-$03                                    ; $6d7d: $f8 $fd
	sbc e                                            ; $6d7f: $9b
	ret nz                                           ; $6d80: $c0

	ldh [$f0], a                                     ; $6d81: $e0 $f0
	ld a, a                                          ; $6d83: $7f
	ld h, e                                          ; $6d84: $63
	and b                                            ; $6d85: $a0
	sbc [hl]                                         ; $6d86: $9e
	add b                                            ; $6d87: $80
	ld l, a                                          ; $6d88: $6f

jr_020_6d89:
	and b                                            ; $6d89: $a0
	sbc l                                            ; $6d8a: $9d
	db $e4                                           ; $6d8b: $e4
	ld a, [hl]                                       ; $6d8c: $7e
	ld l, a                                          ; $6d8d: $6f
	and b                                            ; $6d8e: $a0
	sbc [hl]                                         ; $6d8f: $9e
	dec de                                           ; $6d90: $1b
	ld b, a                                          ; $6d91: $47
	ld e, b                                          ; $6d92: $58
	sub h                                            ; $6d93: $94
	rra                                              ; $6d94: $1f
	rlca                                             ; $6d95: $07
	pop af                                           ; $6d96: $f1
	jr c, jr_020_6db5                                ; $6d97: $38 $1c

	ld c, $80                                        ; $6d99: $0e $80
	rst $38                                          ; $6d9b: $ff
	db $e3                                           ; $6d9c: $e3
	ld hl, sp-$02                                    ; $6d9d: $f8 $fe
	scf                                              ; $6d9f: $37
	ret nz                                           ; $6da0: $c0

	sub h                                            ; $6da1: $94
	nop                                              ; $6da2: $00
	inc e                                            ; $6da3: $1c
	db $fd                                           ; $6da4: $fd
	ldh [$dc], a                                     ; $6da5: $e0 $dc
	stop                                             ; $6da7: $10 $00
	inc e                                            ; $6da9: $1c
	cp $ff                                           ; $6daa: $fe $ff
	db $fc                                           ; $6dac: $fc
	sbc $ff                                          ; $6dad: $de $ff
	sbc e                                            ; $6daf: $9b
	ld a, a                                          ; $6db0: $7f
	inc bc                                           ; $6db1: $03
	rst JumpTable                                          ; $6db2: $c7
	inc bc                                           ; $6db3: $03
	halt                                             ; $6db4: $76

jr_020_6db5:
	db $fc                                           ; $6db5: $fc
	sbc l                                            ; $6db6: $9d
	add b                                            ; $6db7: $80
	ldh [$f1], a                                     ; $6db8: $e0 $f1
	sub c                                            ; $6dba: $91
	inc c                                            ; $6dbb: $0c
	ld e, $ff                                        ; $6dbc: $1e $ff
	rst $38                                          ; $6dbe: $ff
	ld a, [$00e0]                                    ; $6dbf: $fa $e0 $00
	add b                                            ; $6dc2: $80
	di                                               ; $6dc3: $f3
	pop hl                                           ; $6dc4: $e1
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	dec b                                            ; $6dc7: $05
	rra                                              ; $6dc8: $1f
	ld e, [hl]                                       ; $6dc9: $5e
	cp b                                             ; $6dca: $b8
	reti                                             ; $6dcb: $d9


	jp $83d9                                         ; $6dcc: $c3 $d9 $83


	reti                                             ; $6dcf: $d9


	db $fd                                           ; $6dd0: $fd
	reti                                             ; $6dd1: $d9


	ld a, [hl]                                       ; $6dd2: $7e
	rst SubAFromDE                                          ; $6dd3: $df
	rst $38                                          ; $6dd4: $ff
	db $dd                                           ; $6dd5: $dd
	inc bc                                           ; $6dd6: $03
	rst SubAFromDE                                          ; $6dd7: $df
	jp $f973                                         ; $6dd8: $c3 $73 $f9


	sbc e                                            ; $6ddb: $9b
	inc bc                                           ; $6ddc: $03
	add e                                            ; $6ddd: $83
	add e                                            ; $6dde: $83
	rst $38                                          ; $6ddf: $ff
	call c, $9cfd                                    ; $6de0: $dc $fd $9c
	ld a, l                                          ; $6de3: $7d
	db $fd                                           ; $6de4: $fd
	nop                                              ; $6de5: $00
	db $db                                           ; $6de6: $db
	cp $7b                                           ; $6de7: $fe $7b
	ldh [$fd], a                                     ; $6de9: $e0 $fd
	ld h, [hl]                                       ; $6deb: $66
	ld h, a                                          ; $6dec: $67
	reti                                             ; $6ded: $d9


	rst $38                                          ; $6dee: $ff
	ld a, a                                          ; $6def: $7f
	rst FarCall                                          ; $6df0: $f7
	ld l, e                                          ; $6df1: $6b
	push af                                          ; $6df2: $f5
	ld a, e                                          ; $6df3: $7b
	ld sp, hl                                        ; $6df4: $f9
	db $dd                                           ; $6df5: $dd
	ret nz                                           ; $6df6: $c0

	ld a, e                                          ; $6df7: $7b
	ret nz                                           ; $6df8: $c0

	call c, $7b80                                    ; $6df9: $dc $80 $7b
	ret nz                                           ; $6dfc: $c0

	call c, $9cff                                    ; $6dfd: $dc $ff $9c
	db $fc                                           ; $6e00: $fc
	db $fd                                           ; $6e01: $fd
	nop                                              ; $6e02: $00
	db $db                                           ; $6e03: $db
	ld a, a                                          ; $6e04: $7f
	sub a                                            ; $6e05: $97
	ld a, [hl]                                       ; $6e06: $7e
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	ldh a, [$e0]                                     ; $6e09: $f0 $e0
	add e                                            ; $6e0b: $83
	cp $f0                                           ; $6e0c: $fe $f0
	ld [hl], e                                       ; $6e0e: $73
	ld h, b                                          ; $6e0f: $60
	sbc h                                            ; $6e10: $9c
	di                                               ; $6e11: $f3
	cp $f0                                           ; $6e12: $fe $f0
	ld [hl], e                                       ; $6e14: $73
	ld h, b                                          ; $6e15: $60
	sbc h                                            ; $6e16: $9c
	inc c                                            ; $6e17: $0c
	ld bc, $630f                                     ; $6e18: $01 $0f $63
	ld h, b                                          ; $6e1b: $60
	sbc b                                            ; $6e1c: $98
	ccf                                              ; $6e1d: $3f
	inc e                                            ; $6e1e: $1c
	rra                                              ; $6e1f: $1f
	cp a                                             ; $6e20: $bf
	ld hl, sp-$40                                    ; $6e21: $f8 $c0
	add b                                            ; $6e23: $80
	ld [hl], e                                       ; $6e24: $73
	or c                                             ; $6e25: $b1
	ld a, e                                          ; $6e26: $7b
	ld hl, sp-$62                                    ; $6e27: $f8 $9e
	ld b, $fd                                        ; $6e29: $06 $fd
	sbc h                                            ; $6e2b: $9c
	rlca                                             ; $6e2c: $07
	ccf                                              ; $6e2d: $3f
	ld a, a                                          ; $6e2e: $7f
	ld h, e                                          ; $6e2f: $63
	ldh [$9e], a                                     ; $6e30: $e0 $9e
	sbc h                                            ; $6e32: $9c
	ld a, [bc]                                       ; $6e33: $0a
	and b                                            ; $6e34: $a0
	ld a, a                                          ; $6e35: $7f
	res 2, d                                         ; $6e36: $cb $92
	ldh [$e3], a                                     ; $6e38: $e0 $e3
	rst $38                                          ; $6e3a: $ff
	cp $ff                                           ; $6e3b: $fe $ff
	rst $38                                          ; $6e3d: $ff
	ld b, a                                          ; $6e3e: $47
	rlca                                             ; $6e3f: $07
	rra                                              ; $6e40: $1f
	cp a                                             ; $6e41: $bf
	rst $38                                          ; $6e42: $ff
	ld a, [$fb31]                                    ; $6e43: $fa $31 $fb
	sbc l                                            ; $6e46: $9d
	dec b                                            ; $6e47: $05
	adc $63                                          ; $6e48: $ce $63
	ret nz                                           ; $6e4a: $c0

	sbc h                                            ; $6e4b: $9c
	or b                                             ; $6e4c: $b0
	pop af                                           ; $6e4d: $f1
	ld hl, sp-$25                                    ; $6e4e: $f8 $db

jr_020_6e50:
	rst $38                                          ; $6e50: $ff
	ld a, e                                          ; $6e51: $7b
	call c, $9e7b                                    ; $6e52: $dc $7b $9e
	ld a, [$079e]                                    ; $6e55: $fa $9e $07
	ld h, e                                          ; $6e58: $63
	ldh [hDisp1_WX], a                                     ; $6e59: $e0 $96
	ld sp, hl                                        ; $6e5b: $f9
	ld h, a                                          ; $6e5c: $67
	rst $38                                          ; $6e5d: $ff
	rlca                                             ; $6e5e: $07
	rlca                                             ; $6e5f: $07
	rrca                                             ; $6e60: $0f
	ld c, $00                                        ; $6e61: $0e $00
	ld sp, hl                                        ; $6e63: $f9
	ld a, e                                          ; $6e64: $7b
	and c                                            ; $6e65: $a1
	sub a                                            ; $6e66: $97
	rst $38                                          ; $6e67: $ff
	ldh a, [$f1]                                     ; $6e68: $f0 $f1
	rst $38                                          ; $6e6a: $ff
	ld b, $18                                        ; $6e6b: $06 $18
	nop                                              ; $6e6d: $00
	ld hl, sp+$77                                    ; $6e6e: $f8 $77
	adc $63                                          ; $6e70: $ce $63
	and b                                            ; $6e72: $a0
	ld a, [hl]                                       ; $6e73: $7e
	rst AddAOntoHL                                          ; $6e74: $ef
	ld a, e                                          ; $6e75: $7b
	ld sp, $3c7f                                     ; $6e76: $31 $7f $3c
	sbc h                                            ; $6e79: $9c
	pop bc                                           ; $6e7a: $c1
	db $e3                                           ; $6e7b: $e3
	db $fd                                           ; $6e7c: $fd
	ld [hl], e                                       ; $6e7d: $73
	cp l                                             ; $6e7e: $bd
	rst $38                                          ; $6e7f: $ff
	sbc d                                            ; $6e80: $9a
	ld [bc], a                                       ; $6e81: $02
	nop                                              ; $6e82: $00
	ld bc, $0f03                                     ; $6e83: $01 $03 $0f
	ld [hl], l                                       ; $6e86: $75
	cp h                                             ; $6e87: $bc
	db $fc                                           ; $6e88: $fc
	sub h                                            ; $6e89: $94
	ld l, l                                          ; $6e8a: $6d
	rst SubAFromBC                                          ; $6e8b: $e7
	rst SubAFromDE                                          ; $6e8c: $df
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	ld l, a                                          ; $6e8f: $6f
	di                                               ; $6e90: $f3
	ld sp, hl                                        ; $6e91: $f9
	db $fc                                           ; $6e92: $fc
	ld a, a                                          ; $6e93: $7f
	rst $38                                          ; $6e94: $ff
	ld a, e                                          ; $6e95: $7b
	ld c, d                                          ; $6e96: $4a
	rst SubAFromDE                                          ; $6e97: $df
	rst $38                                          ; $6e98: $ff
	sub a                                            ; $6e99: $97
	ld [bc], a                                       ; $6e9a: $02
	add b                                            ; $6e9b: $80
	nop                                              ; $6e9c: $00
	ret nz                                           ; $6e9d: $c0

	add b                                            ; $6e9e: $80
	add b                                            ; $6e9f: $80
	db $fc                                           ; $6ea0: $fc
	cp $f9                                           ; $6ea1: $fe $f9
	adc a                                            ; $6ea3: $8f
	ldh [$c0], a                                     ; $6ea4: $e0 $c0
	add c                                            ; $6ea6: $81
	inc bc                                           ; $6ea7: $03
	ld c, a                                          ; $6ea8: $4f
	sbc [hl]                                         ; $6ea9: $9e
	sbc a                                            ; $6eaa: $9f
	inc sp                                           ; $6eab: $33
	rra                                              ; $6eac: $1f
	ccf                                              ; $6ead: $3f
	ld a, [hl]                                       ; $6eae: $7e
	db $fc                                           ; $6eaf: $fc
	or b                                             ; $6eb0: $b0
	ld h, e                                          ; $6eb1: $63
	ld h, a                                          ; $6eb2: $67
	rst GetHLinHL                                          ; $6eb3: $cf
	ld [hl], l                                       ; $6eb4: $75
	ld d, [hl]                                       ; $6eb5: $56
	ld a, a                                          ; $6eb6: $7f
	pop bc                                           ; $6eb7: $c1
	ld e, a                                          ; $6eb8: $5f
	jr nz, jr_020_6e50                               ; $6eb9: $20 $95

	db $d3                                           ; $6ebb: $d3
	sub a                                            ; $6ebc: $97
	rst $38                                          ; $6ebd: $ff
	ld a, a                                          ; $6ebe: $7f
	ld a, a                                          ; $6ebf: $7f
	rst $38                                          ; $6ec0: $ff
	ld a, [$20bd]                                    ; $6ec1: $fa $bd $20
	ld h, b                                          ; $6ec4: $60
	ld a, e                                          ; $6ec5: $7b
	and a                                            ; $6ec6: $a7
	sub h                                            ; $6ec7: $94
	ld a, [bc]                                       ; $6ec8: $0a
	ld h, l                                          ; $6ec9: $65
	ld h, a                                          ; $6eca: $67
	db $fc                                           ; $6ecb: $fc
	ld hl, sp+$3c                                    ; $6ecc: $f8 $3c
	ld a, b                                          ; $6ece: $78
	ld h, b                                          ; $6ecf: $60
	ret nz                                           ; $6ed0: $c0

	add l                                            ; $6ed1: $85
	jp c, $1a7b                                      ; $6ed2: $da $7b $1a

	ld l, a                                          ; $6ed5: $6f
	ld d, [hl]                                       ; $6ed6: $56
	sbc b                                            ; $6ed7: $98
	add e                                            ; $6ed8: $83
	ld d, b                                          ; $6ed9: $50
	add sp, $34                                      ; $6eda: $e8 $34
	ld e, $03                                        ; $6edc: $1e $03
	ldh a, [$75]                                     ; $6ede: $f0 $75
	ret                                              ; $6ee0: $c9


	ld a, a                                          ; $6ee1: $7f
	ld [$fc7d], sp                                   ; $6ee2: $08 $7d $fc
	ld sp, hl                                        ; $6ee5: $f9
	ld [hl], a                                       ; $6ee6: $77
	add sp, -$62                                     ; $6ee7: $e8 $9e
	db $f4                                           ; $6ee9: $f4
	ld a, e                                          ; $6eea: $7b
	ld l, a                                          ; $6eeb: $6f
	sbc d                                            ; $6eec: $9a
	ld [hl], l                                       ; $6eed: $75
	ld e, $45                                        ; $6eee: $1e $45
	sub d                                            ; $6ef0: $92
	push af                                          ; $6ef1: $f5
	ld a, c                                          ; $6ef2: $79
	push hl                                          ; $6ef3: $e5
	ld a, l                                          ; $6ef4: $7d
	xor $9d                                          ; $6ef5: $ee $9d
	ld a, [$6ffd]                                    ; $6ef7: $fa $fd $6f
	ld h, b                                          ; $6efa: $60
	ei                                               ; $6efb: $fb
	sbc [hl]                                         ; $6efc: $9e
	push af                                          ; $6efd: $f5
	ld [hl], e                                       ; $6efe: $73
	db $10                                           ; $6eff: $10
	rst SubAFromDE                                          ; $6f00: $df
	rst $38                                          ; $6f01: $ff
	sbc l                                            ; $6f02: $9d
	jp hl                                            ; $6f03: $e9


	ld hl, sp+$73                                    ; $6f04: $f8 $73
	jp hl                                            ; $6f06: $e9


	ld l, a                                          ; $6f07: $6f
	ld bc, $2853                                     ; $6f08: $01 $53 $28
	call nc, Call_020_77ff                           ; $6f0b: $d4 $ff $77
	ld b, l                                          ; $6f0e: $45
	dec hl                                           ; $6f0f: $2b
	ldh [$7e], a                                     ; $6f10: $e0 $7e
	adc d                                            ; $6f12: $8a
	sbc e                                            ; $6f13: $9b
	rst GetHLinHL                                          ; $6f14: $cf
	ld [hl], e                                       ; $6f15: $73
	cp c                                             ; $6f16: $b9
	inc l                                            ; $6f17: $2c
	ld [hl], e                                       ; $6f18: $73
	or $7c                                           ; $6f19: $f6 $7c
	xor e                                            ; $6f1b: $ab
	ld h, b                                          ; $6f1c: $60
	ld a, a                                          ; $6f1d: $7f
	ld l, a                                          ; $6f1e: $6f
	jp z, $bf98                                      ; $6f1f: $ca $98 $bf

	cpl                                              ; $6f22: $2f
	add hl, sp                                       ; $6f23: $39
	inc e                                            ; $6f24: $1c
	rrca                                             ; $6f25: $0f
	inc bc                                           ; $6f26: $03
	dec b                                            ; $6f27: $05
	ld a, e                                          ; $6f28: $7b
	ld [$e65f], a                                    ; $6f29: $ea $5f $e6
	ld l, d                                          ; $6f2c: $6a
	jr z, jr_020_6fad                                ; $6f2d: $28 $7e

	ld d, h                                          ; $6f2f: $54
	ld [hl], e                                       ; $6f30: $73
	add sp, -$64                                     ; $6f31: $e8 $9c
	ei                                               ; $6f33: $fb
	ret nz                                           ; $6f34: $c0

	rst SubAFromBC                                          ; $6f35: $e7
	ld a, c                                          ; $6f36: $79
	nop                                              ; $6f37: $00
	ld a, a                                          ; $6f38: $7f
	ld b, d                                          ; $6f39: $42
	sbc d                                            ; $6f3a: $9a
	call nz, $1f3e                                   ; $6f3b: $c4 $3e $1f
	ld bc, $7901                                     ; $6f3e: $01 $01 $79
	nop                                              ; $6f41: $00
	sbc [hl]                                         ; $6f42: $9e
	dec sp                                           ; $6f43: $3b
	ld c, b                                          ; $6f44: $48
	and b                                            ; $6f45: $a0
	rst SubAFromDE                                          ; $6f46: $df
	rst $38                                          ; $6f47: $ff
	sub c                                            ; $6f48: $91
	rst AddAOntoHL                                          ; $6f49: $ef
	rst $38                                          ; $6f4a: $ff
	cp $bc                                           ; $6f4b: $fe $bc
	ld a, l                                          ; $6f4d: $7d
	ld a, h                                          ; $6f4e: $7c
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	stop                                             ; $6f51: $10 $00
	ld bc, $0243                                     ; $6f53: $01 $43 $02
	inc bc                                           ; $6f56: $03
	ld a, d                                          ; $6f57: $7a
	jr nc, @+$7c                                     ; $6f58: $30 $7a

	ret nz                                           ; $6f5a: $c0

	rst SubAFromDE                                          ; $6f5b: $df
	add b                                            ; $6f5c: $80
	ld d, c                                          ; $6f5d: $51
	nop                                              ; $6f5e: $00
	sbc h                                            ; $6f5f: $9c
	sub b                                            ; $6f60: $90
	nop                                              ; $6f61: $00
	inc a                                            ; $6f62: $3c
	ld l, l                                          ; $6f63: $6d
	nop                                              ; $6f64: $00
	sbc l                                            ; $6f65: $9d
	rst $38                                          ; $6f66: $ff
	and e                                            ; $6f67: $a3
	ld l, l                                          ; $6f68: $6d
	nop                                              ; $6f69: $00
	sbc l                                            ; $6f6a: $9d
	nop                                              ; $6f6b: $00
	ld b, b                                          ; $6f6c: $40
	ld hl, sp-$63                                    ; $6f6d: $f8 $9d
	inc bc                                           ; $6f6f: $03
	inc b                                            ; $6f70: $04
	ld [hl], d                                       ; $6f71: $72
	ld [hl], b                                       ; $6f72: $70
	sub h                                            ; $6f73: $94
	ld bc, $fca3                                     ; $6f74: $01 $a3 $fc
	ld hl, sp-$1f                                    ; $6f77: $f8 $e1
	add e                                            ; $6f79: $83
	rst GetHLinHL                                          ; $6f7a: $cf
	rst $38                                          ; $6f7b: $ff
	cp $fc                                           ; $6f7c: $fe $fc
	ei                                               ; $6f7e: $fb

Call_020_6f7f:
	ld a, e                                          ; $6f7f: $7b
	db $fc                                           ; $6f80: $fc
	sbc [hl]                                         ; $6f81: $9e
	ldh a, [$5f]                                     ; $6f82: $f0 $5f
	ldh [$fc], a                                     ; $6f84: $e0 $fc
	sbc e                                            ; $6f86: $9b
	ld h, b                                          ; $6f87: $60
	ldh a, [rP1]                                     ; $6f88: $f0 $00
	dec bc                                           ; $6f8a: $0b
	ld h, e                                          ; $6f8b: $63
	dec e                                            ; $6f8c: $1d
	sbc $ff                                          ; $6f8d: $de $ff
	sbc [hl]                                         ; $6f8f: $9e
	sbc a                                            ; $6f90: $9f
	ld h, b                                          ; $6f91: $60
	jr nc, @-$60                                     ; $6f92: $30 $9e

	ld [$9afd], sp                                   ; $6f94: $08 $fd $9a
	add b                                            ; $6f97: $80
	ld hl, sp-$0c                                    ; $6f98: $f8 $f4
	adc b                                            ; $6f9a: $88
	ldh a, [$73]                                     ; $6f9b: $f0 $73

Jump_020_6f9d:
	and b                                            ; $6f9d: $a0
	sbc l                                            ; $6f9e: $9d
	cp a                                             ; $6f9f: $bf
	rst FarCall                                          ; $6fa0: $f7
	ld [hl], e                                       ; $6fa1: $73
	rla                                              ; $6fa2: $17
	ld c, e                                          ; $6fa3: $4b
	ld [hl-], a                                      ; $6fa4: $32
	sbc h                                            ; $6fa5: $9c
	ld [bc], a                                       ; $6fa6: $02
	ccf                                              ; $6fa7: $3f
	ld a, $6a                                        ; $6fa8: $3e $6a
	call c, $9c7d                                    ; $6faa: $dc $7d $9c

jr_020_6fad:
	ld [hl], c                                       ; $6fad: $71
	ld hl, $c09e                                     ; $6fae: $21 $9e $c0
	ld c, e                                          ; $6fb1: $4b
	and b                                            ; $6fb2: $a0
	sbc d                                            ; $6fb3: $9a
	ld [$1ff0], sp                                   ; $6fb4: $08 $f0 $1f
	rrca                                             ; $6fb7: $0f
	ld a, a                                          ; $6fb8: $7f
	ld a, d                                          ; $6fb9: $7a
	sbc l                                            ; $6fba: $9d
	sub [hl]                                         ; $6fbb: $96
	ld sp, hl                                        ; $6fbc: $f9
	ldh a, [rIE]                                     ; $6fbd: $f0 $ff

Jump_020_6fbf:
	rst $38                                          ; $6fbf: $ff
	add e                                            ; $6fc0: $83
	ld bc, $0301                                     ; $6fc1: $01 $01 $03
	rla                                              ; $6fc4: $17
	ld h, e                                          ; $6fc5: $63
	and b                                            ; $6fc6: $a0
	rst $38                                          ; $6fc7: $ff
	ld a, e                                          ; $6fc8: $7b
	call Call_020_6f7f                               ; $6fc9: $cd $7f $6f
	sbc [hl]                                         ; $6fcc: $9e
	inc c                                            ; $6fcd: $0c
	ld l, d                                          ; $6fce: $6a
	sbc l                                            ; $6fcf: $9d
	ld a, a                                          ; $6fd0: $7f
	di                                               ; $6fd1: $f3
	ld a, a                                          ; $6fd2: $7f
	call nz, Call_020_4053                           ; $6fd3: $c4 $53 $40
	sub a                                            ; $6fd6: $97
	cp $b8                                           ; $6fd7: $fe $b8
	nop                                              ; $6fd9: $00
	ld b, b                                          ; $6fda: $40
	add c                                            ; $6fdb: $81
	rlca                                             ; $6fdc: $07
	jr nc, jr_020_704f                               ; $6fdd: $30 $70

	sbc $ff                                          ; $6fdf: $de $ff
	sub l                                            ; $6fe1: $95
	cp h                                             ; $6fe2: $bc
	ld bc, $0f07                                     ; $6fe3: $01 $07 $0f
	rrca                                             ; $6fe6: $0f
	rst $38                                          ; $6fe7: $ff
	db $fc                                           ; $6fe8: $fc
	sub b                                            ; $6fe9: $90
	jp Jump_020_74fe                                 ; $6fea: $c3 $fe $74


	rst AddAOntoHL                                          ; $6fed: $ef
	ld a, [$c78f]                                    ; $6fee: $fa $8f $c7
	sub c                                            ; $6ff1: $91
	cp $6c                                           ; $6ff2: $fe $6c
	add b                                            ; $6ff4: $80
	jp nz, $e0f0                                     ; $6ff5: $c2 $f0 $e0

	dec sp                                           ; $6ff8: $3b
	ld l, a                                          ; $6ff9: $6f
	ld bc, $7f93                                     ; $6ffa: $01 $93 $7f
	inc a                                            ; $6ffd: $3c
	inc c                                            ; $6ffe: $0c
	jr jr_020_707a                                   ; $6fff: $18 $79

	sbc e                                            ; $7001: $9b
	sbc d                                            ; $7002: $9a
	db $fc                                           ; $7003: $fc
	ld a, b                                          ; $7004: $78
	ccf                                              ; $7005: $3f
	rrca                                             ; $7006: $0f
	ccf                                              ; $7007: $3f
	ld [hl], a                                       ; $7008: $77
	sbc $93                                          ; $7009: $de $93
	add b                                            ; $700b: $80
	ret nz                                           ; $700c: $c0

	ldh a, [$c0]                                     ; $700d: $f0 $c0
	rst $38                                          ; $700f: $ff
	ld a, a                                          ; $7010: $7f
	ccf                                              ; $7011: $3f
	rrca                                             ; $7012: $0f
	add e                                            ; $7013: $83
	ld b, e                                          ; $7014: $43
	jr nc, jr_020_7033                               ; $7015: $30 $1c

	ld [hl], d                                       ; $7017: $72
	ld [hl], c                                       ; $7018: $71
	ld a, a                                          ; $7019: $7f
	push af                                          ; $701a: $f5
	ld c, d                                          ; $701b: $4a
	ld h, b                                          ; $701c: $60
	ld a, [hl]                                       ; $701d: $7e
	ld a, d                                          ; $701e: $7a
	sub h                                            ; $701f: $94
	ld l, b                                          ; $7020: $68
	inc e                                            ; $7021: $1c
	ld a, [hl+]                                      ; $7022: $2a
	rla                                              ; $7023: $17
	ld bc, $4080                                     ; $7024: $01 $80 $40
	xor b                                            ; $7027: $a8
	rla                                              ; $7028: $17
	inc bc                                           ; $7029: $03
	dec b                                            ; $702a: $05
	db $f4                                           ; $702b: $f4
	sbc h                                            ; $702c: $9c
	ld a, a                                          ; $702d: $7f
	rra                                              ; $702e: $1f
	cpl                                              ; $702f: $2f
	ld [hl], e                                       ; $7030: $73
	add sp, $7f                                      ; $7031: $e8 $7f

jr_020_7033:
	cp e                                             ; $7033: $bb
	sbc c                                            ; $7034: $99
	ld b, b                                          ; $7035: $40
	add sp, $74                                      ; $7036: $e8 $74
	sbc d                                            ; $7038: $9a
	xor l                                            ; $7039: $ad
	rst SubAFromHL                                          ; $703a: $d7
	ld [hl], d                                       ; $703b: $72
	ld sp, hl                                        ; $703c: $f9
	ld a, h                                          ; $703d: $7c
	xor b                                            ; $703e: $a8
	ld h, h                                          ; $703f: $64
	rst SubAFromDE                                          ; $7040: $df
	ld a, e                                          ; $7041: $7b
	di                                               ; $7042: $f3
	ld a, a                                          ; $7043: $7f
	add sp, -$69                                     ; $7044: $e8 $97
	db $f4                                           ; $7046: $f4
	ld a, [$fffd]                                    ; $7047: $fa $fd $ff
	call nc, $0ffa                                   ; $704a: $d4 $fa $0f
	xor c                                            ; $704d: $a9
	ld [hl], l                                       ; $704e: $75

jr_020_704f:
	or h                                             ; $704f: $b4
	ld a, b                                          ; $7050: $78
	jr c, jr_020_70c4                                ; $7051: $38 $71

	cp l                                             ; $7053: $bd
	ld sp, hl                                        ; $7054: $f9
	ld a, a                                          ; $7055: $7f
	add sp, -$25                                     ; $7056: $e8 $db
	rst $38                                          ; $7058: $ff
	sbc h                                            ; $7059: $9c
	add e                                            ; $705a: $83
	add sp, -$0a                                     ; $705b: $e8 $f6
	ld l, [hl]                                       ; $705d: $6e
	db $ed                                           ; $705e: $ed
	dec e                                            ; $705f: $1d
	and b                                            ; $7060: $a0
	ld a, a                                          ; $7061: $7f
	sub l                                            ; $7062: $95
	sbc h                                            ; $7063: $9c
	rra                                              ; $7064: $1f
	add a                                            ; $7065: $87
	db $e3                                           ; $7066: $e3
	ld h, a                                          ; $7067: $67
	push af                                          ; $7068: $f5
	ld b, a                                          ; $7069: $47
	ldh [$97], a                                     ; $706a: $e0 $97
	inc hl                                           ; $706c: $23
	ld [hl], c                                       ; $706d: $71
	xor h                                            ; $706e: $ac
	ld d, [hl]                                       ; $706f: $56
	ld a, [bc]                                       ; $7070: $0a
	inc bc                                           ; $7071: $03
	dec b                                            ; $7072: $05
	ld [bc], a                                       ; $7073: $02
	ld a, c                                          ; $7074: $79
	pop de                                           ; $7075: $d1
	rst SubAFromDE                                          ; $7076: $df
	ld bc, $c055                                     ; $7077: $01 $55 $c0

jr_020_707a:
	sbc e                                            ; $707a: $9b

Call_020_707b:
	ld a, a                                          ; $707b: $7f
	xor a                                            ; $707c: $af
	ld d, a                                          ; $707d: $57
	dec bc                                           ; $707e: $0b
	ld a, e                                          ; $707f: $7b
	add sp, -$6c                                     ; $7080: $e8 $94
	inc c                                            ; $7082: $0c
	rlca                                             ; $7083: $07
	inc bc                                           ; $7084: $03
	ldh [$30], a                                     ; $7085: $e0 $30
	jr jr_020_7095                                   ; $7087: $18 $0c

	nop                                              ; $7089: $00
	rst $38                                          ; $708a: $ff
	ld hl, sp-$04                                    ; $708b: $f8 $fc

jr_020_708d:
	ld a, c                                          ; $708d: $79
	halt                                             ; $708e: $76
	ld l, [hl]                                       ; $708f: $6e
	xor c                                            ; $7090: $a9
	ld a, h                                          ; $7091: $7c
	ld hl, sp+$7e                                    ; $7092: $f8 $7e
	sbc c                                            ; $7094: $99

jr_020_7095:
	ld sp, hl                                        ; $7095: $f9
	sbc e                                            ; $7096: $9b
	inc c                                            ; $7097: $0c
	ret nz                                           ; $7098: $c0

	ret nz                                           ; $7099: $c0

	pop af                                           ; $709a: $f1
	ld a, d                                          ; $709b: $7a
	ld sp, $ac9e                                     ; $709c: $31 $9e $ac
	ld l, d                                          ; $709f: $6a
	add hl, hl                                       ; $70a0: $29
	ld l, [hl]                                       ; $70a1: $6e
	ret z                                            ; $70a2: $c8

	ld a, [hl]                                       ; $70a3: $7e
	ld de, $7f9e                                     ; $70a4: $11 $9e $7f
	ld sp, hl                                        ; $70a7: $f9
	adc d                                            ; $70a8: $8a
	ret nz                                           ; $70a9: $c0

	rst GetHLinHL                                          ; $70aa: $cf
	dec de                                           ; $70ab: $1b
	sbc a                                            ; $70ac: $9f
	rrca                                             ; $70ad: $0f
	dec c                                            ; $70ae: $0d
	inc b                                            ; $70af: $04
	nop                                              ; $70b0: $00
	ld hl, sp-$01                                    ; $70b1: $f8 $ff
	ei                                               ; $70b3: $fb
	sbc a                                            ; $70b4: $9f
	rrca                                             ; $70b5: $0f
	rrca                                             ; $70b6: $0f
	rlca                                             ; $70b7: $07
	ccf                                              ; $70b8: $3f
	rlca                                             ; $70b9: $07
	nop                                              ; $70ba: $00
	inc b                                            ; $70bb: $04

jr_020_70bc:
	ld h, b                                          ; $70bc: $60
	ld hl, sp+$73                                    ; $70bd: $f8 $73
	jr nc, jr_020_70bc                               ; $70bf: $30 $fb

	sbc c                                            ; $70c1: $99
	ld l, a                                          ; $70c2: $6f
	rst AddAOntoHL                                          ; $70c3: $ef

jr_020_70c4:
	ldh a, [rIE]                                     ; $70c4: $f0 $ff
	ld a, a                                          ; $70c6: $7f
	ld [bc], a                                       ; $70c7: $02
	ld l, e                                          ; $70c8: $6b
	ld [hl], b                                       ; $70c9: $70
	rst SubAFromDE                                          ; $70ca: $df
	cp $9e                                           ; $70cb: $fe $9e
	ld a, a                                          ; $70cd: $7f
	ld [hl], a                                       ; $70ce: $77

jr_020_70cf:
	cp a                                             ; $70cf: $bf
	sbc l                                            ; $70d0: $9d
	add b                                            ; $70d1: $80
	db $fd                                           ; $70d2: $fd
	ld e, a                                          ; $70d3: $5f
	ldh [$df], a                                     ; $70d4: $e0 $df
	ld hl, sp-$21                                    ; $70d6: $f8 $df
	ldh a, [$7d]                                     ; $70d8: $f0 $7d
	ld l, [hl]                                       ; $70da: $6e
	ld h, e                                          ; $70db: $63
	ld hl, sp+$7e                                    ; $70dc: $f8 $7e
	ld e, l                                          ; $70de: $5d
	ld a, d                                          ; $70df: $7a
	ld e, h                                          ; $70e0: $5c
	ld a, h                                          ; $70e1: $7c
	inc [hl]                                         ; $70e2: $34
	ld a, a                                          ; $70e3: $7f
	sub $63                                          ; $70e4: $d6 $63
	add b                                            ; $70e6: $80
	sbc c                                            ; $70e7: $99
	ld bc, rIF                                     ; $70e8: $01 $0f $ff
	ccf                                              ; $70eb: $3f
	ld e, $0f                                        ; $70ec: $1e $0f
	ld a, c                                          ; $70ee: $79
	ld h, $79                                        ; $70ef: $26 $79
	ret                                              ; $70f1: $c9


	ld a, e                                          ; $70f2: $7b
	ld hl, sp+$73                                    ; $70f3: $f8 $73
	adc h                                            ; $70f5: $8c
	sbc l                                            ; $70f6: $9d
	pop hl                                           ; $70f7: $e1
	ldh a, [$63]                                     ; $70f8: $f0 $63
	jr @-$67                                         ; $70fa: $18 $97

	adc h                                            ; $70fc: $8c
	add b                                            ; $70fd: $80
	nop                                              ; $70fe: $00
	pop af                                           ; $70ff: $f1
	ccf                                              ; $7100: $3f
	rst SubAFromDE                                          ; $7101: $df
	ld a, a                                          ; $7102: $7f
	add e                                            ; $7103: $83
	ld [hl], e                                       ; $7104: $73
	ldh [$7b], a                                     ; $7105: $e0 $7b
	ld hl, sp+$73                                    ; $7107: $f8 $73
	ldh [$9d], a                                     ; $7109: $e0 $9d
	jr nz, jr_020_708d                               ; $710b: $20 $80

	ld a, c                                          ; $710d: $79
	db $10                                           ; $710e: $10
	ld l, c                                          ; $710f: $69
	ld b, c                                          ; $7110: $41
	sbc h                                            ; $7111: $9c
	ld c, $3d                                        ; $7112: $0e $3d
	or c                                             ; $7114: $b1
	ld [hl], a                                       ; $7115: $77
	ld h, b                                          ; $7116: $60
	ld a, l                                          ; $7117: $7d
	ld c, d                                          ; $7118: $4a
	sbc l                                            ; $7119: $9d
	db $fd                                           ; $711a: $fd
	or a                                             ; $711b: $b7
	ld [hl], a                                       ; $711c: $77
	ld h, b                                          ; $711d: $60
	sbc d                                            ; $711e: $9a
	inc b                                            ; $711f: $04
	ld bc, $4e02                                     ; $7120: $01 $02 $4e
	db $fc                                           ; $7123: $fc
	ld e, e                                          ; $7124: $5b
	ld h, b                                          ; $7125: $60
	sbc [hl]                                         ; $7126: $9e
	ld h, b                                          ; $7127: $60
	ld a, e                                          ; $7128: $7b
	inc d                                            ; $7129: $14
	rla                                              ; $712a: $17
	ld h, b                                          ; $712b: $60
	sbc d                                            ; $712c: $9a
	ld c, $00                                        ; $712d: $0e $00
	ld bc, $0400                                     ; $712f: $01 $00 $04
	ld [hl], a                                       ; $7132: $77
	jr c, jr_020_70cf                                ; $7133: $38 $9a

jr_020_7135:
	dec c                                            ; $7135: $0d
	ld bc, $0501                                     ; $7136: $01 $01 $05
	adc $77                                          ; $7139: $ce $77
	add $75                                          ; $713b: $c6 $75
	ld a, c                                          ; $713d: $79
	sbc l                                            ; $713e: $9d
	ei                                               ; $713f: $fb
	rst JumpTable                                          ; $7140: $c7
	ld h, c                                          ; $7141: $61
	and b                                            ; $7142: $a0
	sbc l                                            ; $7143: $9d
	inc a                                            ; $7144: $3c
	jr jr_020_71b5                                   ; $7145: $18 $6e

	sub b                                            ; $7147: $90
	ld a, h                                          ; $7148: $7c
	pop hl                                           ; $7149: $e1
	ld a, c                                          ; $714a: $79
	ld a, c                                          ; $714b: $79
	rst SubAFromDE                                          ; $714c: $df
	rst $38                                          ; $714d: $ff
	ld a, l                                          ; $714e: $7d
	ld h, h                                          ; $714f: $64
	ld a, [hl]                                       ; $7150: $7e
	cp $7f                                           ; $7151: $fe $7f
	dec sp                                           ; $7153: $3b
	ld a, l                                          ; $7154: $7d
	cp e                                             ; $7155: $bb
	ld sp, hl                                        ; $7156: $f9
	sbc h                                            ; $7157: $9c
	rlca                                             ; $7158: $07
	rra                                              ; $7159: $1f
	inc a                                            ; $715a: $3c
	ld a, e                                          ; $715b: $7b
	sbc $99                                          ; $715c: $de $99
	ld [$fbff], sp                                   ; $715e: $08 $ff $fb
	pop hl                                           ; $7161: $e1
	jp Jump_020_78c3                                 ; $7162: $c3 $c3 $78


	ld d, [hl]                                       ; $7165: $56
	ld l, e                                          ; $7166: $6b
	add sp, -$62                                     ; $7167: $e8 $9e
	sbc b                                            ; $7169: $98
	ld h, e                                          ; $716a: $63
	ldh [hDisp0_OBP0], a                                     ; $716b: $e0 $86
	cp a                                             ; $716d: $bf
	add d                                            ; $716e: $82
	ldh [$fc], a                                     ; $716f: $e0 $fc
	db $fc                                           ; $7171: $fc
	ret z                                            ; $7172: $c8

	ret nz                                           ; $7173: $c0

	pop hl                                           ; $7174: $e1
	ld b, c                                          ; $7175: $41
	ld a, l                                          ; $7176: $7d
	rra                                              ; $7177: $1f
	inc bc                                           ; $7178: $03
	inc bc                                           ; $7179: $03
	scf                                              ; $717a: $37
	ccf                                              ; $717b: $3f
	rra                                              ; $717c: $1f
	ld a, [hl]                                       ; $717d: $7e
	ld a, [hl]                                       ; $717e: $7e
	inc e                                            ; $717f: $1c
	ld [$3f18], sp                                   ; $7180: $08 $18 $3f
	ccf                                              ; $7183: $3f
	rra                                              ; $7184: $1f
	add b                                            ; $7185: $80
	ld a, c                                          ; $7186: $79
	db $d3                                           ; $7187: $d3
	ld a, [hl]                                       ; $7188: $7e
	ldh a, [$7e]                                     ; $7189: $f0 $7e
	halt                                             ; $718b: $76
	ld [hl], d                                       ; $718c: $72
	dec hl                                           ; $718d: $2b
	sbc h                                            ; $718e: $9c
	rlca                                             ; $718f: $07
	and e                                            ; $7190: $a3
	pop de                                           ; $7191: $d1
	db $db                                           ; $7192: $db
	rst $38                                          ; $7193: $ff
	sbc l                                            ; $7194: $9d
	ld e, a                                          ; $7195: $5f
	cpl                                              ; $7196: $2f
	ld b, [hl]                                       ; $7197: $46
	jr nz, jr_020_7135                               ; $7198: $20 $9b

	dec hl                                           ; $719a: $2b
	ld a, l                                          ; $719b: $7d

Call_020_719c:
	inc l                                            ; $719c: $2c
	ld d, $76                                        ; $719d: $16 $76
	jr nz, jr_020_721e                               ; $719f: $20 $7d

	add b                                            ; $71a1: $80
	ld b, [hl]                                       ; $71a2: $46

jr_020_71a3:
	jr nz, jr_020_7222                               ; $71a3: $20 $7d

	add b                                            ; $71a5: $80
	halt                                             ; $71a6: $76
	jr nz, jr_020_71a3                               ; $71a7: $20 $fa

	sbc [hl]                                         ; $71a9: $9e
	and b                                            ; $71aa: $a0
	ld [$e877], a                                    ; $71ab: $ea $77 $e8
	ld a, c                                          ; $71ae: $79
	ld e, d                                          ; $71af: $5a
	sbc l                                            ; $71b0: $9d
	ld [hl], l                                       ; $71b1: $75
	ld e, $69                                        ; $71b2: $1e $69
	ld l, e                                          ; $71b4: $6b

jr_020_71b5:
	ld [hl], d                                       ; $71b5: $72
	and b                                            ; $71b6: $a0
	ld h, c                                          ; $71b7: $61
	ld e, [hl]                                       ; $71b8: $5e
	sub l                                            ; $71b9: $95
	xor b                                            ; $71ba: $a8
	push af                                          ; $71bb: $f5
	cp $50                                           ; $71bc: $fe $50
	ld [$9e74], a                                    ; $71be: $ea $74 $9e
	rst JumpTable                                          ; $71c1: $c7
	jp hl                                            ; $71c2: $e9


	or $7b                                           ; $71c3: $f6 $7b
	ld d, b                                          ; $71c5: $50
	ld a, a                                          ; $71c6: $7f
	db $e4                                           ; $71c7: $e4
	ld d, [hl]                                       ; $71c8: $56
	jr z, @+$81                                      ; $71c9: $28 $7f

	add sp, -$62                                     ; $71cb: $e8 $9e
	db $f4                                           ; $71cd: $f4
	ld [hl], c                                       ; $71ce: $71
	ld d, b                                          ; $71cf: $50
	sbc [hl]                                         ; $71d0: $9e
	ld sp, hl                                        ; $71d1: $f9
	ld [hl], e                                       ; $71d2: $73
	ld a, [$ea72]                                    ; $71d3: $fa $72 $ea
	add hl, hl                                       ; $71d6: $29
	ld h, b                                          ; $71d7: $60
	ld a, h                                          ; $71d8: $7c
	db $db                                           ; $71d9: $db
	sbc e                                            ; $71da: $9b
	cp a                                             ; $71db: $bf
	rrca                                             ; $71dc: $0f
	rst JumpTable                                          ; $71dd: $c7
	ld h, e                                          ; $71de: $63
	ld [hl], e                                       ; $71df: $73
	or $79                                           ; $71e0: $f6 $79
	sbc [hl]                                         ; $71e2: $9e
	ld c, e                                          ; $71e3: $4b
	ldh [$99], a                                     ; $71e4: $e0 $99
	ld a, a                                          ; $71e6: $7f
	inc hl                                           ; $71e7: $23
	ld a, c                                          ; $71e8: $79
	xor h                                            ; $71e9: $ac
	ld d, l                                          ; $71ea: $55
	ld c, $78                                        ; $71eb: $0e $78
	call nz, $1c7f                                   ; $71ed: $c4 $7f $1c
	sbc l                                            ; $71f0: $9d
	inc bc                                           ; $71f1: $03
	ld [bc], a                                       ; $71f2: $02
	ld b, l                                          ; $71f3: $45
	ld h, b                                          ; $71f4: $60
	ld a, l                                          ; $71f5: $7d
	ld c, l                                          ; $71f6: $4d
	ld a, b                                          ; $71f7: $78
	xor h                                            ; $71f8: $ac
	sub a                                            ; $71f9: $97
	inc e                                            ; $71fa: $1c
	db $fd                                           ; $71fb: $fd
	ldh [$dc], a                                     ; $71fc: $e0 $dc
	stop                                             ; $71fe: $10 $00
	inc a                                            ; $7200: $3c
	cp $6c                                           ; $7201: $fe $6c
	cp $9c                                           ; $7203: $fe $9c
	and e                                            ; $7205: $a3
	rst JumpTable                                          ; $7206: $c7
	inc bc                                           ; $7207: $03
	ld [hl], b                                       ; $7208: $70
	ld a, l                                          ; $7209: $7d
	sbc [hl]                                         ; $720a: $9e
	ld b, b                                          ; $720b: $40
	ld sp, hl                                        ; $720c: $f9
	sbc d                                            ; $720d: $9a
	ei                                               ; $720e: $fb
	ret nz                                           ; $720f: $c0

	pop hl                                           ; $7210: $e1
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	ld a, e                                          ; $7213: $7b
	xor d                                            ; $7214: $aa
	sbc l                                            ; $7215: $9d
	inc b                                            ; $7216: $04
	ld a, $7b                                        ; $7217: $3e $7b
	dec a                                            ; $7219: $3d
	sbc d                                            ; $721a: $9a
	ld h, b                                          ; $721b: $60
	rra                                              ; $721c: $1f
	add e                                            ; $721d: $83

jr_020_721e:
	ei                                               ; $721e: $fb
	ld b, c                                          ; $721f: $41
	ld [hl], e                                       ; $7220: $73
	add hl, sp                                       ; $7221: $39

jr_020_7222:
	ld e, [hl]                                       ; $7222: $5e
	nop                                              ; $7223: $00
	sub h                                            ; $7224: $94
	dec de                                           ; $7225: $1b
	ccf                                              ; $7226: $3f
	cp a                                             ; $7227: $bf
	ld hl, sp-$40                                    ; $7228: $f8 $c0
	add b                                            ; $722a: $80
	ldh a, [hDisp0_SCY]                                     ; $722b: $f0 $83
	ei                                               ; $722d: $fb
	ret nz                                           ; $722e: $c0

	ldh a, [$7b]                                     ; $722f: $f0 $7b
	ld hl, sp-$63                                    ; $7231: $f8 $9d

jr_020_7233:
	rst FarCall                                          ; $7233: $f7
	ld a, h                                          ; $7234: $7c
	ld a, d                                          ; $7235: $7a
	inc sp                                           ; $7236: $33
	ld a, l                                          ; $7237: $7d
	ld a, [$7f9e]                                    ; $7238: $fa $9e $7f
	ld l, l                                          ; $723b: $6d
	rla                                              ; $723c: $17
	ld [hl], l                                       ; $723d: $75
	and b                                            ; $723e: $a0
	rst $38                                          ; $723f: $ff
	ld a, l                                          ; $7240: $7d
	ret nz                                           ; $7241: $c0

	ld a, l                                          ; $7242: $7d
	ld [$b89e], sp                                   ; $7243: $08 $9e $b8
	ld [hl], c                                       ; $7246: $71
	ret nz                                           ; $7247: $c0

	ld a, e                                          ; $7248: $7b
	ld hl, sp+$69                                    ; $7249: $f8 $69
	nop                                              ; $724b: $00
	sbc [hl]                                         ; $724c: $9e
	ld b, a                                          ; $724d: $47
	ld h, e                                          ; $724e: $63
	ld a, b                                          ; $724f: $78
	sbc l                                            ; $7250: $9d
	inc e                                            ; $7251: $1c
	rra                                              ; $7252: $1f
	ld [hl], a                                       ; $7253: $77
	ret nz                                           ; $7254: $c0

	sbc l                                            ; $7255: $9d
	nop                                              ; $7256: $00
	call nz, $ffde                                   ; $7257: $c4 $de $ff
	ld a, e                                          ; $725a: $7b
	ld hl, sp+$7f                                    ; $725b: $f8 $7f
	push bc                                          ; $725d: $c5
	halt                                             ; $725e: $76
	inc l                                            ; $725f: $2c
	ld a, a                                          ; $7260: $7f
	ret nz                                           ; $7261: $c0

	ld e, h                                          ; $7262: $5c
	ldh [$7b], a                                     ; $7263: $e0 $7b
	ret nz                                           ; $7265: $c0

	sbc [hl]                                         ; $7266: $9e
	cp a                                             ; $7267: $bf
	ld a, e                                          ; $7268: $7b
	push hl                                          ; $7269: $e5
	db $dd                                           ; $726a: $dd
	rst $38                                          ; $726b: $ff
	ld [hl], a                                       ; $726c: $77
	ld hl, sp+$6b                                    ; $726d: $f8 $6b
	ld h, e                                          ; $726f: $63
	ld a, l                                          ; $7270: $7d
	ei                                               ; $7271: $fb
	ld hl, sp+$6f                                    ; $7272: $f8 $6f
	ld b, b                                          ; $7274: $40
	ld a, a                                          ; $7275: $7f
	inc hl                                           ; $7276: $23
	ld l, a                                          ; $7277: $6f
	ld b, b                                          ; $7278: $40
	rst SubAFromDE                                          ; $7279: $df
	rst $38                                          ; $727a: $ff
	ld c, a                                          ; $727b: $4f
	ld b, b                                          ; $727c: $40
	rst $38                                          ; $727d: $ff
	sbc [hl]                                         ; $727e: $9e
	cp e                                             ; $727f: $bb
	ld a, d                                          ; $7280: $7a
	jp $fc98                                         ; $7281: $c3 $98 $fc


	add b                                            ; $7284: $80
	cp $fc                                           ; $7285: $fe $fc
	ld l, e                                          ; $7287: $6b
	rrca                                             ; $7288: $0f
	ccf                                              ; $7289: $3f
	ld [hl], e                                       ; $728a: $73
	cp l                                             ; $728b: $bd
	sbc [hl]                                         ; $728c: $9e
	call nz, $203f                                   ; $728d: $c4 $3f $20
	sbc h                                            ; $7290: $9c
	ld a, a                                          ; $7291: $7f
	ret nz                                           ; $7292: $c0

jr_020_7293:
	add b                                            ; $7293: $80
	ld [hl], e                                       ; $7294: $73
	jr nz, jr_020_7233                               ; $7295: $20 $9c

	add b                                            ; $7297: $80
	ccf                                              ; $7298: $3f
	ld a, a                                          ; $7299: $7f
	ld [hl], e                                       ; $729a: $73
	jr nz, jr_020_7293                               ; $729b: $20 $f6

	adc a                                            ; $729d: $8f
	ldh [$67], a                                     ; $729e: $e0 $67
	rst AddAOntoHL                                          ; $72a0: $ef
	rst $38                                          ; $72a1: $ff
	rst FarCall                                          ; $72a2: $f7
	call c, $c1c0                                    ; $72a3: $dc $c0 $c1
	rra                                              ; $72a6: $1f
	rst SubAFromDE                                          ; $72a7: $df
	rst $38                                          ; $72a8: $ff
	cp $e8                                           ; $72a9: $fe $e8
	ldh [c], a                                       ; $72ab: $e2
	db $fc                                           ; $72ac: $fc
	ld hl, sp+$72                                    ; $72ad: $f8 $72
	ccf                                              ; $72af: $3f
	ld a, l                                          ; $72b0: $7d
	ld a, e                                          ; $72b1: $7b
	sbc [hl]                                         ; $72b2: $9e
	ld b, $5e                                        ; $72b3: $06 $5e
	sbc b                                            ; $72b5: $98
	ld a, l                                          ; $72b6: $7d
	cp d                                             ; $72b7: $ba
	sbc b                                            ; $72b8: $98
	add b                                            ; $72b9: $80
	jr nc, jr_020_733a                               ; $72ba: $30 $7e

	ccf                                              ; $72bc: $3f
	nop                                              ; $72bd: $00
	jr nz, @+$41                                     ; $72be: $20 $3f

	ld a, e                                          ; $72c0: $7b
	ld c, d                                          ; $72c1: $4a
	ld a, [hl]                                       ; $72c2: $7e
	ld [hl], h                                       ; $72c3: $74
	ld a, l                                          ; $72c4: $7d
	or e                                             ; $72c5: $b3
	ld a, d                                          ; $72c6: $7a
	reti                                             ; $72c7: $d9


	sbc [hl]                                         ; $72c8: $9e
	ldh a, [c]                                       ; $72c9: $f2
	ld d, [hl]                                       ; $72ca: $56
	ld e, b                                          ; $72cb: $58
	sbc l                                            ; $72cc: $9d
	rst FarCall                                          ; $72cd: $f7
	ld l, a                                          ; $72ce: $6f
	ld a, e                                          ; $72cf: $7b
	add b                                            ; $72d0: $80
	sbc e                                            ; $72d1: $9b
	call z, $08fc                                    ; $72d2: $cc $fc $08
	nop                                              ; $72d5: $00
	ld [hl], l                                       ; $72d6: $75
	dec b                                            ; $72d7: $05
	ld a, l                                          ; $72d8: $7d
	ld de, $da7e                                     ; $72d9: $11 $7e $da
	sbc d                                            ; $72dc: $9a
	ldh a, [$c0]                                     ; $72dd: $f0 $c0
	ld bc, $3303                                     ; $72df: $01 $03 $33
	ld sp, hl                                        ; $72e2: $f9
	adc b                                            ; $72e3: $88
	adc a                                            ; $72e4: $8f
	ld bc, $1eff                                     ; $72e5: $01 $ff $1e
	inc b                                            ; $72e8: $04
	sub e                                            ; $72e9: $93
	rst $38                                          ; $72ea: $ff
	rst $38                                          ; $72eb: $ff
	ld [hl], b                                       ; $72ec: $70
	cp $80                                           ; $72ed: $fe $80
	pop hl                                           ; $72ef: $e1
	ei                                               ; $72f0: $fb
	ld l, h                                          ; $72f1: $6c
	ld [$8ffc], sp                                   ; $72f2: $08 $fc $8f
	ld bc, $ff7f                                     ; $72f5: $01 $7f $ff
	rst $38                                          ; $72f8: $ff
	ld a, h                                          ; $72f9: $7c
	ldh a, [rBCPD]                                   ; $72fa: $f0 $69
	sbc $66                                          ; $72fc: $de $66
	jr c, @+$80                                      ; $72fe: $38 $7e

	ld h, d                                          ; $7300: $62
	ei                                               ; $7301: $fb
	ld h, [hl]                                       ; $7302: $66
	ld a, $9e                                        ; $7303: $3e $9e
	ld bc, $357b                                     ; $7305: $01 $7b $35
	ld [hl], e                                       ; $7308: $73
	add sp, $78                                      ; $7309: $e8 $78
	ld h, $67                                        ; $730b: $26 $67
	sub $ec                                          ; $730d: $d6 $ec
	sub [hl]                                         ; $730f: $96
	add b                                            ; $7310: $80
	and b                                            ; $7311: $a0
	ret nc                                           ; $7312: $d0

	ld h, b                                          ; $7313: $60
	ld d, h                                          ; $7314: $54
	cp b                                             ; $7315: $b8
	sbc h                                            ; $7316: $9c
	push bc                                          ; $7317: $c5
	ldh a, [c]                                       ; $7318: $f2
	ld a, e                                          ; $7319: $7b
	push af                                          ; $731a: $f5
	sbc d                                            ; $731b: $9a
	add b                                            ; $731c: $80
	ret nz                                           ; $731d: $c0

	ldh [$f8], a                                     ; $731e: $e0 $f8
	db $fc                                           ; $7320: $fc
	ld h, c                                          ; $7321: $61
	ld h, a                                          ; $7322: $67
	sub a                                            ; $7323: $97
	ret nc                                           ; $7324: $d0

	ldh [$d4], a                                     ; $7325: $e0 $d4
	ld hl, sp-$04                                    ; $7327: $f8 $fc
	db $fd                                           ; $7329: $fd
	cp $f8                                           ; $732a: $fe $f8
	ld [hl], h                                       ; $732c: $74
	adc l                                            ; $732d: $8d
	sub $ff                                          ; $732e: $d6 $ff
	dec a                                            ; $7330: $3d
	and b                                            ; $7331: $a0
	db $d3                                           ; $7332: $d3
	rst $38                                          ; $7333: $ff
	ld b, a                                          ; $7334: $47
	ldh [$df], a                                     ; $7335: $e0 $df
	ld a, a                                          ; $7337: $7f
	ld a, b                                          ; $7338: $78
	or e                                             ; $7339: $b3

jr_020_733a:
	sbc h                                            ; $733a: $9c

jr_020_733b:
	adc a                                            ; $733b: $8f
	rst GetHLinHL                                          ; $733c: $cf
	ld h, a                                          ; $733d: $67
	ld l, c                                          ; $733e: $69
	ld [hl], l                                       ; $733f: $75
	ld b, c                                          ; $7340: $41
	add b                                            ; $7341: $80
	sub h                                            ; $7342: $94
	or h                                             ; $7343: $b4
	ld e, d                                          ; $7344: $5a
	inc l                                            ; $7345: $2c
	ld b, $0b                                        ; $7346: $06 $0b
	rlca                                             ; $7348: $07
	ld a, [bc]                                       ; $7349: $0a
	ld bc, $050b                                     ; $734a: $01 $0b $05
	inc bc                                           ; $734d: $03
	ld d, l                                          ; $734e: $55

jr_020_734f:
	add c                                            ; $734f: $81

jr_020_7350:
	ld a, h                                          ; $7350: $7c

jr_020_7351:
	ld l, b                                          ; $7351: $68

jr_020_7352:
	ld a, h                                          ; $7352: $7c

jr_020_7353:
	sub l                                            ; $7353: $95

jr_020_7354:
	sbc [hl]                                         ; $7354: $9e

jr_020_7355:
	rlca                                             ; $7355: $07

jr_020_7356:
	ld [hl], a                                       ; $7356: $77

jr_020_7357:
	add sp, -$20                                     ; $7357: $e8 $e0

jr_020_7359:
	jr nz, jr_020_733b                               ; $7359: $20 $e0

jr_020_735b:
	nop                                              ; $735b: $00
	ldh [rP1], a                                     ; $735c: $e0 $00
	ldh [rP1], a                                     ; $735e: $e0 $00
	ldh [rAUDTERM], a                                ; $7360: $e0 $25
	add d                                            ; $7362: $82
	ld [bc], a                                       ; $7363: $02
	sbc l                                            ; $7364: $9d
	jp c, Jump_020_5f14                              ; $7365: $da $14 $5f

	cp $9a                                           ; $7368: $fe $9a
	reti                                             ; $736a: $d9


	inc d                                            ; $736b: $14
	ret c                                            ; $736c: $d8

	inc d                                            ; $736d: $14

jr_020_736e:
	rst SubAFromHL                                          ; $736e: $d7

jr_020_736f:
	ld a, e                                          ; $736f: $7b

jr_020_7370:
	cp $9a                                           ; $7370: $fe $9a

jr_020_7372:
	sub $14                                          ; $7372: $d6 $14

jr_020_7374:
	push de                                          ; $7374: $d5

jr_020_7375:
	inc d                                            ; $7375: $14
	call nc, $f05b                                   ; $7376: $d4 $5b $f0

jr_020_7379:
	add e                                            ; $7379: $83

jr_020_737a:
	db $d3                                           ; $737a: $d3

jr_020_737b:
	jr jr_020_734f                                   ; $737b: $18 $d2

	jr jr_020_7350                                   ; $737d: $18 $d1

	jr jr_020_7351                                   ; $737f: $18 $d0

	jr jr_020_7352                                   ; $7381: $18 $cf

	jr jr_020_7353                                   ; $7383: $18 $ce

	jr jr_020_7354                                   ; $7385: $18 $cd

	jr jr_020_7355                                   ; $7387: $18 $cc

	jr jr_020_7356                                   ; $7389: $18 $cb

	jr jr_020_7357                                   ; $738b: $18 $ca

jr_020_738d:
	jr @-$35                                         ; $738d: $18 $c9

	jr jr_020_7359                                   ; $738f: $18 $c8

jr_020_7391:
	jr @-$37                                         ; $7391: $18 $c7

jr_020_7393:
	jr jr_020_735b                                   ; $7393: $18 $c6

jr_020_7395:
	jr jr_020_73ee                                   ; $7395: $18 $57

	ret nz                                           ; $7397: $c0

	ld a, a                                          ; $7398: $7f

jr_020_7399:
	cp $9c                                           ; $7399: $fe $9c
	push bc                                          ; $739b: $c5
	inc d                                            ; $739c: $14
	call nz, $ce73                                   ; $739d: $c4 $73 $ce
	sub h                                            ; $73a0: $94
	jp $c214                                         ; $73a1: $c3 $14 $c2


	inc d                                            ; $73a4: $14
	pop bc                                           ; $73a5: $c1
	inc d                                            ; $73a6: $14

jr_020_73a7:
	ret nz                                           ; $73a7: $c0

jr_020_73a8:
	inc d                                            ; $73a8: $14

jr_020_73a9:
	cp a                                             ; $73a9: $bf

jr_020_73aa:
	inc d                                            ; $73aa: $14

jr_020_73ab:
	cp [hl]                                          ; $73ab: $be

jr_020_73ac:
	ld a, e                                          ; $73ac: $7b

jr_020_73ad:
	ldh a, [c]                                       ; $73ad: $f2

jr_020_73ae:
	adc [hl]                                         ; $73ae: $8e
	cp l                                             ; $73af: $bd
	jr jr_020_736e                                   ; $73b0: $18 $bc

	jr jr_020_736f                                   ; $73b2: $18 $bb

	jr jr_020_7370                                   ; $73b4: $18 $ba

	jr @-$45                                         ; $73b6: $18 $b9

	jr jr_020_7372                                   ; $73b8: $18 $b8

	jr @-$47                                         ; $73ba: $18 $b7

	jr jr_020_7374                                   ; $73bc: $18 $b6

	jr jr_020_7375                                   ; $73be: $18 $b5

	ld a, e                                          ; $73c0: $7b
	db $f4                                           ; $73c1: $f4
	sbc b                                            ; $73c2: $98
	or h                                             ; $73c3: $b4
	jr jr_020_7379                                   ; $73c4: $18 $b3

	jr jr_020_737a                                   ; $73c6: $18 $b2

	jr jr_020_737b                                   ; $73c8: $18 $b1

	ld c, e                                          ; $73ca: $4b
	ret nz                                           ; $73cb: $c0

	ld a, a                                          ; $73cc: $7f
	cp $9c                                           ; $73cd: $fe $9c
	or b                                             ; $73cf: $b0
	inc d                                            ; $73d0: $14
	xor a                                            ; $73d1: $af
	ld [hl], e                                       ; $73d2: $73
	cp [hl]                                          ; $73d3: $be

jr_020_73d4:
	ld a, a                                          ; $73d4: $7f
	cp $90                                           ; $73d5: $fe $90
	xor [hl]                                         ; $73d7: $ae
	inc d                                            ; $73d8: $14
	xor l                                            ; $73d9: $ad

jr_020_73da:
	inc d                                            ; $73da: $14
	xor h                                            ; $73db: $ac
	inc d                                            ; $73dc: $14
	xor e                                            ; $73dd: $ab
	inc d                                            ; $73de: $14
	xor d                                            ; $73df: $aa

jr_020_73e0:
	inc d                                            ; $73e0: $14
	xor c                                            ; $73e1: $a9
	jr @-$56                                         ; $73e2: $18 $a8

	jr jr_020_738d                                   ; $73e4: $18 $a7

	ld a, e                                          ; $73e6: $7b
	sub h                                            ; $73e7: $94
	sub h                                            ; $73e8: $94
	and [hl]                                         ; $73e9: $a6
	jr jr_020_7391                                   ; $73ea: $18 $a5

jr_020_73ec:
	jr @-$5a                                         ; $73ec: $18 $a4

jr_020_73ee:
	jr jr_020_7393                                   ; $73ee: $18 $a3

	jr @-$5c                                         ; $73f0: $18 $a2

	jr jr_020_7395                                   ; $73f2: $18 $a1

	ld [hl], e                                       ; $73f4: $73
	ldh a, [c]                                       ; $73f5: $f2
	sbc h                                            ; $73f6: $9c
	and b                                            ; $73f7: $a0
	jr jr_020_7399                                   ; $73f8: $18 $9f

	ld b, e                                          ; $73fa: $43
	ret nz                                           ; $73fb: $c0

	ld a, a                                          ; $73fc: $7f
	cp $9a                                           ; $73fd: $fe $9a
	sbc [hl]                                         ; $73ff: $9e
	inc d                                            ; $7400: $14
	sbc l                                            ; $7401: $9d
	inc d                                            ; $7402: $14
	sbc h                                            ; $7403: $9c
	ld l, e                                          ; $7404: $6b
	cp h                                             ; $7405: $bc
	adc b                                            ; $7406: $88
	sbc e                                            ; $7407: $9b
	inc d                                            ; $7408: $14
	sbc d                                            ; $7409: $9a
	inc d                                            ; $740a: $14
	sbc c                                            ; $740b: $99
	inc d                                            ; $740c: $14
	sbc b                                            ; $740d: $98
	jr jr_020_73a7                                   ; $740e: $18 $97

	jr jr_020_73a8                                   ; $7410: $18 $96

jr_020_7412:
	jr jr_020_73a9                                   ; $7412: $18 $95

	jr jr_020_73aa                                   ; $7414: $18 $94

	jr jr_020_73ab                                   ; $7416: $18 $93

	jr jr_020_73ac                                   ; $7418: $18 $92

	jr jr_020_73ad                                   ; $741a: $18 $91

	jr jr_020_73ae                                   ; $741c: $18 $90

	ld a, e                                          ; $741e: $7b
	cp h                                             ; $741f: $bc
	ld a, a                                          ; $7420: $7f
	add b                                            ; $7421: $80
	sbc [hl]                                         ; $7422: $9e
	adc a                                            ; $7423: $8f
	ld c, e                                          ; $7424: $4b
	add b                                            ; $7425: $80
	sbc h                                            ; $7426: $9c
	adc [hl]                                         ; $7427: $8e
	jr @-$71                                         ; $7428: $18 $8d

	inc bc                                           ; $742a: $03
	cp $6f                                           ; $742b: $fe $6f
	cp $9e                                           ; $742d: $fe $9e
	adc h                                            ; $742f: $8c
	ld e, d                                          ; $7430: $5a
	db $fc                                           ; $7431: $fc
	ld e, a                                          ; $7432: $5f
	ret nz                                           ; $7433: $c0

	sbc e                                            ; $7434: $9b
	adc e                                            ; $7435: $8b
	jr jr_020_7412                                   ; $7436: $18 $da

	nop                                              ; $7438: $00
	inc bc                                           ; $7439: $03
	cp $73                                           ; $743a: $fe $73
	cp $7f                                           ; $743c: $fe $7f
	sub $5e                                          ; $743e: $d6 $5e
	db $fc                                           ; $7440: $fc
	inc bc                                           ; $7441: $03
	ret nz                                           ; $7442: $c0

	inc sp                                           ; $7443: $33
	ret nz                                           ; $7444: $c0

	ld l, [hl]                                       ; $7445: $6e
	db $fc                                           ; $7446: $fc
	sbc h                                            ; $7447: $9c
	adc d                                            ; $7448: $8a
	jr jr_020_73d4                                   ; $7449: $18 $89

	inc bc                                           ; $744b: $03
	ret nz                                           ; $744c: $c0

	cpl                                              ; $744d: $2f
	ret nz                                           ; $744e: $c0

	sbc h                                            ; $744f: $9c
	adc b                                            ; $7450: $88
	jr jr_020_73da                                   ; $7451: $18 $87

	ld a, d                                          ; $7453: $7a
	call nz, $fe7e                                   ; $7454: $c4 $7e $fe
	sbc h                                            ; $7457: $9c
	add [hl]                                         ; $7458: $86
	jr jr_020_73e0                                   ; $7459: $18 $85

	inc bc                                           ; $745b: $03
	ret nz                                           ; $745c: $c0

	scf                                              ; $745d: $37
	ret nz                                           ; $745e: $c0

	ld a, a                                          ; $745f: $7f
	ret z                                            ; $7460: $c8

	ld a, [hl]                                       ; $7461: $7e
	add $7f                                          ; $7462: $c6 $7f
	cp [hl]                                          ; $7464: $be
	sub d                                            ; $7465: $92
	add h                                            ; $7466: $84
	jr jr_020_73ec                                   ; $7467: $18 $83

	jr @-$7c                                         ; $7469: $18 $82

	inc d                                            ; $746b: $14
	add c                                            ; $746c: $81
	inc d                                            ; $746d: $14
	add b                                            ; $746e: $80
	inc d                                            ; $746f: $14
	ld a, a                                          ; $7470: $7f
	inc d                                            ; $7471: $14
	ld a, [hl]                                       ; $7472: $7e
	inc bc                                           ; $7473: $03
	ret nz                                           ; $7474: $c0

	ld d, a                                          ; $7475: $57
	ret nz                                           ; $7476: $c0

	sub [hl]                                         ; $7477: $96
	ld a, l                                          ; $7478: $7d
	jr jr_020_74f7                                   ; $7479: $18 $7c

	jr jr_020_74f8                                   ; $747b: $18 $7b

	jr jr_020_74f9                                   ; $747d: $18 $7a

	jr jr_020_74fa                                   ; $747f: $18 $79

	ld a, e                                          ; $7481: $7b
	ld b, b                                          ; $7482: $40
	sbc b                                            ; $7483: $98
	ld a, b                                          ; $7484: $78
	inc d                                            ; $7485: $14
	ld [hl], a                                       ; $7486: $77
	inc d                                            ; $7487: $14
	halt                                             ; $7488: $76
	inc d                                            ; $7489: $14
	ld [hl], l                                       ; $748a: $75
	inc bc                                           ; $748b: $03
	ret nz                                           ; $748c: $c0

	ld d, a                                          ; $748d: $57
	ret nz                                           ; $748e: $c0

	sbc h                                            ; $748f: $9c
	ld [hl], h                                       ; $7490: $74
	jr jr_020_7506                                   ; $7491: $18 $73

	ld a, e                                          ; $7493: $7b
	ld a, h                                          ; $7494: $7c
	ld a, [hl]                                       ; $7495: $7e
	ld a, [hl]                                       ; $7496: $7e
	sbc [hl]                                         ; $7497: $9e

Jump_020_7498:
	ld [hl], d                                       ; $7498: $72
	ld [hl], e                                       ; $7499: $73
	nop                                              ; $749a: $00

Call_020_749b:
	rst SubAFromDE                                          ; $749b: $df
	call nc, Call_020_719c                           ; $749c: $d4 $9c $71
	inc d                                            ; $749f: $14
	ld [hl], b                                       ; $74a0: $70
	inc bc                                           ; $74a1: $03
	ret nz                                           ; $74a2: $c0

	ld d, a                                          ; $74a3: $57
	ret nz                                           ; $74a4: $c0

	sub d                                            ; $74a5: $92
	ld l, a                                          ; $74a6: $6f
	jr jr_020_7517                                   ; $74a7: $18 $6e

	jr jr_020_7518                                   ; $74a9: $18 $6d

	jr jr_020_7519                                   ; $74ab: $18 $6c

	jr jr_020_751a                                   ; $74ad: $18 $6b

	jr jr_020_751b                                   ; $74af: $18 $6a

	inc d                                            ; $74b1: $14
	ld l, c                                          ; $74b2: $69
	inc bc                                           ; $74b3: $03
	nop                                              ; $74b4: $00
	ccf                                              ; $74b5: $3f
	ret nz                                           ; $74b6: $c0

	sub b                                            ; $74b7: $90
	ld l, b                                          ; $74b8: $68
	jr jr_020_7522                                   ; $74b9: $18 $67

	inc d                                            ; $74bb: $14
	ld h, [hl]                                       ; $74bc: $66
	inc d                                            ; $74bd: $14
	ld h, l                                          ; $74be: $65
	inc d                                            ; $74bf: $14
	ld h, h                                          ; $74c0: $64
	inc d                                            ; $74c1: $14
	ld h, e                                          ; $74c2: $63
	inc d                                            ; $74c3: $14
	ld h, d                                          ; $74c4: $62
	inc d                                            ; $74c5: $14
	ld h, c                                          ; $74c6: $61
	ld [hl], d                                       ; $74c7: $72
	cp $03                                           ; $74c8: $fe $03
	ret nz                                           ; $74ca: $c0

	ld e, e                                          ; $74cb: $5b
	ret nz                                           ; $74cc: $c0

	sub b                                            ; $74cd: $90
	ld h, b                                          ; $74ce: $60
	jr jr_020_7530                                   ; $74cf: $18 $5f

	inc d                                            ; $74d1: $14
	ld e, [hl]                                       ; $74d2: $5e
	inc d                                            ; $74d3: $14
	ld e, l                                          ; $74d4: $5d
	inc d                                            ; $74d5: $14
	ld e, h                                          ; $74d6: $5c
	inc d                                            ; $74d7: $14
	ld e, e                                          ; $74d8: $5b
	inc d                                            ; $74d9: $14
	ld e, d                                          ; $74da: $5a
	inc d                                            ; $74db: $14
	ld e, c                                          ; $74dc: $59
	ld a, e                                          ; $74dd: $7b
	ld [bc], a                                       ; $74de: $02
	inc bc                                           ; $74df: $03
	nop                                              ; $74e0: $00
	ld d, e                                          ; $74e1: $53
	ret nz                                           ; $74e2: $c0

	adc h                                            ; $74e3: $8c
	ld e, b                                          ; $74e4: $58
	inc d                                            ; $74e5: $14
	ld d, a                                          ; $74e6: $57
	inc d                                            ; $74e7: $14
	ld d, [hl]                                       ; $74e8: $56
	inc d                                            ; $74e9: $14
	ld d, l                                          ; $74ea: $55
	inc d                                            ; $74eb: $14
	ld d, h                                          ; $74ec: $54
	inc d                                            ; $74ed: $14
	ld d, e                                          ; $74ee: $53
	inc d                                            ; $74ef: $14
	ld d, d                                          ; $74f0: $52
	inc d                                            ; $74f1: $14
	ld d, c                                          ; $74f2: $51
	inc d                                            ; $74f3: $14
	ld d, b                                          ; $74f4: $50
	inc d                                            ; $74f5: $14
	ld c, a                                          ; $74f6: $4f

jr_020_74f7:
	inc bc                                           ; $74f7: $03

jr_020_74f8:
	ret nz                                           ; $74f8: $c0

jr_020_74f9:
	ld d, a                                          ; $74f9: $57

jr_020_74fa:
	ret nz                                           ; $74fa: $c0

	adc h                                            ; $74fb: $8c
	ld c, [hl]                                       ; $74fc: $4e
	inc d                                            ; $74fd: $14

Jump_020_74fe:
	ld c, l                                          ; $74fe: $4d
	inc d                                            ; $74ff: $14
	ld c, h                                          ; $7500: $4c
	inc d                                            ; $7501: $14
	ld c, e                                          ; $7502: $4b
	inc d                                            ; $7503: $14
	ld c, d                                          ; $7504: $4a
	inc d                                            ; $7505: $14

jr_020_7506:
	ld c, c                                          ; $7506: $49
	inc d                                            ; $7507: $14
	ld c, b                                          ; $7508: $48
	inc d                                            ; $7509: $14
	ld b, a                                          ; $750a: $47
	inc d                                            ; $750b: $14
	ld b, [hl]                                       ; $750c: $46
	inc d                                            ; $750d: $14
	ld b, l                                          ; $750e: $45
	inc bc                                           ; $750f: $03
	ret nz                                           ; $7510: $c0

	ld d, a                                          ; $7511: $57
	ret nz                                           ; $7512: $c0

	adc h                                            ; $7513: $8c
	ld b, h                                          ; $7514: $44
	inc d                                            ; $7515: $14
	ld b, e                                          ; $7516: $43

jr_020_7517:
	inc d                                            ; $7517: $14

jr_020_7518:
	ld b, d                                          ; $7518: $42

jr_020_7519:
	inc d                                            ; $7519: $14

jr_020_751a:
	ld b, c                                          ; $751a: $41

jr_020_751b:
	inc d                                            ; $751b: $14
	ld b, b                                          ; $751c: $40
	inc d                                            ; $751d: $14
	ccf                                              ; $751e: $3f
	inc d                                            ; $751f: $14
	ld a, $14                                        ; $7520: $3e $14

jr_020_7522:
	dec a                                            ; $7522: $3d
	inc d                                            ; $7523: $14
	inc a                                            ; $7524: $3c
	inc d                                            ; $7525: $14
	dec sp                                           ; $7526: $3b
	inc bc                                           ; $7527: $03
	ret nz                                           ; $7528: $c0

	ld d, a                                          ; $7529: $57
	ret nz                                           ; $752a: $c0

	adc h                                            ; $752b: $8c
	ld a, [hl-]                                      ; $752c: $3a
	inc d                                            ; $752d: $14
	add hl, sp                                       ; $752e: $39
	inc d                                            ; $752f: $14

jr_020_7530:
	jr c, jr_020_7546                                ; $7530: $38 $14

	scf                                              ; $7532: $37
	inc d                                            ; $7533: $14
	ld [hl], $14                                     ; $7534: $36 $14
	dec [hl]                                         ; $7536: $35
	inc d                                            ; $7537: $14
	inc [hl]                                         ; $7538: $34
	inc d                                            ; $7539: $14
	inc sp                                           ; $753a: $33
	inc d                                            ; $753b: $14
	ld [hl-], a                                      ; $753c: $32
	inc d                                            ; $753d: $14
	ld sp, $c003                                     ; $753e: $31 $03 $c0
	ld d, a                                          ; $7541: $57
	ret nz                                           ; $7542: $c0

	adc h                                            ; $7543: $8c
	jr nc, jr_020_755a                               ; $7544: $30 $14

jr_020_7546:
	cpl                                              ; $7546: $2f
	inc d                                            ; $7547: $14
	ld l, $14                                        ; $7548: $2e $14
	dec l                                            ; $754a: $2d
	inc d                                            ; $754b: $14
	inc l                                            ; $754c: $2c
	inc d                                            ; $754d: $14
	dec hl                                           ; $754e: $2b
	inc d                                            ; $754f: $14
	ld a, [hl+]                                      ; $7550: $2a
	inc d                                            ; $7551: $14
	add hl, hl                                       ; $7552: $29
	inc d                                            ; $7553: $14
	jr z, jr_020_756a                                ; $7554: $28 $14

	daa                                              ; $7556: $27
	inc bc                                           ; $7557: $03
	ret nz                                           ; $7558: $c0

	ld d, a                                          ; $7559: $57

jr_020_755a:
	ret nz                                           ; $755a: $c0

	adc h                                            ; $755b: $8c
	ld h, $14                                        ; $755c: $26 $14
	dec h                                            ; $755e: $25
	inc d                                            ; $755f: $14
	inc h                                            ; $7560: $24
	inc d                                            ; $7561: $14
	inc hl                                           ; $7562: $23
	inc d                                            ; $7563: $14
	ld [hl+], a                                      ; $7564: $22
	inc d                                            ; $7565: $14
	ld hl, $2014                                     ; $7566: $21 $14 $20
	inc d                                            ; $7569: $14

jr_020_756a:
	rra                                              ; $756a: $1f
	inc d                                            ; $756b: $14
	ld e, $14                                        ; $756c: $1e $14
	dec e                                            ; $756e: $1d
	inc bc                                           ; $756f: $03
	ret nz                                           ; $7570: $c0

	ld d, a                                          ; $7571: $57
	ret nz                                           ; $7572: $c0

	sub [hl]                                         ; $7573: $96
	inc e                                            ; $7574: $1c
	inc d                                            ; $7575: $14
	dec de                                           ; $7576: $1b
	inc d                                            ; $7577: $14
	ld a, [de]                                       ; $7578: $1a
	inc d                                            ; $7579: $14
	add hl, de                                       ; $757a: $19
	inc d                                            ; $757b: $14
	jr jr_020_75f9                                   ; $757c: $18 $7b

	ret nz                                           ; $757e: $c0

	sbc d                                            ; $757f: $9a
	rla                                              ; $7580: $17
	inc d                                            ; $7581: $14
	ld d, $14                                        ; $7582: $16 $14
	dec d                                            ; $7584: $15
	sbc $14                                          ; $7585: $de $14
	inc bc                                           ; $7587: $03
	ret nz                                           ; $7588: $c0

	ld e, e                                          ; $7589: $5b
	ret nz                                           ; $758a: $c0

	adc e                                            ; $758b: $8b
	inc de                                           ; $758c: $13
	jr jr_020_75a1                                   ; $758d: $18 $12

	jr jr_020_75a2                                   ; $758f: $18 $11

	jr jr_020_75a3                                   ; $7591: $18 $10

	jr jr_020_75a4                                   ; $7593: $18 $0f

	jr jr_020_75a5                                   ; $7595: $18 $0e

	jr jr_020_75a6                                   ; $7597: $18 $0d

	jr jr_020_75a7                                   ; $7599: $18 $0c

	jr @+$0d                                         ; $759b: $18 $0b

	jr jr_020_75a9                                   ; $759d: $18 $0a

	jr jr_020_75a4                                   ; $759f: $18 $03

jr_020_75a1:
	ret nz                                           ; $75a1: $c0

jr_020_75a2:
	ld e, e                                          ; $75a2: $5b

jr_020_75a3:
	ret nz                                           ; $75a3: $c0

jr_020_75a4:
	sbc [hl]                                         ; $75a4: $9e

jr_020_75a5:
	add hl, bc                                       ; $75a5: $09

jr_020_75a6:
	ld [hl], e                                       ; $75a6: $73

jr_020_75a7:
	cp $9e                                           ; $75a7: $fe $9e

jr_020_75a9:
	ld [$fc7b], sp                                   ; $75a9: $08 $7b $fc
	sbc [hl]                                         ; $75ac: $9e
	rlca                                             ; $75ad: $07
	ld h, e                                          ; $75ae: $63
	cp $9c                                           ; $75af: $fe $9c
	ld b, $18                                        ; $75b1: $06 $18
	adc l                                            ; $75b3: $8d
	inc bc                                           ; $75b4: $03
	cp $6f                                           ; $75b5: $fe $6f

jr_020_75b7:
	cp $9e                                           ; $75b7: $fe $9e
	dec b                                            ; $75b9: $05
	ld e, e                                          ; $75ba: $5b
	jp z, $049e                                      ; $75bb: $ca $9e $04

	inc bc                                           ; $75be: $03
	cp $0f                                           ; $75bf: $fe $0f
	cp $9e                                           ; $75c1: $fe $9e

jr_020_75c3:
	inc bc                                           ; $75c3: $03
	inc bc                                           ; $75c4: $03
	cp $0f                                           ; $75c5: $fe $0f
	cp $9e                                           ; $75c7: $fe $9e
	ld [bc], a                                       ; $75c9: $02
	inc bc                                           ; $75ca: $03
	cp $0f                                           ; $75cb: $fe $0f
	cp $9e                                           ; $75cd: $fe $9e
	ld bc, $fe03                                     ; $75cf: $01 $03 $fe
	rrca                                             ; $75d2: $0f
	cp $02                                           ; $75d3: $fe $02
	sub d                                            ; $75d5: $92
	inc bc                                           ; $75d6: $03
	cp $03                                           ; $75d7: $fe $03
	cp $03                                           ; $75d9: $fe $03
	cp $03                                           ; $75db: $fe $03
	cp $03                                           ; $75dd: $fe $03
	cp $03                                           ; $75df: $fe $03
	cp $23                                           ; $75e1: $fe $23
	cp $ee                                           ; $75e3: $fe $ee
	ld [bc], a                                       ; $75e5: $02
	sub b                                            ; $75e6: $90
	ld b, l                                          ; $75e7: $45
	db $10                                           ; $75e8: $10
	ld b, [hl]                                       ; $75e9: $46
	db $10                                           ; $75ea: $10
	ld b, a                                          ; $75eb: $47
	db $10                                           ; $75ec: $10
	ld c, b                                          ; $75ed: $48
	db $10                                           ; $75ee: $10
	ld b, l                                          ; $75ef: $45
	db $10                                           ; $75f0: $10
	ld c, d                                          ; $75f1: $4a
	stop                                             ; $75f2: $10 $00
	db $10                                           ; $75f4: $10

jr_020_75f5:
	ld c, h                                          ; $75f5: $4c
	ld h, e                                          ; $75f6: $63
	ld hl, sp+$67                                    ; $75f7: $f8 $67

jr_020_75f9:
	db $f4                                           ; $75f9: $f4
	ld d, e                                          ; $75fa: $53

jr_020_75fb:
	db $fc                                           ; $75fb: $fc
	add e                                            ; $75fc: $83
	jr jr_020_765b                                   ; $75fd: $18 $5c

	jr @+$5f                                         ; $75ff: $18 $5d

jr_020_7601:
	jr jr_020_7661                                   ; $7601: $18 $5e

	jr @+$61                                         ; $7603: $18 $5f

	jr jr_020_7667                                   ; $7605: $18 $60

jr_020_7607:
	jr @+$63                                         ; $7607: $18 $61

	jr jr_020_766d                                   ; $7609: $18 $62

	jr jr_020_7670                                   ; $760b: $18 $63

jr_020_760d:
	jr jr_020_7673                                   ; $760d: $18 $64

	jr jr_020_7676                                   ; $760f: $18 $65

	db $10                                           ; $7611: $10
	ld h, [hl]                                       ; $7612: $66
	db $10                                           ; $7613: $10
	ld h, a                                          ; $7614: $67
	db $10                                           ; $7615: $10
	ld l, b                                          ; $7616: $68
	db $10                                           ; $7617: $10
	ld l, c                                          ; $7618: $69
	ld a, e                                          ; $7619: $7b
	ld hl, sp+$7f                                    ; $761a: $f8 $7f
	db $f4                                           ; $761c: $f4
	sbc [hl]                                         ; $761d: $9e
	ld l, h                                          ; $761e: $6c
	ld a, e                                          ; $761f: $7b
	db $fc                                           ; $7620: $fc
	ld h, a                                          ; $7621: $67
	ld hl, sp+$67                                    ; $7622: $f8 $67
	db $f4                                           ; $7624: $f4
	ld l, a                                          ; $7625: $6f
	db $fc                                           ; $7626: $fc
	sbc [hl]                                         ; $7627: $9e
	ld a, c                                          ; $7628: $79
	ld a, e                                          ; $7629: $7b
	db $fc                                           ; $762a: $fc
	sub h                                            ; $762b: $94
	ld a, e                                          ; $762c: $7b
	jr jr_020_76ab                                   ; $762d: $18 $7c

	jr @+$7f                                         ; $762f: $18 $7d

	jr jr_020_76b1                                   ; $7631: $18 $7e

	jr jr_020_76b4                                   ; $7633: $18 $7f

	jr jr_020_75b7                                   ; $7635: $18 $80

	ld a, e                                          ; $7637: $7b
	ret nz                                           ; $7638: $c0

	sub b                                            ; $7639: $90

jr_020_763a:
	add d                                            ; $763a: $82
	jr @-$7b                                         ; $763b: $18 $83

jr_020_763d:
	jr jr_020_75c3                                   ; $763d: $18 $84

	jr jr_020_7641                                   ; $763f: $18 $00

jr_020_7641:
	db $10                                           ; $7641: $10
	add [hl]                                         ; $7642: $86

jr_020_7643:
	db $10                                           ; $7643: $10
	add a                                            ; $7644: $87
	db $10                                           ; $7645: $10

jr_020_7646:
	adc b                                            ; $7646: $88
	db $10                                           ; $7647: $10
	adc c                                            ; $7648: $89

jr_020_7649:
	ld a, e                                          ; $7649: $7b
	ld hl, sp+$6f                                    ; $764a: $f8 $6f

jr_020_764c:
	adc b                                            ; $764c: $88
	ld h, a                                          ; $764d: $67
	ld hl, sp+$67                                    ; $764e: $f8 $67
	db $f4                                           ; $7650: $f4
	ld h, a                                          ; $7651: $67

jr_020_7652:
	db $fc                                           ; $7652: $fc
	adc b                                            ; $7653: $88
	sbc d                                            ; $7654: $9a

jr_020_7655:
	db $10                                           ; $7655: $10
	sbc e                                            ; $7656: $9b
	jr jr_020_75f5                                   ; $7657: $18 $9c

	jr @-$61                                         ; $7659: $18 $9d

jr_020_765b:
	jr jr_020_75fb                                   ; $765b: $18 $9e

	jr @-$5f                                         ; $765d: $18 $9f

	jr jr_020_7601                                   ; $765f: $18 $a0

jr_020_7661:
	jr @-$5d                                         ; $7661: $18 $a1

	jr jr_020_7607                                   ; $7663: $18 $a2

	jr @-$5b                                         ; $7665: $18 $a3

jr_020_7667:
	jr jr_020_760d                                   ; $7667: $18 $a4

	jr @-$59                                         ; $7669: $18 $a5

	ld a, e                                          ; $766b: $7b
	sbc b                                            ; $766c: $98

jr_020_766d:
	sbc d                                            ; $766d: $9a
	and a                                            ; $766e: $a7
	db $10                                           ; $766f: $10

jr_020_7670:
	xor b                                            ; $7670: $a8
	db $10                                           ; $7671: $10
	xor c                                            ; $7672: $a9

jr_020_7673:
	ld [hl], e                                       ; $7673: $73
	ld hl, sp+$27                                    ; $7674: $f8 $27

jr_020_7676:
	db $fc                                           ; $7676: $fc
	add [hl]                                         ; $7677: $86
	cp b                                             ; $7678: $b8
	db $10                                           ; $7679: $10
	cp c                                             ; $767a: $b9
	db $10                                           ; $767b: $10
	cp d                                             ; $767c: $ba
	jr jr_020_763a                                   ; $767d: $18 $bb

	jr jr_020_763d                                   ; $767f: $18 $bc

	jr @-$41                                         ; $7681: $18 $bd

	jr jr_020_7643                                   ; $7683: $18 $be

	jr jr_020_7646                                   ; $7685: $18 $bf

jr_020_7687:
	jr jr_020_7649                                   ; $7687: $18 $c0

	jr jr_020_764c                                   ; $7689: $18 $c1

	jr @-$3c                                         ; $768b: $18 $c2

jr_020_768d:
	jr jr_020_7652                                   ; $768d: $18 $c3

jr_020_768f:
	jr jr_020_7655                                   ; $768f: $18 $c4

	ld a, e                                          ; $7691: $7b
	add b                                            ; $7692: $80

jr_020_7693:
	ld a, a                                          ; $7693: $7f
	sbc b                                            ; $7694: $98
	sbc h                                            ; $7695: $9c
	rst JumpTable                                          ; $7696: $c7
	db $10                                           ; $7697: $10
	ret z                                            ; $7698: $c8

	ld a, e                                          ; $7699: $7b

jr_020_769a:
	and b                                            ; $769a: $a0

jr_020_769b:
	sbc h                                            ; $769b: $9c

jr_020_769c:
	jp z, $cb10                                      ; $769c: $ca $10 $cb

	inc bc                                           ; $769f: $03
	cp $6f                                           ; $76a0: $fe $6f
	cp $87                                           ; $76a2: $fe $87
	rst SubAFromDE                                          ; $76a4: $df
	jr jr_020_7687                                   ; $76a5: $18 $e0

	jr @-$1d                                         ; $76a7: $18 $e1

jr_020_76a9:
	jr jr_020_768d                                   ; $76a9: $18 $e2

jr_020_76ab:
	jr @-$1b                                         ; $76ab: $18 $e3

	jr jr_020_7693                                   ; $76ad: $18 $e4

	jr jr_020_768f                                   ; $76af: $18 $de

jr_020_76b1:
	db $10                                           ; $76b1: $10
	db $dd                                           ; $76b2: $dd
	db $10                                           ; $76b3: $10

jr_020_76b4:
	call c, $db10                                    ; $76b4: $dc $10 $db
	db $10                                           ; $76b7: $10
	jp c, $d910                                      ; $76b8: $da $10 $d9

	db $10                                           ; $76bb: $10

jr_020_76bc:
	ldh [$d9], a                                     ; $76bc: $e0 $d9

jr_020_76be:
	adc [hl]                                         ; $76be: $8e
	ret c                                            ; $76bf: $d8

	db $10                                           ; $76c0: $10
	rst SubAFromHL                                          ; $76c1: $d7
	jr jr_020_769a                                   ; $76c2: $18 $d6

jr_020_76c4:
	jr jr_020_769b                                   ; $76c4: $18 $d5

jr_020_76c6:
	jr jr_020_769c                                   ; $76c6: $18 $d4

	jr @-$2b                                         ; $76c8: $18 $d3

	jr @-$2c                                         ; $76ca: $18 $d2

	db $10                                           ; $76cc: $10

jr_020_76cd:
	pop de                                           ; $76cd: $d1

jr_020_76ce:
	db $10                                           ; $76ce: $10

jr_020_76cf:
	ret nc                                           ; $76cf: $d0

	ld [hl], e                                       ; $76d0: $73
	inc d                                            ; $76d1: $14
	inc bc                                           ; $76d2: $03

jr_020_76d3:
	ret nz                                           ; $76d3: $c0

jr_020_76d4:
	ld e, e                                          ; $76d4: $5b

jr_020_76d5:
	ret nz                                           ; $76d5: $c0

	sub b                                            ; $76d6: $90
	rst GetHLinHL                                          ; $76d7: $cf
	jr @-$30                                         ; $76d8: $18 $ce

	jr jr_020_76a9                                   ; $76da: $18 $cd

	jr @-$32                                         ; $76dc: $18 $cc

Jump_020_76de:
	jr jr_020_76a9                                   ; $76de: $18 $c9

	jr @-$38                                         ; $76e0: $18 $c6

	db $10                                           ; $76e2: $10
	push bc                                          ; $76e3: $c5
	db $10                                           ; $76e4: $10
	sbc $7b                                          ; $76e5: $de $7b
	jr nz, jr_020_7768                               ; $76e7: $20 $7f

	inc e                                            ; $76e9: $1c
	sbc [hl]                                         ; $76ea: $9e
	or a                                             ; $76eb: $b7
	inc bc                                           ; $76ec: $03
	ret nz                                           ; $76ed: $c0

	ld e, a                                          ; $76ee: $5f
	ret nz                                           ; $76ef: $c0

	sbc b                                            ; $76f0: $98
	or [hl]                                          ; $76f1: $b6
	jr jr_020_76a9                                   ; $76f2: $18 $b5

	jr @-$4a                                         ; $76f4: $18 $b4

	jr jr_020_76ab                                   ; $76f6: $18 $b3

	ld a, d                                          ; $76f8: $7a
	jp nz, $b299                                     ; $76f9: $c2 $99 $b2

	inc d                                            ; $76fc: $14
	or c                                             ; $76fd: $b1
	jr jr_020_7700                                   ; $76fe: $18 $00

jr_020_7700:
	jr jr_020_7779                                   ; $7700: $18 $77

	add b                                            ; $7702: $80
	ld a, a                                          ; $7703: $7f
	ld [$d9e0], a                                    ; $7704: $ea $e0 $d9
	ld a, a                                          ; $7707: $7f
	sub $98                                          ; $7708: $d6 $98
	or b                                             ; $770a: $b0
	jr jr_020_76bc                                   ; $770b: $18 $af

	jr @-$50                                         ; $770d: $18 $ae

	jr jr_020_775b                                   ; $770f: $18 $4a

	ld a, d                                          ; $7711: $7a
	jp nz, $ad96                                     ; $7712: $c2 $96 $ad

	inc d                                            ; $7715: $14
	xor h                                            ; $7716: $ac
	jr jr_020_76c4                                   ; $7717: $18 $ab

	jr @-$54                                         ; $7719: $18 $aa

	db $10                                           ; $771b: $10
	and [hl]                                         ; $771c: $a6
	inc bc                                           ; $771d: $03
	ret nz                                           ; $771e: $c0

	ld d, a                                          ; $771f: $57
	ret nz                                           ; $7720: $c0

	sbc c                                            ; $7721: $99
	sbc c                                            ; $7722: $99
	jr @-$66                                         ; $7723: $18 $98

	jr jr_020_76be                                   ; $7725: $18 $97

	jr jr_020_779f                                   ; $7727: $18 $76

	ld h, [hl]                                       ; $7729: $66
	ld a, a                                          ; $772a: $7f
	add h                                            ; $772b: $84
	sbc b                                            ; $772c: $98
	sub [hl]                                         ; $772d: $96
	jr @-$69                                         ; $772e: $18 $95

	jr jr_020_76c6                                   ; $7730: $18 $94

	db $10                                           ; $7732: $10
	sub e                                            ; $7733: $93
	inc bc                                           ; $7734: $03
	ret nz                                           ; $7735: $c0

	ld d, a                                          ; $7736: $57
	ret nz                                           ; $7737: $c0

	sbc b                                            ; $7738: $98
	sub d                                            ; $7739: $92
	jr jr_020_76cd                                   ; $773a: $18 $91

	jr jr_020_76ce                                   ; $773c: $18 $90

	jr jr_020_76cf                                   ; $773e: $18 $8f

	ld a, e                                          ; $7740: $7b
	ld c, d                                          ; $7741: $4a
	sub [hl]                                         ; $7742: $96
	adc [hl]                                         ; $7743: $8e
	jr jr_020_76d3                                   ; $7744: $18 $8d

	jr jr_020_76d4                                   ; $7746: $18 $8c

	db $10                                           ; $7748: $10
	adc e                                            ; $7749: $8b
	db $10                                           ; $774a: $10
	adc d                                            ; $774b: $8a
	inc bc                                           ; $774c: $03
	ret nz                                           ; $774d: $c0

	ld d, a                                          ; $774e: $57
	ret nz                                           ; $774f: $c0

	sbc h                                            ; $7750: $9c
	add l                                            ; $7751: $85
	jr jr_020_76d5                                   ; $7752: $18 $81

	ld a, c                                          ; $7754: $79
	ld b, [hl]                                       ; $7755: $46
	halt                                             ; $7756: $76
	jp z, Jump_020_7a98                              ; $7757: $ca $98 $7a

	db $10                                           ; $775a: $10

jr_020_775b:
	ld a, b                                          ; $775b: $78
	db $10                                           ; $775c: $10
	ld [hl], a                                       ; $775d: $77
	db $10                                           ; $775e: $10
	halt                                             ; $775f: $76
	ld a, e                                          ; $7760: $7b
	cp $03                                           ; $7761: $fe $03
	ret nz                                           ; $7763: $c0

	ld e, e                                          ; $7764: $5b
	ret nz                                           ; $7765: $c0

	sbc l                                            ; $7766: $9d
	ld [hl], l                                       ; $7767: $75

jr_020_7768:
	jr jr_020_77ce                                   ; $7768: $18 $64

	jp c, Jump_020_7498                              ; $776a: $da $98 $74

	db $10                                           ; $776d: $10
	ld [hl], e                                       ; $776e: $73
	db $10                                           ; $776f: $10
	ld [hl], d                                       ; $7770: $72
	db $10                                           ; $7771: $10
	ld [hl], c                                       ; $7772: $71
	inc bc                                           ; $7773: $03
	ret nz                                           ; $7774: $c0

	ld c, a                                          ; $7775: $4f
	ret nz                                           ; $7776: $c0

	sbc l                                            ; $7777: $9d
	ld [hl], b                                       ; $7778: $70

jr_020_7779:
	jr jr_020_77e7                                   ; $7779: $18 $6c

	jp c, $807f                                      ; $777b: $da $7f $80

	sbc [hl]                                         ; $777e: $9e
	ld l, a                                          ; $777f: $6f
	ld [hl], e                                       ; $7780: $73
	cp $9c                                           ; $7781: $fe $9c
	ld l, [hl]                                       ; $7783: $6e
	db $10                                           ; $7784: $10
	ld l, l                                          ; $7785: $6d
	inc bc                                           ; $7786: $03
	ret nz                                           ; $7787: $c0

	ld d, a                                          ; $7788: $57
	ret nz                                           ; $7789: $c0

	ld a, h                                          ; $778a: $7c
	ld [hl], d                                       ; $778b: $72
	ld h, h                                          ; $778c: $64
	jp c, Jump_020_6f9d                              ; $778d: $da $9d $6f

	inc d                                            ; $7790: $14
	ld h, a                                          ; $7791: $67
	cp $03                                           ; $7792: $fe $03
	ret nz                                           ; $7794: $c0

	ld e, e                                          ; $7795: $5b
	ret nz                                           ; $7796: $c0

	ld l, h                                          ; $7797: $6c
	ld l, d                                          ; $7798: $6a
	ld [hl], a                                       ; $7799: $77
	nop                                              ; $779a: $00
	sbc h                                            ; $779b: $9c
	ld l, e                                          ; $779c: $6b
	inc d                                            ; $779d: $14
	ld l, d                                          ; $779e: $6a

jr_020_779f:
	ld a, e                                          ; $779f: $7b
	call nz, Call_020_5b9c                           ; $77a0: $c4 $9c $5b
	inc d                                            ; $77a3: $14
	ld e, d                                          ; $77a4: $5a
	inc bc                                           ; $77a5: $03
	ret nz                                           ; $77a6: $c0

	ld d, a                                          ; $77a7: $57
	ret nz                                           ; $77a8: $c0

	ld e, h                                          ; $77a9: $5c
	ld e, d                                          ; $77aa: $5a
	sub [hl]                                         ; $77ab: $96
	ld e, c                                          ; $77ac: $59
	inc d                                            ; $77ad: $14
	ld e, b                                          ; $77ae: $58
	inc d                                            ; $77af: $14
	ld d, a                                          ; $77b0: $57
	inc d                                            ; $77b1: $14
	ld d, [hl]                                       ; $77b2: $56
	inc d                                            ; $77b3: $14
	ld d, l                                          ; $77b4: $55
	inc bc                                           ; $77b5: $03
	ret nz                                           ; $77b6: $c0

	ccf                                              ; $77b7: $3f
	add b                                            ; $77b8: $80
	ld [hl], a                                       ; $77b9: $77
	nop                                              ; $77ba: $00
	sbc b                                            ; $77bb: $98
	ld d, h                                          ; $77bc: $54
	inc d                                            ; $77bd: $14
	ld d, e                                          ; $77be: $53
	inc d                                            ; $77bf: $14
	ld d, d                                          ; $77c0: $52
	inc d                                            ; $77c1: $14
	ld d, c                                          ; $77c2: $51
	inc bc                                           ; $77c3: $03
	ld b, b                                          ; $77c4: $40
	scf                                              ; $77c5: $37
	add b                                            ; $77c6: $80
	ld [hl], a                                       ; $77c7: $77
	db $fc                                           ; $77c8: $fc
	sbc h                                            ; $77c9: $9c
	ld d, b                                          ; $77ca: $50
	inc d                                            ; $77cb: $14
	ld c, a                                          ; $77cc: $4f
	inc bc                                           ; $77cd: $03

jr_020_77ce:
	nop                                              ; $77ce: $00
	scf                                              ; $77cf: $37
	add b                                            ; $77d0: $80
	ld [hl], a                                       ; $77d1: $77
	add h                                            ; $77d2: $84
	ld [hl], a                                       ; $77d3: $77
	db $fc                                           ; $77d4: $fc
	sbc [hl]                                         ; $77d5: $9e
	ld c, [hl]                                       ; $77d6: $4e
	ld a, e                                          ; $77d7: $7b
	add $9c                                          ; $77d8: $c6 $9c
	ld c, l                                          ; $77da: $4d
	inc d                                            ; $77db: $14
	ld c, e                                          ; $77dc: $4b
	ld a, e                                          ; $77dd: $7b
	ld a, [$499e]                                    ; $77de: $fa $9e $49
	inc bc                                           ; $77e1: $03
	ret nz                                           ; $77e2: $c0

	ccf                                              ; $77e3: $3f
	nop                                              ; $77e4: $00
	sbc [hl]                                         ; $77e5: $9e
	ld b, h                                          ; $77e6: $44

jr_020_77e7:
	ld [hl], e                                       ; $77e7: $73
	add [hl]                                         ; $77e8: $86
	sbc b                                            ; $77e9: $98
	ld b, e                                          ; $77ea: $43
	inc d                                            ; $77eb: $14
	ld b, d                                          ; $77ec: $42
	inc d                                            ; $77ed: $14

Call_020_77ee:
	ld l, a                                          ; $77ee: $6f
	db $10                                           ; $77ef: $10
	ld b, c                                          ; $77f0: $41
	inc bc                                           ; $77f1: $03
	ret nz                                           ; $77f2: $c0

	ccf                                              ; $77f3: $3f
	add b                                            ; $77f4: $80
	sbc [hl]                                         ; $77f5: $9e
	ld b, b                                          ; $77f6: $40
	ld a, e                                          ; $77f7: $7b
	jp nz, $3f9a                                     ; $77f8: $c2 $9a $3f

	inc d                                            ; $77fb: $14
	ld a, $14                                        ; $77fc: $3e $14
	dec a                                            ; $77fe: $3d

Call_020_77ff:
	ld a, e                                          ; $77ff: $7b
	ret nz                                           ; $7800: $c0

	sbc [hl]                                         ; $7801: $9e
	reti                                             ; $7802: $d9


	inc bc                                           ; $7803: $03
	ret nz                                           ; $7804: $c0

	ld d, [hl]                                       ; $7805: $56
	nop                                              ; $7806: $00
	sbc b                                            ; $7807: $98
	inc a                                            ; $7808: $3c
	inc d                                            ; $7809: $14
	nop                                              ; $780a: $00

jr_020_780b:
	inc d                                            ; $780b: $14
	dec sp                                           ; $780c: $3b
	inc d                                            ; $780d: $14
	ld a, [hl-]                                      ; $780e: $3a
	ld a, e                                          ; $780f: $7b
	ret nz                                           ; $7810: $c0

	sbc d                                            ; $7811: $9a
	add hl, sp                                       ; $7812: $39
	inc d                                            ; $7813: $14
	jr c, jr_020_782a                                ; $7814: $38 $14

	scf                                              ; $7816: $37
	ld a, e                                          ; $7817: $7b
	ret nz                                           ; $7818: $c0

	sbc h                                            ; $7819: $9c
	ld [hl], $10                                     ; $781a: $36 $10
	dec [hl]                                         ; $781c: $35
	inc bc                                           ; $781d: $03
	cp $6f                                           ; $781e: $fe $6f
	cp $9e                                           ; $7820: $fe $9e
	inc [hl]                                         ; $7822: $34
	ld a, e                                          ; $7823: $7b
	add b                                            ; $7824: $80
	sbc b                                            ; $7825: $98
	inc sp                                           ; $7826: $33
	inc d                                            ; $7827: $14
	ld [hl-], a                                      ; $7828: $32
	inc d                                            ; $7829: $14

jr_020_782a:
	ld sp, $3014                                     ; $782a: $31 $14 $30
	ld a, e                                          ; $782d: $7b
	ret nz                                           ; $782e: $c0

	sbc h                                            ; $782f: $9c
	cpl                                              ; $7830: $2f
	inc d                                            ; $7831: $14
	ld l, $77                                        ; $7832: $2e $77
	ld a, [hl-]                                      ; $7834: $3a
	ld l, c                                          ; $7835: $69
	halt                                             ; $7836: $76
	sbc h                                            ; $7837: $9c
	dec l                                            ; $7838: $2d
	db $10                                           ; $7839: $10
	inc l                                            ; $783a: $2c
	ld [hl], b                                       ; $783b: $70
	ldh a, [c]                                       ; $783c: $f2
	sbc d                                            ; $783d: $9a
	dec hl                                           ; $783e: $2b
	db $10                                           ; $783f: $10
	ld a, [hl+]                                      ; $7840: $2a
	db $10                                           ; $7841: $10
	add hl, hl                                       ; $7842: $29
	ld a, e                                          ; $7843: $7b
	sbc b                                            ; $7844: $98
	ld a, l                                          ; $7845: $7d
	jr jr_020_788f                                   ; $7846: $18 $47

	db $fc                                           ; $7848: $fc
	sub l                                            ; $7849: $95
	jr z, @+$16                                      ; $784a: $28 $14

	daa                                              ; $784c: $27
	inc d                                            ; $784d: $14
	ld h, $14                                        ; $784e: $26 $14
	dec h                                            ; $7850: $25
	inc d                                            ; $7851: $14
	inc h                                            ; $7852: $24
	inc d                                            ; $7853: $14
	ld [hl], h                                       ; $7854: $74
	db $fc                                           ; $7855: $fc
	ld a, a                                          ; $7856: $7f
	add $9c                                          ; $7857: $c6 $9c
	inc hl                                           ; $7859: $23
	inc d                                            ; $785a: $14
	ld [hl+], a                                      ; $785b: $22
	ld e, e                                          ; $785c: $5b
	ret nz                                           ; $785d: $c0

	ld a, a                                          ; $785e: $7f
	cp $9e                                           ; $785f: $fe $9e
	ld hl, $c073                                     ; $7861: $21 $73 $c0
	sbc b                                            ; $7864: $98
	jr nz, jr_020_7877                               ; $7865: $20 $10

	rra                                              ; $7867: $1f
	db $10                                           ; $7868: $10
	ld e, $10                                        ; $7869: $1e $10
	dec e                                            ; $786b: $1d
	ld a, d                                          ; $786c: $7a
	jr jr_020_780b                                   ; $786d: $18 $9c

	inc e                                            ; $786f: $1c
	db $10                                           ; $7870: $10
	dec de                                           ; $7871: $1b
	ld l, d                                          ; $7872: $6a
	db $10                                           ; $7873: $10
	ld l, a                                          ; $7874: $6f
	db $fc                                           ; $7875: $fc
	sbc c                                            ; $7876: $99

jr_020_7877:
	ld a, [de]                                       ; $7877: $1a
	inc d                                            ; $7878: $14
	add hl, de                                       ; $7879: $19
	inc d                                            ; $787a: $14
	jr jr_020_7891                                   ; $787b: $18 $14

	ld [hl], a                                       ; $787d: $77
	nop                                              ; $787e: $00
	ld a, a                                          ; $787f: $7f
	db $f4                                           ; $7880: $f4
	ld a, c                                          ; $7881: $79
	nop                                              ; $7882: $00
	sbc e                                            ; $7883: $9b
	inc d                                            ; $7884: $14
	rla                                              ; $7885: $17
	inc d                                            ; $7886: $14
	ld d, $53                                        ; $7887: $16 $53
	ret nz                                           ; $7889: $c0

	sub [hl]                                         ; $788a: $96
	dec d                                            ; $788b: $15
	db $10                                           ; $788c: $10
	inc d                                            ; $788d: $14
	db $10                                           ; $788e: $10

jr_020_788f:
	inc de                                           ; $788f: $13
	db $10                                           ; $7890: $10

jr_020_7891:
	ld [de], a                                       ; $7891: $12
	db $10                                           ; $7892: $10
	ld de, $10de                                     ; $7893: $11 $de $10
	ld l, [hl]                                       ; $7896: $6e
	sbc b                                            ; $7897: $98

Call_020_7898:
	sbc [hl]                                         ; $7898: $9e
	adc a                                            ; $7899: $8f
	ld e, d                                          ; $789a: $5a
	db $10                                           ; $789b: $10
	ld a, a                                          ; $789c: $7f
	db $fc                                           ; $789d: $fc
	sbc c                                            ; $789e: $99
	rrca                                             ; $789f: $0f
	inc d                                            ; $78a0: $14
	ld c, $14                                        ; $78a1: $0e $14
	dec c                                            ; $78a3: $0d
	inc d                                            ; $78a4: $14
	ld h, a                                          ; $78a5: $67
	ldh a, [$7e]                                     ; $78a6: $f0 $7e
	jp nz, $0c9c                                     ; $78a8: $c2 $9c $0c

	inc d                                            ; $78ab: $14
	dec bc                                           ; $78ac: $0b
	ld e, e                                          ; $78ad: $5b
	ret nz                                           ; $78ae: $c0

	sub b                                            ; $78af: $90
	ld a, [bc]                                       ; $78b0: $0a
	db $10                                           ; $78b1: $10
	add hl, bc                                       ; $78b2: $09
	db $10                                           ; $78b3: $10
	ld [$0710], sp                                   ; $78b4: $08 $10 $07
	db $10                                           ; $78b7: $10
	ld b, $10                                        ; $78b8: $06 $10
	dec b                                            ; $78ba: $05
	db $10                                           ; $78bb: $10
	inc b                                            ; $78bc: $04
	db $10                                           ; $78bd: $10
	inc bc                                           ; $78be: $03
	ld h, d                                          ; $78bf: $62
	jr @+$61                                         ; $78c0: $18 $5f

	db $fc                                           ; $78c2: $fc

Jump_020_78c3:
	sbc e                                            ; $78c3: $9b
	ld [bc], a                                       ; $78c4: $02
	inc d                                            ; $78c5: $14
	ld bc, $6f14                                     ; $78c6: $01 $14 $6f
	db $f4                                           ; $78c9: $f4
	ld a, l                                          ; $78ca: $7d
	nop                                              ; $78cb: $00
	sbc [hl]                                         ; $78cc: $9e
	and l                                            ; $78cd: $a5
	ld [bc], a                                       ; $78ce: $02
	adc h                                            ; $78cf: $8c
	ldh [rAUD4ENV], a                                ; $78d0: $e0 $21
	add b                                            ; $78d2: $80
	add [hl]                                         ; $78d3: $86
	db $db                                           ; $78d4: $db
	db $10                                           ; $78d5: $10
	sbc l                                            ; $78d6: $9d
	sub b                                            ; $78d7: $90
	ld h, b                                          ; $78d8: $60
	jp c, $9ef0                                      ; $78d9: $da $f0 $9e

	ld h, b                                          ; $78dc: $60
	ld a, [$109e]                                    ; $78dd: $fa $9e $10
	db $db                                           ; $78e0: $db
	ldh [$7f], a                                     ; $78e1: $e0 $7f
	pop af                                           ; $78e3: $f1
	sbc l                                            ; $78e4: $9d
	add [hl]                                         ; $78e5: $86
	adc [hl]                                         ; $78e6: $8e
	db $db                                           ; $78e7: $db
	ld bc, $f89d                                     ; $78e8: $01 $9d $f8
	pop af                                           ; $78eb: $f1
	db $db                                           ; $78ec: $db
	cp $f9                                           ; $78ed: $fe $f9
	sbc l                                            ; $78ef: $9d
	ld a, [hl]                                       ; $78f0: $7e
	ld a, a                                          ; $78f1: $7f
	rst SubAFromHL                                          ; $78f2: $d7
	rst $38                                          ; $78f3: $ff
	adc e                                            ; $78f4: $8b
	db $fd                                           ; $78f5: $fd
	db $fc                                           ; $78f6: $fc
	ld a, [$fce2]                                    ; $78f7: $fa $e2 $fc
	db $fc                                           ; $78fa: $fc
	cp $fc                                           ; $78fb: $fe $fc
	ld hl, sp-$08                                    ; $78fd: $f8 $f8

Jump_020_78ff:
	ldh [$c0], a                                     ; $78ff: $e0 $c0
	inc bc                                           ; $7901: $03
	inc bc                                           ; $7902: $03
	ld bc, $0703                                     ; $7903: $01 $03 $07
	rlca                                             ; $7906: $07
	rra                                              ; $7907: $1f
	ccf                                              ; $7908: $3f
	reti                                             ; $7909: $d9


	rst $38                                          ; $790a: $ff
	sub a                                            ; $790b: $97
	ccf                                              ; $790c: $3f
	ld a, a                                          ; $790d: $7f
	rra                                              ; $790e: $1f
	jp $cf5f                                         ; $790f: $c3 $5f $cf


	rst AddAOntoHL                                          ; $7912: $ef
	ld a, a                                          ; $7913: $7f
	ld sp, hl                                        ; $7914: $f9
	pop de                                           ; $7915: $d1
	rst $38                                          ; $7916: $ff
	sbc $df                                          ; $7917: $de $df
	rst SubAFromDE                                          ; $7919: $df
	rst GetHLinHL                                          ; $791a: $cf
	rst SubAFromDE                                          ; $791b: $df
	rst SubAFromDE                                          ; $791c: $df
	sbc [hl]                                         ; $791d: $9e
	cp a                                             ; $791e: $bf
	daa                                              ; $791f: $27
	ldh [$97], a                                     ; $7920: $e0 $97
	stop                                             ; $7922: $10 $00
	ld bc, $4201                                     ; $7924: $01 $01 $42
	ld [bc], a                                       ; $7927: $02
	add h                                            ; $7928: $84
	ld [$f877], sp                                   ; $7929: $08 $77 $f8
	sbc e                                            ; $792c: $9b
	ld b, e                                          ; $792d: $43
	inc bc                                           ; $792e: $03
	add a                                            ; $792f: $87
	rrca                                             ; $7930: $0f
	ld sp, hl                                        ; $7931: $f9
	sub [hl]                                         ; $7932: $96
	ldh a, [$e0]                                     ; $7933: $f0 $e0
	ldh [$c0], a                                     ; $7935: $e0 $c0
	pop bc                                           ; $7937: $c1
	add c                                            ; $7938: $81
	add e                                            ; $7939: $83
	rlca                                             ; $793a: $07
	nop                                              ; $793b: $00
	reti                                             ; $793c: $d9


	cp $f2                                           ; $793d: $fe $f2
	reti                                             ; $793f: $d9


	cp $7f                                           ; $7940: $fe $7f
	rst SubAFromDE                                          ; $7942: $df
	db $eb                                           ; $7943: $eb
	ld h, a                                          ; $7944: $67
	add sp, -$62                                     ; $7945: $e8 $9e
	add e                                            ; $7947: $83
	jp c, $9d7f                                      ; $7948: $da $7f $9d

	ld a, l                                          ; $794b: $7d
	ld bc, $9dfc                                     ; $794c: $01 $fc $9d
	ld [bc], a                                       ; $794f: $02
	inc bc                                           ; $7950: $03
	db $db                                           ; $7951: $db
	ld bc, $039c                                     ; $7952: $01 $9c $03
	cp $7e                                           ; $7955: $fe $7e
	ld l, a                                          ; $7957: $6f
	jp hl                                            ; $7958: $e9


	sbc [hl]                                         ; $7959: $9e
	add b                                            ; $795a: $80
	jp c, $d8c0                                      ; $795b: $da $c0 $d8

	add b                                            ; $795e: $80
	jp c, $d9c0                                      ; $795f: $da $c0 $d9

	ld b, b                                          ; $7962: $40
	ld a, a                                          ; $7963: $7f
	ld b, h                                          ; $7964: $44
	sbc [hl]                                         ; $7965: $9e
	rrca                                             ; $7966: $0f
	call c, $9bff                                    ; $7967: $dc $ff $9b
	jp $0fc7                                         ; $796a: $c3 $c7 $0f


	ld a, a                                          ; $796d: $7f
	halt                                             ; $796e: $76
	db $ed                                           ; $796f: $ed
	ld b, a                                          ; $7970: $47
	ld hl, sp-$21                                    ; $7971: $f8 $df
	rst $38                                          ; $7973: $ff
	sbc e                                            ; $7974: $9b
	rst AddAOntoHL                                          ; $7975: $ef
	db $ec                                           ; $7976: $ec
	add e                                            ; $7977: $83
	sbc a                                            ; $7978: $9f
	halt                                             ; $7979: $76
	pop af                                           ; $797a: $f1
	ld a, a                                          ; $797b: $7f
	ld hl, sp-$63                                    ; $797c: $f8 $9d
	add d                                            ; $797e: $82
	sub b                                            ; $797f: $90
	ld [hl], a                                       ; $7980: $77
	call nc, $f84f                                   ; $7981: $d4 $4f $f8
	sbc l                                            ; $7984: $9d
	rst SubAFromBC                                          ; $7985: $e7
	sbc a                                            ; $7986: $9f
	ld a, e                                          ; $7987: $7b
	jp c, $e39a                                      ; $7988: $da $9a $e3

	ldh [c], a                                       ; $798b: $e2
	rst JumpTable                                          ; $798c: $c7
	rlca                                             ; $798d: $07
	rra                                              ; $798e: $1f
	ld l, a                                          ; $798f: $6f
	ld hl, sp-$62                                    ; $7990: $f8 $9e
	ei                                               ; $7992: $fb
	db $dd                                           ; $7993: $dd
	rst $38                                          ; $7994: $ff
	ld a, e                                          ; $7995: $7b
	ld hl, sp+$77                                    ; $7996: $f8 $77
	pop af                                           ; $7998: $f1
	ld [hl], a                                       ; $7999: $77
	ld hl, sp-$02                                    ; $799a: $f8 $fe
	sbc [hl]                                         ; $799c: $9e
	ld bc, $e477                                     ; $799d: $01 $77 $e4
	sbc d                                            ; $79a0: $9a
	cp a                                             ; $79a1: $bf
	ld a, a                                          ; $79a2: $7f
	db $fc                                           ; $79a3: $fc
	ldh a, [$c0]                                     ; $79a4: $f0 $c0
	db $fc                                           ; $79a6: $fc
	sbc d                                            ; $79a7: $9a
	inc bc                                           ; $79a8: $03
	ld c, $38                                        ; $79a9: $0e $38
	ldh [$80], a                                     ; $79ab: $e0 $80
	pop af                                           ; $79ad: $f1
	sbc c                                            ; $79ae: $99
	ld bc, $55a2                                     ; $79af: $01 $a2 $55
	xor e                                            ; $79b2: $ab
	ld d, a                                          ; $79b3: $57
	xor a                                            ; $79b4: $af
	ld a, e                                          ; $79b5: $7b
	call c, Call_020_7ffb                            ; $79b6: $dc $fb $7f
	call c, $f85a                                    ; $79b9: $dc $5a $f8
	sbc $7e                                          ; $79bc: $de $7e
	rst SubAFromDE                                          ; $79be: $df
	ld a, a                                          ; $79bf: $7f
	pop af                                           ; $79c0: $f1
	ld b, a                                          ; $79c1: $47
	add sp, $7f                                      ; $79c2: $e8 $7f
	rra                                              ; $79c4: $1f
	di                                               ; $79c5: $f3
	ld h, a                                          ; $79c6: $67
	pop af                                           ; $79c7: $f1
	ld a, [hl]                                       ; $79c8: $7e
	add [hl]                                         ; $79c9: $86
	ld a, [hl]                                       ; $79ca: $7e
	add l                                            ; $79cb: $85
	sub e                                            ; $79cc: $93
	db $10                                           ; $79cd: $10
	ld [hl+], a                                      ; $79ce: $22
	ld [hl+], a                                      ; $79cf: $22
	ld b, [hl]                                       ; $79d0: $46
	add a                                            ; $79d1: $87
	rrca                                             ; $79d2: $0f
	rrca                                             ; $79d3: $0f
	ld e, $1e                                        ; $79d4: $1e $1e
	inc a                                            ; $79d6: $3c
	inc a                                            ; $79d7: $3c
	ld a, b                                          ; $79d8: $78
	ld sp, hl                                        ; $79d9: $f9
	ld a, [hl]                                       ; $79da: $7e
	add [hl]                                         ; $79db: $86
	sbc c                                            ; $79dc: $99
	rlca                                             ; $79dd: $07
	ld c, $0e                                        ; $79de: $0e $0e
	ld e, $1e                                        ; $79e0: $1e $1e
	ld a, $47                                        ; $79e2: $3e $47
	ret z                                            ; $79e4: $c8

	ld h, a                                          ; $79e5: $67
	ldh a, [$df]                                     ; $79e6: $f0 $df
	rst $38                                          ; $79e8: $ff
	rst SubAFromDE                                          ; $79e9: $df
	cp $df                                           ; $79ea: $fe $df
	db $fc                                           ; $79ec: $fc
	sbc l                                            ; $79ed: $9d
	ld hl, sp-$10                                    ; $79ee: $f8 $f0
	ld a, e                                          ; $79f0: $7b
	ld b, e                                          ; $79f1: $43
	db $dd                                           ; $79f2: $dd
	rst $38                                          ; $79f3: $ff
	sbc [hl]                                         ; $79f4: $9e
	ldh a, [c]                                       ; $79f5: $f2
	ld l, e                                          ; $79f6: $6b
	ld hl, sp-$64                                    ; $79f7: $f8 $9c
	ldh a, [rTAC]                                    ; $79f9: $f0 $07
	dec de                                           ; $79fb: $1b
	call c, Call_020_7fff                            ; $79fc: $dc $ff $7f
	ld hl, sp+$73                                    ; $79ff: $f8 $73
	pop af                                           ; $7a01: $f1
	ld a, e                                          ; $7a02: $7b
	ld hl, sp-$21                                    ; $7a03: $f8 $df
	rst $38                                          ; $7a05: $ff
	sbc l                                            ; $7a06: $9d
	db $fc                                           ; $7a07: $fc
	db $e3                                           ; $7a08: $e3
	ld a, e                                          ; $7a09: $7b
	jr nz, @-$60                                     ; $7a0a: $20 $9e

	ld hl, sp+$77                                    ; $7a0c: $f8 $77
	ld c, d                                          ; $7a0e: $4a

Jump_020_7a0f:
	ld a, d                                          ; $7a0f: $7a
	db $f4                                           ; $7a10: $f4
	ld [hl], a                                       ; $7a11: $77
	ld sp, hl                                        ; $7a12: $f9
	sbc h                                            ; $7a13: $9c
	rra                                              ; $7a14: $1f
	ld l, a                                          ; $7a15: $6f
	cp a                                             ; $7a16: $bf
	ret c                                            ; $7a17: $d8

	rst $38                                          ; $7a18: $ff
	sbc d                                            ; $7a19: $9a
	rra                                              ; $7a1a: $1f
	ld [$0204], sp                                   ; $7a1b: $08 $04 $02
	ld bc, $647a                                     ; $7a1e: $01 $7a $64
	sbc b                                            ; $7a21: $98
	db $10                                           ; $7a22: $10
	jr @+$2e                                         ; $7a23: $18 $2c

	ld e, $af                                        ; $7a25: $1e $af
	ld e, a                                          ; $7a27: $5f
	cp a                                             ; $7a28: $bf
	ld [hl], a                                       ; $7a29: $77
	reti                                             ; $7a2a: $d9


	ld [hl], d                                       ; $7a2b: $72
	ld b, c                                          ; $7a2c: $41
	ld h, c                                          ; $7a2d: $61
	rst FarCall                                          ; $7a2e: $f7
	ld d, d                                          ; $7a2f: $52
	ld a, [$0a9d]                                    ; $7a30: $fa $9d $0a
	ld d, l                                          ; $7a33: $55
	pop af                                           ; $7a34: $f1
	sub l                                            ; $7a35: $95
	ld b, b                                          ; $7a36: $40
	add a                                            ; $7a37: $87
	adc a                                            ; $7a38: $8f
	rrca                                             ; $7a39: $0f
	rrca                                             ; $7a3a: $0f
	rra                                              ; $7a3b: $1f
	ccf                                              ; $7a3c: $3f
	ld a, $7c                                        ; $7a3d: $3e $7c
	ld hl, sp-$22                                    ; $7a3f: $f8 $de
	ldh a, [$7d]                                     ; $7a41: $f0 $7d
	call $bd6e                                       ; $7a43: $cd $6e $bd
	db $fd                                           ; $7a46: $fd
	ld l, [hl]                                       ; $7a47: $6e
	ld h, d                                          ; $7a48: $62
	sub [hl]                                         ; $7a49: $96
	cp $90                                           ; $7a4a: $fe $90
	ldh [$e0], a                                     ; $7a4c: $e0 $e0
	ld h, c                                          ; $7a4e: $61
	ld hl, $0202                                     ; $7a4f: $21 $02 $02
	inc b                                            ; $7a52: $04
	ld [hl], a                                       ; $7a53: $77
	jp nz, $219b                                     ; $7a54: $c2 $9b $21

	inc bc                                           ; $7a57: $03
	inc bc                                           ; $7a58: $03
	rlca                                             ; $7a59: $07
	ld a, e                                          ; $7a5a: $7b
	reti                                             ; $7a5b: $d9


	ld [hl], b                                       ; $7a5c: $70
	db $fc                                           ; $7a5d: $fc
	ld a, e                                          ; $7a5e: $7b
	ld hl, sp-$21                                    ; $7a5f: $f8 $df
	ldh [$df], a                                     ; $7a61: $e0 $df
	pop bc                                           ; $7a63: $c1
	sub [hl]                                         ; $7a64: $96

jr_020_7a65:
	add e                                            ; $7a65: $83
	db $db                                           ; $7a66: $db
	reti                                             ; $7a67: $d9


	sub b                                            ; $7a68: $90
	db $10                                           ; $7a69: $10
	jr nc, jr_020_7a9c                               ; $7a6a: $30 $30

	ld h, b                                          ; $7a6c: $60
	ldh [$f9], a                                     ; $7a6d: $e0 $f9
	sbc l                                            ; $7a6f: $9d
	ei                                               ; $7a70: $fb
	ld sp, hl                                        ; $7a71: $f9
	db $dd                                           ; $7a72: $dd
	ldh a, [$df]                                     ; $7a73: $f0 $df
	ldh [$d9], a                                     ; $7a75: $e0 $d9
	rst $38                                          ; $7a77: $ff
	sbc [hl]                                         ; $7a78: $9e
	ld bc, $8029                                     ; $7a79: $01 $29 $80
	ld a, e                                          ; $7a7c: $7b
	ld bc, $fedb                                     ; $7a7d: $01 $db $fe
	rst SubAFromDE                                          ; $7a80: $df
	inc b                                            ; $7a81: $04
	ld a, d                                          ; $7a82: $7a
	cp a                                             ; $7a83: $bf
	sbc h                                            ; $7a84: $9c
	jr nz, jr_020_7ac7                               ; $7a85: $20 $40

	ld [bc], a                                       ; $7a87: $02
	ld l, e                                          ; $7a88: $6b

jr_020_7a89:
	ld hl, sp-$07                                    ; $7a89: $f8 $f9
	sbc [hl]                                         ; $7a8b: $9e
	db $fc                                           ; $7a8c: $fc
	ld a, [$647f]                                    ; $7a8d: $fa $7f $64
	ld a, a                                          ; $7a90: $7f
	ld h, e                                          ; $7a91: $63
	ld a, h                                          ; $7a92: $7c
	call c, Call_020_7d9d                            ; $7a93: $dc $9d $7d
	ld a, [hl]                                       ; $7a96: $7e
	ld [hl], e                                       ; $7a97: $73

Jump_020_7a98:
	ld hl, sp-$64                                    ; $7a98: $f8 $9c
	ld a, l                                          ; $7a9a: $7d
	ld a, h                                          ; $7a9b: $7c

jr_020_7a9c:
	ld a, [hl]                                       ; $7a9c: $7e
	ld h, l                                          ; $7a9d: $65
	ld a, d                                          ; $7a9e: $7a
	ld l, a                                          ; $7a9f: $6f
	add sp, -$27                                     ; $7aa0: $e8 $d9
	rst $38                                          ; $7aa2: $ff
	sbc [hl]                                         ; $7aa3: $9e
	db $fc                                           ; $7aa4: $fc
	ld l, e                                          ; $7aa5: $6b
	ld sp, hl                                        ; $7aa6: $f9
	ld a, [$039e]                                    ; $7aa7: $fa $9e $03
	pop de                                           ; $7aaa: $d1
	rst $38                                          ; $7aab: $ff
	sbc l                                            ; $7aac: $9d
	rra                                              ; $7aad: $1f
	add e                                            ; $7aae: $83
	ld l, a                                          ; $7aaf: $6f
	ld [hl], e                                       ; $7ab0: $73
	ld h, [hl]                                       ; $7ab1: $66
	inc hl                                           ; $7ab2: $23
	rst SubAFromHL                                          ; $7ab3: $d7
	rst $38                                          ; $7ab4: $ff
	sub a                                            ; $7ab5: $97
	ldh [$f8], a                                     ; $7ab6: $e0 $f8
	xor $df                                          ; $7ab8: $ee $df
	rst SubAFromDE                                          ; $7aba: $df
	rst $38                                          ; $7abb: $ff
	rst AddAOntoHL                                          ; $7abc: $ef
	rst AddAOntoHL                                          ; $7abd: $ef
	ld a, e                                          ; $7abe: $7b
	ld hl, sp-$21                                    ; $7abf: $f8 $df
	rst GetHLinHL                                          ; $7ac1: $cf
	sbc h                                            ; $7ac2: $9c
	rst JumpTable                                          ; $7ac3: $c7
	ld b, e                                          ; $7ac4: $43
	inc bc                                           ; $7ac5: $03
	ld a, d                                          ; $7ac6: $7a

jr_020_7ac7:
	or [hl]                                          ; $7ac7: $b6
	rst SubAFromDE                                          ; $7ac8: $df
	jr nc, jr_020_7a65                               ; $7ac9: $30 $9a

	jr c, jr_020_7a89                                ; $7acb: $38 $bc

	db $fc                                           ; $7acd: $fc
	ldh [$f8], a                                     ; $7ace: $e0 $f8
	ld l, a                                          ; $7ad0: $6f
	db $db                                           ; $7ad1: $db
	sbc c                                            ; $7ad2: $99
	jr @+$08                                         ; $7ad3: $18 $06

	ld bc, $e080                                     ; $7ad5: $01 $80 $e0
	ld hl, sp+$5f                                    ; $7ad8: $f8 $5f
	ld hl, sp+$55                                    ; $7ada: $f8 $55
	db $fd                                           ; $7adc: $fd
	ld [hl], a                                       ; $7add: $77
	ldh a, [$df]                                     ; $7ade: $f0 $df
	rst $38                                          ; $7ae0: $ff
	sub l                                            ; $7ae1: $95
	ld a, a                                          ; $7ae2: $7f
	ld a, [hl]                                       ; $7ae3: $7e
	inc e                                            ; $7ae4: $1c
	ld b, $01                                        ; $7ae5: $06 $01
	ret nz                                           ; $7ae7: $c0

	rst $38                                          ; $7ae8: $ff
	cp $7c                                           ; $7ae9: $fe $7c
	ld [hl], b                                       ; $7aeb: $70
	ld a, e                                          ; $7aec: $7b
	call c, $c07e                                    ; $7aed: $dc $7e $c0
	sbc e                                            ; $7af0: $9b
	ld bc, $0f83                                     ; $7af1: $01 $83 $0f
	rlca                                             ; $7af4: $07
	ld a, e                                          ; $7af5: $7b
	sbc b                                            ; $7af6: $98
	ld a, e                                          ; $7af7: $7b
	add sp, -$62                                     ; $7af8: $e8 $9e
	rra                                              ; $7afa: $1f
	ld a, e                                          ; $7afb: $7b
	ld hl, sp-$65                                    ; $7afc: $f8 $9b
	ret nz                                           ; $7afe: $c0

	rst JumpTable                                          ; $7aff: $c7
	add a                                            ; $7b00: $87
	rrca                                             ; $7b01: $0f
	ld [hl], a                                       ; $7b02: $77
	ld e, c                                          ; $7b03: $59
	ld l, c                                          ; $7b04: $69
	cp b                                             ; $7b05: $b8
	sbc l                                            ; $7b06: $9d
	add b                                            ; $7b07: $80
	ld h, b                                          ; $7b08: $60
	db $db                                           ; $7b09: $db
	rst $38                                          ; $7b0a: $ff
	ld a, a                                          ; $7b0b: $7f
	db $e4                                           ; $7b0c: $e4
	ld h, a                                          ; $7b0d: $67
	ld hl, sp-$62                                    ; $7b0e: $f8 $9e
	ld a, a                                          ; $7b10: $7f

jr_020_7b11:
	ld a, c                                          ; $7b11: $79
	ld a, [$f99b]                                    ; $7b12: $fa $9b $f9
	di                                               ; $7b15: $f3
	rst SubAFromBC                                          ; $7b16: $e7
	rst AddAOntoHL                                          ; $7b17: $ef
	ld l, d                                          ; $7b18: $6a
	ld e, a                                          ; $7b19: $5f
	ld l, e                                          ; $7b1a: $6b
	ld b, [hl]                                       ; $7b1b: $46
	ld a, a                                          ; $7b1c: $7f
	db $eb                                           ; $7b1d: $eb
	reti                                             ; $7b1e: $d9


	rst $38                                          ; $7b1f: $ff
	ld a, a                                          ; $7b20: $7f
	jp $bfde                                         ; $7b21: $c3 $de $bf


	sbc h                                            ; $7b24: $9c
	sbc a                                            ; $7b25: $9f
	rst SubAFromDE                                          ; $7b26: $df
	rst GetHLinHL                                          ; $7b27: $cf
	ld l, e                                          ; $7b28: $6b
	ret nz                                           ; $7b29: $c0

	sbc [hl]                                         ; $7b2a: $9e
	add b                                            ; $7b2b: $80
	ld l, e                                          ; $7b2c: $6b
	ret z                                            ; $7b2d: $c8

	ld h, e                                          ; $7b2e: $63
	ld b, $7b                                        ; $7b2f: $06 $7b
	sub a                                            ; $7b31: $97
	db $dd                                           ; $7b32: $dd
	rst $38                                          ; $7b33: $ff
	ld a, $11                                        ; $7b34: $3e $11
	ld h, a                                          ; $7b36: $67
	add sp, $6b                                      ; $7b37: $e8 $6b
	xor a                                            ; $7b39: $af
	ld b, l                                          ; $7b3a: $45
	or $6b                                           ; $7b3b: $f6 $6b
	add sp, $67                                      ; $7b3d: $e8 $67
	ret nz                                           ; $7b3f: $c0

	rst AddAOntoHL                                          ; $7b40: $ef
	ld l, e                                          ; $7b41: $6b
	add sp, -$62                                     ; $7b42: $e8 $9e
	add e                                            ; $7b44: $83
	ld a, d                                          ; $7b45: $7a
	inc c                                            ; $7b46: $0c
	rst SubAFromDE                                          ; $7b47: $df
	rlca                                             ; $7b48: $07
	ld a, h                                          ; $7b49: $7c
	ld d, h                                          ; $7b4a: $54
	sbc h                                            ; $7b4b: $9c
	ld a, l                                          ; $7b4c: $7d
	db $fd                                           ; $7b4d: $fd
	db $fd                                           ; $7b4e: $fd
	sbc $fb                                          ; $7b4f: $de $fb
	sbc l                                            ; $7b51: $9d
	or $06                                           ; $7b52: $f6 $06
	sbc $03                                          ; $7b54: $de $03
	ld [hl], a                                       ; $7b56: $77
	ldh a, [$9e]                                     ; $7b57: $f0 $9e
	rrca                                             ; $7b59: $0f

jr_020_7b5a:
	sbc $fe                                          ; $7b5a: $de $fe
	sbc $fc                                          ; $7b5c: $de $fc
	sbc h                                            ; $7b5e: $9c
	ld sp, hl                                        ; $7b5f: $f9
	ld a, c                                          ; $7b60: $79
	ret nz                                           ; $7b61: $c0

	ld c, e                                          ; $7b62: $4b
	ret nz                                           ; $7b63: $c0

	rst SubAFromDE                                          ; $7b64: $df
	ret nz                                           ; $7b65: $c0

	call c, Call_020_7f80                            ; $7b66: $dc $80 $7f
	ld hl, sp+$4b                                    ; $7b69: $f8 $4b
	add sp, $67                                      ; $7b6b: $e8 $67
	ld c, a                                          ; $7b6d: $4f
	ld b, e                                          ; $7b6e: $43
	ldh a, [$6f]                                     ; $7b6f: $f0 $6f
	jr nc, jr_020_7b11                               ; $7b71: $30 $9e

	ccf                                              ; $7b73: $3f

jr_020_7b74:
	ld l, a                                          ; $7b74: $6f
	ld hl, $409d                                     ; $7b75: $21 $9d $40
	jr nz, jr_020_7bcd                               ; $7b78: $20 $53

	add b                                            ; $7b7a: $80
	ld a, a                                          ; $7b7b: $7f
	jp hl                                            ; $7b7c: $e9


	sbc l                                            ; $7b7d: $9d
	rra                                              ; $7b7e: $1f
	ld e, $75                                        ; $7b7f: $1e $75

jr_020_7b81:
	jr nz, jr_020_7b81                               ; $7b81: $20 $fe

	sbc e                                            ; $7b83: $9b
	ld [hl], b                                       ; $7b84: $70
	cp a                                             ; $7b85: $bf
	ld c, a                                          ; $7b86: $4f
	add a                                            ; $7b87: $87
	ld h, [hl]                                       ; $7b88: $66
	ld b, c                                          ; $7b89: $41
	db $fd                                           ; $7b8a: $fd
	sbc h                                            ; $7b8b: $9c
	ld c, $07                                        ; $7b8c: $0e $07
	inc bc                                           ; $7b8e: $03
	ld [hl], e                                       ; $7b8f: $73
	pop af                                           ; $7b90: $f1
	sbc e                                            ; $7b91: $9b
	jr jr_020_7b74                                   ; $7b92: $18 $e0

	ret nz                                           ; $7b94: $c0

	add b                                            ; $7b95: $80
	sbc $c0                                          ; $7b96: $de $c0
	sbc d                                            ; $7b98: $9a
	nop                                              ; $7b99: $00
	rra                                              ; $7b9a: $1f
	ld a, [$eaf5]                                    ; $7b9b: $fa $f5 $ea
	ld a, c                                          ; $7b9e: $79
	adc c                                            ; $7b9f: $89
	ld e, l                                          ; $7ba0: $5d
	ld b, b                                          ; $7ba1: $40
	ld a, e                                          ; $7ba2: $7b
	ld [hl], l                                       ; $7ba3: $75
	sbc $e0                                          ; $7ba4: $de $e0
	sbc [hl]                                         ; $7ba6: $9e
	ret nz                                           ; $7ba7: $c0

	ld a, c                                          ; $7ba8: $79
	xor c                                            ; $7ba9: $a9
	ld [hl], l                                       ; $7baa: $75
	xor b                                            ; $7bab: $a8
	sbc [hl]                                         ; $7bac: $9e
	jr nz, jr_020_7c2a                               ; $7bad: $20 $7b

	ld c, h                                          ; $7baf: $4c
	ld a, b                                          ; $7bb0: $78
	ld [hl], c                                       ; $7bb1: $71
	rst SubAFromDE                                          ; $7bb2: $df
	inc a                                            ; $7bb3: $3c
	ld a, e                                          ; $7bb4: $7b
	ld h, l                                          ; $7bb5: $65
	ld l, d                                          ; $7bb6: $6a
	or [hl]                                          ; $7bb7: $b6
	ld h, a                                          ; $7bb8: $67
	db $db                                           ; $7bb9: $db
	sbc c                                            ; $7bba: $99
	ld h, b                                          ; $7bbb: $60
	jr nc, jr_020_7b5a                               ; $7bbc: $30 $9c

	call z, $3060                                    ; $7bbe: $cc $60 $30
	ld d, a                                          ; $7bc1: $57
	adc c                                            ; $7bc2: $89
	ld [hl], a                                       ; $7bc3: $77
	dec h                                            ; $7bc4: $25
	ld h, a                                          ; $7bc5: $67
	ld hl, sp-$69                                    ; $7bc6: $f8 $97
	reti                                             ; $7bc8: $d9


	call z, $f3e6                                    ; $7bc9: $cc $e6 $f3
	ld sp, hl                                        ; $7bcc: $f9

jr_020_7bcd:
	db $fc                                           ; $7bcd: $fc
	xor $cb                                          ; $7bce: $ee $cb
	ld c, [hl]                                       ; $7bd0: $4e
	jp hl                                            ; $7bd1: $e9


	sbc l                                            ; $7bd2: $9d
	rst $38                                          ; $7bd3: $ff
	ei                                               ; $7bd4: $fb
	reti                                             ; $7bd5: $d9


	rst $38                                          ; $7bd6: $ff
	sbc [hl]                                         ; $7bd7: $9e
	add b                                            ; $7bd8: $80
	call c, $9dfe                                    ; $7bd9: $dc $fe $9d
	sbc $2e                                          ; $7bdc: $de $2e
	ld l, l                                          ; $7bde: $6d
	ld h, a                                          ; $7bdf: $67
	sbc l                                            ; $7be0: $9d
	ldh [$f0], a                                     ; $7be1: $e0 $f0
	ld sp, hl                                        ; $7be3: $f9
	db $db                                           ; $7be4: $db
	cp $9d                                           ; $7be5: $fe $9d
	ld a, $1e                                        ; $7be7: $3e $1e
	ld a, e                                          ; $7be9: $7b
	ld h, c                                          ; $7bea: $61
	halt                                             ; $7beb: $76
	sub c                                            ; $7bec: $91
	sbc l                                            ; $7bed: $9d
	ld b, $f8                                        ; $7bee: $06 $f8
	ld a, b                                          ; $7bf0: $78
	and e                                            ; $7bf1: $a3
	ld a, a                                          ; $7bf2: $7f
	or $9d                                           ; $7bf3: $f6 $9d
	ld bc, $f907                                     ; $7bf5: $01 $07 $f9

Jump_020_7bf8:
	ld l, a                                          ; $7bf8: $6f
	ldh a, [rIE]                                     ; $7bf9: $f0 $ff
	sbc d                                            ; $7bfb: $9a
	ld [hl+], a                                      ; $7bfc: $22
	ld b, c                                          ; $7bfd: $41
	ld b, c                                          ; $7bfe: $41
	add c                                            ; $7bff: $81
	add c                                            ; $7c00: $81
	ld a, b                                          ; $7c01: $78
	ccf                                              ; $7c02: $3f
	sbc h                                            ; $7c03: $9c
	inc a                                            ; $7c04: $3c
	ld a, [hl]                                       ; $7c05: $7e
	ld a, [hl]                                       ; $7c06: $7e
	ld d, b                                          ; $7c07: $50
	reti                                             ; $7c08: $d9


	sbc [hl]                                         ; $7c09: $9e
	ld e, $79                                        ; $7c0a: $1e $79
	ld [hl+], a                                      ; $7c0c: $22
	ld a, d                                          ; $7c0d: $7a
	call c, $fe8a                                    ; $7c0e: $dc $8a $fe
	db $ec                                           ; $7c11: $ec
	ldh a, [$30]                                     ; $7c12: $f0 $30
	ret nc                                           ; $7c14: $d0

	ldh [rAUD4ENV], a                                ; $7c15: $e0 $21
	inc bc                                           ; $7c17: $03
	ld [bc], a                                       ; $7c18: $02
	inc b                                            ; $7c19: $04
	ldh [rAUD1SWEEP], a                              ; $7c1a: $e0 $10
	ret nc                                           ; $7c1c: $d0

	jr nz, jr_020_7c40                               ; $7c1d: $20 $21

	ld [bc], a                                       ; $7c1f: $02
	inc bc                                           ; $7c20: $03
	ld hl, sp+$18                                    ; $7c21: $f8 $18
	ldh [rAUD4LEN], a                                ; $7c23: $e0 $20
	db $dd                                           ; $7c25: $dd
	ret nz                                           ; $7c26: $c0

	sbc [hl]                                         ; $7c27: $9e
	db $fc                                           ; $7c28: $fc
	ld l, h                                          ; $7c29: $6c

jr_020_7c2a:
	ld a, a                                          ; $7c2a: $7f
	sbc h                                            ; $7c2b: $9c
	ret nz                                           ; $7c2c: $c0

	dec a                                            ; $7c2d: $3d
	ld e, $7a                                        ; $7c2e: $1e $7a
	jp c, $3298                                      ; $7c30: $da $98 $32

	ld e, $00                                        ; $7c33: $1e $00
	dec b                                            ; $7c35: $05
	ld [bc], a                                       ; $7c36: $02
	ld bc, $fd18                                     ; $7c37: $01 $18 $fd
	sbc e                                            ; $7c3a: $9b
	ld a, [$fefd]                                    ; $7c3b: $fa $fd $fe
	rst SubAFromBC                                          ; $7c3e: $e7
	push de                                          ; $7c3f: $d5

jr_020_7c40:
	rst $38                                          ; $7c40: $ff
	sub a                                            ; $7c41: $97
	jp $3761                                         ; $7c42: $c3 $61 $37


	cp a                                             ; $7c45: $bf
	call c, Call_020_77ee                            ; $7c46: $dc $ee $77
	cp e                                             ; $7c49: $bb
	ld c, e                                          ; $7c4a: $4b
	ld b, b                                          ; $7c4b: $40
	ret c                                            ; $7c4c: $d8

	rst $38                                          ; $7c4d: $ff
	reti                                             ; $7c4e: $d9


	ld h, b                                          ; $7c4f: $60
	reti                                             ; $7c50: $d9


	ld l, [hl]                                       ; $7c51: $6e
	sbc $89                                          ; $7c52: $de $89
	sbc [hl]                                         ; $7c54: $9e
	add c                                            ; $7c55: $81
	ld [hl], a                                       ; $7c56: $77
	cp $63                                           ; $7c57: $fe $63
	ret nc                                           ; $7c59: $d0

	ld c, b                                          ; $7c5a: $48
	call z, $b847                                    ; $7c5b: $cc $47 $b8
	ld l, e                                          ; $7c5e: $6b
	rst FarCall                                          ; $7c5f: $f7
	ld d, [hl]                                       ; $7c60: $56
	ld h, l                                          ; $7c61: $65
	ld d, a                                          ; $7c62: $57
	rst SubAFromDE                                          ; $7c63: $df
	call c, $df01                                    ; $7c64: $dc $01 $df
	ld [bc], a                                       ; $7c67: $02
	sbc l                                            ; $7c68: $9d
	inc b                                            ; $7c69: $04
	adc b                                            ; $7c6a: $88
	sbc $fe                                          ; $7c6b: $de $fe
	halt                                             ; $7c6d: $76
	or b                                             ; $7c6e: $b0
	sbc [hl]                                         ; $7c6f: $9e
	ld a, b                                          ; $7c70: $78
	ld e, e                                          ; $7c71: $5b
	pop hl                                           ; $7c72: $e1
	ld a, d                                          ; $7c73: $7a
	and d                                            ; $7c74: $a2
	ld a, a                                          ; $7c75: $7f
	dec sp                                           ; $7c76: $3b
	ld a, c                                          ; $7c77: $79
	pop de                                           ; $7c78: $d1
	db $fc                                           ; $7c79: $fc
	sbc [hl]                                         ; $7c7a: $9e
	ld b, b                                          ; $7c7b: $40
	ld h, [hl]                                       ; $7c7c: $66
	ld l, a                                          ; $7c7d: $6f
	ld a, [$819e]                                    ; $7c7e: $fa $9e $81
	ld a, c                                          ; $7c81: $79
	sbc b                                            ; $7c82: $98
	rst SubAFromDE                                          ; $7c83: $df
	rrca                                             ; $7c84: $0f
	sbc [hl]                                         ; $7c85: $9e
	rra                                              ; $7c86: $1f
	sbc $3f                                          ; $7c87: $de $3f
	ld a, l                                          ; $7c89: $7d
	db $fd                                           ; $7c8a: $fd
	sbc $1f                                          ; $7c8b: $de $1f
	sbc $3f                                          ; $7c8d: $de $3f
	sbc c                                            ; $7c8f: $99
	ld e, $1c                                        ; $7c90: $1e $1c
	jr jr_020_7cb3                                   ; $7c92: $18 $1f

	inc e                                            ; $7c94: $1c
	jr c, jr_020_7d0b                                ; $7c95: $38 $74

	call c, $bb7e                                    ; $7c97: $dc $7e $bb
	ld a, a                                          ; $7c9a: $7f
	db $fd                                           ; $7c9b: $fd
	reti                                             ; $7c9c: $d9


	rst $38                                          ; $7c9d: $ff
	sub a                                            ; $7c9e: $97
	db $fc                                           ; $7c9f: $fc
	ret nz                                           ; $7ca0: $c0

	ld a, $f8                                        ; $7ca1: $3e $f8
	pop af                                           ; $7ca3: $f1
	rst JumpTable                                          ; $7ca4: $c7
	cp [hl]                                          ; $7ca5: $be
	rst $38                                          ; $7ca6: $ff
	ld h, a                                          ; $7ca7: $67
	jp nz, $e760                                     ; $7ca8: $c2 $60 $e7

	ld h, b                                          ; $7cab: $60
	ret nz                                           ; $7cac: $c0

	ld a, l                                          ; $7cad: $7d
	push hl                                          ; $7cae: $e5
	sbc e                                            ; $7caf: $9b
	rst JumpTable                                          ; $7cb0: $c7
	adc h                                            ; $7cb1: $8c
	ld [hl], e                                       ; $7cb2: $73

jr_020_7cb3:
	db $fc                                           ; $7cb3: $fc
	daa                                              ; $7cb4: $27
	nop                                              ; $7cb5: $00
	rst SubAFromDE                                          ; $7cb6: $df
	rst FarCall                                          ; $7cb7: $f7
	sbc h                                            ; $7cb8: $9c
	ld a, e                                          ; $7cb9: $7b
	db $fd                                           ; $7cba: $fd
	db $fd                                           ; $7cbb: $fd
	ld a, e                                          ; $7cbc: $7b
	reti                                             ; $7cbd: $d9


	ld c, e                                          ; $7cbe: $4b
	add hl, de                                       ; $7cbf: $19
	adc $ff                                          ; $7cc0: $ce $ff
	ld a, [hl]                                       ; $7cc2: $7e
	sbc c                                            ; $7cc3: $99
	rst SubAFromDE                                          ; $7cc4: $df
	ccf                                              ; $7cc5: $3f
	ld a, h                                          ; $7cc6: $7c
	dec h                                            ; $7cc7: $25
	ld a, c                                          ; $7cc8: $79
	add $de                                          ; $7cc9: $c6 $de
	ret nz                                           ; $7ccb: $c0

	sbc l                                            ; $7ccc: $9d
	ldh a, [$f8]                                     ; $7ccd: $f0 $f8
	reti                                             ; $7ccf: $d9


	rst $38                                          ; $7cd0: $ff
	sbc [hl]                                         ; $7cd1: $9e
	ldh a, [rBCPS]                                   ; $7cd2: $f0 $68
	ld d, [hl]                                       ; $7cd4: $56
	ld h, a                                          ; $7cd5: $67
	ld hl, sp-$07                                    ; $7cd6: $f8 $f9
	ld h, a                                          ; $7cd8: $67
	ldh a, [$9b]                                     ; $7cd9: $f0 $9b
	rra                                              ; $7cdb: $1f
	rlca                                             ; $7cdc: $07
	ld bc, $77c0                                     ; $7cdd: $01 $c0 $77
	db $f4                                           ; $7ce0: $f4
	sbc l                                            ; $7ce1: $9d
	jr jr_020_7cea                                   ; $7ce2: $18 $06

	ld l, a                                          ; $7ce4: $6f
	ld hl, sp+$7f                                    ; $7ce5: $f8 $7f
	pop af                                           ; $7ce7: $f1
	ei                                               ; $7ce8: $fb
	ld a, e                                          ; $7ce9: $7b

jr_020_7cea:
	ld hl, sp+$73                                    ; $7cea: $f8 $73
	ldh a, [hDisp1_BGP]                                     ; $7cec: $f0 $92
	rst SubAFromDE                                          ; $7cee: $df
	cp a                                             ; $7cef: $bf
	cp a                                             ; $7cf0: $bf
	ld a, a                                          ; $7cf1: $7f
	rra                                              ; $7cf2: $1f
	ld b, $01                                        ; $7cf3: $06 $01
	ldh [rTAC], a                                    ; $7cf5: $e0 $07
	rrca                                             ; $7cf7: $0f
	sbc a                                            ; $7cf8: $9f
	ld a, [hl]                                       ; $7cf9: $7e
	inc e                                            ; $7cfa: $1c
	ld a, e                                          ; $7cfb: $7b
	ld hl, sp+$7e                                    ; $7cfc: $f8 $7e
	xor $9d                                          ; $7cfe: $ee $9d
	ld h, b                                          ; $7d00: $60
	ld bc, $2675                                     ; $7d01: $01 $75 $26
	ld a, e                                          ; $7d04: $7b
	sub b                                            ; $7d05: $90
	ld a, e                                          ; $7d06: $7b
	push bc                                          ; $7d07: $c5
	ld a, l                                          ; $7d08: $7d
	xor a                                            ; $7d09: $af
	sub a                                            ; $7d0a: $97

jr_020_7d0b:
	rst AddAOntoHL                                          ; $7d0b: $ef
	rst GetHLinHL                                          ; $7d0c: $cf
	pop af                                           ; $7d0d: $f1
	sbc a                                            ; $7d0e: $9f
	scf                                              ; $7d0f: $37
	inc de                                           ; $7d10: $13
	adc h                                            ; $7d11: $8c
	ld h, a                                          ; $7d12: $67
	ld l, [hl]                                       ; $7d13: $6e
	ret c                                            ; $7d14: $d8

	sbc l                                            ; $7d15: $9d
	add b                                            ; $7d16: $80
	ld h, b                                          ; $7d17: $60
	ld [hl], c                                       ; $7d18: $71
	ld [$e47b], a                                    ; $7d19: $ea $7b $e4
	ld l, e                                          ; $7d1c: $6b
	ld l, h                                          ; $7d1d: $6c
	sbc c                                            ; $7d1e: $99
	rra                                              ; $7d1f: $1f
	and [hl]                                         ; $7d20: $a6
	ld e, l                                          ; $7d21: $5d
	ld [hl], c                                       ; $7d22: $71
	pop hl                                           ; $7d23: $e1
	pop bc                                           ; $7d24: $c1
	ld [hl], l                                       ; $7d25: $75
	cp a                                             ; $7d26: $bf
	sbc e                                            ; $7d27: $9b
	ld [bc], a                                       ; $7d28: $02
	ld c, [hl]                                       ; $7d29: $4e
	sbc [hl]                                         ; $7d2a: $9e
	ld a, $79                                        ; $7d2b: $3e $79
	cp l                                             ; $7d2d: $bd
	sbc h                                            ; $7d2e: $9c
	ld b, $1c                                        ; $7d2f: $06 $1c
	ld [hl], b                                       ; $7d31: $70
	ld [hl], c                                       ; $7d32: $71
	and a                                            ; $7d33: $a7
	sbc [hl]                                         ; $7d34: $9e
	ld e, [hl]                                       ; $7d35: $5e
	ld a, e                                          ; $7d36: $7b
	xor b                                            ; $7d37: $a8
	db $dd                                           ; $7d38: $dd
	rst $38                                          ; $7d39: $ff
	sbc e                                            ; $7d3a: $9b
	ld c, $fc                                        ; $7d3b: $0e $fc
	db $fc                                           ; $7d3d: $fc
	ld a, [$207b]                                    ; $7d3e: $fa $7b $20
	sub d                                            ; $7d41: $92
	rst $38                                          ; $7d42: $ff
	ld [bc], a                                       ; $7d43: $02
	inc b                                            ; $7d44: $04
	inc c                                            ; $7d45: $0c
	ld a, [de]                                       ; $7d46: $1a
	dec e                                            ; $7d47: $1d
	ld a, $78                                        ; $7d48: $3e $78
	ldh a, [$0e]                                     ; $7d4a: $f0 $0e
	inc e                                            ; $7d4c: $1c
	inc a                                            ; $7d4d: $3c
	ld a, d                                          ; $7d4e: $7a
	ld a, e                                          ; $7d4f: $7b
	ldh a, [hDisp1_WX]                                     ; $7d50: $f0 $96
	cp $0d                                           ; $7d52: $fe $0d
	ei                                               ; $7d54: $fb
	di                                               ; $7d55: $f3

jr_020_7d56:
	push hl                                          ; $7d56: $e5
	ldh [c], a                                       ; $7d57: $e2
	pop bc                                           ; $7d58: $c1
	add a                                            ; $7d59: $87
	rrca                                             ; $7d5a: $0f
	db $fc                                           ; $7d5b: $fc
	halt                                             ; $7d5c: $76
	xor l                                            ; $7d5d: $ad
	push af                                          ; $7d5e: $f5
	ld h, a                                          ; $7d5f: $67
	ldh a, [$7b]                                     ; $7d60: $f0 $7b
	ld hl, sp-$21                                    ; $7d62: $f8 $df
	ld a, a                                          ; $7d64: $7f
	rst SubAFromDE                                          ; $7d65: $df
	ld a, [hl]                                       ; $7d66: $7e
	adc a                                            ; $7d67: $8f
	db $fc                                           ; $7d68: $fc
	db $fd                                           ; $7d69: $fd
	ld sp, hl                                        ; $7d6a: $f9
	rst $38                                          ; $7d6b: $ff
	ld b, $0c                                        ; $7d6c: $06 $0c
	dec e                                            ; $7d6e: $1d
	add hl, de                                       ; $7d6f: $19
	dec sp                                           ; $7d70: $3b
	ld [hl], d                                       ; $7d71: $72
	or $e0                                           ; $7d72: $f6 $e0
	rra                                              ; $7d74: $1f
	rra                                              ; $7d75: $1f
	ld a, $7e                                        ; $7d76: $3e $7e
	ld a, d                                          ; $7d78: $7a
	ld c, b                                          ; $7d79: $48
	sub [hl]                                         ; $7d7a: $96
	ld hl, sp+$79                                    ; $7d7b: $f8 $79
	ld [hl], e                                       ; $7d7d: $73
	ld h, e                                          ; $7d7e: $63
	ld h, a                                          ; $7d7f: $67
	rst JumpTable                                          ; $7d80: $c7
	adc a                                            ; $7d81: $8f
	rrca                                             ; $7d82: $0f
	rra                                              ; $7d83: $1f
	ld [hl], d                                       ; $7d84: $72
	xor h                                            ; $7d85: $ac
	ld e, d                                          ; $7d86: $5a
	and h                                            ; $7d87: $a4
	pop af                                           ; $7d88: $f1
	sbc d                                            ; $7d89: $9a
	ld hl, sp-$19                                    ; $7d8a: $f8 $e7
	rst SubAFromDE                                          ; $7d8c: $df
	adc b                                            ; $7d8d: $88
	and b                                            ; $7d8e: $a0
	sbc $60                                          ; $7d8f: $de $60
	adc [hl]                                         ; $7d91: $8e
	ld [$5f27], sp                                   ; $7d92: $08 $27 $5f
	jr c, jr_020_7d56                                ; $7d95: $38 $bf

	ld l, a                                          ; $7d97: $6f
	ld l, a                                          ; $7d98: $6f
	ld l, [hl]                                       ; $7d99: $6e
	rlca                                             ; $7d9a: $07
	jr jr_020_7dbd                                   ; $7d9b: $18 $20

Call_020_7d9d:
	ld [hl], b                                       ; $7d9d: $70
	ld e, b                                          ; $7d9e: $58
	adc h                                            ; $7d9f: $8c
	adc [hl]                                         ; $7da0: $8e
	adc e                                            ; $7da1: $8b
	ld hl, sp+$7b                                    ; $7da2: $f8 $7b
	ld e, d                                          ; $7da4: $5a
	ld [hl], d                                       ; $7da5: $72
	ld c, h                                          ; $7da6: $4c
	ld h, a                                          ; $7da7: $67
	call $b56d                                       ; $7da8: $cd $6d $b5
	ld h, a                                          ; $7dab: $67
	or h                                             ; $7dac: $b4
	ld h, e                                          ; $7dad: $63
	cp b                                             ; $7dae: $b8
	sbc d                                            ; $7daf: $9a
	ld b, d                                          ; $7db0: $42
	add d                                            ; $7db1: $82
	add h                                            ; $7db2: $84
	ld [$780f], sp                                   ; $7db3: $08 $0f $78
	ccf                                              ; $7db6: $3f
	ld [hl], e                                       ; $7db7: $73
	ld hl, sp+$79                                    ; $7db8: $f8 $79
	ld hl, sp+$60                                    ; $7dba: $f8 $60
	inc hl                                           ; $7dbc: $23

jr_020_7dbd:
	ld [hl], a                                       ; $7dbd: $77
	jp nz, $0edf                                     ; $7dbe: $c2 $df $0e

	ld a, l                                          ; $7dc1: $7d
	rlca                                             ; $7dc2: $07
	ld a, d                                          ; $7dc3: $7a
	sub l                                            ; $7dc4: $95
	ld a, a                                          ; $7dc5: $7f
	inc hl                                           ; $7dc6: $23
	sbc [hl]                                         ; $7dc7: $9e
	ld [bc], a                                       ; $7dc8: $02
	ld l, a                                          ; $7dc9: $6f
	ld d, c                                          ; $7dca: $51
	ld a, [hl]                                       ; $7dcb: $7e
	ei                                               ; $7dcc: $fb
	ld [hl], d                                       ; $7dcd: $72
	add l                                            ; $7dce: $85
	ld h, h                                          ; $7dcf: $64
	ld b, b                                          ; $7dd0: $40
	ld [hl], b                                       ; $7dd1: $70
	ccf                                              ; $7dd2: $3f
	ld a, [hl]                                       ; $7dd3: $7e
	cpl                                              ; $7dd4: $2f
	ld [hl], a                                       ; $7dd5: $77
	call z, $cf9b                                    ; $7dd6: $cc $9b $cf
	nop                                              ; $7dd9: $00
	ld [$fc04], sp                                   ; $7dda: $08 $04 $fc
	sbc l                                            ; $7ddd: $9d
	db $fc                                           ; $7dde: $fc
	or $6c                                           ; $7ddf: $f6 $6c
	ld b, l                                          ; $7de1: $45
	rst SubAFromDE                                          ; $7de2: $df
	ccf                                              ; $7de3: $3f
	ret c                                            ; $7de4: $d8

	rst $38                                          ; $7de5: $ff
	ld a, e                                          ; $7de6: $7b
	or a                                             ; $7de7: $b7
	sbc l                                            ; $7de8: $9d
	add b                                            ; $7de9: $80
	add e                                            ; $7dea: $83
	ld b, l                                          ; $7deb: $45
	ldh [$9d], a                                     ; $7dec: $e0 $9d
	adc c                                            ; $7dee: $89
	ret                                              ; $7def: $c9


	db $db                                           ; $7df0: $db
	rst $38                                          ; $7df1: $ff
	sbc d                                            ; $7df2: $9a
	add [hl]                                         ; $7df3: $86
	ld c, h                                          ; $7df4: $4c
	cp b                                             ; $7df5: $b8
	or b                                             ; $7df6: $b0
	ld h, b                                          ; $7df7: $60
	ld [hl], b                                       ; $7df8: $70
	ld d, [hl]                                       ; $7df9: $56
	ei                                               ; $7dfa: $fb
	ld a, [hl]                                       ; $7dfb: $7e
	ld hl, sp-$63                                    ; $7dfc: $f8 $9d
	jr jr_020_7e30                                   ; $7dfe: $18 $30

	ld [hl], a                                       ; $7e00: $77
	ldh a, [$9c]                                     ; $7e01: $f0 $9c
	ld a, [hl]                                       ; $7e03: $7e
	cp h                                             ; $7e04: $bc
	ld e, b                                          ; $7e05: $58
	ld [hl], d                                       ; $7e06: $72
	sub a                                            ; $7e07: $97
	sub a                                            ; $7e08: $97
	ld a, [hl]                                       ; $7e09: $7e
	ld a, e                                          ; $7e0a: $7b
	ld [hl], a                                       ; $7e0b: $77
	ld l, a                                          ; $7e0c: $6f
	rst SubAFromDE                                          ; $7e0d: $df
	sbc $bd                                          ; $7e0e: $de $bd
	ld e, e                                          ; $7e10: $5b
	ld [hl], e                                       ; $7e11: $73
	add [hl]                                         ; $7e12: $86
	ld a, l                                          ; $7e13: $7d
	dec sp                                           ; $7e14: $3b
	ld a, a                                          ; $7e15: $7f
	ld l, l                                          ; $7e16: $6d
	ld [hl], a                                       ; $7e17: $77
	pop hl                                           ; $7e18: $e1
	sub h                                            ; $7e19: $94
	ret nz                                           ; $7e1a: $c0

	add c                                            ; $7e1b: $81
	inc bc                                           ; $7e1c: $03
	ld a, l                                          ; $7e1d: $7d
	ld a, h                                          ; $7e1e: $7c
	ld a, b                                          ; $7e1f: $78
	ld [hl], b                                       ; $7e20: $70
	ldh [$a1], a                                     ; $7e21: $e0 $a1
	ld b, e                                          ; $7e23: $43
	and a                                            ; $7e24: $a7
	ld c, d                                          ; $7e25: $4a
	and b                                            ; $7e26: $a0
	ld l, [hl]                                       ; $7e27: $6e
	ld [bc], a                                       ; $7e28: $02
	ld e, [hl]                                       ; $7e29: $5e
	and b                                            ; $7e2a: $a0
	sbc l                                            ; $7e2b: $9d
	ld b, $3f                                        ; $7e2c: $06 $3f
	ld [hl], d                                       ; $7e2e: $72
	cpl                                              ; $7e2f: $2f

jr_020_7e30:
	ld a, a                                          ; $7e30: $7f
	ld e, b                                          ; $7e31: $58
	sbc e                                            ; $7e32: $9b
	jr nc, jr_020_7e55                               ; $7e33: $30 $20

	ld h, b                                          ; $7e35: $60
	ld b, b                                          ; $7e36: $40
	ld [hl], a                                       ; $7e37: $77
	sbc c                                            ; $7e38: $99
	ld [hl], a                                       ; $7e39: $77
	inc e                                            ; $7e3a: $1c
	ld a, a                                          ; $7e3b: $7f
	db $ed                                           ; $7e3c: $ed
	rst SubAFromDE                                          ; $7e3d: $df
	rst $38                                          ; $7e3e: $ff
	ld h, a                                          ; $7e3f: $67
	ld hl, sp-$21                                    ; $7e40: $f8 $df
	inc c                                            ; $7e42: $0c
	sbc c                                            ; $7e43: $99
	ld [$1000], sp                                   ; $7e44: $08 $00 $10
	nop                                              ; $7e47: $00
	ld hl, $6701                                     ; $7e48: $21 $01 $67
	ld hl, sp-$07                                    ; $7e4b: $f8 $f9
	ld [hl], h                                       ; $7e4d: $74
	call nz, $f09b                                   ; $7e4e: $c4 $9b $f0
	ldh [$e0], a                                     ; $7e51: $e0 $e0
	ret nz                                           ; $7e53: $c0

	jp hl                                            ; $7e54: $e9


jr_020_7e55:
	ld h, c                                          ; $7e55: $61
	ld h, b                                          ; $7e56: $60
	ld a, d                                          ; $7e57: $7a
	rst SubAFromHL                                          ; $7e58: $d7
	ld a, a                                          ; $7e59: $7f
	db $fd                                           ; $7e5a: $fd
	sbc l                                            ; $7e5b: $9d
	ret nz                                           ; $7e5c: $c0

	ldh [$73], a                                     ; $7e5d: $e0 $73
	ld hl, sp-$07                                    ; $7e5f: $f8 $f9
	ld a, e                                          ; $7e61: $7b
	ldh a, [rBCPD]                                   ; $7e62: $f0 $69
	ret nz                                           ; $7e64: $c0

	sbc h                                            ; $7e65: $9c
	ld a, a                                          ; $7e66: $7f
	cp a                                             ; $7e67: $bf
	cp a                                             ; $7e68: $bf
	sbc $df                                          ; $7e69: $de $df
	sbc $ff                                          ; $7e6b: $de $ff
	ld a, b                                          ; $7e6d: $78
	sub e                                            ; $7e6e: $93
	ld a, a                                          ; $7e6f: $7f
	adc l                                            ; $7e70: $8d
	ld a, e                                          ; $7e71: $7b
	dec sp                                           ; $7e72: $3b
	ld a, e                                          ; $7e73: $7b
	xor d                                            ; $7e74: $aa
	ld a, a                                          ; $7e75: $7f
	xor c                                            ; $7e76: $a9
	ld [hl], l                                       ; $7e77: $75
	rst GetHLinHL                                          ; $7e78: $cf
	call c, $9dff                                    ; $7e79: $dc $ff $9d
	and $92                                          ; $7e7c: $e6 $92
	reti                                             ; $7e7e: $d9


	ld h, b                                          ; $7e7f: $60
	reti                                             ; $7e80: $d9


	ld l, [hl]                                       ; $7e81: $6e
	reti                                             ; $7e82: $d9


	add c                                            ; $7e83: $81
	ld sp, hl                                        ; $7e84: $f9
	ld b, a                                          ; $7e85: $47
	ldh [$d9], a                                     ; $7e86: $e0 $d9
	adc c                                            ; $7e88: $89
	ld h, b                                          ; $7e89: $60
	ld hl, sp-$26                                    ; $7e8a: $f8 $da
	rst $38                                          ; $7e8c: $ff
	pop af                                           ; $7e8d: $f1
	ld h, a                                          ; $7e8e: $67
	add sp, $77                                      ; $7e8f: $e8 $77
	inc a                                            ; $7e91: $3c
	halt                                             ; $7e92: $76
	dec [hl]                                         ; $7e93: $35
	sbc e                                            ; $7e94: $9b
	rst AddAOntoHL                                          ; $7e95: $ef
	rst SubAFromDE                                          ; $7e96: $df
	rst SubAFromDE                                          ; $7e97: $df
	cp a                                             ; $7e98: $bf
	halt                                             ; $7e99: $76
	or $67                                           ; $7e9a: $f6 $67
	ldh a, [$6f]                                     ; $7e9c: $f0 $6f
	ld [bc], a                                       ; $7e9e: $02
	ld a, d                                          ; $7e9f: $7a
	ld hl, sp-$21                                    ; $7ea0: $f8 $df
	rst $38                                          ; $7ea2: $ff
	sbc d                                            ; $7ea3: $9a
	db $fd                                           ; $7ea4: $fd
	rst FarCall                                          ; $7ea5: $f7
	db $eb                                           ; $7ea6: $eb
	rst SubAFromHL                                          ; $7ea7: $d7
	cpl                                              ; $7ea8: $2f
	ld a, d                                          ; $7ea9: $7a
	call $0d96                                       ; $7eaa: $cd $96 $0d
	rla                                              ; $7ead: $17
	ld a, [hl+]                                      ; $7eae: $2a
	ld d, h                                          ; $7eaf: $54
	jr z, jr_020_7ec1                                ; $7eb0: $28 $0f

	rra                                              ; $7eb2: $1f
	ccf                                              ; $7eb3: $3f
	ld a, l                                          ; $7eb4: $7d
	ld a, e                                          ; $7eb5: $7b
	ldh a, [hDisp1_WY]                                     ; $7eb6: $f0 $95
	ld l, $0e                                        ; $7eb8: $2e $0e
	db $fc                                           ; $7eba: $fc
	ld hl, sp-$0e                                    ; $7ebb: $f8 $f2
	add sp, -$2b                                     ; $7ebd: $e8 $d5
	xor e                                            ; $7ebf: $ab
	rst SubAFromHL                                          ; $7ec0: $d7

jr_020_7ec1:
	ld a, h                                          ; $7ec1: $7c
	ld a, e                                          ; $7ec2: $7b
	call nc, $01df                                   ; $7ec3: $d4 $df $01
	ld a, a                                          ; $7ec6: $7f
	db $e3                                           ; $7ec7: $e3
	sbc [hl]                                         ; $7ec8: $9e
	inc bc                                           ; $7ec9: $03
	halt                                             ; $7eca: $76
	cp d                                             ; $7ecb: $ba
	ld a, [hl]                                       ; $7ecc: $7e
	cp c                                             ; $7ecd: $b9
	sbc [hl]                                         ; $7ece: $9e
	ld sp, hl                                        ; $7ecf: $f9
	ld h, c                                          ; $7ed0: $61
	ld c, b                                          ; $7ed1: $48
	db $db                                           ; $7ed2: $db
	rst $38                                          ; $7ed3: $ff
	sbc [hl]                                         ; $7ed4: $9e
	cp $66                                           ; $7ed5: $fe $66
	rst FarCall                                          ; $7ed7: $f7
	ld [hl+], a                                      ; $7ed8: $22
	rst SubAFromDE                                          ; $7ed9: $df
	sub b                                            ; $7eda: $90
	rst $38                                          ; $7edb: $ff
	rst SubAFromBC                                          ; $7edc: $e7
	dec bc                                           ; $7edd: $0b
	ld a, [de]                                       ; $7ede: $1a
	inc hl                                           ; $7edf: $23
	ld b, e                                          ; $7ee0: $43
	inc bc                                           ; $7ee1: $03
	ldh [$38], a                                     ; $7ee2: $e0 $38
	inc e                                            ; $7ee4: $1c
	ld c, $fe                                        ; $7ee5: $0e $fe
	rst AddAOntoHL                                          ; $7ee7: $ef
	rst AddAOntoHL                                          ; $7ee8: $ef
	ld l, a                                          ; $7ee9: $6f
	ld [hl], e                                       ; $7eea: $73
	adc l                                            ; $7eeb: $8d
	sbc $ef                                          ; $7eec: $de $ef
	ld a, b                                          ; $7eee: $78
	ld b, a                                          ; $7eef: $47
	rst SubAFromDE                                          ; $7ef0: $df
	inc bc                                           ; $7ef1: $03
	sub h                                            ; $7ef2: $94
	ld bc, $6121                                     ; $7ef3: $01 $21 $61
	ccf                                              ; $7ef6: $3f
	rst SubAFromDE                                          ; $7ef7: $df
	rst SubAFromDE                                          ; $7ef8: $df
	rst AddAOntoHL                                          ; $7ef9: $ef
	rst AddAOntoHL                                          ; $7efa: $ef
	ld a, a                                          ; $7efb: $7f
	or a                                             ; $7efc: $b7
	or a                                             ; $7efd: $b7
	sbc $07                                          ; $7efe: $de $07
	ld a, e                                          ; $7f00: $7b
	ldh a, [$df]                                     ; $7f01: $f0 $df
	rlca                                             ; $7f03: $07
	sbc $f8                                          ; $7f04: $de $f8
	ld a, c                                          ; $7f06: $79
	xor h                                            ; $7f07: $ac
	rst SubAFromDE                                          ; $7f08: $df
	ld hl, sp-$2b                                    ; $7f09: $f8 $d5
	rst $38                                          ; $7f0b: $ff
	ld a, [hl]                                       ; $7f0c: $7e
	call z, Call_020_4d7f                            ; $7f0d: $cc $7f $4d
	ld h, a                                          ; $7f10: $67
	ld hl, sp+$43                                    ; $7f11: $f8 $43
	and c                                            ; $7f13: $a1
	ld a, a                                          ; $7f14: $7f
	and b                                            ; $7f15: $a0
	sbc [hl]                                         ; $7f16: $9e
	di                                               ; $7f17: $f3
	halt                                             ; $7f18: $76
	ld c, e                                          ; $7f19: $4b
	ld h, a                                          ; $7f1a: $67
	ld hl, sp+$42                                    ; $7f1b: $f8 $42
	ld h, b                                          ; $7f1d: $60
	ld [hl], c                                       ; $7f1e: $71
	ld d, [hl]                                       ; $7f1f: $56
	rst SubAFromDE                                          ; $7f20: $df
	ld e, $67                                        ; $7f21: $1e $67
	ld hl, sp+$62                                    ; $7f23: $f8 $62
	ldh [$73], a                                     ; $7f25: $e0 $73
	ldh a, [$df]                                     ; $7f27: $f0 $df
	cp $9a                                           ; $7f29: $fe $9a
	add hl, de                                       ; $7f2b: $19
	ld b, $83                                        ; $7f2c: $06 $83
	add l                                            ; $7f2e: $85
	add a                                            ; $7f2f: $87
	ld a, d                                          ; $7f30: $7a
	ld h, l                                          ; $7f31: $65
	sub [hl]                                         ; $7f32: $96
	jr jr_020_7f3b                                   ; $7f33: $18 $06

	add d                                            ; $7f35: $82
	add h                                            ; $7f36: $84
	add h                                            ; $7f37: $84
	ld [$1008], sp                                   ; $7f38: $08 $08 $10

jr_020_7f3b:
	rlca                                             ; $7f3b: $07
	ld a, e                                          ; $7f3c: $7b
	inc de                                           ; $7f3d: $13
	ld a, a                                          ; $7f3e: $7f
	ld [hl+], a                                      ; $7f3f: $22
	ld a, [hl]                                       ; $7f40: $7e
	ld d, d                                          ; $7f41: $52
	ld a, a                                          ; $7f42: $7f
	ld hl, sp-$64                                    ; $7f43: $f8 $9c
	add c                                            ; $7f45: $81
	add e                                            ; $7f46: $83
	add e                                            ; $7f47: $83
	ld a, e                                          ; $7f48: $7b
	ld hl, sp-$20                                    ; $7f49: $f8 $e0
	nop                                              ; $7f4b: $00
	ldh [rP1], a                                     ; $7f4c: $e0 $00
	ldh [rP1], a                                     ; $7f4e: $e0 $00
	ldh [$a4], a                                     ; $7f50: $e0 $a4
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

Call_020_7f80:
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

Call_020_7ffb:
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_020_7fff:
	rst $38                                          ; $7fff: $ff
